# Script para gerar dados (vetores, data.frames, matrizes e listas) para tutorial Apply

set.seed(12)
VETOR1 <- c(1, 1, 1)
VETOR2 <- c(4, 4, 4)
VETOR3 <- c(5, 2, 1)

LISTA1 <- lapply(1:3, function(x) round(runif(10, 0, 9)))
names(LISTA1) <- paste0("Lista", 1:3)
LISTA1

LISTA2 <- lapply(1:3, function(x) round(matrix(runif(15), nrow = 5, ncol = 3,
                                               dimnames = list(c("L1", "L2", "L3", "L4", "L5"),
                               c("Col1", "Col2", "Col3"))), 2))
names(LISTA2) <- paste0("Lista", 1:3)
LISTA2

MATRIZ1 <- matrix(round(rgamma(20, shape = 2),2), nrow = 5, ncol = 4)
colnames(MATRIZ1) <- colnames(MATRIZ1, do.NULL = FALSE, "Col")
rownames(MATRIZ1) <- rownames(MATRIZ1, do.NULL = FALSE, "Lin")
MATRIZ1

MATRIZ2 <- matrix(rpois(20, lambda = 2), nrow = 5, ncol = 4)
MATRIZ2[4,1] <- NA
colnames(MATRIZ2) <- colnames(MATRIZ2, do.NULL = FALSE, "Col")
rownames(MATRIZ2) <- rownames(MATRIZ2, do.NULL = FALSE, "Lin")
MATRIZ2

DATAFRAME1 <- data.frame(F1 = rep(c("A", "B"), each = 6),
                          F2 = rep(c(1,2,3), times = 2),
                          V1 = round(runif(12),3))
DATAFRAME1

DATAFRAME2 <- data.frame(V1 = round(runif(5),3),
                          V2 = round(runif(5),3),
                          V3 = round(runif(5),3))
DATAFRAME2

# save.image("Dados_Apply.Rdata")