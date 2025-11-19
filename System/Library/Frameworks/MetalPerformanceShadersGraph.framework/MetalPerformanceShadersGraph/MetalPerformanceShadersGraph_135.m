void llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::moveFromOldBuckets(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = (a1 + 34);
    v9 = a1 + 2;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[4 * v8];
  }

  v11 = v10 - v9 - 32;
  if (v11 < 0x20)
  {
    v12 = v9;
    do
    {
LABEL_10:
      *v12 = -1;
      v12 += 32;
    }

    while (v12 != v10);
    goto LABEL_11;
  }

  v13 = (v11 >> 5) + 1;
  v12 = &v9[4 * (v13 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v9 + 4;
  v15 = v13 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *(v14 - 4) = -1;
    *v14 = -1;
    v14 += 8;
    v15 -= 2;
  }

  while (v15);
  if (v13 != (v13 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v16 = *v4;
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*a1)
        {
          v18 = 3;
          v17 = v7;
        }

        else
        {
          v17 = *(a1 + 1);
          v18 = a1[4] - 1;
        }

        v19 = v18 & (((0xBF58476D1CE4E5B9 * v16) >> 31) ^ (484763065 * v16));
        v20 = &v17[8 * v19];
        v21 = *v20;
        if (v16 != *v20)
        {
          v23 = 0;
          v24 = 1;
          while (v21 != -1)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v21 == -2;
            }

            if (v25)
            {
              v23 = v20;
            }

            v26 = v19 + v24++;
            v19 = v26 & v18;
            v20 = &v17[8 * v19];
            v21 = *v20;
            if (v16 == *v20)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v20 = v23;
          }
        }

LABEL_19:
        *v20 = v16;
        v20[1] = 0;
        v20[2] = 0;
        v20[3] = 0;
        *(v20 + 1) = *(v4 + 1);
        v20[3] = v4[3];
        v4[1] = 0;
        v4[2] = 0;
        v4[3] = 0;
        *a1 += 2;
        v22 = v4[1];
        if (v22)
        {
          v4[2] = v22;
          operator delete(v22);
        }
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::Diagnostic::append<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6, char **a7, char *a8)
{
  v16 = strlen(__s);
  v17 = a1;
  v20 = *(a1 + 16);
  v19 = a1 + 16;
  v18 = v20;
  v39 = 3;
  v40 = __s;
  v41 = v16;
  v21 = *(v19 + 8);
  v22 = &v39;
  if (v21 >= *(v19 + 12))
  {
    if (v18 <= &v39 && v18 + 24 * v21 > &v39)
    {
      v35 = &v39 - v18;
      v36 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v17 + 32, v21 + 1, 24);
      v17 = v36;
      v18 = *(v36 + 16);
      v22 = &v35[v18];
    }

    else
    {
      v33 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v17 + 32, v21 + 1, 24);
      v17 = v33;
      v18 = *(v33 + 16);
      v22 = &v39;
    }
  }

  v23 = v18 + 24 * *(v17 + 24);
  v24 = *v22;
  *(v23 + 16) = *(v22 + 2);
  *v23 = v24;
  v25 = *(v17 + 28);
  v26 = (*(v17 + 24) + 1);
  *(v17 + 24) = v26;
  v27 = *a3;
  v39 = 2;
  v40 = v27;
  v28 = *(v17 + 16);
  v29 = &v39;
  if (v26 >= v25)
  {
    if (v28 <= &v39 && v28 + 24 * v26 > &v39)
    {
      v37 = &v39 - v28;
      v38 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v17 + 32, v26 + 1, 24);
      v17 = v38;
      v28 = *(v38 + 16);
      v29 = &v37[v28];
    }

    else
    {
      v34 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v19, v17 + 32, v26 + 1, 24);
      v17 = v34;
      v28 = *(v34 + 16);
      v29 = &v39;
    }
  }

  v30 = v28 + 24 * *(v17 + 24);
  v31 = *v29;
  *(v30 + 16) = *(v29 + 2);
  *v30 = v31;
  ++*(v17 + 24);
  return mlir::Diagnostic::append<char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(v17, a4, a5, a6, a7, a8);
}

uint64_t mlir::Diagnostic::append<char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  v35 = 3;
  v36 = __s;
  v37 = v12;
  v17 = *(v15 + 8);
  v18 = &v35;
  if (v17 >= *(v15 + 12))
  {
    if (v14 <= &v35 && v14 + 24 * v17 > &v35)
    {
      v31 = &v35 - v14;
      v32 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 32, v17 + 1, 24);
      v13 = v32;
      v14 = *(v32 + 16);
      v18 = &v31[v14];
    }

    else
    {
      v29 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 32, v17 + 1, 24);
      v13 = v29;
      v14 = *(v29 + 16);
      v18 = &v35;
    }
  }

  v19 = v14 + 24 * *(v13 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v13 + 28);
  v22 = (*(v13 + 24) + 1);
  *(v13 + 24) = v22;
  v23 = *a3;
  v35 = 2;
  v36 = v23;
  v24 = *(v13 + 16);
  v25 = &v35;
  if (v22 >= v21)
  {
    if (v24 <= &v35 && v24 + 24 * v22 > &v35)
    {
      v33 = &v35 - v24;
      v34 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 32, v22 + 1, 24);
      v13 = v34;
      v24 = *(v34 + 16);
      v25 = &v33[v24];
    }

    else
    {
      v30 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 32, v22 + 1, 24);
      v13 = v30;
      v24 = *(v30 + 16);
      v25 = &v35;
    }
  }

  v26 = v24 + 24 * *(v13 + 24);
  v27 = *v25;
  *(v26 + 16) = *(v25 + 2);
  *v26 = v27;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(v13, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, char **a3, char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v9 + 32, v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return mlir::Diagnostic::append<long long,char const(&)[2]>(v9, a3, a4);
}

uint64_t mlir::Diagnostic::append<long long,char const(&)[2]>(uint64_t a1, char **a2, char *__s)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v7 = *a2;
  v21 = 2;
  v22 = v7;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v5 <= &v21 && v5 + 24 * v8 > &v21)
    {
      v19 = &v21 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v19[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v5 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(__s);
  v21 = 3;
  v22 = __s;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, a1 + 32, v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, a1 + 32, v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

void llvm::SmallSet<long long,4u,std::less<long long>>::insertImpl<long long const&>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 64))
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *a2;
    if (!v15)
    {
      goto LABEL_22;
    }

    v17 = 8 * v15;
    v18 = 8 * v15;
    v8 = *a1;
    while (*v8 != v16)
    {
      ++v8;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_21;
      }
    }

    if (v18)
    {
      v19 = 0;
      v13 = 1;
      goto LABEL_26;
    }

LABEL_21:
    if (v15 <= 3)
    {
LABEL_22:
      if (v15 >= *(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v15 + 1, 8);
        v15 = *(a1 + 8);
        v14 = *a1;
      }

      v14[v15] = v16;
      v20 = *(a1 + 8) + 1;
      *(a1 + 8) = v20;
      v8 = (*a1 + 8 * v20 - 8);
      v13 = 1;
      goto LABEL_25;
    }

    v6 = (a1 + 56);
    do
    {
      v23 = std::__tree<long long>::__find_equal<long long>((a1 + 48), (a1 + 56), &v34, &v33, v14);
      if (!*v23)
      {
        v24 = v23;
        v25 = operator new(0x28uLL);
        v25[4] = *v14;
        v26 = v34;
        *v25 = 0;
        v25[1] = 0;
        v25[2] = v26;
        *v24 = v25;
        v27 = **(a1 + 48);
        if (v27)
        {
          *(a1 + 48) = v27;
          v22 = *v24;
        }

        else
        {
          v22 = v25;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 56), v22);
        ++*(a1 + 64);
      }

      ++v14;
      v17 -= 8;
    }

    while (v17);
    *(a1 + 8) = 0;
    v28 = *(a1 + 56);
    v8 = (a1 + 56);
    v29 = *a2;
    if (v28)
    {
      while (1)
      {
        while (1)
        {
          v8 = v28;
          v30 = v28[4];
          if (v29 >= v30)
          {
            break;
          }

          v28 = *v8;
          v6 = v8;
          if (!*v8)
          {
            goto LABEL_41;
          }
        }

        if (v30 >= v29)
        {
          break;
        }

        v28 = v8[1];
        if (!v28)
        {
          v6 = v8 + 1;
          goto LABEL_41;
        }
      }

      v13 = 0;
      goto LABEL_25;
    }

LABEL_41:
    v31 = v8;
    v8 = operator new(0x28uLL);
    v8[4] = v29;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v31;
    *v6 = v8;
    v32 = **(a1 + 48);
    v12 = v8;
    if (!v32)
    {
LABEL_12:
      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 56), v12);
      v13 = 0;
      ++*(a1 + 64);
LABEL_25:
      v19 = 1;
      goto LABEL_26;
    }

    *(a1 + 48) = v32;
LABEL_11:
    v12 = *v6;
    goto LABEL_12;
  }

  v6 = (a1 + 56);
  v5 = *(a1 + 56);
  v7 = *a2;
  if (!v5)
  {
    v8 = (a1 + 56);
LABEL_9:
    v10 = v8;
    v8 = operator new(0x28uLL);
    v8[4] = v7;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v6 = v8;
    v11 = **(a1 + 48);
    v12 = v8;
    if (!v11)
    {
      goto LABEL_12;
    }

    *(a1 + 48) = v11;
    goto LABEL_11;
  }

  while (1)
  {
    while (1)
    {
      v8 = v5;
      v9 = v5[4];
      if (v7 >= v9)
      {
        break;
      }

      v5 = *v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_9;
      }
    }

    if (v9 >= v7)
    {
      break;
    }

    v5 = v8[1];
    if (!v5)
    {
      v6 = v8 + 1;
      goto LABEL_9;
    }
  }

  v13 = 0;
  v19 = 0;
LABEL_26:
  *(a3 + 8) = v13;
  *a3 = v8;
  *(a3 + 16) = v19;
}

void *llvm::DenseMap<unsigned long,unsigned long,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,unsigned long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = v16 & (((0xBF58476D1CE4E5B9 * v24) >> 31) ^ (484763065 * v24));
          v23 = &result[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::DenseMap(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    goto LABEL_11;
  }

  v6 = (4 * a3 / 3u + 1) | ((4 * a3 / 3u + 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  LODWORD(v7) = (((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8)) + 1;
  *(a1 + 16) = v7;
  buffer = llvm::allocate_buffer(72 * v7, 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_12:
    v16 = &a2[9 * a3];
    while (1)
    {
      v21 = *(a1 + 16);
      if (!v21)
      {
        break;
      }

      v17 = v21 - 1;
      v18 = v17 & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
      v19 = (*a1 + 72 * v18);
      v20 = *v19;
      if (*a2 != *v19)
      {
        v23 = 0;
        v24 = 1;
        while (v20 != -1)
        {
          if (v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = v20 == -2;
          }

          if (v25)
          {
            v23 = v19;
          }

          v26 = v18 + v24++;
          v18 = v26 & v17;
          v19 = (*a1 + 72 * v18);
          v20 = *v19;
          if (*a2 == *v19)
          {
            goto LABEL_14;
          }
        }

        if (v23)
        {
          v22 = v23;
        }

        else
        {
          v22 = v19;
        }

        goto LABEL_17;
      }

LABEL_14:
      a2 += 9;
      if (a2 == v16)
      {
        return a1;
      }
    }

    v22 = 0;
LABEL_17:
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::InsertIntoBucket<unsigned long const&,llvm::SmallVector<mlir::anec::Dim,12u> const&>(a1, v22, a2, (a2 + 1));
    goto LABEL_14;
  }

  v10 = 72 * v9 - 72;
  if (v10 < 0x48)
  {
    v11 = buffer;
LABEL_9:
    v15 = &buffer[9 * v9];
    do
    {
      *v11 = -1;
      v11 += 9;
    }

    while (v11 != v15);
    goto LABEL_11;
  }

  v12 = v10 / 0x48 + 1;
  v11 = &buffer[9 * (v12 & 0x7FFFFFFFFFFFFFELL)];
  v13 = buffer;
  v14 = v12 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    *v13 = -1;
    v13[9] = -1;
    v13 += 18;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

LABEL_11:
  if (a3)
  {
    goto LABEL_12;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::LookupBucketFor<unsigned long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 72 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::InsertIntoBucket<unsigned long const&,llvm::SmallVector<mlir::anec::Dim,12u> const&>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v15 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v12 = a3;
    v13 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      goto LABEL_3;
    }

    v12 = a3;
    v13 = a4;
  }

  v14 = a1;
  llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::LookupBucketFor<unsigned long>(v14, v12, &v15);
  a1 = v14;
  a3 = v12;
  v5 = *(v14 + 2);
  v4 = v15;
  a4 = v13;
LABEL_3:
  *(a1 + 2) = v5 + 1;
  if (*v4 != -1)
  {
    --*(a1 + 3);
  }

  *v4 = *a3;
  v7 = v4 + 3;
  v4[1] = v4 + 3;
  v4[2] = 0xC00000000;
  if (v4 + 1 != a4)
  {
    v8 = *(a4 + 8);
    if (v8)
    {
      if (v8 < 0xD)
      {
        v10 = *(a4 + 8);
      }

      else
      {
        v9 = a4;
        llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 1), (v4 + 3), *(a4 + 8), 4);
        v10 = *(v9 + 8);
        if (!v10)
        {
LABEL_12:
          *(v4 + 4) = v8;
          return v4;
        }

        a4 = v9;
        v7 = v4[1];
      }

      memcpy(v7, *a4, 4 * v10);
      goto LABEL_12;
    }
  }

  return v4;
}

void *llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 9 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 72 * v11 - 72;
    if (v12 < 0x48)
    {
      v13 = result;
LABEL_14:
      v17 = &result[9 * v11];
      do
      {
        *v13 = -1;
        v13 += 9;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[9] = -1;
      v15 += 18;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -1;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[9] = -1;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & (((0xBF58476D1CE4E5B9 * v14) >> 31) ^ (484763065 * v14));
        v17 = (*a1 + 72 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -1)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -2;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 72 * (v23 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        v17[1] = v17 + 3;
        v17[2] = 0xC00000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<int>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != (v4 + 3))
        {
          free(v19);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::getStrideInBytes(void *a1, uint64_t a2, int a3)
{
  v18 = a1;
  *(a2 + 8) = 0;
  if (a3)
  {
    v17[0] = mlir::DenseElementsAttr::getRawStringData(&v18);
    v17[1] = v4;
    if (mlir::ElementsAttr::isSplat(v17))
    {
      return 1;
    }

    a1 = v18;
  }

  result = mlir::getElementTypeByteWidth(a1);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v17[0] = 0;
  if ((mlir::getStridesAndOffset(v18, a2, v17) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *a2;
    v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v10 = v9 + 1;
      v11 = (v9 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v12 = &v8[v11];
      v13 = v8 + 1;
      v14 = v11;
      do
      {
        v15 = *v13 * v6;
        *(v13 - 1) *= v6;
        *v13 = v15;
        v13 += 2;
        v14 -= 2;
      }

      while (v14);
      if (v10 == v11)
      {
        return 1;
      }
    }

    else
    {
      v12 = *a2;
    }

    v16 = &v8[v7];
    do
    {
      *v12++ *= v6;
    }

    while (v12 != v16);
  }

  return 1;
}

uint64_t mlir::cloneTypeWithStrideInBytes(uint64_t a1, const void *a2, uint64_t a3, mlir *a4)
{
  v33[5] = *MEMORY[0x1E69E9840];
  v30 = a1;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v30);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&RHS);
  RHS = v33;
  v32 = 0x500000000;
  v8 = (8 * a3) >> 3;
  if (v8 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&RHS, v33, v8, 8);
    v9 = v32;
    v10 = RHS;
    v11 = 8 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v33;
  v11 = 8 * a3;
  if (a3)
  {
LABEL_5:
    memcpy(&v10[v9], a2, v11);
    v9 = v32;
    v10 = RHS;
  }

LABEL_6:
  v12 = v9 + (v11 >> 3);
  LODWORD(v32) = v9 + (v11 >> 3);
  if (v32)
  {
    v13 = IntOrFloatBitWidth >> 3;
    v14 = v10;
    if (((v12 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_11;
    }

    v15 = ((v12 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
    v14 = &v10[v15 & 0x3FFFFFFFFFFFFFFELL];
    v16 = v10 + 1;
    v17 = v15 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v18 = *v16 / v13;
      *(v16 - 1) /= v13;
      *v16 = v18;
      v16 += 2;
      v17 -= 2;
    }

    while (v17);
    if (v15 != (v15 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_11:
      v19 = &v10[v12];
      do
      {
        *v14++ /= v13;
      }

      while (v14 != v19);
    }
  }

  Value = mlir::ArrayAttr::getValue(&v30);
  v22 = v21;
  v23 = mlir::AffineBinaryOpExpr::getRHS(&v30);
  v24 = RHS;
  v25 = v32;
  Context = mlir::Attribute::getContext(&v30);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v24, v25, a4, Context);
  result = mlir::MemRefType::get(Value, v22, v23, StridedLinearLayoutMap, 0);
  if (RHS != v33)
  {
    v29 = result;
    free(RHS);
    return v29;
  }

  return result;
}

uint64_t mlir::getRowBytesAlignedStrideInBytes(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  if (a2 != v5)
  {
    if (a2 >= v5)
    {
      if (a2 > *(a5 + 12))
      {
        v6 = a2;
        v7 = result;
        v8 = a3;
        v9 = a4;
        v10 = a5;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, a2, 8);
        a5 = v10;
        a3 = v8;
        result = v7;
        a2 = v6;
        a4 = v9;
        v5 = *(v10 + 8);
      }

      if (a2 != v5)
      {
        v11 = result;
        v12 = a2;
        v13 = a4;
        v14 = a3;
        v15 = a5;
        bzero((*a5 + 8 * v5), 8 * (a2 - v5));
        a5 = v15;
        a3 = v14;
        result = v11;
        a2 = v12;
        a4 = v13;
      }
    }

    *(a5 + 8) = a2;
  }

  if (a2)
  {
    v16 = *a5;
    *(*a5 + 8 * a2 - 8) = a3;
    if (a2 != 1)
    {
      v17 = a2 - 2;
      v18 = 8 * a2 - 8;
      v19 = (result + v18);
      v20 = (v16 + v18);
      do
      {
        v21 = *v19--;
        v22 = v21 * *v20;
        v23 = v22 == 0;
        v24 = (v22 - (v22 != 0)) / a4;
        if (!v23)
        {
          ++v24;
        }

        *--v20 = v24 * a4;
        --v17;
      }

      while (v17 < a2);
    }
  }

  return result;
}

BOOL mlir::inferReturnTypesEqualToFirstArgumentType(uint64_t a1, mlir *a2, Location a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v9 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = *(a9 + 8);
    if (v10 >= *(a9 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a9, a9 + 16, v10 + 1, 8);
      LODWORD(v10) = *(a9 + 8);
    }

    *(*a9 + 8 * v10) = v9;
    ++*(a9 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::inferReductionOpReturnShape(uint64_t a1, char a2, uint64_t a3, AttributeStorage *a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8)
{
  v34[6] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v33 = 0x600000000;
  result = mlir::getPositiveAxes(a5, a6, a4, &v32, a1, a2, 0);
  if (result)
  {
    v26 = v28;
    v27 = 0x400000000;
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    if (v33)
    {
      v13 = v32;
      v14 = 8 * v33;
      do
      {
        v15 = *v13++;
        v25 = v15;
        llvm::SmallSet<long long,4u,std::less<long long>>::insertImpl<long long const&>(&v26, &v25, v24);
        v14 -= 8;
      }

      while (v14);
    }

    if (a4)
    {
      for (i = 0; i != a4; i = (i + 1))
      {
        if (v31)
        {
          v19 = v30;
          if (!v30)
          {
            goto LABEL_7;
          }

          v20 = &v30;
          do
          {
            if (v19[4] >= i)
            {
              v20 = v19;
            }

            v19 = v19[v19[4] < i];
          }

          while (v19);
          if (v20 == &v30 || i < v20[4])
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_7;
          }

          v21 = v26;
          v22 = 8 * v27;
          while (*v21 != i)
          {
            ++v21;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_7;
            }
          }

          if (!v22)
          {
LABEL_7:
            v17 = *(a3 + 8 * i);
            v18 = *(a8 + 8);
            if (v18 >= *(a8 + 12))
            {
              goto LABEL_27;
            }

            goto LABEL_8;
          }
        }

        if (!a7)
        {
          continue;
        }

        v18 = *(a8 + 8);
        v17 = 1;
        if (v18 >= *(a8 + 12))
        {
LABEL_27:
          llvm::SmallVectorBase<unsigned int>::grow_pod(a8, a8 + 16, v18 + 1, 8);
          v18 = *(a8 + 8);
        }

LABEL_8:
        *(*a8 + 8 * v18) = v17;
        ++*(a8 + 8);
      }
    }

    std::__tree<unsigned long long>::destroy(&v29, v30);
    if (v26 != v28)
    {
      free(v26);
    }

    result = 1;
  }

  if (v32 != v34)
  {
    v23 = result;
    free(v32);
    return v23;
  }

  return result;
}

uint64_t mlir::mps::isMoreSpecializedShape(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = 8 * a2 - 8;
  do
  {
    v5 = v4;
    v6 = *a1 == *a3 || *a3 == 0x8000000000000000;
    v7 = v6;
    if (!v6)
    {
      break;
    }

    ++a1;
    ++a3;
    v4 -= 8;
  }

  while (v5);
  return v7;
}

uint64_t mlir::mps::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 != a4)
  {
    return 0;
  }

  v16[0] = &unk_1F5B17D48;
  v16[1] = a5;
  v17 = v16;
  if (!a2)
  {
    v13 = 1;
    v12 = v16;
LABEL_16:
    (*(*v12 + 32))(v12);
    return v13;
  }

  v7 = 0;
  v8 = a2 - 1;
  do
  {
    v9 = mlir::TypeRange::dereference_iterator(a1, v7);
    v14 = mlir::TypeRange::dereference_iterator(a3, v7);
    v15 = v9;
    if (!v17)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    result = (*(*v17 + 48))(v17, &v15, &v14);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    ++v7;
  }

  while (!v11);
  v12 = v17;
  if (v17 == v16)
  {
    v13 = result;
    goto LABEL_16;
  }

  if (!v17)
  {
    return result;
  }

  v13 = result;
  (*(*v17 + 40))(v17);
  return v13;
}

void *std::__function::__func<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B17D48;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B17D48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, void **a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(**a2 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v23[0] = v4;
  v23[1] = v6;
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  result = 0;
  v22[0] = v5;
  v22[1] = v7;
  if (v4 && v5)
  {
    v9 = *(a1 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v23);
    v24 = mlir::ElementsAttr::isSplat(v22);
    v25 = isSplat;
    v11 = *(v9 + 24);
    if (!v11)
    {
      v21 = std::__throw_bad_function_call[abi:nn200100]();
      return mlir::mps::getElementBitWidth(v21);
    }

    result = (*(*v11 + 48))(v11, &v25, &v24);
    if (result)
    {
      if (!mlir::CallOpInterface::getArgOperands(v22))
      {
        return 1;
      }

      result = mlir::CallOpInterface::getArgOperands(v23);
      if (!result)
      {
        return result;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v23);
      v14 = v13;
      v15 = mlir::CallableOpInterface::getArgAttrsAttr(v22);
      if (v14 != v16)
      {
        return 0;
      }

      if (v14)
      {
        v17 = v15;
        v18 = 8 * v14 - 8;
        do
        {
          v19 = v18;
          v20 = *ArgAttrsAttr == *v17 || *v17 == 0x8000000000000000;
          result = v20;
          if (!v20)
          {
            break;
          }

          ++ArgAttrsAttr;
          ++v17;
          v18 -= 8;
        }

        while (v19);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::getElementBitWidth(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v6 = ElementTypeOrSelf;
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v2 = ElementTypeOrSelf;
  }

  else
  {
    v2 = 0;
  }

  v5 = v2;
  if (!v2)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v6);
  }

  Value = mlir::AffineMapAttr::getValue(&v5);
  return 2 * mlir::mps::getElementBitWidth(Value);
}

uint64_t mlir::mps::getTypeAlignmentSize(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v11 = ElementTypeOrSelf;
  v2 = *(*ElementTypeOrSelf + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
  {
    return 1;
  }

  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v4 = ElementTypeOrSelf;
    }

    else
    {
      v4 = 0;
    }

    v10 = v4;
    if (!v3)
    {
      return mlir::Type::getIntOrFloatBitWidth(&v11) >> 3;
    }

    goto LABEL_15;
  }

  if (mlir::Type::getIntOrFloatBitWidth(&v11) < 8)
  {
    return 1;
  }

  v6 = *(*v11 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  if (!v7)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v11) >> 3;
  }

LABEL_15:
  Value = mlir::AffineMapAttr::getValue(&v10);
  return mlir::Type::getIntOrFloatBitWidth(&Value) >> 3;
}

uint64_t mlir::mps::getElementsAttrElementBitWidth(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v7 = ElementTypeOrSelf;
  v2 = *(*ElementTypeOrSelf + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v3 = ElementTypeOrSelf;
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  if (v3)
  {
    Value = mlir::AffineMapAttr::getValue(&v6);
    return 2 * mlir::mps::getElementsAttrElementBitWidth(Value);
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
  {
    return 4;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v7);
  }
}

unint64_t mlir::mps::getElementsAttrStorageSize(uint64_t a1, uint64_t a2)
{
  v24[0] = a1;
  v24[1] = a2;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  if (mlir::Type::isInteger(&isSplat, 1))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v24);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v3);
    v5 = NumElements - (NumElements != 0);
    goto LABEL_3;
  }

  if (mlir::Type::isInteger(&isSplat, 2))
  {
    v8 = mlir::CallableOpInterface::getArgAttrsAttr(v24);
    v10 = mlir::ShapedType::getNumElements(v8, v9);
    v11 = v10 - (v10 != 0);
LABEL_9:
    v12 = v11 >> 2;
    if (v10)
    {
      return v12 + 1;
    }

    else
    {
      return v12;
    }
  }

  if (mlir::Type::isInteger(&isSplat, 3))
  {
    v13 = mlir::CallableOpInterface::getArgAttrsAttr(v24);
    NumElements = mlir::ShapedType::getNumElements(v13, v14);
    v5 = 3 * NumElements - (NumElements != 0);
LABEL_3:
    v6 = v5 >> 3;
    if (NumElements)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }

  if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id && !mlir::Type::isInteger(&isSplat, 4))
  {
    if (!mlir::Type::isInteger(&isSplat, 6))
    {
      ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(isSplat);
      v21 = mlir::CallableOpInterface::getArgAttrsAttr(v24);
      return (mlir::ShapedType::getNumElements(v21, v22) * ElementsAttrElementBitWidth) >> 3;
    }

    v18 = mlir::CallableOpInterface::getArgAttrsAttr(v24);
    v10 = mlir::ShapedType::getNumElements(v18, v19);
    v11 = 3 * v10 - (v10 != 0);
    goto LABEL_9;
  }

  v15 = mlir::CallableOpInterface::getArgAttrsAttr(v24);
  v17 = mlir::ShapedType::getNumElements(v15, v16);
  if (v17)
  {
    return ((v17 - (v17 != 0)) >> 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::isCompatibleWithDenseStorage(uint64_t a1)
{
  v7 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v6 = v1;
  if (v1)
  {
    Value = mlir::AffineMapAttr::getValue(&v6);
    return mlir::mps::isCompatibleWithDenseStorage(Value);
  }

  else
  {
    result = mlir::Type::isIntOrFloat(&v7);
    if (result)
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v7);
      return IntOrFloatBitWidth == 1 || IntOrFloatBitWidth > 7;
    }
  }

  return result;
}

uint64_t mlir::mps::MPSDialect::initialize(int32x2_t *this)
{
  _ZN4mlir7Dialect13addOperationsIJNS_3mps6ACosOpENS2_7ACoshOpENS2_6ASinOpENS2_7ASinhOpENS2_7ATan2OpENS2_6ATanOpENS2_7ATanhOpENS2_10AbsoluteOpENS2_16AbsoluteSquareOpENS2_5AddOpENS2_5AndOpENS2_16AssignVariableOpENS2_10BandPartOpENS2_14BatchToSpaceOpENS2_13BiasAddGradOpENS2_9BiasAddOpENS2_12BitwiseAndOpENS2_18BitwiseLeftShiftOpENS2_12BitwiseNotOpENS2_11BitwiseOrOpENS2_17BitwisePopcountOpENS2_19BitwiseRightShiftOpENS2_12BitwiseXorOpENS2_23BroadcastGradientArgsOpENS2_13BroadcastToOpENS2_6CallOpENS2_6CastOpENS2_6CeilOpENS2_7ClampOpENS2_9ColToImOpENS2_8ConcatOpENS2_11ConjugateOpENS2_10ConstantOpENS2_20Conv2DDataGradientOpENS2_8Conv2DOpENS2_23Conv2DWeightsGradientOpENS2_20Conv3DDataGradientOpENS2_8Conv3DOpENS2_23Conv3DWeightsGradientOpENS2_5CosOpENS2_6CoshOpENS2_12CostVolumeOpENS2_15CreateComplexOpENS2_21CreateTextureTensorOpENS2_6CropOpENS2_12CropResizeOpENS2_19CumulativeMaximumOpENS2_19CumulativeMinimumOpENS2_19CumulativeProductOpENS2_15CumulativeSumOpENS2_9DegammaOpENS2_16DepthToSpace2DOpENS2_29DepthwiseConv2DDataGradientOpENS2_17DepthwiseConv2DOpENS2_32DepthwiseConv2DWeightsGradientOpENS2_29DepthwiseConv3DDataGradientOpENS2_17DepthwiseConv3DOpENS2_32DepthwiseConv3DWeightsGradientOpENS2_15DequantizeLUTOpENS2_12DequantizeOpENS2_15DimensionSizeOpENS2_7DiracOpENS2_8DivideOpENS2_18DynamicShapeCastOpENS2_5EluOpENS2_9EqualToOpENS2_5ErfOpENS2_12ExpandDimsOpENS2_16ExponentBase10OpENS2_15ExponentBase2OpENS2_10ExponentOpENS2_22FastFourierTransformOpENS2_11Flatten2DOpENS2_13FloorDivideOpENS2_7FloorOpENS2_13GRUGradientOpENS2_5GRUOpENS2_17GatherAlongAxisOpENS2_10GatherNDOpENS2_8GatherOpENS2_6GeluOpENS2_10GetCoordOpENS2_13GreaterThanOpENS2_22GreaterThanOrEqualToOpENS2_17HammingDistanceOpENS2_20HermiteanToRealFFTOpENS2_10IdentityOpENS2_9ImToColOpENS2_15ImaginaryPartOpENS2_23InitRandomPhiloxStateOpENS2_14InstanceNormOpENS2_10IsFiniteOpENS2_12IsInfiniteOpENS2_7IsNaNOpENS2_8LPNormOpENS2_14LSTMGradientOpENS2_6LSTMOpENS2_11LeakyReluOpENS2_10LessThanOpENS2_19LessThanOrEqualToOpENS2_30LocalConvolutionDataGradientOpENS2_18LocalConvolutionOpENS2_32LocalConvolutionWeightGradientOpENS2_17LogarithmBase10OpENS2_16LogarithmBase2OpENS2_11LogarithmOpENS2_8MatMulOpENS2_25MaterializeSparseTensorOpENS2_23MatrixDecompositionLUOpENS2_15MatrixInverseOpENS2_16MatrixSolverLUOpENS2_9MaximumOpENS2_9MinimumOpENS2_8ModuloOpENS2_10MultiplyOpENS2_7NReluOpENS2_6NandOpENS2_10NegativeOpENS2_23NonMaximumSuppressionOpENS2_9NonZeroOpENS2_5NorOpENS2_15NormalizationOpENS2_12NotEqualToOpENS2_5NotOpENS2_8OneHotOpENS2_4OrOpENS2_7PReluOpENS2_13PadGradientOpENS2_5PadOpENS2_9PermuteOpENS2_13PlaceholderOpENS2_17PoolAvgGradientOpENS2_9PoolAvgOpENS2_20PoolL2NormGradientOpENS2_12PoolL2NormOpENS2_17PoolMaxGradientOpENS2_9PoolMaxOpENS2_7PowerOpENS2_17PruningGradientOpENS2_9PruningOpENS2_10QuantizeOpENS2_14RandomNormalOpENS2_23RandomTruncatedNormalOpENS2_15RandomUniformOpENS2_6RankOpENS2_18ReadDataFromFileOpENS2_14ReadVariableOpENS2_10RealPartOpENS2_20RealToHermiteanFFTOpENS2_12ReciprocalOpENS2_22ReciprocalSquareRootOpENS2_14ReductionAndOpENS2_17ReductionArgMaxOpENS2_17ReductionArgMinOpENS2_20ReductionLogSumExpOpENS2_14ReductionMaxOpENS2_15ReductionMeanOpENS2_14ReductionMinOpENS2_13ReductionOrOpENS2_15ReductionProdOpENS2_14ReductionSumOpENS2_19ReductionVarianceOpENS2_17ReinterpretCastOpENS2_7Relu6OpENS2_10ReluGradOpENS2_6ReluOpENS2_9ReshapeOpENS2_16ResizeGradientOpENS2_8ResizeOpENS2_9ReverseOpENS2_6RintOpENS2_7RoundOpENS2_24SampleGridDataGradientOpENS2_12SampleGridOpENS2_18ScatterAlongAxisOpENS2_11ScatterNDOpENS2_9ScatterOpENS2_8SelectOpENS2_7ShapeOpENS2_17SigmoidGradientOpENS2_28SigmoidGradientWithSigmoidOpENS2_13SigmoidHardOpENS2_9SigmoidOpENS2_6SignOpENS2_9SignbitOpENS2_5SinOpENS2_23SingleGateRNNGradientOpENS2_15SingleGateRNNOpENS2_6SinhOpENS2_6SizeOpENS2_7SliceOpENS2_9SoftmaxOpENS2_10SoftplusOpENS2_20SoftplusParametricOpENS2_10SoftsignOpENS2_6SortOpENS2_14SpaceToBatchOpENS2_16SpaceToDepth2DOpENS2_7SplitOpENS2_8SquareOpENS2_12SquareRootOpENS2_9SqueezeOpENS2_9StencilOpENS2_22StridedSliceGradientOpENS2_14StridedSliceOpENS2_20StridedSliceUpdateOpENS2_10SubtractOpENS2_7SwishOpENS2_5TanOpENS2_6TanhOpENS2_14TileGradientOpENS2_6TileOpENS2_14TopKGradientOpENS2_6TopKOpENS2_11TransposeOpENS2_10TruncateOpENS2_16TypeConstraintOpENS2_16UnrealizedFoldOpENS2_19UpdateRandomStateOpENS2_20VariableFromTensorOpENS2_6XnorOpENS2_5XorOpEEEEvv(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::ConditionOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::ForOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::IfOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::ExtractOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::FromElementsOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::FuncOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::ModuleOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::ReturnOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::WhileOp>(this);
  mlir::RegisteredOperationName::insert<mlir::mps::serialization::YieldOp>(this);
  mlir::Dialect::addAttributes<mlir::mps::TensorDataLayoutAttr,mlir::mps::ReductionModeAttr,mlir::mps::DeviceHintAttr,mlir::mps::ScatterModeAttr,mlir::mps::PaddingModeAttr,mlir::mps::SamplingModeAttr,mlir::mps::NearestRoundingModeAttr,mlir::mps::SparseTensorStorageAttr,mlir::mps::MetalPixelFormatAttr,mlir::mps::NormalSamplingMethodAttr,mlir::mps::PaddingStyleAttr,mlir::mps::PoolIndicesModeAttr,mlir::mps::RNNActivationAttr,mlir::mps::LSTMGateLayoutAttr,mlir::mps::GRUGateLayoutAttr,mlir::mps::StencilPaddingModeAttr,mlir::mps::CropResizeAlignmentModeAttr,mlir::mps::CropResizeCoordinateModeAttr,mlir::mps::PruningMetricAttr,mlir::mps::PruningStructureAttr,mlir::mps::SimilarityTypeAttr,mlir::mps::FFTScalingModeAttr,mlir::mps::MPSBufferTensorAttr,mlir::mps::CallInlineModeAttr>(this);
  mlir::Dialect::addInterfaces<mlir::mps::MPSInlinerInterface,mlir::mps::MPSBytecodeDialectInterface>(this);
  v2 = operator new(0x48uLL);
  v5 = mlir::mps::MPSResourceBlobManagerInterface::MPSResourceBlobManagerInterface(v2, this);
  mlir::Dialect::addInterface(this, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  mlir::Dialect::addInterface<mlir::mps::MPSOpAsmInterface,mlir::mps::MPSResourceBlobManagerInterface &>(this, v2);
  return mlir::Dialect::addType<mlir::mps::NF4Type>(this);
}

uint64_t _ZN4mlir7Dialect13addOperationsIJNS_3mps6ACosOpENS2_7ACoshOpENS2_6ASinOpENS2_7ASinhOpENS2_7ATan2OpENS2_6ATanOpENS2_7ATanhOpENS2_10AbsoluteOpENS2_16AbsoluteSquareOpENS2_5AddOpENS2_5AndOpENS2_16AssignVariableOpENS2_10BandPartOpENS2_14BatchToSpaceOpENS2_13BiasAddGradOpENS2_9BiasAddOpENS2_12BitwiseAndOpENS2_18BitwiseLeftShiftOpENS2_12BitwiseNotOpENS2_11BitwiseOrOpENS2_17BitwisePopcountOpENS2_19BitwiseRightShiftOpENS2_12BitwiseXorOpENS2_23BroadcastGradientArgsOpENS2_13BroadcastToOpENS2_6CallOpENS2_6CastOpENS2_6CeilOpENS2_7ClampOpENS2_9ColToImOpENS2_8ConcatOpENS2_11ConjugateOpENS2_10ConstantOpENS2_20Conv2DDataGradientOpENS2_8Conv2DOpENS2_23Conv2DWeightsGradientOpENS2_20Conv3DDataGradientOpENS2_8Conv3DOpENS2_23Conv3DWeightsGradientOpENS2_5CosOpENS2_6CoshOpENS2_12CostVolumeOpENS2_15CreateComplexOpENS2_21CreateTextureTensorOpENS2_6CropOpENS2_12CropResizeOpENS2_19CumulativeMaximumOpENS2_19CumulativeMinimumOpENS2_19CumulativeProductOpENS2_15CumulativeSumOpENS2_9DegammaOpENS2_16DepthToSpace2DOpENS2_29DepthwiseConv2DDataGradientOpENS2_17DepthwiseConv2DOpENS2_32DepthwiseConv2DWeightsGradientOpENS2_29DepthwiseConv3DDataGradientOpENS2_17DepthwiseConv3DOpENS2_32DepthwiseConv3DWeightsGradientOpENS2_15DequantizeLUTOpENS2_12DequantizeOpENS2_15DimensionSizeOpENS2_7DiracOpENS2_8DivideOpENS2_18DynamicShapeCastOpENS2_5EluOpENS2_9EqualToOpENS2_5ErfOpENS2_12ExpandDimsOpENS2_16ExponentBase10OpENS2_15ExponentBase2OpENS2_10ExponentOpENS2_22FastFourierTransformOpENS2_11Flatten2DOpENS2_13FloorDivideOpENS2_7FloorOpENS2_13GRUGradientOpENS2_5GRUOpENS2_17GatherAlongAxisOpENS2_10GatherNDOpENS2_8GatherOpENS2_6GeluOpENS2_10GetCoordOpENS2_13GreaterThanOpENS2_22GreaterThanOrEqualToOpENS2_17HammingDistanceOpENS2_20HermiteanToRealFFTOpENS2_10IdentityOpENS2_9ImToColOpENS2_15ImaginaryPartOpENS2_23InitRandomPhiloxStateOpENS2_14InstanceNormOpENS2_10IsFiniteOpENS2_12IsInfiniteOpENS2_7IsNaNOpENS2_8LPNormOpENS2_14LSTMGradientOpENS2_6LSTMOpENS2_11LeakyReluOpENS2_10LessThanOpENS2_19LessThanOrEqualToOpENS2_30LocalConvolutionDataGradientOpENS2_18LocalConvolutionOpENS2_32LocalConvolutionWeightGradientOpENS2_17LogarithmBase10OpENS2_16LogarithmBase2OpENS2_11LogarithmOpENS2_8MatMulOpENS2_25MaterializeSparseTensorOpENS2_23MatrixDecompositionLUOpENS2_15MatrixInverseOpENS2_16MatrixSolverLUOpENS2_9MaximumOpENS2_9MinimumOpENS2_8ModuloOpENS2_10MultiplyOpENS2_7NReluOpENS2_6NandOpENS2_10NegativeOpENS2_23NonMaximumSuppressionOpENS2_9NonZeroOpENS2_5NorOpENS2_15NormalizationOpENS2_12NotEqualToOpENS2_5NotOpENS2_8OneHotOpENS2_4OrOpENS2_7PReluOpENS2_13PadGradientOpENS2_5PadOpENS2_9PermuteOpENS2_13PlaceholderOpENS2_17PoolAvgGradientOpENS2_9PoolAvgOpENS2_20PoolL2NormGradientOpENS2_12PoolL2NormOpENS2_17PoolMaxGradientOpENS2_9PoolMaxOpENS2_7PowerOpENS2_17PruningGradientOpENS2_9PruningOpENS2_10QuantizeOpENS2_14RandomNormalOpENS2_23RandomTruncatedNormalOpENS2_15RandomUniformOpENS2_6RankOpENS2_18ReadDataFromFileOpENS2_14ReadVariableOpENS2_10RealPartOpENS2_20RealToHermiteanFFTOpENS2_12ReciprocalOpENS2_22ReciprocalSquareRootOpENS2_14ReductionAndOpENS2_17ReductionArgMaxOpENS2_17ReductionArgMinOpENS2_20ReductionLogSumExpOpENS2_14ReductionMaxOpENS2_15ReductionMeanOpENS2_14ReductionMinOpENS2_13ReductionOrOpENS2_15ReductionProdOpENS2_14ReductionSumOpENS2_19ReductionVarianceOpENS2_17ReinterpretCastOpENS2_7Relu6OpENS2_10ReluGradOpENS2_6ReluOpENS2_9ReshapeOpENS2_16ResizeGradientOpENS2_8ResizeOpENS2_9ReverseOpENS2_6RintOpENS2_7RoundOpENS2_24SampleGridDataGradientOpENS2_12SampleGridOpENS2_18ScatterAlongAxisOpENS2_11ScatterNDOpENS2_9ScatterOpENS2_8SelectOpENS2_7ShapeOpENS2_17SigmoidGradientOpENS2_28SigmoidGradientWithSigmoidOpENS2_13SigmoidHardOpENS2_9SigmoidOpENS2_6SignOpENS2_9SignbitOpENS2_5SinOpENS2_23SingleGateRNNGradientOpENS2_15SingleGateRNNOpENS2_6SinhOpENS2_6SizeOpENS2_7SliceOpENS2_9SoftmaxOpENS2_10SoftplusOpENS2_20SoftplusParametricOpENS2_10SoftsignOpENS2_6SortOpENS2_14SpaceToBatchOpENS2_16SpaceToDepth2DOpENS2_7SplitOpENS2_8SquareOpENS2_12SquareRootOpENS2_9SqueezeOpENS2_9StencilOpENS2_22StridedSliceGradientOpENS2_14StridedSliceOpENS2_20StridedSliceUpdateOpENS2_10SubtractOpENS2_7SwishOpENS2_5TanOpENS2_6TanhOpENS2_14TileGradientOpENS2_6TileOpENS2_14TopKGradientOpENS2_6TopKOpENS2_11TransposeOpENS2_10TruncateOpENS2_16TypeConstraintOpENS2_16UnrealizedFoldOpENS2_19UpdateRandomStateOpENS2_20VariableFromTensorOpENS2_6XnorOpENS2_5XorOpEEEEvv(uint64_t a1)
{
  mlir::RegisteredOperationName::insert<mlir::mps::ACosOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ACoshOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ASinOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ASinhOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ATan2Op>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ATanOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ATanhOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::AbsoluteOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::AbsoluteSquareOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::AddOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::AndOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::AssignVariableOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BandPartOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BatchToSpaceOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BiasAddGradOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BiasAddOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BitwiseAndOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BitwiseLeftShiftOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BitwiseNotOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BitwiseOrOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BitwisePopcountOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BitwiseRightShiftOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BitwiseXorOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BroadcastGradientArgsOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::BroadcastToOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CallOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CastOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CeilOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ClampOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ColToImOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ConcatOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ConjugateOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ConstantOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::Conv2DDataGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::Conv2DOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::Conv2DWeightsGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::Conv3DDataGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::Conv3DOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::Conv3DWeightsGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CosOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CoshOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CostVolumeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CreateComplexOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CreateTextureTensorOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CropOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CropResizeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CumulativeMaximumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CumulativeMinimumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CumulativeProductOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::CumulativeSumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DegammaOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DepthToSpace2DOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv2DDataGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv2DOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv2DWeightsGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv3DDataGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv3DOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv3DWeightsGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DequantizeLUTOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DequantizeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DimensionSizeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DiracOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DivideOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::DynamicShapeCastOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::EluOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::EqualToOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ErfOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ExpandDimsOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ExponentBase10Op>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ExponentBase2Op>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ExponentOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::FastFourierTransformOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::Flatten2DOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::FloorDivideOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::FloorOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GRUGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GRUOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GatherAlongAxisOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GatherNDOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GatherOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GeluOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GetCoordOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GreaterThanOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::GreaterThanOrEqualToOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::HammingDistanceOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::HermiteanToRealFFTOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::IdentityOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ImToColOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ImaginaryPartOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::InitRandomPhiloxStateOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::InstanceNormOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::IsFiniteOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::IsInfiniteOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::IsNaNOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LPNormOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LSTMGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LSTMOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LeakyReluOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LessThanOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LessThanOrEqualToOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LocalConvolutionDataGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LocalConvolutionOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LocalConvolutionWeightGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LogarithmBase10Op>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LogarithmBase2Op>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::LogarithmOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::MatMulOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::MaterializeSparseTensorOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::MatrixDecompositionLUOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::MatrixInverseOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::MatrixSolverLUOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::MaximumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::MinimumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ModuloOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::MultiplyOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NReluOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NandOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NegativeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NonMaximumSuppressionOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NonZeroOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NorOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NormalizationOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NotEqualToOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::NotOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::OneHotOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::OrOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PReluOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PadGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PadOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PermuteOp>(a1);
  v2 = operator new(0x70uLL);
  v5 = mlir::RegisteredOperationName::Model<mlir::mps::PlaceholderOp>::Model(v2, a1);
  mlir::RegisteredOperationName::insert(&v5, 0, 0);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  mlir::RegisteredOperationName::insert<mlir::mps::PoolAvgGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PoolAvgOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PoolL2NormGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PoolL2NormOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PoolMaxGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PoolMaxOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PowerOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PruningGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::PruningOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::QuantizeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::RandomNormalOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::RandomTruncatedNormalOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::RandomUniformOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::RankOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReadDataFromFileOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReadVariableOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::RealPartOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::RealToHermiteanFFTOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReciprocalOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReciprocalSquareRootOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionAndOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionArgMaxOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionArgMinOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionLogSumExpOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionMaxOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionMeanOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionMinOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionOrOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionProdOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionSumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReductionVarianceOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReinterpretCastOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::Relu6Op>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReluGradOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReluOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReshapeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ResizeGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ResizeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ReverseOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::RintOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::RoundOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SampleGridDataGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SampleGridOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ScatterAlongAxisOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ScatterNDOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ScatterOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SelectOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::ShapeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SigmoidGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SigmoidGradientWithSigmoidOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SigmoidHardOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SigmoidOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SignOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SignbitOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SinOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SingleGateRNNGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SingleGateRNNOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SinhOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SizeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SliceOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SoftmaxOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SoftplusOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SoftplusParametricOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SoftsignOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SortOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SpaceToBatchOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SpaceToDepth2DOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SplitOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SquareOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SquareRootOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SqueezeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::StencilOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::StridedSliceGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::StridedSliceOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::StridedSliceUpdateOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SubtractOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::SwishOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TanOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TanhOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TileGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TileOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TopKGradientOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TopKOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TransposeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TruncateOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::TypeConstraintOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::UnrealizedFoldOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::UpdateRandomStateOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::VariableFromTensorOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::mps::XnorOp>(a1);
  return mlir::RegisteredOperationName::insert<mlir::mps::XorOp>(a1);
}

uint64_t *mlir::Dialect::addAttributes<mlir::mps::TensorDataLayoutAttr,mlir::mps::ReductionModeAttr,mlir::mps::DeviceHintAttr,mlir::mps::ScatterModeAttr,mlir::mps::PaddingModeAttr,mlir::mps::SamplingModeAttr,mlir::mps::NearestRoundingModeAttr,mlir::mps::SparseTensorStorageAttr,mlir::mps::MetalPixelFormatAttr,mlir::mps::NormalSamplingMethodAttr,mlir::mps::PaddingStyleAttr,mlir::mps::PoolIndicesModeAttr,mlir::mps::RNNActivationAttr,mlir::mps::LSTMGateLayoutAttr,mlir::mps::GRUGateLayoutAttr,mlir::mps::StencilPaddingModeAttr,mlir::mps::CropResizeAlignmentModeAttr,mlir::mps::CropResizeCoordinateModeAttr,mlir::mps::PruningMetricAttr,mlir::mps::PruningStructureAttr,mlir::mps::SimilarityTypeAttr,mlir::mps::FFTScalingModeAttr,mlir::mps::MPSBufferTensorAttr,mlir::mps::CallInlineModeAttr>(uint64_t a1)
{
  mlir::Dialect::addAttribute<mlir::mps::TensorDataLayoutAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::ReductionModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::DeviceHintAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::ScatterModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::PaddingModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::SamplingModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::NearestRoundingModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::SparseTensorStorageAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::MetalPixelFormatAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::NormalSamplingMethodAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::PaddingStyleAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::PoolIndicesModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::RNNActivationAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::LSTMGateLayoutAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::GRUGateLayoutAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::StencilPaddingModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::CropResizeAlignmentModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::CropResizeCoordinateModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::PruningMetricAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::PruningStructureAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::SimilarityTypeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::FFTScalingModeAttr>(a1);
  mlir::Dialect::addAttribute<mlir::mps::MPSBufferTensorAttr>(a1);

  return mlir::Dialect::addAttribute<mlir::mps::CallInlineModeAttr>(a1);
}

uint64_t mlir::Dialect::addInterfaces<mlir::mps::MPSInlinerInterface,mlir::mps::MPSBytecodeDialectInterface>(int32x2_t *a1)
{
  v2 = operator new(0x18uLL);
  {
    v8 = v2;
    mlir::arith::ArithDialect::initialize();
    v2 = v8;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v2[1] = a1;
  v2[2] = v3;
  *v2 = &unk_1F5B24B30;
  v11 = v2;
  mlir::Dialect::addInterface(a1, &v11);
  v4 = operator new(0x30uLL);
  {
    v9 = v4;
    mlir::mpsx::MPSXDialect::initialize();
    v4 = v9;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id;
  v4[1] = a1;
  v4[2] = v5;
  *v4 = &unk_1F5B2DBE0;
  v4[3] = &unk_1F5B01218;
  v4[4] = 0x300000001;
  *(v4 + 10) = 4;
  v10 = v4;
  mlir::Dialect::addInterface(a1, &v10);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *mlir::Dialect::addInterface<mlir::mps::MPSOpAsmInterface,mlir::mps::MPSResourceBlobManagerInterface &>(int32x2_t *a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  {
    mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>();
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id;
  v4[1] = a1;
  v4[2] = v5;
  *v4 = &unk_1F5B24BB8;
  v4[3] = a2;
  v8 = v4;
  mlir::Dialect::addInterface(a1, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return v4;
}

void *mlir::mps::MPSDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  result = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
  v9[0] = result;
  v9[1] = v8;
  if (result)
  {
    return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(a2, a5, &v10, v9);
  }

  return result;
}

uint64_t mlir::mps::createBlobHandle@<X0>(mlir::mps *this@<X0>, mlir::MLIRContext *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(this, a2);
  mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(Manager, a2, a3, &v22);
  v15 = v22;
  v16 = v23;
  v19 = v26;
  if (v26 >= 8)
  {
    if ((v26 & 2) != 0 && (v26 & 4) != 0)
    {
      (*((v26 & 0xFFFFFFFFFFFFFFF8) + 8))(&v17, &v24);
      (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(&v24);
    }

    else
    {
      v17 = v24;
      v18 = v25;
    }

    v26 = 0;
  }

  v20 = v27;
  v21 = 1;
  result = mlir::mps::MPSResourceBlobManagerInterface::insert(Manager, "tmp", 3, &v15, a4);
  if (v21 == 1 && v19 >= 8)
  {
    v9 = (v19 & 2) != 0 ? &v17 : v17;
    result = (*(v19 & 0xFFFFFFFFFFFFFFF8))(v9, v15, *(&v15 + 1), v16);
    v10 = v19;
    if (v19 >= 8)
    {
      if ((v19 & 4) != 0)
      {
        if ((v19 & 2) != 0)
        {
          v11 = &v17;
        }

        else
        {
          v11 = v17;
        }

        result = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(v11);
      }

      if ((v10 & 2) == 0)
      {
        llvm::deallocate_buffer(v17, *(&v17 + 1));
      }
    }
  }

  if (v26 >= 8)
  {
    v12 = (v26 & 2) != 0 ? &v24 : v24;
    result = (*(v26 & 0xFFFFFFFFFFFFFFF8))(v12, v22, *(&v22 + 1), v23);
    v13 = v26;
    if (v26 >= 8)
    {
      if ((v26 & 4) != 0)
      {
        if ((v26 & 2) != 0)
        {
          v14 = &v24;
        }

        else
        {
          v14 = v24;
        }

        result = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v24, *(&v24 + 1));
      }
    }
  }

  return result;
}

uint64_t mlir::mps::getBufferTensorAttr(void *a1)
{
  v20 = a1;
  Context = mlir::Attribute::getContext(&v20);
  v2 = mlir::TensorType::operator mlir::ShapedType(&v20);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v2, v3);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v20);
  TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(RHS);
  mlir::mps::createBlobHandle(Context, ElementsAttrStorageSize, TypeAlignmentSize, &v18);
  v7 = v20;
  v25 = v18;
  v26 = v19;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v21[1] = Context;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v28[1] = v21;
  v24 = v7;
  v27 = 0;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v25 - 0xAE502812AA7333) ^ DWORD1(v25));
  v10 = 0x9DDFEA08EB382D69 * (DWORD1(v25) ^ (v9 >> 47) ^ v9);
  v11 = v10 ^ (v10 >> 47);
  v12 = 0x9DDFEA08EB382D69 * v11;
  v13 = 0xB492B66FBE98F273 * ((v7 >> 4) ^ (v7 >> 9));
  v14 = __ROR8__(v13 - 0x9DDFEA08EB382D69 * v11, 43) + 0x6C105E72878303FFLL * v11 - 0x4AA9CCC802B940A1;
  v15 = __ROR8__(v12 ^ 0xC949D7C7509E6557, 20);
  v16 = 0x9DDFEA08EB382D69 * ((v13 - 0xAE502812AA7333 + v15 + 24) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v13 - 0xAE502812AA7333 + v15 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ (v13 - 0xAE502812AA7333 + v15 + 24))));
  v22[0] = &v24;
  v22[1] = v28;
  v23 = &v24;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v22);
}

uint64_t mlir::mps::MPSBufferTensorAttr::get(mlir::MLIRContext *a1, uint64_t a2, __int128 *a3)
{
  v19 = *a3;
  v20 = *(a3 + 2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v15[1] = a1;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v22[1] = v15;
  v18 = a2;
  v21 = 0;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v19 - 0xAE502812AA7333) ^ DWORD1(v19));
  v7 = 0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v6 >> 47) ^ v6);
  v8 = v7 ^ (v7 >> 47);
  v9 = 0x9DDFEA08EB382D69 * v8;
  v10 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v11 = __ROR8__(v10 - 0x9DDFEA08EB382D69 * v8, 43) + 0x6C105E72878303FFLL * v8 - 0x4AA9CCC802B940A1;
  v12 = __ROR8__(v9 ^ 0xC949D7C7509E6557, 20);
  v13 = 0x9DDFEA08EB382D69 * ((v10 - 0xAE502812AA7333 + v12 + 24) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v10 - 0xAE502812AA7333 + v12 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v10 - 0xAE502812AA7333 + v12 + 24))));
  v16[0] = &v18;
  v16[1] = v22;
  v17 = &v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::mps::getBufferTensorAttr(uint64_t a1, const void *a2, const void *a3)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v5[1] = a3;
  v6 = a1;
  v5[0] = a2;
  mlir::mps::getBufferTensorAttrs(&v6, 1uLL, v5, 1, &v7);
  v3 = *v7;
  if (v7 != v8)
  {
    free(v7);
  }

  return v3;
}

void mlir::mps::getBufferTensorAttrs(mlir::Attribute *a1@<X0>, unint64_t a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73[10] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = a1;
    Context = mlir::Attribute::getContext(a1);
    v71 = v73;
    v72 = 0xA00000000;
    if (a2 <= 0xA)
    {
      v68 = v70;
      v69 = 0xA00000000;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, a2, 8);
      v68 = v70;
      v69 = 0xA00000000;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, a2, 16);
    }

    v9 = 0;
    v10 = 0;
    v11 = 8 * a2;
    v12 = v8;
    do
    {
      v63 = *v12;
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v63);
      TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(RHS);
      v15 = TypeAlignmentSize;
      if (v9 <= TypeAlignmentSize)
      {
        v9 = TypeAlignmentSize;
      }

      v16 = v72;
      if (v72 >= HIDWORD(v72))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v72 + 1, 8);
        v16 = v72;
      }

      v17 = (v10 + v15 - 1) / v15 * v15;
      v71[v16] = v17;
      LODWORD(v72) = v72 + 1;
      v18 = v69;
      if (v69 >= HIDWORD(v69))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 16);
        v18 = v69;
      }

      v19 = (v68 + 16 * v18);
      *v19 = v10;
      v19[1] = v17;
      LODWORD(v69) = v69 + 1;
      v20 = mlir::TensorType::operator mlir::ShapedType(&v63);
      v10 = (mlir::mps::getElementsAttrStorageSize(v20, v21) + v17);
      v12 = (v12 + 8);
      v11 -= 8;
    }

    while (v11);
    mlir::mps::createBlobHandle(Context, v10, v9, &v58);
    *a5 = a5 + 16;
    *(a5 + 8) = 0x600000000;
    if (a2 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, a2, 8);
    }

    if (a4 && v72)
    {
      v22 = v71;
      v23 = 8 * v72 - 8;
      v24 = 16 * a4 - 16;
      v25 = 8 * a2 - 8;
      do
      {
        v26 = *v8;
        v56 = v58;
        v57 = v59;
        v27 = *v22;
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v60[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
        v60[1] = Context;
        v67[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
        v67[1] = v60;
        v64 = v56;
        v65 = v57;
        v63 = v26;
        v66 = v27;
        v29 = 0x9DDFEA08EB382D69 * ((8 * v64 - 0xAE502812AA7333) ^ DWORD1(v64));
        v30 = 0x9DDFEA08EB382D69 * (DWORD1(v56) ^ (v29 >> 47) ^ v29);
        v31 = v30 ^ (v30 >> 47);
        v32 = 0x9DDFEA08EB382D69 * v31;
        v33 = 0xB492B66FBE98F273 * ((v26 >> 4) ^ (v26 >> 9));
        v34 = __ROR8__((0x9AE16A3B2F90404FLL * v27) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v31 + __ROR8__(v33 - 0x9DDFEA08EB382D69 * v31, 43);
        v35 = v33 - 0x9AE16A3B2F90404FLL * v27 - 0xAE502812AA7333 + __ROR8__(v32 ^ 0xC949D7C7509E6557, 20) + 24;
        v36 = 0x9DDFEA08EB382D69 * (v35 ^ ((0x9DDFEA08EB382D69 * (v34 ^ v35)) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ v35)));
        v61[0] = &v63;
        v61[1] = v67;
        v62 = &v63;
        ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v36 >> 47) ^ v36), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v62, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v61);
        v38 = *(a5 + 8);
        if (v38 >= *(a5 + 12))
        {
          v54 = ParametricStorageTypeImpl;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v38 + 1, 8);
          ParametricStorageTypeImpl = v54;
          v38 = *(a5 + 8);
        }

        *(*a5 + 8 * v38) = ParametricStorageTypeImpl;
        v39 = *(a5 + 8) + 1;
        *(a5 + 8) = v39;
        v40 = *(*a5 + 8 * v39 - 8);
        v41 = *(v40[2] + 16);
        v42 = v40[5];
        v63 = v40[1];
        v43 = mlir::TensorType::operator mlir::ShapedType(&v63);
        ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v43, v44);
        v46 = *a3;
        a3 += 2;
        memcpy((v41 + v42), v46, ElementsAttrStorageSize);
        if (!v25)
        {
          break;
        }

        if (!v24)
        {
          break;
        }

        v8 = (v8 + 8);
        ++v22;
        v47 = v23;
        v23 -= 8;
        v24 -= 16;
        v25 -= 8;
      }

      while (v47);
    }

    v48 = v68;
    if (v69)
    {
      v49 = v58;
      v50 = v68 + 16 * v69;
      do
      {
        v51 = *v48;
        v52 = *(v48 + 1);
        v48 += 16;
        memset((*(v49 + 16) + v51), 255, v52 - v51);
      }

      while (v48 != v50);
      v48 = v68;
    }

    if (v48 != v70)
    {
      free(v48);
    }

    if (v71 != v73)
    {
      free(v71);
    }
  }

  else
  {
    *a5 = a5 + 16;
    *(a5 + 8) = 0x600000000;
  }
}

uint64_t mlir::mps::MPSBufferTensorAttr::get(mlir::MLIRContext *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v18[1] = a1;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v25[1] = v18;
  v21 = a2;
  v22 = *a3;
  v23 = *(a3 + 2);
  v24 = a4;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v22 - 0xAE502812AA7333) ^ DWORD1(v22));
  v10 = 0x9DDFEA08EB382D69 * (DWORD1(v22) ^ (v9 >> 47) ^ v9);
  v11 = v10 ^ (v10 >> 47);
  v12 = 0x9DDFEA08EB382D69 * v11;
  v13 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v14 = __ROR8__((0x9AE16A3B2F90404FLL * a4) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v11 + __ROR8__(v13 - 0x9DDFEA08EB382D69 * v11, 43);
  v15 = v13 - 0x9AE16A3B2F90404FLL * a4 - 0xAE502812AA7333 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) + 24;
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v15)));
  v19[0] = &v21;
  v19[1] = v25;
  v20 = &v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

uint64_t mlir::mps::MPSBufferTensorAttr::getMutableRawData(mlir::mps::MPSBufferTensorAttr *this)
{
  v1 = *(*(*this + 16) + 16);
  v2 = *(*this + 40);
  v6 = *(*this + 8);
  v3 = mlir::TensorType::operator mlir::ShapedType(&v6);
  mlir::mps::getElementsAttrStorageSize(v3, v4);
  return v1 + v2;
}

uint64_t mlir::mps::getBufferTensorAttrWithKey(void *a1, const void *a2, uint64_t a3, unsigned int *a4, const unsigned __int8 *a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v56 = a1;
  Context = mlir::Attribute::getContext(&v56);
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v9);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v56);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v11, v12);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v56);
  TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(RHS);
  v16 = mlir::mps::MPSResourceBlobManagerInterface::lookup(Manager, a4, a5);
  if (v16)
  {
    v17 = v16;
    v18 = *(Manager + 1);
    {
      mlir::mps::getBufferTensorAttrWithKey();
    }

    v19 = mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id;
    v20 = v56;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    *&v52 = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    *(&v52 + 1) = Context;
    v60 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
    *&v61 = &v52;
    *&v72 = v20;
    *(&v72 + 1) = v17;
    v73 = v19;
    v74 = v18;
    v22 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
    v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v22 >> 47) ^ v22);
    v24 = v23 ^ (v23 >> 47);
    v25 = 0x9DDFEA08EB382D69 * v24;
    v26 = 0x6C105E72878303FFLL * v24 - 0x4AA9CCC802B940A1 + __ROR8__(0xB492B66FBE98F273 * ((v20 >> 4) ^ (v20 >> 9)) - 0x9DDFEA08EB382D69 * v24, 43);
    v27 = 0xFF51AFD7ED558CCDLL - 0x4B6D499041670D8DLL * ((v20 >> 4) ^ (v20 >> 9)) + __ROR8__(v25 ^ 0xC949D7C7509E6557, 20) + 24;
    v28 = 0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v26 ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v26 ^ v27)));
    v64[0] = &v72;
    *&v54 = &v72;
    *(&v54 + 1) = &v60;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v28 >> 47) ^ v28), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  }

  else
  {
    mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(Manager, ElementsAttrStorageSize, TypeAlignmentSize, &v72);
    v65 = v72;
    v66 = v73;
    v69 = v76;
    if (v76 >= 8)
    {
      if ((v76 & 2) != 0 && (v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 8))(&v67, &v74);
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 16))(&v74);
      }

      else
      {
        v67 = v74;
        v68 = v75;
      }

      v76 = 0;
    }

    v70 = v77;
    v71 = 1;
    mlir::mps::MPSResourceBlobManagerInterface::insert(Manager, a4, a5, &v65, &v54);
    if (v71 == 1 && v69 >= 8)
    {
      v30 = (v69 & 2) != 0 ? &v67 : v67;
      (*(v69 & 0xFFFFFFFFFFFFFFF8))(v30, v65, *(&v65 + 1), v66);
      v31 = v69;
      if (v69 >= 8)
      {
        if ((v69 & 4) != 0)
        {
          if ((v69 & 2) != 0)
          {
            v32 = &v67;
          }

          else
          {
            v32 = v67;
          }

          (*((v69 & 0xFFFFFFFFFFFFFFF8) + 16))(v32);
        }

        if ((v31 & 2) == 0)
        {
          llvm::deallocate_buffer(v67, *(&v67 + 1));
        }
      }
    }

    v33 = v56;
    v52 = v54;
    v53 = v55;
    v34 = mlir::MLIRContext::getAttributeUniquer(Context);
    v57[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    v57[1] = Context;
    v64[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
    v64[1] = v57;
    v60 = v33;
    v61 = v52;
    v62 = v53;
    v63 = 0;
    v35 = 0x9DDFEA08EB382D69 * ((8 * v52 - 0xAE502812AA7333) ^ DWORD1(v52));
    v36 = 0x9DDFEA08EB382D69 * (DWORD1(v52) ^ (v35 >> 47) ^ v35);
    v37 = v36 ^ (v36 >> 47);
    v38 = 0x9DDFEA08EB382D69 * v37;
    v39 = 0x6C105E72878303FFLL * v37 - 0x4AA9CCC802B940A1 + __ROR8__(0xB492B66FBE98F273 * ((v33 >> 4) ^ (v33 >> 9)) - 0x9DDFEA08EB382D69 * v37, 43);
    v40 = 0xFF51AFD7ED558CCDLL - 0x4B6D499041670D8DLL * ((v33 >> 4) ^ (v33 >> 9)) + __ROR8__(v38 ^ 0xC949D7C7509E6557, 20) + 24;
    v41 = 0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v40)));
    v58[0] = &v60;
    v58[1] = v64;
    v59 = &v60;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v34, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v41 >> 47) ^ v41), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v59, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v58);
    v43 = *(ParametricStorageTypeImpl[2] + 16);
    v44 = ParametricStorageTypeImpl;
    v45 = ParametricStorageTypeImpl[5];
    v60 = ParametricStorageTypeImpl[1];
    v46 = mlir::TensorType::operator mlir::ShapedType(&v60);
    v48 = mlir::mps::getElementsAttrStorageSize(v46, v47);
    memcpy((v43 + v45), a2, v48);
    if (v76 >= 8)
    {
      v49 = (v76 & 2) != 0 ? &v74 : v74;
      (*(v76 & 0xFFFFFFFFFFFFFFF8))(v49, v72, *(&v72 + 1), v73);
      v50 = v76;
      if (v76 >= 8)
      {
        if ((v76 & 4) != 0)
        {
          if ((v76 & 2) != 0)
          {
            v51 = &v74;
          }

          else
          {
            v51 = v74;
          }

          (*((v76 & 0xFFFFFFFFFFFFFFF8) + 16))(v51);
        }

        if ((v50 & 2) == 0)
        {
          llvm::deallocate_buffer(v74, *(&v74 + 1));
        }
      }
    }

    return v44;
  }
}

llvm::raw_ostream *mlir::mps::operator<<(llvm::raw_ostream *a1, unsigned int *a2)
{
  v3 = llvm::raw_ostream::operator<<(a1, a2[2]);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    v9 = llvm::raw_ostream::write(v3, ".", 1uLL);
    v5 = llvm::raw_ostream::operator<<(v9, a2[3]);
    v6 = *(v5 + 4);
    if (*(v5 + 3) != v6)
    {
LABEL_3:
      *v6 = 46;
      ++*(v5 + 4);
      v7 = a2[4];

      return llvm::raw_ostream::operator<<(v5, v7);
    }
  }

  else
  {
    *v4 = 46;
    ++*(v3 + 4);
    v5 = llvm::raw_ostream::operator<<(v3, a2[3]);
    v6 = *(v5 + 4);
    if (*(v5 + 3) != v6)
    {
      goto LABEL_3;
    }
  }

  v5 = llvm::raw_ostream::write(v5, ".", 1uLL);
  v7 = a2[4];

  return llvm::raw_ostream::operator<<(v5, v7);
}

void mlir::mps::MPSDialect::convertUnregisteredOperation(mlir::OpBuilder *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v30[0] = *(*(a3 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v30);
  if (v9 && (v9 >= 0x17 ? (v10 = 23) : (v10 = v9), (v11 = v9, v12 = memcmp(AttrData, "mps.reverse_square_root", v10), v11 == 23) && !v12))
  {
    v13 = *(a2 + 8);
    if (v13 && (v13 != 1 || *(a2 + 12) >= 2u))
    {
      v28 = "incorrect version of the operation";
      v29 = 259;
      mlir::Operation::emitError(a3, &v28, v30);
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v30[0])
      {
        mlir::InFlightDiagnostic::report(v30);
      }

      if (v38 == 1)
      {
        if (v37 != &v38)
        {
          free(v37);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v36;
          v22 = __p;
          if (v36 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v36 = v20;
          operator delete(v22);
        }

        v23 = v33;
        if (v33)
        {
          v24 = v34;
          v25 = v33;
          if (v34 != v33)
          {
            do
            {
              v27 = *--v24;
              v26 = v27;
              *v24 = 0;
              if (v27)
              {
                operator delete[](v26);
              }
            }

            while (v24 != v23);
            v25 = v33;
          }

          v34 = v23;
          operator delete(v25);
        }

        if (v31 != &v32)
        {
          free(v31);
        }
      }
    }

    else if ((*(a3 + 46) & 0x80) != 0 && *(a3 + 68) == 1)
    {
      v14 = *(a3 + 24);
      v30[0] = *(*(a3 + 72) + 24);
      v15 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(a1, v14, v30);
      v30[0] = mlir::Operation::getAttrDictionary(a3);
      Value = mlir::ArrayAttr::getValue(v30);
      mlir::Operation::setAttrs(v15, Value, v17);
      v18 = *(v15 + 36);
      v19 = v15 - 16;
      if (!v18)
      {
        v19 = 0;
      }

      *a4 = v19;
      *(a4 + 8) = v18;
      *(a4 + 16) = 1;
    }

    else
    {
      mlir::mps::MPSDialect::convertUnregisteredOperation(a3, a4);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 16) = 0;
  }
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseUnaryComparisonOpReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a2;
  v16[1] = a3;
  v15 = a1;
  IntegerType = mlir::Builder::getIntegerType(&v15, 1);
  v7 = mlir::UnrankedTensorType::get(IntegerType);
  if (a3 == 1)
  {
    v8 = *(mlir::ValueRange::dereference_iterator(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v8 = 0;
    }

    v14 = v8;
    if (v8)
    {
      v13[0] = 0;
      v13[16] = 0;
      v7 = mlir::TensorType::cloneWith(&v14, v13, IntegerType);
    }
  }

  v11 = *(a4 + 8);
  if (v11 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v11 + 1, 8);
    LODWORD(v11) = *(a4 + 8);
  }

  *(*a4 + 8 * v11) = v7;
  ++*(a4 + 8);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseBinaryMathOpReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v21[0] = a2;
  v21[1] = a3;
  if (a3 != 2)
  {
LABEL_8:
    v11 = mlir::Float32Type::get(a1, a2);
    v12 = mlir::UnrankedTensorType::get(v11);
    v13 = *(a4 + 8);
    if (v13 >= *(a4 + 12))
    {
LABEL_17:
      v18 = v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v13 + 1, 8);
      v12 = v18;
      LODWORD(v13) = *(a4 + 8);
    }

LABEL_9:
    *(*a4 + 8 * v13) = v12;
    ++*(a4 + 8);
    return 1;
  }

  v5 = a1;
  v6 = mlir::ValueRange::dereference_iterator(v21, 0);
  v7 = mlir::ValueRange::dereference_iterator(v21, 1);
  v20[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
  v20[1] = v8;
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8));
  v19[0] = v9;
  v19[1] = a2;
  if (v20[0])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    a1 = v5;
    goto LABEL_8;
  }

  ArgOperands = mlir::CallOpInterface::getArgOperands(v20);
  if (!ArgOperands || (mlir::CallOpInterface::getArgOperands(v19) & 1) == 0)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v20[0]);
    v12 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v13 = *(a4 + 8);
    if (v13 >= *(a4 + 12))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v20[0], v19[0], 0);
  if (!BroadcastedType)
  {
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a4, BroadcastedType);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseBinaryComparisonOpReturnTypes(mlir *a1, Location a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v27[0] = a3;
  v27[1] = a4;
  if (a4 == 2)
  {
    v25 = (*(mlir::ValueRange::dereference_iterator(v27, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v24 = (*(mlir::ValueRange::dereference_iterator(v27, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v25, v24, 0);
    v23 = BroadcastedType;
    if (BroadcastedType)
    {
      v9 = BroadcastedType;
      Context = mlir::Attribute::getContext(&v25);
      v11 = mlir::IntegerType::get(Context, 1, 0);
      v12 = *(*v9 + 136);
      if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v16 = mlir::UnrankedTensorType::get(v11);
        if (!v16)
        {
LABEL_6:
          v17.var0.var0 = a2.var0.var0;
          return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a1, v17, "unexpected type ", &v23);
        }
      }

      else
      {
        if (v12 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          goto LABEL_6;
        }

        v26 = v9;
        v13 = v11;
        Value = mlir::ArrayAttr::getValue(&v26);
        v16 = mlir::RankedTensorType::get(Value, v15, v13, 0);
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      v20 = a5;
      v21 = *(a5 + 8);
      if (v21 >= *(a5 + 12))
      {
        v22 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v21 + 1, 8);
        v16 = v22;
        v20 = a5;
        LODWORD(v21) = *(a5 + 8);
      }

      *(*v20 + 8 * v21) = v16;
      ++*(v20 + 8);
      return 1;
    }

    else
    {
      v19.var0.var0 = a2.var0.var0;
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(a1, v19, "input types ", &v25, " and ", &v24, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a1, a2, "invalid number of operands");
  }
}

void mlir::mps::UnrealizedFoldOp::downgradeToVersion(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v23[0] = &unk_1F5B01218;
  v23[1] = 0x100000001;
  v24 = 0;
  v5 = *(a2 + 8);
  if (v5 && (v5 != 1 || *(a2 + 12)))
  {
    v6 = *(v4 + 36);
    v7 = v4 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_1F5B171B8;
    v18[1] = a2;
    v19[0] = &unk_1F5B171E8;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              operator delete[](v14);
            }
          }

          while (v12 != v11);
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

void *mlir::mps::ReciprocalSquareRootOp::downgradeToVersion@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *result;
  v7 = *(a3 + 8);
  if (!v7 || v7 == 1 && *(a3 + 12) <= 1u)
  {
    v8 = v6[3];
    Context = mlir::Attribute::getContext((v6 + 3));
    v25 = 261;
    v24[0] = "mps.reverse_square_root";
    v24[1] = 23;
    v10 = mlir::StringAttr::get(Context, v24);
    if ((*(v6 + 46) & 0x80) != 0)
    {
      v11 = v6[9];
      v12 = *(v6 + 17);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    mlir::ValueRange::ValueRange(v30, v11, v12);
    v13 = *(v6 + 9);
    v14 = (v6 - 2);
    if (!v13)
    {
      v14 = 0;
    }

    v31 = v14;
    v32 = v13;
    mlir::OperandRange::getTypes(&v31, &AttrDictionary);
    NextResultAtOffset = AttrDictionary;
    v16 = v27;
    v17 = v28;
    if (v27)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v27);
    }

    mlir::ValueRange::ValueRange(&v31, NextResultAtOffset, v17 - v16);
    mlir::TypeRange::TypeRange(v29, v31, v32);
    AttrDictionary = mlir::Operation::getAttrDictionary(v6);
    Value = mlir::ArrayAttr::getValue(&AttrDictionary);
    v20 = v19;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, v6);
    mlir::BlockRange::BlockRange(&AttrDictionary, AttrDictionary, v27);
    result = mlir::OpBuilder::create(a2, v8, v10, v30[0], v30[1], v29[0], v29[1], v21, Value, v20, AttrDictionary, v27, 0, 0);
    v6 = result;
  }

  v22 = *(v6 + 9);
  v23 = v6 - 2;
  if (!v22)
  {
    v23 = 0;
  }

  *a4 = v23;
  *(a4 + 8) = v22;
  *(a4 + 16) = 1;
  return result;
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseTernaryMathOpReturnTypes(mlir *a1, Location a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v20[0] = a3;
  v20[1] = a4;
  if (a4 == 3)
  {
    v19 = (*(mlir::ValueRange::dereference_iterator(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v18 = (*(mlir::ValueRange::dereference_iterator(v20, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = (*(mlir::ValueRange::dereference_iterator(v20, 2) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = v8;
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v19, v18, 0);
    if (BroadcastedType)
    {
      v10 = mlir::OpTrait::util::getBroadcastedType(BroadcastedType, v8, 0);
      if (v10)
      {
        v11 = a5;
        v12 = *(a5 + 8);
        if (v12 >= *(a5 + 12))
        {
          v16 = v10;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v12 + 1, 8);
          v10 = v16;
          v11 = a5;
          LODWORD(v12) = *(a5 + 8);
        }

        *(*v11 + 8 * v12) = v10;
        ++*(v11 + 8);
        return 1;
      }

      else
      {
        v15.var0.var0 = a2.var0.var0;
        return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(a1, v15, "input types ", &v19, " , ", &v18, " and ", &v17, " are not broadcast compatible");
      }
    }

    else
    {
      v14.var0.var0 = a2.var0.var0;
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(a1, v14, "input types ", &v19, " and ", &v18, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a1, a2, "invalid number of operands");
  }
}

uint64_t mlir::mps::SelectOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v26[0] = a4;
  v26[1] = a5;
  if (a5 == 3)
  {
    v13 = (*(mlir::ValueRange::dereference_iterator(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = v13;
    v24 = (*(mlir::ValueRange::dereference_iterator(v26, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    v23 = (*(mlir::ValueRange::dereference_iterator(v26, 2) + 8) & 0xFFFFFFFFFFFFFFF8);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v24);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v24, v23, ElementTypeOrSelf);
    if (BroadcastedType && (v16 = mlir::OpTrait::util::getBroadcastedType(BroadcastedType, v13, ElementTypeOrSelf)) != 0)
    {
      v17 = *(a11 + 8);
      if (v17 >= *(a11 + 12))
      {
        v22 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v17 + 1, 8);
        v16 = v22;
        LODWORD(v17) = *(a11 + 8);
      }

      *(*a11 + 8 * v17) = v16;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      v21.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(a2, v21, "input types ", &v25, ", ", &v24, ", and ", &v23, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(mlir *a1, Location a2, char *a3, uint64_t *a4, char *a5, uint64_t *a6, char *a7, uint64_t *a8, const char *a9)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v25);
  if (v25)
  {
    mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[4],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(&v26, a3, a4, a5, a6, a7, a8, a9);
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v32;
      v18 = __p;
      if (v32 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v32 = v16;
      operator delete(v18);
    }

    v19 = v29;
    if (v29)
    {
      v20 = v30;
      v21 = v29;
      if (v30 != v29)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v29;
      }

      v30 = v19;
      operator delete(v21);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  return v15;
}

BOOL mlir::mps::SelectOp::verify(mlir::mps::SelectOp *this)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = *(*this + 72);
  v3 = *(v2[3] + 8);
  v4 = *(v2[7] + 8);
  v5 = *(v2[11] + 8);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((v4 & 0xFFFFFFFFFFFFFFF8));
  v63 = mlir::getElementTypeOrSelf((v3 & 0xFFFFFFFFFFFFFFF8));
  if (v63 == ElementTypeOrSelf || mlir::Type::isInteger(&v63, 1))
  {
    if (mlir::OpTrait::util::getBroadcastedType((v3 & 0xFFFFFFFFFFFFFFF8), (v4 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf) && mlir::OpTrait::util::getBroadcastedType((v3 & 0xFFFFFFFFFFFFFFF8), (v5 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf) && mlir::OpTrait::util::getBroadcastedType((v4 & 0xFFFFFFFFFFFFFFF8), (v5 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf))
    {
      return 1;
    }

    v61[0] = "input types ";
    v62 = 259;
    mlir::OpState::emitOpError(this, v61, v67);
    if (v67[0])
    {
      v8 = &v64;
      mlir::DiagnosticArgument::DiagnosticArgument(&v64, v3 & 0xFFFFFFFFFFFFFFF8);
      v9 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v69 > &v64)
        {
          v54 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v9 = v68;
          v8 = (v68 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v8 = &v64;
          v9 = v68;
        }
      }

      v10 = &v9[24 * v69];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v69;
      if (v67[0])
      {
        v64 = 3;
        v65 = ", ";
        v66 = 2;
        v13 = &v64;
        v14 = v68;
        if (v12 >= v70)
        {
          if (v68 <= &v64 && v68 + 24 * v12 > &v64)
          {
            v55 = &v64 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v12 + 1, 24);
            v14 = v68;
            v13 = (v68 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v12 + 1, 24);
            v13 = &v64;
            v14 = v68;
          }
        }

        v15 = &v14[24 * v69];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v69;
        if (v67[0])
        {
          v17 = &v64;
          mlir::DiagnosticArgument::DiagnosticArgument(&v64, v4 & 0xFFFFFFFFFFFFFFF8);
          v18 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v64 && v68 + 24 * v69 > &v64)
            {
              v57 = &v64 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v18 = v68;
              v17 = (v68 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v17 = &v64;
              v18 = v68;
            }
          }

          v19 = &v18[24 * v69];
          v20 = *v17;
          *(v19 + 2) = *(v17 + 2);
          *v19 = v20;
          v21 = ++v69;
          if (v67[0])
          {
            v64 = 3;
            v65 = ", and ";
            v66 = 6;
            v22 = &v64;
            v23 = v68;
            if (v21 >= v70)
            {
              if (v68 <= &v64 && v68 + 24 * v21 > &v64)
              {
                v58 = &v64 - v68;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
                v23 = v68;
                v22 = (v68 + v58);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
                v22 = &v64;
                v23 = v68;
              }
            }

            v24 = &v23[24 * v69];
            v25 = *v22;
            *(v24 + 2) = *(v22 + 2);
            *v24 = v25;
            ++v69;
            if (v67[0])
            {
              v26 = &v64;
              mlir::DiagnosticArgument::DiagnosticArgument(&v64, v5 & 0xFFFFFFFFFFFFFFF8);
              v27 = v68;
              if (v69 >= v70)
              {
                if (v68 <= &v64 && v68 + 24 * v69 > &v64)
                {
                  v59 = &v64 - v68;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
                  v27 = v68;
                  v26 = (v68 + v59);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
                  v26 = &v64;
                  v27 = v68;
                }
              }

              v28 = &v27[24 * v69];
              v29 = *v26;
              *(v28 + 2) = *(v26 + 2);
              *v28 = v29;
              v30 = ++v69;
              if (v67[0])
              {
                v64 = 3;
                v65 = " are not broadcast compatible";
                v66 = 29;
                v31 = &v64;
                v32 = v68;
                if (v30 >= v70)
                {
                  if (v68 <= &v64 && v68 + 24 * v30 > &v64)
                  {
                    v60 = &v64 - v68;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
                    v32 = v68;
                    v31 = (v68 + v60);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
                    v31 = &v64;
                    v32 = v68;
                  }
                }

                v33 = &v32[24 * v69];
                v34 = *v31;
                *(v33 + 2) = *(v31 + 2);
                *v33 = v34;
                ++v69;
              }
            }
          }
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v75;
        v37 = __p;
        if (v75 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v75 = v35;
        operator delete(v37);
      }

      v38 = v72;
      if (!v72)
      {
        goto LABEL_57;
      }

      v39 = v73;
      v40 = v72;
      if (v73 == v72)
      {
LABEL_56:
        v73 = v38;
        operator delete(v40);
LABEL_57:
        if (v68 != v71)
        {
          free(v68);
        }

        return v7;
      }

      do
      {
        v42 = *--v39;
        v41 = v42;
        *v39 = 0;
        if (v42)
        {
          operator delete[](v41);
        }
      }

      while (v39 != v38);
LABEL_55:
      v40 = v72;
      goto LABEL_56;
    }
  }

  else
  {
    v61[0] = "condition operand must be a 1-bit integer tensor or match the value element type, but got ";
    v62 = 259;
    mlir::OpState::emitOpError(this, v61, v67);
    if (v67[0])
    {
      v43 = &v64;
      mlir::DiagnosticArgument::DiagnosticArgument(&v64, v3 & 0xFFFFFFFFFFFFFFF8);
      v44 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v69 > &v64)
        {
          v56 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v44 = v68;
          v43 = (v68 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v43 = &v64;
          v44 = v68;
        }
      }

      v45 = &v44[24 * v69];
      v46 = *v43;
      *(v45 + 2) = *(v43 + 2);
      *v45 = v46;
      ++v69;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v75;
        v49 = __p;
        if (v75 != __p)
        {
          do
          {
            v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v75 = v47;
        operator delete(v49);
      }

      v38 = v72;
      if (!v72)
      {
        goto LABEL_57;
      }

      v50 = v73;
      v40 = v72;
      if (v73 == v72)
      {
        goto LABEL_56;
      }

      do
      {
        v52 = *--v50;
        v51 = v52;
        *v50 = 0;
        if (v52)
        {
          operator delete[](v51);
        }
      }

      while (v50 != v38);
      goto LABEL_55;
    }
  }

  return v7;
}

uint64_t mlir::mps::anonymous namespace::verifyTensorBufferAttr(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v117 = *MEMORY[0x1E69E9840];
  v102 = a3;
  if ((*(a4 + 96) & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      a1(v106, a2);
      if (v106[0])
      {
        v103 = 3;
        v104 = "MPSBufferTensor blob entry is undefined";
        v105 = 39;
        v61 = &v103;
        v62 = v107;
        if (v108 >= v109)
        {
          if (v107 <= &v103 && v107 + 24 * v108 > &v103)
          {
            v93 = &v103 - v107;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
            v62 = v107;
            v61 = (v107 + v93);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
            v61 = &v103;
            v62 = v107;
          }
        }

        v63 = &v62[24 * v108];
        v64 = *v61;
        *(v63 + 2) = *(v61 + 2);
        *v63 = v64;
        ++v108;
      }

      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
      if (v106[0])
      {
        mlir::InFlightDiagnostic::report(v106);
      }

      if (v116 == 1)
      {
        if (v115 != &v116)
        {
          free(v115);
        }

        v65 = __p;
        if (__p)
        {
          v66 = v114;
          v67 = __p;
          if (v114 != __p)
          {
            do
            {
              v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
            }

            while (v66 != v65);
            v67 = __p;
          }

          v114 = v65;
          operator delete(v67);
        }

        v46 = v111;
        if (!v111)
        {
          goto LABEL_97;
        }

        v68 = v112;
        v48 = v111;
        if (v112 == v111)
        {
          goto LABEL_96;
        }

        do
        {
          v70 = *--v68;
          v69 = v70;
          *v68 = 0;
          if (v70)
          {
            operator delete[](v69);
          }
        }

        while (v68 != v46);
        goto LABEL_95;
      }

      return v42;
    }

    return 1;
  }

  if ((*(a4 + 80) & 1) == 0)
  {
    a1(v106, a2);
    if (v106[0])
    {
      v103 = 3;
      v104 = "MPSBufferTensor blob entry memory was released while still in use";
      v105 = 65;
      v51 = &v103;
      v52 = v107;
      if (v108 >= v109)
      {
        if (v107 <= &v103 && v107 + 24 * v108 > &v103)
        {
          v92 = &v103 - v107;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
          v52 = v107;
          v51 = (v107 + v92);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
          v51 = &v103;
          v52 = v107;
        }
      }

      v53 = &v52[24 * v108];
      v54 = *v51;
      *(v53 + 2) = *(v51 + 2);
      *v53 = v54;
      ++v108;
    }

    v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
    if (v106[0])
    {
      mlir::InFlightDiagnostic::report(v106);
    }

    if (v116 == 1)
    {
      if (v115 != &v116)
      {
        free(v115);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v114;
        v57 = __p;
        if (v114 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v114 = v55;
        operator delete(v57);
      }

      v46 = v111;
      if (!v111)
      {
        goto LABEL_97;
      }

      v58 = v112;
      v48 = v111;
      if (v112 == v111)
      {
        goto LABEL_96;
      }

      do
      {
        v60 = *--v58;
        v59 = v60;
        *v58 = 0;
        if (v60)
        {
          operator delete[](v59);
        }
      }

      while (v58 != v46);
      goto LABEL_95;
    }

    return v42;
  }

  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v102);
  TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(RHS);
  v13 = mlir::TensorType::operator mlir::ShapedType(&v102);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v13, v14);
  v16 = a5;
  v17 = (ElementsAttrStorageSize + a5);
  if (v17 > v8)
  {
    a1(v106, a2);
    if (v106[0])
    {
      v103 = 3;
      v104 = "MPSBufferTensor blob is of size ";
      v105 = 32;
      v18 = &v103;
      v19 = v107;
      if (v108 >= v109)
      {
        if (v107 <= &v103 && v107 + 24 * v108 > &v103)
        {
          v94 = &v103 - v107;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
          v19 = v107;
          v18 = (v107 + v94);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
          v18 = &v103;
          v19 = v107;
        }
      }

      v20 = &v19[24 * v108];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      v22 = ++v108;
      if (v106[0])
      {
        v103 = 5;
        v104 = v8;
        v23 = &v103;
        v24 = v107;
        if (v22 >= v109)
        {
          if (v107 <= &v103 && v107 + 24 * v22 > &v103)
          {
            v95 = &v103 - v107;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v22 + 1, 24);
            v24 = v107;
            v23 = (v107 + v95);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v22 + 1, 24);
            v23 = &v103;
            v24 = v107;
          }
        }

        v25 = &v24[24 * v108];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        v27 = ++v108;
        if (v106[0])
        {
          v103 = 3;
          v104 = " bytes, expected it to be at least ";
          v105 = 35;
          v28 = &v103;
          v29 = v107;
          if (v27 >= v109)
          {
            if (v107 <= &v103 && v107 + 24 * v27 > &v103)
            {
              v97 = &v103 - v107;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v27 + 1, 24);
              v29 = v107;
              v28 = (v107 + v97);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v27 + 1, 24);
              v28 = &v103;
              v29 = v107;
            }
          }

          v30 = &v29[24 * v108];
          v31 = *v28;
          *(v30 + 2) = *(v28 + 2);
          *v30 = v31;
          v32 = ++v108;
          if (v106[0])
          {
            v103 = 5;
            v104 = v17;
            v33 = &v103;
            v34 = v107;
            if (v32 >= v109)
            {
              if (v107 <= &v103 && v107 + 24 * v32 > &v103)
              {
                v99 = &v103 - v107;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v32 + 1, 24);
                v34 = v107;
                v33 = (v107 + v99);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v32 + 1, 24);
                v33 = &v103;
                v34 = v107;
              }
            }

            v35 = &v34[24 * v108];
            v36 = *v33;
            *(v35 + 2) = *(v33 + 2);
            *v35 = v36;
            v37 = ++v108;
            if (v106[0])
            {
              v103 = 3;
              v104 = " bytes";
              v105 = 6;
              v38 = &v103;
              v39 = v107;
              if (v37 >= v109)
              {
                if (v107 <= &v103 && v107 + 24 * v37 > &v103)
                {
                  v101 = &v103 - v107;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v37 + 1, 24);
                  v39 = v107;
                  v38 = (v107 + v101);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v37 + 1, 24);
                  v38 = &v103;
                  v39 = v107;
                }
              }

              v40 = &v39[24 * v108];
              v41 = *v38;
              *(v40 + 2) = *(v38 + 2);
              *v40 = v41;
              ++v108;
            }
          }
        }
      }
    }

    v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
    if (v106[0])
    {
      mlir::InFlightDiagnostic::report(v106);
    }

    if (v116 == 1)
    {
      if (v115 != &v116)
      {
        free(v115);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v114;
        v45 = __p;
        if (v114 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v114 = v43;
        operator delete(v45);
      }

      v46 = v111;
      if (!v111)
      {
        goto LABEL_97;
      }

      v47 = v112;
      v48 = v111;
      if (v112 == v111)
      {
LABEL_96:
        v112 = v46;
        operator delete(v48);
LABEL_97:
        if (v107 != v110)
        {
          free(v107);
        }

        return v42;
      }

      do
      {
        v50 = *--v47;
        v49 = v50;
        *v47 = 0;
        if (v50)
        {
          operator delete[](v49);
        }
      }

      while (v47 != v46);
LABEL_95:
      v48 = v111;
      goto LABEL_96;
    }

    return v42;
  }

  if (!((v9 + v16) % TypeAlignmentSize))
  {
    return 1;
  }

  a1(v106, a2);
  if (v106[0])
  {
    v103 = 3;
    v104 = "MPSBufferTensor blob is not aligned to ";
    v105 = 39;
    v71 = &v103;
    v72 = v107;
    if (v108 >= v109)
    {
      if (v107 <= &v103 && v107 + 24 * v108 > &v103)
      {
        v96 = &v103 - v107;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
        v72 = v107;
        v71 = (v107 + v96);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
        v71 = &v103;
        v72 = v107;
      }
    }

    v73 = &v72[24 * v108];
    v74 = *v71;
    *(v73 + 2) = *(v71 + 2);
    *v73 = v74;
    v75 = ++v108;
    if (v106[0])
    {
      v103 = 5;
      v104 = TypeAlignmentSize;
      v76 = &v103;
      v77 = v107;
      if (v75 >= v109)
      {
        if (v107 <= &v103 && v107 + 24 * v75 > &v103)
        {
          v98 = &v103 - v107;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v75 + 1, 24);
          v77 = v107;
          v76 = (v107 + v98);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v75 + 1, 24);
          v76 = &v103;
          v77 = v107;
        }
      }

      v78 = &v77[24 * v108];
      v79 = *v76;
      *(v78 + 2) = *(v76 + 2);
      *v78 = v79;
      v80 = ++v108;
      if (v106[0])
      {
        v103 = 3;
        v104 = " bytes";
        v105 = 6;
        v81 = &v103;
        v82 = v107;
        if (v80 >= v109)
        {
          if (v107 <= &v103 && v107 + 24 * v80 > &v103)
          {
            v100 = &v103 - v107;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v80 + 1, 24);
            v82 = v107;
            v81 = (v107 + v100);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v80 + 1, 24);
            v81 = &v103;
            v82 = v107;
          }
        }

        v83 = &v82[24 * v108];
        v84 = *v81;
        *(v83 + 2) = *(v81 + 2);
        *v83 = v84;
        ++v108;
      }
    }
  }

  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
  if (v106[0])
  {
    mlir::InFlightDiagnostic::report(v106);
  }

  if (v116 == 1)
  {
    if (v115 != &v116)
    {
      free(v115);
    }

    v85 = __p;
    if (__p)
    {
      v86 = v114;
      v87 = __p;
      if (v114 != __p)
      {
        do
        {
          v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
        }

        while (v86 != v85);
        v87 = __p;
      }

      v114 = v85;
      operator delete(v87);
    }

    v46 = v111;
    if (!v111)
    {
      goto LABEL_97;
    }

    v88 = v112;
    v48 = v111;
    if (v112 == v111)
    {
      goto LABEL_96;
    }

    do
    {
      v90 = *--v88;
      v89 = v90;
      *v88 = 0;
      if (v90)
      {
        operator delete[](v89);
      }
    }

    while (v88 != v46);
    goto LABEL_95;
  }

  return v42;
}

uint64_t mlir::mps::MPSBufferTensorAttr::getRawData(mlir::mps::MPSBufferTensorAttr *this)
{
  v1 = *(*(*this + 16) + 16);
  v2 = *(*this + 40);
  v6 = *(*this + 8);
  v3 = mlir::TensorType::operator mlir::ShapedType(&v6);
  mlir::mps::getElementsAttrStorageSize(v3, v4);
  return v2 + v1;
}

__n128 mlir::mps::MPSBufferTensorAttr::getHandle@<Q0>(__n128 **this@<X0>, __n128 *a2@<X8>)
{
  v2 = *this;
  result = (*this)[1];
  *a2 = result;
  a2[1].n128_u64[0] = v2[2].n128_u64[0];
  return result;
}

void *mlir::mps::ConstantOp::getAsAttribute(mlir::mps::ConstantOp *this)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (result || (result = mlir::UnitAttr::get(Context, Context)) != 0)
  {
    v4 = *result;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v14 = result;
      mlir::mps::ConstantOp::getAsAttribute();
      result = v14;
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        return result;
      }
    }

    v8 = v6;
    v9 = v7;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[2 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 2;
      v9 += ~(v9 >> 1);
      if (v13 < v5)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
  }

  return result;
}

uint64_t mlir::mps::ConstantOp::setValueAttr(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(*result + 44);
  if (a2)
  {
    v4 = *(*a2 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    v12 = v6;
    if (v5)
    {
      v7 = a2[2];
      v8 = a2;
      Context = mlir::Attribute::getContext(&v12);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v10);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v7 + 88);
      result = llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
      a2 = v8;
    }
  }

  *(v2 + 16 * ((v3 >> 23) & 1) + 64) = a2;
  return result;
}

void *mlir::mps::ConstantOp::updateValue(mlir::mps::ConstantOp *a1, void *a2)
{
  result = mlir::mps::ConstantOp::getAsAttribute(a1);
  if (result != a2)
  {
    v5 = *a1;
    v6 = *(*a1 + 44);
    if (a2)
    {
      v7 = *(*a2 + 136);
      v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
      if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      v14 = v9;
      if (v8)
      {
        v10 = a2[2];
        Context = mlir::Attribute::getContext(&v14);
        Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v12);
        llvm::sys::RWMutexImpl::lock((Manager + 48));
        ++*(v10 + 88);
        result = llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
      }
    }

    *(v5 + 16 * ((v6 >> 23) & 1) + 64) = a2;
  }

  return result;
}

BOOL mlir::mps::ConstantOp::verify(mlir::mps::ConstantOp *this)
{
  v135 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((*this + 24));
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v3)
  {
    v3 = mlir::UnitAttr::get(Context, Context);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v110 = v3;
    v14 = v4;
    mlir::mps::ConstantOp::getAsAttribute();
    v3 = v110;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v14 + 8);
    v7 = *(v14 + 16);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 == &v6[2 * v7] || *v8 != v5 || !v8[1])
  {
LABEL_15:
    v115[0] = "failed: property must contain a valid ElementsAttr";
    v116 = 259;
    mlir::OpState::emitOpError(this, v115, &v123);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v123);
    if (v123)
    {
      mlir::InFlightDiagnostic::report(&v123);
    }

    if (v134 == 1)
    {
      if (v133 != &v134)
      {
        free(v133);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v132;
        v18 = __p;
        if (v132 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v132 = v16;
        operator delete(v18);
      }

      v19 = v129;
      if (!v129)
      {
        goto LABEL_138;
      }

      v20 = v130;
      v21 = v129;
      if (v130 == v129)
      {
        goto LABEL_137;
      }

      do
      {
        v23 = *--v20;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          operator delete[](v22);
        }
      }

      while (v20 != v19);
      goto LABEL_136;
    }

    return v15;
  }

  v24 = *v3;
  {
    v111 = v3;
    v34 = v24;
    mlir::mps::ConstantOp::getAsAttribute();
    v3 = v111;
    v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v26 = *(v34 + 8);
    v27 = *(v34 + 16);
    if (v27)
    {
      goto LABEL_34;
    }

LABEL_44:
    v35 = 0;
    goto LABEL_46;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  if (!v27)
  {
    goto LABEL_44;
  }

LABEL_34:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_44;
  }

  v35 = v28[1];
LABEL_46:
  v36 = v3;
  v123 = v3;
  v124 = v35;
  Type = mlir::ElementsAttr::getType(&v123);
  v38 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(Type);
  v114[0] = v38;
  v114[1] = v39;
  if (v38)
  {
    if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v123 = this;
      v15 = 0;
      if ((v40 & 1) == 0)
      {
        return v15;
      }
    }

    if (*(*this + 36))
    {
      v41 = *this - 16;
    }

    else
    {
      v41 = 0;
    }

    v42 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v42)
    {
      goto LABEL_81;
    }

    v43 = *v42;
    {
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (v46)
      {
        goto LABEL_55;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (v46)
      {
LABEL_55:
        v47 = v45;
        v48 = v46;
        do
        {
          v49 = v48 >> 1;
          v50 = &v47[2 * (v48 >> 1)];
          v52 = *v50;
          v51 = v50 + 2;
          v48 += ~(v48 >> 1);
          if (v52 < v44)
          {
            v47 = v51;
          }

          else
          {
            v48 = v49;
          }
        }

        while (v48);
LABEL_79:
        if (v47 != &v45[2 * v46] && *v47 == v44)
        {
          v80 = v47[1];
          v112 = v42;
          v113 = v80;
          if (!mlir::CallOpInterface::getArgOperands(&v112))
          {
            goto LABEL_104;
          }

          goto LABEL_82;
        }

LABEL_81:
        v112 = v42;
        v113 = 0;
        if (!mlir::CallOpInterface::getArgOperands(&v112))
        {
          goto LABEL_104;
        }

LABEL_82:
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v114);
        v61 = v60;
        v62 = mlir::CallableOpInterface::getArgAttrsAttr(&v112);
        if (v61 != v63)
        {
LABEL_92:
          v115[0] = "invalid shape: constant value ";
          v116 = 259;
          mlir::OpState::emitOpError(this, v115, &v123);
          if (v123)
          {
            v67 = &Value;
            mlir::DiagnosticArgument::DiagnosticArgument(&Value, v114[0]);
            v68 = v125;
            if (v126 >= v127)
            {
              if (v125 <= &Value && v125 + 24 * v126 > &Value)
              {
                v104 = &Value - v125;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v126 + 1, 24);
                v68 = v125;
                v67 = (v125 + v104);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v126 + 1, 24);
                v67 = &Value;
                v68 = v125;
              }
            }

            v69 = &v68[24 * v126];
            v70 = *v67;
            *(v69 + 2) = v67[2];
            *v69 = v70;
            v71 = ++v126;
            if (v123)
            {
              LODWORD(Value) = 3;
              v121 = " is not compatible with op result ";
              v122 = 34;
              v72 = &Value;
              v73 = v125;
              if (v71 >= v127)
              {
                if (v125 <= &Value && v125 + 24 * v71 > &Value)
                {
                  v106 = &Value - v125;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v71 + 1, 24);
                  v73 = v125;
                  v72 = (v125 + v106);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v71 + 1, 24);
                  v72 = &Value;
                  v73 = v125;
                }
              }

              v74 = &v73[24 * v126];
              v75 = *v72;
              *(v74 + 2) = v72[2];
              *v74 = v75;
              ++v126;
              if (v123)
              {
                v76 = &Value;
                mlir::DiagnosticArgument::DiagnosticArgument(&Value, v112);
                v77 = v125;
                if (v126 >= v127)
                {
                  if (v125 <= &Value && v125 + 24 * v126 > &Value)
                  {
                    v108 = &Value - v125;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v126 + 1, 24);
                    v77 = v125;
                    v76 = (v125 + v108);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v126 + 1, 24);
                    v76 = &Value;
                    v77 = v125;
                  }
                }

                v78 = &v77[24 * v126];
                v79 = *v76;
                *(v78 + 2) = v76[2];
                *v78 = v79;
                ++v126;
              }
            }
          }

          v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v123);
          if (v123)
          {
            mlir::InFlightDiagnostic::report(&v123);
          }

          if (v134 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v124);
          }

          return v15;
        }

        if (v61)
        {
          v64 = 8 * v61 - 8;
          do
          {
            v65 = v64;
            if (*ArgAttrsAttr != *v62 && *v62 != 0x8000000000000000)
            {
              goto LABEL_92;
            }

            ++ArgAttrsAttr;
            ++v62;
            v64 -= 8;
          }

          while (v65);
        }

LABEL_104:
        isSplat = mlir::ElementsAttr::isSplat(&v112);
        v82 = mlir::ElementsAttr::isSplat(v114);
        v123 = isSplat;
        v115[0] = v82;
        if (isSplat == v82)
        {
          return 1;
        }

        v83 = v82;
        if (mlir::Type::isF16(&v123) || mlir::Type::isBF16(&v123))
        {
          if (mlir::Type::isF32(v115))
          {
            return 1;
          }
        }

        else if (*(*v123 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*v83 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v119 = v123;
          Value = mlir::AffineMapAttr::getValue(&v119);
          if (mlir::Type::isF16(&Value))
          {
            v117 = v83;
            v118 = mlir::AffineMapAttr::getValue(&v117);
            if (mlir::Type::isF32(&v118))
            {
              return 1;
            }
          }
        }

        v115[0] = "invalid element type: constant value ";
        v116 = 259;
        mlir::OpState::emitOpError(this, v115, &v123);
        if (v123)
        {
          p_Value = &Value;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, v114[0]);
          v85 = v125;
          if (v126 >= v127)
          {
            if (v125 <= &Value && v125 + 24 * v126 > &Value)
            {
              v105 = &Value - v125;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v126 + 1, 24);
              v85 = v125;
              p_Value = (v125 + v105);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v126 + 1, 24);
              p_Value = &Value;
              v85 = v125;
            }
          }

          v86 = &v85[24 * v126];
          v87 = *p_Value;
          *(v86 + 2) = p_Value[2];
          *v86 = v87;
          v88 = ++v126;
          if (v123)
          {
            LODWORD(Value) = 3;
            v121 = " doesn't match op result ";
            v122 = 25;
            v89 = &Value;
            v90 = v125;
            if (v88 >= v127)
            {
              if (v125 <= &Value && v125 + 24 * v88 > &Value)
              {
                v107 = &Value - v125;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v88 + 1, 24);
                v90 = v125;
                v89 = (v125 + v107);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v88 + 1, 24);
                v89 = &Value;
                v90 = v125;
              }
            }

            v91 = &v90[24 * v126];
            v92 = *v89;
            *(v91 + 2) = v89[2];
            *v91 = v92;
            ++v126;
            if (v123)
            {
              v93 = &Value;
              mlir::DiagnosticArgument::DiagnosticArgument(&Value, v112);
              v94 = v125;
              if (v126 >= v127)
              {
                if (v125 <= &Value && v125 + 24 * v126 > &Value)
                {
                  v109 = &Value - v125;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v126 + 1, 24);
                  v94 = v125;
                  v93 = (v125 + v109);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v128, v126 + 1, 24);
                  v93 = &Value;
                  v94 = v125;
                }
              }

              v95 = &v94[24 * v126];
              v96 = *v93;
              *(v95 + 2) = v93[2];
              *v95 = v96;
              ++v126;
            }
          }
        }

        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v123);
        if (v123)
        {
          mlir::InFlightDiagnostic::report(&v123);
        }

        if (v134 == 1)
        {
          if (v133 != &v134)
          {
            free(v133);
          }

          v97 = __p;
          if (__p)
          {
            v98 = v132;
            v99 = __p;
            if (v132 != __p)
            {
              do
              {
                v98 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v98 - 1);
              }

              while (v98 != v97);
              v99 = __p;
            }

            v132 = v97;
            operator delete(v99);
          }

          v19 = v129;
          if (!v129)
          {
            goto LABEL_138;
          }

          v100 = v130;
          v21 = v129;
          if (v130 == v129)
          {
LABEL_137:
            v130 = v19;
            operator delete(v21);
LABEL_138:
            if (v125 != v128)
            {
              free(v125);
            }

            return v15;
          }

          do
          {
            v102 = *--v100;
            v101 = v102;
            *v100 = 0;
            if (v102)
            {
              operator delete[](v101);
            }
          }

          while (v100 != v19);
LABEL_136:
          v21 = v129;
          goto LABEL_137;
        }

        return v15;
      }
    }

    v46 = 0;
    v47 = v45;
    goto LABEL_79;
  }

  v115[0] = "failed: property contained an non shaped-type attribute";
  v116 = 259;
  mlir::OpState::emitOpError(this, v115, &v123);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v123);
  if (v123)
  {
    mlir::InFlightDiagnostic::report(&v123);
  }

  if (v134 == 1)
  {
    if (v133 != &v134)
    {
      free(v133);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v132;
      v55 = __p;
      if (v132 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v132 = v53;
      operator delete(v55);
    }

    v19 = v129;
    if (!v129)
    {
      goto LABEL_138;
    }

    v56 = v130;
    v21 = v129;
    if (v130 == v129)
    {
      goto LABEL_137;
    }

    do
    {
      v58 = *--v56;
      v57 = v58;
      *v56 = 0;
      if (v58)
      {
        operator delete[](v57);
      }
    }

    while (v56 != v19);
    goto LABEL_136;
  }

  return v15;
}

void mlir::mps::ConstantOp::downgradeToVersion(uint64_t *a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v47 = &unk_1F5B01218;
  v48 = 0x300000001;
  v49 = 1;
  if (*(v6 + 36))
  {
    v7 = v6 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v50[0] = mlir::getElementTypeOrSelf(NextResultAtOffset);
  if (mlir::Type::isUnsignedInteger(v50, 6) && ((v9 = a2[2], v9 < v48) || v9 == v48 && ((v18 = a2[3], v18 < HIDWORD(v48)) || v18 == HIDWORD(v48) && a2[4] < v49)))
  {
    v34 = "failed to downgrade: requested target version is {0}, but uint6 data is only supported from version {1}";
    v35 = 103;
    v36 = &v43;
    v37 = 2;
    v38 = 1;
    v39 = &unk_1F5B171B8;
    v40 = a2;
    v41 = &unk_1F5B171E8;
    v42 = &v47;
    v43 = &v39;
    v44 = &v41;
    v46 = 263;
    v45[0] = &v34;
    mlir::OpState::emitOpError(a1, v45, v50);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v56;
        v12 = __p;
        if (v56 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v56 = v10;
        operator delete(v12);
      }

      v13 = v53;
      if (!v53)
      {
        goto LABEL_57;
      }

      v14 = v54;
      v15 = v53;
      if (v54 == v53)
      {
        goto LABEL_56;
      }

      do
      {
        v17 = *--v14;
        v16 = v17;
        *v14 = 0;
        if (v17)
        {
          operator delete[](v16);
        }
      }

      while (v14 != v13);
      goto LABEL_55;
    }
  }

  else
  {
    v31 = &unk_1F5B01218;
    v32 = 0x300000001;
    v33 = 3;
    if (*(*a1 + 36))
    {
      v19 = *a1 - 16;
    }

    else
    {
      v19 = 0;
    }

    v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
    v50[0] = mlir::getElementTypeOrSelf(v20);
    if (!mlir::Type::isUnsignedInteger(v50, 3) || (v21 = a2[2], v21 >= v32) && (v21 != v32 || (v28 = a2[3], v28 >= HIDWORD(v32)) && (v28 != HIDWORD(v32) || a2[4] >= v33)))
    {
      v29 = *(v6 + 36);
      if (v29)
      {
        v30 = v6 - 16;
      }

      else
      {
        v30 = 0;
      }

      *a3 = v30;
      *(a3 + 8) = v29;
      *(a3 + 16) = 1;
      return;
    }

    v34 = "failed to downgrade: requested target version is {0}, but uint3 data is only supported from version {1}";
    v35 = 103;
    v36 = &v43;
    v37 = 2;
    v38 = 1;
    v39 = &unk_1F5B171B8;
    v40 = a2;
    v41 = &unk_1F5B171E8;
    v42 = &v31;
    v43 = &v39;
    v44 = &v41;
    v46 = 263;
    v45[0] = &v34;
    mlir::OpState::emitOpError(a1, v45, v50);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v56;
        v24 = __p;
        if (v56 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v56 = v22;
        operator delete(v24);
      }

      v13 = v53;
      if (!v53)
      {
        goto LABEL_57;
      }

      v25 = v54;
      v15 = v53;
      if (v54 == v53)
      {
LABEL_56:
        v54 = v13;
        operator delete(v15);
LABEL_57:
        if (v51 != &v52)
        {
          free(v51);
        }

        return;
      }

      do
      {
        v27 = *--v25;
        v26 = v27;
        *v25 = 0;
        if (v27)
        {
          operator delete[](v26);
        }
      }

      while (v25 != v13);
LABEL_55:
      v15 = v53;
      goto LABEL_56;
    }
  }
}

void mlir::mps::ReadDataFromFileOp::downgradeToVersion(uint64_t *a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v57[0] = &unk_1F5B01218;
  v57[1] = 0x300000001;
  v58 = 0;
  v7 = a2[2];
  if (v7 && (v7 != 1 || a2[3] > 2u))
  {
    v41 = &unk_1F5B01218;
    v42 = 0x300000001;
    v43 = 1;
    if (*(v6 + 36))
    {
      v16 = v6 - 16;
    }

    else
    {
      v16 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
    v59[0] = mlir::getElementTypeOrSelf(NextResultAtOffset);
    if (mlir::Type::isUnsignedInteger(v59, 6) && ((v18 = a2[2], v18 < v42) || v18 == v42 && ((v25 = a2[3], v25 < HIDWORD(v42)) || v25 == HIDWORD(v42) && a2[4] < v43)))
    {
      v44 = "failed to downgrade: requested target version is {0}, but uint6 data is only supported from version {1}";
      v45 = 103;
      v46 = &v53;
      v47 = 2;
      v48 = 1;
      v49 = &unk_1F5B171B8;
      v50 = a2;
      v51 = &unk_1F5B171E8;
      v52 = &v41;
      v53 = &v49;
      v54 = &v51;
      v56 = 263;
      v55[0] = &v44;
      mlir::OpState::emitOpError(a1, v55, v59);
      *a3 = 0;
      *(a3 + 16) = 0;
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v65;
          v21 = __p;
          if (v65 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v65 = v19;
          operator delete(v21);
        }

        v11 = v62;
        if (!v62)
        {
          goto LABEL_68;
        }

        v22 = v63;
        v13 = v62;
        if (v63 == v62)
        {
          goto LABEL_67;
        }

        do
        {
          v24 = *--v22;
          v23 = v24;
          *v22 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v22 != v11);
        goto LABEL_66;
      }
    }

    else
    {
      v38 = &unk_1F5B01218;
      v39 = 0x300000001;
      v40 = 3;
      if (*(*a1 + 36))
      {
        v26 = *a1 - 16;
      }

      else
      {
        v26 = 0;
      }

      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0);
      v59[0] = mlir::getElementTypeOrSelf(v27);
      if (mlir::Type::isUnsignedInteger(v59, 3) && ((v28 = a2[2], v28 < v39) || v28 == v39 && ((v35 = a2[3], v35 < HIDWORD(v39)) || v35 == HIDWORD(v39) && a2[4] < v40)))
      {
        v44 = "failed to downgrade: requested target version is {0}, but uint3 data is only supported from version {1}";
        v45 = 103;
        v46 = &v53;
        v47 = 2;
        v48 = 1;
        v49 = &unk_1F5B171B8;
        v50 = a2;
        v51 = &unk_1F5B171E8;
        v52 = &v38;
        v53 = &v49;
        v54 = &v51;
        v56 = 263;
        v55[0] = &v44;
        mlir::OpState::emitOpError(a1, v55, v59);
        *a3 = 0;
        *(a3 + 16) = 0;
        if (v59[0])
        {
          mlir::InFlightDiagnostic::report(v59);
        }

        if (v67 == 1)
        {
          if (v66 != &v67)
          {
            free(v66);
          }

          v29 = __p;
          if (__p)
          {
            v30 = v65;
            v31 = __p;
            if (v65 != __p)
            {
              do
              {
                v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
              }

              while (v30 != v29);
              v31 = __p;
            }

            v65 = v29;
            operator delete(v31);
          }

          v11 = v62;
          if (!v62)
          {
            goto LABEL_68;
          }

          v32 = v63;
          v13 = v62;
          if (v63 == v62)
          {
            goto LABEL_67;
          }

          do
          {
            v34 = *--v32;
            v33 = v34;
            *v32 = 0;
            if (v34)
            {
              operator delete[](v33);
            }
          }

          while (v32 != v11);
          goto LABEL_66;
        }
      }

      else
      {
        v36 = *(v6 + 36);
        if (v36)
        {
          v37 = v6 - 16;
        }

        else
        {
          v37 = 0;
        }

        *a3 = v37;
        *(a3 + 8) = v36;
        *(a3 + 16) = 1;
      }
    }
  }

  else
  {
    v44 = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v45 = 97;
    v46 = &v53;
    v47 = 2;
    v48 = 1;
    v49 = &unk_1F5B171B8;
    v50 = a2;
    v51 = &unk_1F5B171E8;
    v52 = v57;
    v53 = &v49;
    v54 = &v51;
    v56 = 263;
    v55[0] = &v44;
    mlir::OpState::emitOpError(a1, v55, v59);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v65;
        v10 = __p;
        if (v65 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v65 = v8;
        operator delete(v10);
      }

      v11 = v62;
      if (!v62)
      {
        goto LABEL_68;
      }

      v12 = v63;
      v13 = v62;
      if (v63 == v62)
      {
LABEL_67:
        v63 = v11;
        operator delete(v13);
LABEL_68:
        if (v60 != &v61)
        {
          free(v60);
        }

        return;
      }

      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          operator delete[](v14);
        }
      }

      while (v12 != v11);
LABEL_66:
      v13 = v62;
      goto LABEL_67;
    }
  }
}

uint64_t mlir::mps::MatMulOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v120 = *MEMORY[0x1E69E9840];
  v106 = a4;
  v107 = a5;
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0uLL;
  }

  v98 = a6;
  v99[0] = 0;
  v100 = 0;
  v101 = v15;
  v16 = a5;
  v102 = a9;
  v103 = a10;
  if (a6)
  {
    v17 = a1;
    Context = mlir::Attribute::getContext(&v98);
    if (v100 == 1)
    {
      v100 = 0;
    }

    mlir::OperationName::OperationName(v99, "mps.matmul", 10, Context);
    v100 = 1;
    v16 = v107;
    a1 = v17;
  }

  v104 = a4;
  v105 = a5;
  if (v16 <= 1)
  {
    v19 = mlir::Float32Type::get(a1, a2);
LABEL_20:
    v28 = mlir::UnrankedTensorType::get(v19);
    goto LABEL_21;
  }

  mlir::UnknownLoc::get(a1, a2);
  v94 = *(&v101 + 1);
  v95 = v101;
  if (!v101)
  {
    Value = 0;
    if (*(&v101 + 1))
    {
      goto LABEL_12;
    }

LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  Value = mlir::BoolAttr::getValue(&v95);
  if (!v94)
  {
    goto LABEL_14;
  }

LABEL_12:
  v21 = mlir::BoolAttr::getValue(&v94);
LABEL_15:
  v22 = (*(mlir::ValueRange::dereference_iterator(&v106, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(mlir::ValueRange::dereference_iterator(&v106, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  v114 = v22;
  v115 = v23;
  mlir::ValueRange::ValueRange(&v117, &v114, 2uLL);
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_20;
  }

  v24 = v19;
  v97[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
  v97[1] = v25;
  v26 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v23);
  v96[0] = v26;
  v96[1] = v27;
  if (!v97[0] && !v26)
  {
    v19 = v24;
    goto LABEL_20;
  }

  if (*(*v97[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v31.var0.var0 = a3;
    if (!mlir::emitOptionalError<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(a2, v31, "invalid input types: ", v97, ", ", v96))
    {
      return 0;
    }

    v28 = 0;
    goto LABEL_21;
  }

  v108 = v110;
  v109 = 0x400000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v97);
  v34 = v33;
  v35 = mlir::CallableOpInterface::getArgAttrsAttr(v96);
  v117 = &v119;
  v118 = 0x400000000;
  v93 = v36;
  v114 = v116;
  v115 = 0x400000000;
  v92 = v34;
  if (v34 == 1)
  {
    v37 = *ArgAttrsAttr;
    v119.i64[0] = 1;
    v119.i64[1] = v37;
    goto LABEL_32;
  }

  if (!v34)
  {
    v119 = vdupq_n_s64(1uLL);
LABEL_32:
    LODWORD(v118) = 2;
    goto LABEL_33;
  }

  __n = v34;
  v111 = v113;
  v112 = 0x400000000;
  v41 = (8 * v34) >> 3;
  __src = v35;
  if (v41 < 5)
  {
    v42 = 0;
    v43 = v113;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, v41, 8);
    v42 = v112;
    v43 = v111;
  }

  memcpy(&v43[8 * v42], ArgAttrsAttr, __n * 8);
  v50 = v111;
  v51 = (v112 + v34);
  LODWORD(v112) = v112 + v34;
  if (v111 != v113)
  {
    if (v117 != &v119)
    {
      free(v117);
      v50 = v111;
      LODWORD(v51) = v112;
    }

    v117 = v50;
    v118 = __PAIR64__(HIDWORD(v112), v51);
    v111 = v113;
    HIDWORD(v112) = 0;
    goto LABEL_74;
  }

  v53 = v118;
  if (v118 >= v51)
  {
    if (v51)
    {
      memmove(v117, v111, 8 * v51);
    }

    goto LABEL_73;
  }

  if (HIDWORD(v118) >= v51)
  {
    if (v118)
    {
      memmove(v117, v111, 8 * v118);
      goto LABEL_71;
    }
  }

  else
  {
    LODWORD(v118) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, &v119, v51, 8);
  }

  v53 = 0;
LABEL_71:
  if (v112 != v53)
  {
    memcpy(v117 + 8 * v53, v111 + 8 * v53, 8 * (v112 - v53));
  }

LABEL_73:
  LODWORD(v118) = v51;
LABEL_74:
  LODWORD(v112) = 0;
  if (v111 != v113)
  {
    free(v111);
  }

  v35 = __src;
  v36 = v93;
  if (Value)
  {
    v56 = &v117->i8[8 * v118];
    *(v56 - 1) = ArgAttrsAttr[__n - 2];
    *(v56 - 2) = ArgAttrsAttr[__n - 1];
  }

LABEL_33:
  if (v36 == 1)
  {
    v39 = *v35;
    LODWORD(v115) = 0;
    if (HIDWORD(v115) > 1)
    {
      v40 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v116, 2uLL, 8);
      v40 = v115;
    }

    v48 = &v114[8 * v40];
    *v48 = v39;
    goto LABEL_47;
  }

  if (!v36)
  {
    LODWORD(v115) = 0;
    if (HIDWORD(v115) > 1)
    {
      v38 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v116, 2uLL, 8);
      v38 = v115;
    }

    v48 = &v114[8 * v38];
    *v48 = 1;
LABEL_47:
    *(v48 + 1) = 1;
    LODWORD(v49) = v115 + 2;
    LODWORD(v115) = v115 + 2;
    goto LABEL_88;
  }

  __srca = v35;
  v44 = 8 * v36;
  v111 = v113;
  v112 = 0x400000000;
  v45 = (8 * v36) >> 3;
  if (v45 < 5)
  {
    v46 = 0;
    v47 = v113;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, v45, 8);
    v46 = v112;
    v47 = v111;
  }

  memcpy(&v47[8 * v46], __srca, v44);
  v52 = v111;
  v49 = v112 + (v44 >> 3);
  LODWORD(v112) = v112 + (v44 >> 3);
  if (v111 != v113)
  {
    if (v114 != v116)
    {
      free(v114);
      v52 = v111;
      LODWORD(v49) = v112;
    }

    v114 = v52;
    v115 = __PAIR64__(HIDWORD(v112), v49);
    v111 = v113;
    HIDWORD(v112) = 0;
    goto LABEL_84;
  }

  v54 = v115;
  if (v115 >= v49)
  {
    if (v49)
    {
      memmove(v114, v111, 8 * v49);
    }

    goto LABEL_83;
  }

  if (HIDWORD(v115) >= v49)
  {
    if (v115)
    {
      memmove(v114, v111, 8 * v115);
      goto LABEL_81;
    }
  }

  else
  {
    LODWORD(v115) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v116, v49, 8);
  }

  v54 = 0;
LABEL_81:
  if (v112 != v54)
  {
    memcpy(&v114[8 * v54], v111 + 8 * v54, 8 * (v112 - v54));
  }

LABEL_83:
  LODWORD(v115) = v49;
LABEL_84:
  LODWORD(v112) = 0;
  if (v111 != v113)
  {
    free(v111);
    LODWORD(v49) = v115;
  }

  if (v21)
  {
    v57 = &v114[8 * v49];
    *(v57 - 1) = *&__srca[v44 - 16];
    *(v57 - 2) = *&__srca[v44 - 8];
  }

LABEL_88:
  LODWORD(v109) = 0;
  if (v118 <= v49)
  {
    v58 = 0;
    if (v49)
    {
      v62 = v114;
      v63 = 8 * v49;
      do
      {
        v64 = *v62;
        if (v58 >= HIDWORD(v109))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v58 + 1, 8);
          v58 = v109;
        }

        *(v108 + v58) = v64;
        v58 = v109 + 1;
        LODWORD(v109) = v109 + 1;
        ++v62;
        v63 -= 8;
      }

      while (v63);
    }
  }

  else
  {
    v58 = 0;
    v59 = v117;
    v60 = 8 * v118;
    do
    {
      v61 = *v59;
      if (v58 >= HIDWORD(v109))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v58 + 1, 8);
        v58 = v109;
      }

      *(v108 + v58) = v61;
      v58 = v109 + 1;
      LODWORD(v109) = v109 + 1;
      ++v59;
      v60 -= 8;
    }

    while (v60);
  }

  v65 = v117;
  v66 = v118;
  v67 = &v117->i8[8 * v118];
  v68 = v114;
  v69 = v115;
  v70 = &v114[8 * v115];
  v71 = v108;
  v72 = v108 + 8 * v58;
  *(v72 - 1) = *(v70 - 1);
  v73 = v70 - 16;
  *(v72 - 2) = *(v67 - 2);
  v74 = v67 - 16 == v65 || v73 == v68;
  if (v74)
  {
LABEL_120:
    if (v92 <= 1)
    {
      v82 = *(v72 - 1);
      LODWORD(v109) = --v58;
      v71[v58 - 1] = v82;
    }

    if (v93 > 1)
    {
      v83 = 0;
      if (v68 == v116)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v83 = 0;
      LODWORD(v109) = v58 - 1;
      if (v68 == v116)
      {
        goto LABEL_125;
      }
    }

    goto LABEL_124;
  }

  v75 = 8 * v66 - 24;
  v76 = &v71[v58 - 3];
  v77 = 8 * v69 - 24;
  while (1)
  {
    v78 = *&v65[v75];
    v79 = *&v68[v77];
    if (v78 == 0x8000000000000000)
    {
      if (v79 <= 1)
      {
        v78 = 0x8000000000000000;
      }

      else
      {
        v78 = *&v68[v77];
      }

      goto LABEL_118;
    }

    if (v79 == 0x8000000000000000)
    {
      if (v78 <= 1)
      {
        v78 = 0x8000000000000000;
      }

      goto LABEL_118;
    }

    if (v78 != v79 && v79 != 1)
    {
      v74 = v78 == 1;
      v78 = *&v68[v77];
      if (!v74)
      {
        break;
      }
    }

LABEL_118:
    *v76-- = v78;
    if (v75)
    {
      v75 -= 8;
      v81 = v77;
      v77 -= 8;
      if (v81)
      {
        continue;
      }
    }

    goto LABEL_120;
  }

  LODWORD(v109) = 0;
  v87.var0.var0 = a3;
  v88 = mlir::emitOptionalError<char const(&)[66]>(a2, v87, "incompatible dimensions");
  v68 = v114;
  v83 = !v88;
  if (v114 != v116)
  {
LABEL_124:
    free(v68);
  }

LABEL_125:
  if (v117 != &v119)
  {
    free(v117);
  }

  if (v83)
  {
    v84.var0.var0 = a3;
    v85 = mlir::emitOptionalError<char const(&)[66]>(a2, v84, "invalid shape");
    v28 = 0;
  }

  else
  {
    v28 = mlir::RankedTensorType::get(v108, v109, v24, 0);
    v85 = 1;
  }

  if (v108 != v110)
  {
    v86 = v28;
    free(v108);
    v28 = v86;
  }

  if (!v85)
  {
    return 0;
  }

LABEL_21:
  v29 = *(a11 + 8);
  if (v29 >= *(a11 + 12))
  {
    v55 = v28;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v29 + 1, 8);
    v28 = v55;
    LODWORD(v29) = *(a11 + 8);
  }

  *(*a11 + 8 * v29) = v28;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::defaultInferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  if (!a3)
  {
    v7 = mlir::Float32Type::get(a1, a2);
    v4 = mlir::UnrankedTensorType::get(v7);
    v5 = *(a2 + 2);
    if (v5 < *(a2 + 3))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v5 + 1, 8);
    v4 = v8;
    v5 = *(a2 + 2);
    goto LABEL_3;
  }

  v4 = mlir::UnrankedTensorType::get(a3);
  v5 = *(a2 + 2);
  if (v5 >= *(a2 + 3))
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*a2 + 8 * v5) = v4;
  ++*(a2 + 2);
  return 1;
}

BOOL mlir::mps::MatMulOp::verify(mlir::mps::MatMulOp *this)
{
  v90 = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v71 = v3;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v71 + 8);
    v6 = *(v71 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v75[0] = v2;
  v75[1] = v13;
  v14 = *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = *v14;
    {
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = v14;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v14 = v25;
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = v17;
    v20 = v18;
    do
    {
      v21 = v20 >> 1;
      v22 = &v19[2 * (v20 >> 1)];
      v24 = *v22;
      v23 = v22 + 2;
      v20 += ~(v20 >> 1);
      if (v24 < v16)
      {
        v19 = v23;
      }

      else
      {
        v20 = v21;
      }
    }

    while (v20);
    if (v19 != &v17[2 * v18] && *v19 == v16)
    {
      v26 = v19[1];
      goto LABEL_30;
    }
  }

LABEL_29:
  v26 = 0;
LABEL_30:
  v74[0] = v14;
  v74[1] = v26;
  if (*(*v75[0] + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v75);
  v29 = v28;
  v30 = mlir::CallableOpInterface::getArgAttrsAttr(v74);
  if (!v29)
  {
    v39 = 1;
    if (v31)
    {
      goto LABEL_38;
    }

LABEL_48:
    v43 = 1;
    result = 1;
    if (v39 == 0x8000000000000000)
    {
      return result;
    }

    goto LABEL_49;
  }

  if (v29 != 1)
  {
    v32 = &ArgAttrsAttr[v29];
    v79[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    v33 = v30;
    v34 = v31;
    Value = mlir::BoolAttr::getValue(v79);
    v31 = v34;
    v36 = Value;
    v30 = v33;
    v37 = !v36;
    v38 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v37)
    {
      v38 = 0x1FFFFFFFFFFFFFFELL;
    }

    ArgAttrsAttr = &v32[v38];
  }

  v39 = *ArgAttrsAttr;
  if (!v31)
  {
    goto LABEL_48;
  }

LABEL_38:
  if (v31 != 1)
  {
    v40 = &v30[v31];
    v79[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    v41 = mlir::BoolAttr::getValue(v79);
    v42 = 0x1FFFFFFFFFFFFFFELL;
    if (v41)
    {
      v42 = 0x1FFFFFFFFFFFFFFFLL;
    }

    v30 = &v40[v42];
  }

  v43 = *v30;
  result = 1;
  if (v39 != 0x8000000000000000)
  {
LABEL_49:
    if (v43 != 0x8000000000000000 && v39 != v43)
    {
      v72 = "contracting dimensions differ ";
      v73 = 259;
      mlir::OpState::emitOpError(this, &v72, v79);
      if (v79[0])
      {
        v76 = 2;
        v77 = v39;
        v45 = &v76;
        v46 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v76 && v80 + 24 * v81 > &v76)
          {
            v68 = &v76 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v46 = v80;
            v45 = (v80 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v45 = &v76;
            v46 = v80;
          }
        }

        v47 = &v46[24 * v81];
        v48 = *v45;
        *(v47 + 2) = *(v45 + 2);
        *v47 = v48;
        v49 = ++v81;
        if (v79[0])
        {
          v76 = 3;
          v77 = " & ";
          v78 = 3;
          v50 = &v76;
          v51 = v80;
          if (v49 >= v82)
          {
            if (v80 <= &v76 && v80 + 24 * v49 > &v76)
            {
              v69 = &v76 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v49 + 1, 24);
              v51 = v80;
              v50 = (v80 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v49 + 1, 24);
              v50 = &v76;
              v51 = v80;
            }
          }

          v52 = &v51[24 * v81];
          v53 = *v50;
          *(v52 + 2) = *(v50 + 2);
          *v52 = v53;
          v54 = ++v81;
          if (v79[0])
          {
            v76 = 2;
            v77 = v43;
            v55 = &v76;
            v56 = v80;
            if (v54 >= v82)
            {
              if (v80 <= &v76 && v80 + 24 * v54 > &v76)
              {
                v70 = &v76 - v80;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v54 + 1, 24);
                v56 = v80;
                v55 = (v80 + v70);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v54 + 1, 24);
                v55 = &v76;
                v56 = v80;
              }
            }

            v57 = &v56[24 * v81];
            v58 = *v55;
            *(v57 + 2) = *(v55 + 2);
            *v57 = v58;
            ++v81;
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
      v59 = result;
      if (v79[0])
      {
        mlir::InFlightDiagnostic::report(v79);
        result = v59;
      }

      if (v89 == 1)
      {
        if (v88 != &v89)
        {
          free(v88);
          result = v59;
        }

        v60 = __p;
        if (__p)
        {
          v61 = v87;
          v62 = __p;
          if (v87 != __p)
          {
            do
            {
              v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
            }

            while (v61 != v60);
            v62 = __p;
          }

          v87 = v60;
          operator delete(v62);
          result = v59;
        }

        v63 = v84;
        if (v84)
        {
          v64 = v85;
          v65 = v84;
          if (v85 != v84)
          {
            do
            {
              v67 = *--v64;
              v66 = v67;
              *v64 = 0;
              if (v67)
              {
                operator delete[](v66);
              }
            }

            while (v64 != v63);
            v65 = v84;
          }

          v85 = v63;
          operator delete(v65);
          result = v59;
        }

        if (v80 != v83)
        {
          free(v80);
          return v59;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::verifySparseTensorHelper(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr, uint64_t, void *), uint64_t a8)
{
  v116 = *MEMORY[0x1E69E9840];
  v105 = a6;
  v106 = a5;
  v13 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = *v13;
    {
      v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v77 = v14;
      v78 = v13;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v13 = v78;
      v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v16 = *(v77 + 8);
      v17 = *(v77 + 16);
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    v18 = v16;
    v19 = v17;
    do
    {
      v20 = v19 >> 1;
      v21 = &v18[2 * (v19 >> 1)];
      v23 = *v21;
      v22 = v21 + 2;
      v19 += ~(v19 >> 1);
      if (v23 < v15)
      {
        v18 = v22;
      }

      else
      {
        v19 = v20;
      }
    }

    while (v19);
    if (v18 != &v16[2 * v17] && *v18 == v15)
    {
      v43 = v18[1];
      v103 = v13;
      v104 = v43;
      if (!mlir::CallOpInterface::getArgOperands(&v103))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v103 = v13;
  v104 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v103))
  {
    return 1;
  }

LABEL_15:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v103);
  if (v25)
  {
    v26 = 8 * v25;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    return 1;
  }

LABEL_19:
  v27 = *mlir::CallableOpInterface::getArgAttrsAttr(&v103) - 1;
  if (a4 == 2 && v106 != v27)
  {
    v87 = "failed: sparse tensor shape is {0}x{1} while index_tensor1 shape is {2}";
    v88 = 71;
    v89 = &v98;
    v90 = 3;
    v91 = 1;
    v92 = &unk_1F5B17218;
    v93 = &v106;
    v94 = &unk_1F5B17218;
    v95 = &v105;
    v96 = &unk_1F5B2E890;
    v97 = &v103;
    v98 = &v92;
    v99 = &v94;
    v100 = &v96;
    v101[0] = &v87;
    v102 = 263;
    a7(v107, a8, v101);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
    if (v107[0])
    {
      mlir::InFlightDiagnostic::report(v107);
    }

    if (v115 == 1)
    {
      if (v114 != &v115)
      {
        free(v114);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v113;
        v31 = __p;
        if (v113 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v113 = v29;
        operator delete(v31);
      }

      v32 = v110;
      if (!v110)
      {
        goto LABEL_69;
      }

      v33 = v111;
      v34 = v110;
      if (v111 == v110)
      {
LABEL_68:
        v111 = v32;
        operator delete(v34);
LABEL_69:
        if (v108 != &v109)
        {
          free(v108);
        }

        return v28;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          operator delete[](v35);
        }
      }

      while (v33 != v32);
LABEL_67:
      v34 = v110;
      goto LABEL_68;
    }

    return v28;
  }

  if (a4 != 1 || v105 == v27)
  {
    v44 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v44)
    {
      goto LABEL_74;
    }

    v45 = *v44;
    {
      v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v47 = *(v45 + 8);
      v48 = *(v45 + 16);
      if (!v48)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v79 = v45;
      mlir::arith::ExtUIOp::fold();
      v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v47 = *(v79 + 8);
      v48 = *(v79 + 16);
      if (!v48)
      {
        goto LABEL_74;
      }
    }

    v49 = v47;
    v50 = v48;
    do
    {
      v51 = v50 >> 1;
      v52 = &v49[2 * (v50 >> 1)];
      v54 = *v52;
      v53 = v52 + 2;
      v50 += ~(v50 >> 1);
      if (v54 < v46)
      {
        v49 = v53;
      }

      else
      {
        v50 = v51;
      }
    }

    while (v50);
    if (v49 != &v47[2 * v48] && *v49 == v46)
    {
      v66 = v49[1];
      v85 = v44;
      v86 = v66;
      v55 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v55)
      {
        goto LABEL_89;
      }

LABEL_75:
      v56 = *v55;
      {
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (!v59)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v80 = v56;
        mlir::arith::ExtUIOp::fold();
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v80 + 8);
        v59 = *(v80 + 16);
        if (!v59)
        {
          goto LABEL_89;
        }
      }

      v60 = v58;
      v61 = v59;
      do
      {
        v62 = v61 >> 1;
        v63 = &v60[2 * (v61 >> 1)];
        v65 = *v63;
        v64 = v63 + 2;
        v61 += ~(v61 >> 1);
        if (v65 < v57)
        {
          v60 = v64;
        }

        else
        {
          v61 = v62;
        }
      }

      while (v61);
      if (v60 != &v58[2 * v59] && *v60 == v57)
      {
        v75 = v60[1];
        v83 = v55;
        v84 = v75;
        if (!mlir::CallOpInterface::getArgOperands(&v85))
        {
          return 1;
        }

LABEL_90:
        v67 = mlir::CallableOpInterface::getArgAttrsAttr(&v85);
        if (v68)
        {
          v69 = 8 * v68;
          while (*v67 != 0x8000000000000000)
          {
            ++v67;
            v69 -= 8;
            if (!v69)
            {
              goto LABEL_94;
            }
          }
        }

        else
        {
LABEL_94:
          if (mlir::CallOpInterface::getArgOperands(&v83))
          {
            v70 = mlir::CallableOpInterface::getArgAttrsAttr(&v83);
            if (v71)
            {
              v72 = 8 * v71;
              while (*v70 != 0x8000000000000000)
              {
                ++v70;
                v72 -= 8;
                if (!v72)
                {
                  goto LABEL_99;
                }
              }
            }

            else
            {
LABEL_99:
              v73 = *mlir::CallableOpInterface::getArgAttrsAttr(&v85);
              if (v73 != *mlir::CallableOpInterface::getArgAttrsAttr(&v83))
              {
                v74 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
                v81 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
                v82 = v74;
                llvm::formatv<mlir::Type,mlir::Type>("failed: index_tensor0 and sparse_values shape mismatch, {0} and {1}", &v82, &v81, &v87);
                v102 = 263;
                v101[0] = &v87;
                a7(v107, a8, v101);
                v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(v107);
                return v28;
              }
            }
          }
        }

        return 1;
      }

LABEL_89:
      v83 = v55;
      v84 = 0;
      if (!mlir::CallOpInterface::getArgOperands(&v85))
      {
        return 1;
      }

      goto LABEL_90;
    }

LABEL_74:
    v85 = v44;
    v86 = 0;
    v55 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v55)
    {
      goto LABEL_89;
    }

    goto LABEL_75;
  }

  v87 = "failed: sparse tensor shape is {0}x{1} while index_tensor1 shape is {2}";
  v88 = 71;
  v89 = &v98;
  v90 = 3;
  v91 = 1;
  v92 = &unk_1F5B17218;
  v93 = &v106;
  v94 = &unk_1F5B17218;
  v95 = &v105;
  v96 = &unk_1F5B2E890;
  v97 = &v103;
  v98 = &v92;
  v99 = &v94;
  v100 = &v96;
  v101[0] = &v87;
  v102 = 263;
  a7(v107, a8, v101);
  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
  if (v107[0])
  {
    mlir::InFlightDiagnostic::report(v107);
  }

  if (v115 == 1)
  {
    if (v114 != &v115)
    {
      free(v114);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v113;
      v39 = __p;
      if (v113 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v113 = v37;
      operator delete(v39);
    }

    v32 = v110;
    if (!v110)
    {
      goto LABEL_69;
    }

    v40 = v111;
    v34 = v110;
    if (v111 == v110)
    {
      goto LABEL_68;
    }

    do
    {
      v42 = *--v40;
      v41 = v42;
      *v40 = 0;
      if (v42)
      {
        operator delete[](v41);
      }
    }

    while (v40 != v32);
    goto LABEL_67;
  }

  return v28;
}

const char *llvm::formatv<mlir::Type,mlir::Type>@<X0>(const char *__s@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = __s;
  v6 = *a2;
  v7 = *a3;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v4;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_1F5B17E38;
  *(a4 + 48) = v6;
  *(a4 + 56) = &unk_1F5B17E38;
  *(a4 + 64) = v7;
  *(a4 + 80) = a4 + 56;
  return __s;
}

uint64_t mlir::mps::MaterializeSparseTensorOp::verify(mlir::mps::MaterializeSparseTensorOp *this)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = v3;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v3 = v14;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    goto LABEL_18;
  }

LABEL_17:
  v15 = 0;
LABEL_18:
  v37[0] = v3;
  v37[1] = v15;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v37);
  v17 = *ArgAttrsAttr;
  v18 = ArgAttrsAttr[1];
  v19 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v19 + 68) - 1 <= 1)
  {
    v35 = "failure: expected at least two operands to represent COO, CSR or CSC sparse formats.";
    v36 = 259;
    mlir::OpState::emitOpError(this, &v35, v37);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v43;
        v23 = __p;
        if (v43 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v43 = v21;
        operator delete(v23);
      }

      v24 = v40;
      if (v40)
      {
        v25 = v41;
        v26 = v40;
        if (v41 != v40)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              operator delete[](v27);
            }
          }

          while (v25 != v24);
          v26 = v40;
        }

        v41 = v24;
        operator delete(v26);
      }

      if (v38 != &v39)
      {
        free(v38);
      }
    }
  }

  else
  {
    v29 = *(v19 + 72);
    v30 = v29[3];
    v31 = v29[7];
    v32 = v29[11];
    v33 = *(*(v19 + 80) + 8);
    v37[0] = this;
    return mlir::mps::verifySparseTensorHelper(v30, v31, v32, v33, v17, v18, llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::Twine const&)>::callback_fn<mlir::mps::MaterializeSparseTensorOp::verify(void)::$_0>, v37);
  }

  return v20;
}

uint64_t mlir::mps::HammingDistanceOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v73[4] = *MEMORY[0x1E69E9840];
  v69 = a4;
  v70 = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v61 = a6;
  v62[0] = 0;
  v63 = 0;
  v64 = v14;
  v65 = a9;
  v15 = a5;
  v66 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v61);
    if (v63 == 1)
    {
      v63 = 0;
    }

    mlir::OperationName::OperationName(v62, "mps.hamming_distance", 20, Context);
    v63 = 1;
    v15 = v70;
  }

  v67 = a4;
  v68 = a5;
  if (v15 >= 2)
  {
    v17.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::HammingDistanceOpAdaptor::verify(&v61, v17))
    {
      v58 = v64;
      Value = mlir::IntegerType::get(this, 32, 2u);
      if (v58)
      {
        Value = mlir::AffineMapAttr::getValue(&v58);
      }

      v19 = Value;
      v20 = (*(mlir::ValueRange::dereference_iterator(&v69, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      v21 = mlir::ValueRange::dereference_iterator(&v69, 1);
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (v22 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8), *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id) || (v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v20), v60[0] = v23, v60[1] = v24, v25 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22), v59[0] = v25, v59[1] = v26, !v23) || !v25)
      {
        v39 = mlir::UnrankedTensorType::get(v19);
LABEL_28:
        v40 = *(a11 + 8);
        if (v40 >= *(a11 + 12))
        {
          v57 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v40 + 1, 8);
          v39 = v57;
          LODWORD(v40) = *(a11 + 8);
        }

        *(*a11 + 8 * v40) = v39;
        goto LABEL_31;
      }

      v71 = v73;
      v72 = 0x400000000;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v60);
      v29 = v28;
      v30 = mlir::CallableOpInterface::getArgAttrsAttr(v59);
      if (v29 <= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v29;
      }

      if (v29 < 2)
      {
        v33 = 1;
        if (v31 < 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v33 = *(ArgAttrsAttr + 8 * v29 - 16);
        if (v31 < 2)
        {
LABEL_21:
          v34 = 1;
LABEL_34:
          v42 = v72;
          if (v32 != v72)
          {
            if (v32 >= v72)
            {
              if (v32 > HIDWORD(v72))
              {
                v43 = v30;
                v44 = v31;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v32, 8);
                v31 = v44;
                v30 = v43;
                v42 = v72;
              }

              if (v32 != v42)
              {
                v45 = v30;
                v46 = v31;
                bzero(v71 + 8 * v42, 8 * (v32 - v42));
                v31 = v46;
                v30 = v45;
              }
            }

            LODWORD(v72) = v32;
            LODWORD(v42) = v32;
          }

          v47 = v71;
          if (v32 >= 1)
          {
            v48 = v71 + 8 * v32;
            *(v48 - 1) = v34;
            if (v32 != 1)
            {
              *(v48 - 2) = v33;
              if (v32 >= 3)
              {
                v49 = v31 - 3;
                v50 = v32 - 2;
                v51 = (v48 - 24);
                v52 = v29 - 3;
                do
                {
                  if ((v52 & 0x8000000000000000) != 0)
                  {
                    if ((v49 & 0x8000000000000000) != 0)
                    {
                      v53 = 1;
                    }

                    else
                    {
                      v53 = *(v30 + 8 * v49);
                    }
                  }

                  else
                  {
                    v53 = *(ArgAttrsAttr + 8 * v52);
                    if ((v49 & 0x8000000000000000) == 0)
                    {
                      if (v53 == 0x8000000000000000)
                      {
                        v54 = *(v30 + 8 * v49);
                      }

                      else
                      {
                        v54 = *(ArgAttrsAttr + 8 * v52);
                      }

                      if (*(v30 + 8 * v49) == 1)
                      {
                        v54 = *(ArgAttrsAttr + 8 * v52);
                      }

                      if (v53 == 1)
                      {
                        v53 = *(v30 + 8 * v49);
                      }

                      else
                      {
                        v53 = v54;
                      }
                    }
                  }

                  *v51-- = v53;
                  --v49;
                  --v50;
                  --v52;
                }

                while (v50 > 0);
              }
            }
          }

          v39 = mlir::RankedTensorType::get(v47, v42, v19, 0);
          if (v71 != v73)
          {
            v55 = v39;
            free(v71);
            v39 = v55;
          }

          goto LABEL_28;
        }
      }

      v34 = *(v30 + 8 * v31 - 16);
      goto LABEL_34;
    }
  }

  v35 = mlir::IntegerType::get(this, 32, 2u);
  if (!v35)
  {
    v35 = mlir::Float32Type::get(this, v36);
  }

  v37 = mlir::UnrankedTensorType::get(v35);
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    v56 = v37;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v38 + 1, 8);
    v37 = v56;
    v38 = *(a11 + 8);
  }

  *(*a11 + 8 * v38) = v37;
LABEL_31:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::HammingDistanceOpAdaptor::verify(mlir::mps::HammingDistanceOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    v14[0] = *(this + 3);
    mlir::AffineMapAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.hamming_distance' op requires attribute 'resultElementType'";
    v13 = 259;
    mlir::emitError(a2.var0.var0, &v12, v14);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v20;
        v5 = __p;
        if (v20 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v20 = v3;
        operator delete(v5);
      }

      v6 = v17;
      if (v17)
      {
        v7 = v18;
        v8 = v17;
        if (v18 != v17)
        {
          do
          {
            v10 = *--v7;
            v9 = v10;
            *v7 = 0;
            if (v10)
            {
              operator delete[](v9);
            }
          }

          while (v7 != v6);
          v8 = v17;
        }

        v18 = v6;
        operator delete(v8);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  return v2;
}

BOOL mlir::mps::HammingDistanceOp::verify(mlir::mps::HammingDistanceOp *this)
{
  v105 = *MEMORY[0x1E69E9840];
  v94[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v94);
  isSignedInteger = mlir::Type::isSignedInteger(&Value);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&Value);
  if (!isSignedInteger && (IntOrFloatBitWidth == 16 || IntOrFloatBitWidth == 32))
  {
    v4 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = *v4;
      {
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v83 = v5;
        mlir::arith::ExtUIOp::fold();
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v83 + 8);
        v8 = *(v83 + 16);
        if (!v8)
        {
          goto LABEL_33;
        }
      }

      v9 = v7;
      v10 = v8;
      do
      {
        v11 = v10 >> 1;
        v12 = &v9[2 * (v10 >> 1)];
        v14 = *v12;
        v13 = v12 + 2;
        v10 += ~(v10 >> 1);
        if (v14 < v6)
        {
          v9 = v13;
        }

        else
        {
          v10 = v11;
        }
      }

      while (v10);
      if (v9 != &v7[2 * v8] && *v9 == v6)
      {
        v24 = v9[1];
LABEL_34:
        v87[0] = v4;
        v87[1] = v24;
        v25 = *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!v25)
        {
          goto LABEL_48;
        }

        v26 = *v25;
        {
          v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v28 = *(v26 + 8);
          v29 = *(v26 + 16);
          if (!v29)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v84 = v26;
          mlir::arith::ExtUIOp::fold();
          v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v28 = *(v84 + 8);
          v29 = *(v84 + 16);
          if (!v29)
          {
            goto LABEL_48;
          }
        }

        v30 = v28;
        v31 = v29;
        do
        {
          v32 = v31 >> 1;
          v33 = &v30[2 * (v31 >> 1)];
          v35 = *v33;
          v34 = v33 + 2;
          v31 += ~(v31 >> 1);
          if (v35 < v27)
          {
            v30 = v34;
          }

          else
          {
            v31 = v32;
          }
        }

        while (v31);
        if (v30 != &v28[2 * v29] && *v30 == v27)
        {
          v46 = v30[1];
          v85 = v25;
          v86 = v46;
          v36 = v87[0];
          if (!v87[0])
          {
            return 1;
          }

          goto LABEL_49;
        }

LABEL_48:
        v85 = v25;
        v86 = 0;
        v36 = v87[0];
        if (!v87[0])
        {
          return 1;
        }

LABEL_49:
        v37 = *(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v25 == 0;
        if (v37 || *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          return 1;
        }

        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v87);
        v40 = v39;
        v41 = mlir::CallableOpInterface::getArgAttrsAttr(&v85);
        if (v40 <= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v40;
        }

        if (v40)
        {
          v44 = *(ArgAttrsAttr + 8 * v40 - 8);
          if (v42)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v44 = 1;
          if (v42)
          {
LABEL_59:
            v45 = *(v41 + 8 * v42 - 8);
            if (v45 == 0x8000000000000000)
            {
LABEL_68:
              if (v43 < 3)
              {
                return 1;
              }

              v50 = v43 - 2;
              v51 = v40 - 3;
              for (i = v42 - 3; ; --i)
              {
                if ((v51 & 0x8000000000000000) != 0)
                {
                  v53 = 1;
                  if ((i & 0x8000000000000000) == 0)
                  {
LABEL_74:
                    v54 = *(v41 + 8 * i);
                    if (v53 == 0x8000000000000000)
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_78;
                  }
                }

                else
                {
                  v53 = *(ArgAttrsAttr + 8 * v51);
                  if ((i & 0x8000000000000000) == 0)
                  {
                    goto LABEL_74;
                  }
                }

                v54 = 1;
                if (v53 == 0x8000000000000000)
                {
                  goto LABEL_71;
                }

LABEL_78:
                if (v54 != 1 && v54 != 0x8000000000000000 && v53 != 1 && v53 != v54)
                {
                  v88[0] = "Leading n-2 dimensions not broadcast compatible: ";
                  v89 = 259;
                  mlir::OpState::emitOpError(this, v88, v94);
                  if (v94[0])
                  {
                    v91 = 3;
                    v92 = "LHS = ";
                    v93 = 6;
                    v55 = &v91;
                    v56 = v95;
                    if (v96 >= v97)
                    {
                      if (v95 <= &v91 && v95 + 24 * v96 > &v91)
                      {
                        v79 = &v91 - v95;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                        v56 = v95;
                        v55 = (v95 + v79);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                        v55 = &v91;
                        v56 = v95;
                      }
                    }

                    v57 = &v56[24 * v96];
                    v58 = *v55;
                    *(v57 + 2) = *(v55 + 2);
                    *v57 = v58;
                    ++v96;
                    if (v94[0])
                    {
                      v59 = &v91;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v91, v87[0]);
                      v60 = v95;
                      if (v96 >= v97)
                      {
                        if (v95 <= &v91 && v95 + 24 * v96 > &v91)
                        {
                          v80 = &v91 - v95;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                          v60 = v95;
                          v59 = (v95 + v80);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                          v59 = &v91;
                          v60 = v95;
                        }
                      }

                      v61 = &v60[24 * v96];
                      v62 = *v59;
                      *(v61 + 2) = *(v59 + 2);
                      *v61 = v62;
                      v63 = ++v96;
                      if (v94[0])
                      {
                        v91 = 3;
                        v92 = " RHS = ";
                        v93 = 7;
                        v64 = &v91;
                        v65 = v95;
                        if (v63 >= v97)
                        {
                          if (v95 <= &v91 && v95 + 24 * v63 > &v91)
                          {
                            v81 = &v91 - v95;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v63 + 1, 24);
                            v65 = v95;
                            v64 = (v95 + v81);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v63 + 1, 24);
                            v64 = &v91;
                            v65 = v95;
                          }
                        }

                        v66 = &v65[24 * v96];
                        v67 = *v64;
                        *(v66 + 2) = *(v64 + 2);
                        *v66 = v67;
                        ++v96;
                        if (v94[0])
                        {
                          v68 = &v91;
                          mlir::DiagnosticArgument::DiagnosticArgument(&v91, v85);
                          v69 = v95;
                          if (v96 >= v97)
                          {
                            if (v95 <= &v91 && v95 + 24 * v96 > &v91)
                            {
                              v82 = &v91 - v95;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                              v69 = v95;
                              v68 = (v95 + v82);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                              v68 = &v91;
                              v69 = v95;
                            }
                          }

                          v70 = &v69[24 * v96];
                          v71 = *v68;
                          *(v70 + 2) = *(v68 + 2);
                          *v70 = v71;
                          ++v96;
                        }
                      }
                    }
                  }

                  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v94);
                  if (v94[0])
                  {
                    mlir::InFlightDiagnostic::report(v94);
                  }

                  if (v104)
                  {
                    if (v103 != &v104)
                    {
                      free(v103);
                    }

                    v72 = __p;
                    if (__p)
                    {
                      v73 = v102;
                      v74 = __p;
                      if (v102 != __p)
                      {
                        do
                        {
                          v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
                        }

                        while (v73 != v72);
                        v74 = __p;
                      }

                      v102 = v72;
                      operator delete(v74);
                    }

                    v19 = v99;
                    if (v99)
                    {
                      v75 = v100;
                      v21 = v99;
                      if (v100 == v99)
                      {
LABEL_108:
                        v100 = v19;
                        operator delete(v21);
                        goto LABEL_109;
                      }

                      do
                      {
                        v77 = *--v75;
                        v76 = v77;
                        *v75 = 0;
                        if (v77)
                        {
                          operator delete[](v76);
                        }
                      }

                      while (v75 != v19);
LABEL_107:
                      v21 = v99;
                      goto LABEL_108;
                    }

                    goto LABEL_109;
                  }

                  return v15;
                }

LABEL_71:
                --v50;
                --v51;
                if (v50 < 1)
                {
                  return 1;
                }
              }
            }

LABEL_65:
            if (v44 != 0x8000000000000000 && v44 != v45)
            {
              v88[0] = "Incompatible last dimension shapes: LHS = ";
              v89 = 259;
              mlir::OpState::emitOpError(this, v88, v94);
              mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v94, v87);
              mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v47, " RHS = ");
              mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v48, &v85);
              v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(v94);
              return v15;
            }

            goto LABEL_68;
          }
        }

        v45 = 1;
        goto LABEL_65;
      }
    }

LABEL_33:
    v24 = 0;
    goto LABEL_34;
  }

  v89 = 259;
  mlir::OpState::emitOpError(this, v88, v94);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v94);
  if (v94[0])
  {
    mlir::InFlightDiagnostic::report(v94);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v102;
      v18 = __p;
      if (v102 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v102 = v16;
      operator delete(v18);
    }

    v19 = v99;
    if (v99)
    {
      v20 = v100;
      v21 = v99;
      if (v100 == v99)
      {
        goto LABEL_108;
      }

      do
      {
        v23 = *--v20;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          operator delete[](v22);
        }
      }

      while (v20 != v19);
      goto LABEL_107;
    }

LABEL_109:
    if (v95 != v98)
    {
      free(v95);
    }
  }

  return v15;
}

uint64_t mlir::mps::TransposeOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
    goto LABEL_9;
  }

  v72 = a6;
  v73[0] = 0;
  v74 = 0;
  v75 = a9;
  v76 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v72);
    if (v74 == 1)
    {
      v74 = 0;
    }

    mlir::OperationName::OperationName(v73, "mps.transpose", 13, Context);
    v74 = 1;
  }

  v77 = a4;
  v78 = a5;
  if (a5 <= 2)
  {
    v65 = a4;
    v66 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v65, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v14);
LABEL_9:
    v16 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v17 = *(a11 + 8);
    if (v17 >= *(a11 + 12))
    {
      v29 = v16;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v17 + 1, 8);
      v16 = v29;
      LODWORD(v17) = *(a11 + 8);
    }

    *(*a11 + 8 * v17) = v16;
    ++*(a11 + 8);
    return 1;
  }

  v65 = a4;
  v66 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v65, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = *v18;
  {
    mlir::arith::ExtUIOp::fold();
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_15:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22] || *v23 != v20)
  {
    goto LABEL_25;
  }

  v30 = v23[1];
LABEL_26:
  v61[0] = v18;
  v61[1] = v30;
  v70[0] = &v71;
  v70[1] = 0x100000000;
  v68[0] = &v69;
  v68[1] = 0x100000000;
  if (mlir::CallOpInterface::getArgOperands(v61))
  {
    v65 = v77;
    v66 = 1;
    v65 = mlir::ValueRange::offset_base(&v65, 1);
    v66 = 0;
    v31 = mlir::ValueRange::dereference_iterator(&v65, 0);
    mlir::CallableOpInterface::getArgAttrsAttr(v61);
    v33 = v32;
    v65 = 0;
    v66 = 0;
    v62 = &v65;
    *&v63 = v31;
    DefiningOp = mlir::Value::getDefiningOp(&v63);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v62, DefiningOp) & 1) != 0)
    {
      {
        goto LABEL_35;
      }

LABEL_32:
      v65 = v77;
      v66 = 2;
      v65 = mlir::ValueRange::offset_base(&v65, 2);
      v66 = 0;
      v36 = mlir::ValueRange::dereference_iterator(&v65, 0);
      mlir::CallableOpInterface::getArgAttrsAttr(v61);
      v38 = v37;
      v65 = 0;
      v66 = 0;
      v62 = &v65;
      *&v63 = v36;
      v39 = mlir::Value::getDefiningOp(&v63);
      if (v39 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v62, v39) & 1) != 0)
      {
        {
          goto LABEL_35;
        }
      }

      else
      {
        v45.var0.var0 = 0;
        if (!mlir::emitOptionalError<char const(&)[66]>(0, v45, "axes is not a constant"))
        {
          goto LABEL_35;
        }
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v61);
      v47 = mlir::CallableOpInterface::getArgAttrsAttr(v61);
      v49 = (v47 + 8 * v48);
      v65 = v67;
      v66 = 0x600000000;
      v50 = (v49 - ArgAttrsAttr) >> 3;
      if (v50 < 7)
      {
        v51 = 0;
        v52 = v67;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v50, 8);
        v51 = v66;
        v52 = v65;
      }

      if (v49 != ArgAttrsAttr)
      {
        memcpy(&v52[8 * v51], ArgAttrsAttr, v49 - ArgAttrsAttr);
        v51 = v66;
        v52 = v65;
      }

      v53 = v51 + ((v49 - ArgAttrsAttr) >> 3);
      LODWORD(v66) = v53;
      v54 = *v68[0];
      v55 = *&v52[8 * *v70[0]];
      *&v52[8 * *v70[0]] = *&v52[8 * *v68[0]];
      *&v52[8 * v54] = v55;
      *&v63 = v52;
      *(&v63 + 1) = v53;
      v64 = 1;
      isSplat = mlir::ElementsAttr::isSplat(v61);
      v57 = mlir::ShapedType::cloneWith(v61, &v63, isSplat);
      v58 = *(a11 + 8);
      if (v58 >= *(a11 + 12))
      {
        v60 = v57;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v58 + 1, 8);
        v57 = v60;
        LODWORD(v58) = *(a11 + 8);
      }

      *(*a11 + 8 * v58) = v57;
      ++*(a11 + 8);
      if (v65 != v67)
      {
        free(v65);
      }

      goto LABEL_38;
    }

    v35.var0.var0 = 0;
    if (mlir::emitOptionalError<char const(&)[66]>(0, v35, "axes is not a constant"))
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  v65 = v77;
  v66 = 0;
  v40 = mlir::ValueRange::dereference_iterator(&v65, 0);
  v41 = mlir::getElementTypeOrSelf(v40);
  v42 = mlir::UnrankedTensorType::get(v41);
  v43 = *(a11 + 8);
  if (v43 >= *(a11 + 12))
  {
    v59 = v42;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v43 + 1, 8);
    v42 = v59;
    LODWORD(v43) = *(a11 + 8);
  }

  *(*a11 + 8 * v43) = v42;
  ++*(a11 + 8);
LABEL_38:
  if (v68[0] != &v69)
  {
    free(v68[0]);
  }

  if (v70[0] != &v71)
  {
    free(v70[0]);
  }

  return 1;
}

void *llvm::SmallVector<long long,6u>::SmallVector<long long const*,void>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  v5 = a3 - a2;
  v6 = (a3 - a2) >> 3;
  if (v6 >= 7)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v6, 8);
    a2 = v7;
    v8 = *(a1 + 2);
    if (v7 == a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (a2 != a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v8), a2, v5);
    v8 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v8 + (v5 >> 3);
  return a1;
}

BOOL mlir::mps::PermuteOp::inferReturnTypes(mlir::Float32Type *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74[4] = *MEMORY[0x1E69E9840];
  v68[0] = a4;
  v68[1] = a5;
  if (a5 == 2)
  {
    v14 = *(mlir::ValueRange::dereference_iterator(v68, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = mlir::ValueRange::dereference_iterator(v68, 1);
    v16 = *(*v14 + 136);
    if (v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    v63 = v18;
    if (!v18)
    {
      v27.var0.var0 = a3;
      if (mlir::emitOptionalError<char const(&)[66]>(a2, v27, "cannot permute a non-tensor type"))
      {
        v28 = 0;
LABEL_63:
        v56 = *(a11 + 8);
        if (v56 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v56 + 1, 8);
          LODWORD(v56) = *(a11 + 8);
        }

        *(*a11 + 8 * v56) = v28;
LABEL_71:
        ++*(a11 + 8);
        return 1;
      }

LABEL_66:
      v57 = mlir::ValueRange::dereference_iterator(v68, 0);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v57);
      if (!ElementTypeOrSelf)
      {
        ElementTypeOrSelf = mlir::Float32Type::get(a1, v59);
      }

      v60 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v61 = *(a11 + 8);
      if (v61 >= *(a11 + 12))
      {
        v62 = v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v61 + 1, 8);
        v60 = v62;
        v61 = *(a11 + 8);
      }

      *(*a11 + 8 * v61) = v60;
      goto LABEL_71;
    }

    v19 = v15;
    __b = v71;
    v70 = 0x400000000;
    v67 = v18;
    if (mlir::TensorType::hasRank(&v67))
    {
      goto LABEL_10;
    }

    v29 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v29)
    {
      goto LABEL_53;
    }

    v30 = *v29;
    {
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = *(v30 + 8);
      v33 = *(v30 + 16);
      if (!v33)
      {
        goto LABEL_53;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = *(v30 + 8);
      v33 = *(v30 + 16);
      if (!v33)
      {
        goto LABEL_53;
      }
    }

    v34 = v32;
    v35 = v33;
    do
    {
      v36 = v35 >> 1;
      v37 = &v34[2 * (v35 >> 1)];
      v39 = *v37;
      v38 = v37 + 2;
      v35 += ~(v35 >> 1);
      if (v39 < v31)
      {
        v34 = v38;
      }

      else
      {
        v35 = v36;
      }
    }

    while (v35);
    if (v34 != &v32[2 * v33] && *v34 == v31)
    {
      v55 = v34[1];
      v72 = v29;
      v73 = v55;
      if (!mlir::CallOpInterface::getArgOperands(&v72))
      {
        goto LABEL_60;
      }

LABEL_54:
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v72);
      if (v53)
      {
        v54 = 8 * v53;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v54 -= 8;
          if (!v54)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_60;
      }

LABEL_10:
      if (mlir::TensorType::hasRank(&v67))
      {
        mlir::ArrayAttr::getValue(&v67);
        NumElements = v20;
        v66 = v20;
        v22 = v70;
        v23 = v20 >= v70;
        if (v20 == v70)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v72 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
        Value = mlir::ArrayAttr::getValue(&v72);
        NumElements = mlir::ShapedType::getNumElements(Value, v41);
        v66 = NumElements;
        v22 = v70;
        v23 = NumElements >= v70;
        if (NumElements == v70)
        {
          goto LABEL_36;
        }
      }

      if (v23)
      {
        if (NumElements > HIDWORD(v70))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v71, NumElements, 8);
          v22 = v70;
        }

        if (NumElements != v22)
        {
          bzero(__b + 8 * v22, 8 * (NumElements - v22));
        }
      }

      LODWORD(v70) = NumElements;
LABEL_36:
      v72 = v74;
      v73 = 0x400000000;
      if (*(*v67 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (mlir::matchConstantWithIntVector<long long>(v19, &v72) & 1) == 0)
      {
        if (NumElements)
        {
          memset_pattern16(__b, &unk_1E096FAD0, 8 * NumElements);
        }

        v44 = 1;
        v45 = v72;
        if (v72 == v74)
        {
LABEL_44:
          if (v44)
          {
            v46 = __b;
            v47 = v70;
            ElementType = mlir::TensorType::getElementType(&v63);
            v28 = mlir::RankedTensorType::get(v46, v47, ElementType, 0);
            v49 = 1;
            v50 = __b;
            if (__b == v71)
            {
LABEL_62:
              if (v49)
              {
                goto LABEL_63;
              }

              goto LABEL_66;
            }

LABEL_61:
            free(v50);
            goto LABEL_62;
          }

LABEL_60:
          v28 = 0;
          v49 = 0;
          v50 = __b;
          if (__b == v71)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }

      else
      {
        if (NumElements == v73)
        {
          v64[0] = mlir::ArrayAttr::getValue(&v67);
          v64[1] = v42;
          v65 = 1;
        }

        else
        {
          v64[0] = v73;
          v51.var0.var0 = a3;
          v43 = mlir::emitOptionalError<char const(&)[37],char const(&)[14],unsigned long,char const(&)[5],unsigned long &>(a2, v51, "perm tensor length must equal input ", "tensor rank, ", v64, " != ", &v66);
        }

        v44 = v43;
        v45 = v72;
        if (v72 == v74)
        {
          goto LABEL_44;
        }
      }

      free(v45);
      goto LABEL_44;
    }

LABEL_53:
    v72 = v29;
    v73 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v72))
    {
      goto LABEL_60;
    }

    goto LABEL_54;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::PermuteOp::verify(mlir::mps::PermuteOp *this)
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = *(*this + 72);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v70 = v3;
  v6 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = 0;
  }

  v69 = v6;
  if (!v3)
  {
    v68 = 259;
    mlir::OpState::emitOpError(this, v66, &v74);
    if (v74)
    {
      v18 = *(*(*(*this + 72) + 24) + 8);
      v19 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v18 & 0xFFFFFFFFFFFFFFF8);
      v20 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v71 && v77 + 24 * v78 > &v71)
        {
          v61 = &v71 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v20 = v77;
          v19 = (v77 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v19 = &v71;
          v20 = v77;
        }
      }

      v21 = &v20[24 * v78];
      v22 = *v19;
      *(v21 + 2) = *(v19 + 2);
      *v21 = v22;
      ++v78;
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v86 != 1)
    {
      return v17;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v84;
      v25 = __p;
      if (v84 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v84 = v23;
      operator delete(v25);
    }

    v26 = v81;
    if (v81)
    {
      v27 = v82;
      v28 = v81;
      if (v82 == v81)
      {
        goto LABEL_62;
      }

      do
      {
        v30 = *--v27;
        v29 = v30;
        *v27 = 0;
        if (v30)
        {
          operator delete[](v29);
        }
      }

      while (v27 != v26);
LABEL_61:
      v28 = v81;
LABEL_62:
      v82 = v26;
      operator delete(v28);
    }

LABEL_63:
    v42 = v77;
    if (v77 == v80)
    {
      return v17;
    }

    goto LABEL_64;
  }

  if (!v6)
  {
    v68 = 259;
    mlir::OpState::emitOpError(this, v66, &v74);
    if (v74)
    {
      v31 = *(*(*(*this + 72) + 56) + 8);
      v32 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v31 & 0xFFFFFFFFFFFFFFF8);
      v33 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v71 && v77 + 24 * v78 > &v71)
        {
          v62 = &v71 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v33 = v77;
          v32 = (v77 + v62);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v32 = &v71;
          v33 = v77;
        }
      }

      v34 = &v33[24 * v78];
      v35 = *v32;
      *(v34 + 2) = *(v32 + 2);
      *v34 = v35;
      ++v78;
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v86 != 1)
    {
      return v17;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v84;
      v38 = __p;
      if (v84 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v84 = v36;
      operator delete(v38);
    }

    v26 = v81;
    if (v81)
    {
      v39 = v82;
      v28 = v81;
      if (v82 == v81)
      {
        goto LABEL_62;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          operator delete[](v40);
        }
      }

      while (v39 != v26);
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  if (!mlir::TensorType::hasRank(&v70) || !mlir::TensorType::hasRank(&v69))
  {
    return 1;
  }

  Value = mlir::ArrayAttr::getValue(&v69);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    return 1;
  }

LABEL_19:
  mlir::ArrayAttr::getValue(&v70);
  v13 = v12;
  v14 = mlir::ArrayAttr::getValue(&v69);
  if (mlir::ShapedType::getNumElements(v14, v15) == v13)
  {
    v74 = &v76;
    v75 = 0x400000000;
    if (mlir::matchConstantWithIntVector<long long>(*(*(*this + 72) + 56), &v74))
    {
      v16 = *(*this + 24);
      LOBYTE(v66[0]) = 0;
      v67 = 0;
    }

    else
    {
      v17 = 1;
    }

    v42 = v74;
    if (v74 == &v76)
    {
      return v17;
    }

LABEL_64:
    free(v42);
    return v17;
  }

  v66[0] = "perm tensor length must equal input tensor rank, ";
  v68 = 259;
  mlir::OpState::emitOpError(this, v66, &v74);
  v44 = mlir::ArrayAttr::getValue(&v69);
  NumElements = mlir::ShapedType::getNumElements(v44, v45);
  if (v74)
  {
    v71 = 2;
    v72 = NumElements;
    v47 = &v71;
    v48 = v77;
    if (v78 >= v79)
    {
      if (v77 <= &v71 && v77 + 24 * v78 > &v71)
      {
        v63 = &v71 - v77;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
        v48 = v77;
        v47 = (v77 + v63);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
        v47 = &v71;
        v48 = v77;
      }
    }

    v49 = &v48[24 * v78];
    v50 = *v47;
    *(v49 + 2) = *(v47 + 2);
    *v49 = v50;
    v51 = ++v78;
    if (v74)
    {
      v71 = 3;
      v72 = " != ";
      v73 = 4;
      v52 = &v71;
      v53 = v77;
      if (v51 >= v79)
      {
        if (v77 <= &v71 && v77 + 24 * v51 > &v71)
        {
          v64 = &v71 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v51 + 1, 24);
          v53 = v77;
          v52 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v51 + 1, 24);
          v52 = &v71;
          v53 = v77;
        }
      }

      v54 = &v53[24 * v78];
      v55 = *v52;
      *(v54 + 2) = *(v52 + 2);
      *v54 = v55;
      v56 = ++v78;
      if (v74)
      {
        v71 = 5;
        v72 = v13;
        v57 = &v71;
        v58 = v77;
        if (v56 >= v79)
        {
          if (v77 <= &v71 && v77 + 24 * v56 > &v71)
          {
            v65 = &v71 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v56 + 1, 24);
            v58 = v77;
            v57 = (v77 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v56 + 1, 24);
            v57 = &v71;
            v58 = v77;
          }
        }

        v59 = &v58[24 * v78];
        v60 = *v57;
        *(v59 + 2) = *(v57 + 2);
        *v59 = v60;
        ++v78;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
  if (v74)
  {
    mlir::InFlightDiagnostic::report(&v74);
  }

  if (v86 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v75);
  }

  return v17;
}

uint64_t mlir::mps::anonymous namespace::permuteShapeWithAxes(mlir *a1, AttributeStorage *a2, uint64_t a3, void *a4, char **a5, uint64_t a6, char *a7)
{
  v30 = 0;
  v31 = a7;
  v28 = &v29;
  v29 = 0;
  if (a6)
  {
    v7 = a5;
    v11 = 0;
    v12 = &a5[a6];
    while (1)
    {
      v13 = *v7;
      v14 = &(*v7)[v31 & (*v7 >> 63)];
      v26 = v14;
      v27 = v13;
      if (v31 <= v14)
      {
        v24.var0.var0 = a2;
        v21 = mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[7],char const(&)[15],unsigned long &>(a1, v24, "invalid axis (", &v27, ") for ", "input of rank ", &v31);
        goto LABEL_18;
      }

      v15 = v29;
      v16 = &v29;
      v17 = &v29;
      if (v29)
      {
        break;
      }

LABEL_12:
      v19 = operator new(0x28uLL);
      v19[4] = v14;
      *v19 = 0;
      v19[1] = 0;
      v19[2] = v17;
      *v16 = v19;
      if (*v28)
      {
        v28 = *v28;
      }

      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v29, v19);
      ++v30;
      if (a4 && (*(a3 + 16) & 1) != 0)
      {
        *(*a4 + 8 * v11) = *(*a3 + 8 * v14);
      }

      ++v11;
      if (++v7 == v12)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      while (1)
      {
        v17 = v15;
        v18 = v15[4];
        if (v14 >= v18)
        {
          break;
        }

        v15 = *v17;
        v16 = v17;
        if (!*v17)
        {
          goto LABEL_12;
        }
      }

      if (v18 >= v14)
      {
        break;
      }

      v15 = v17[1];
      if (!v15)
      {
        v16 = v17 + 1;
        goto LABEL_12;
      }
    }

    v20.var0.var0 = a2;
    v21 = mlir::emitOptionalError<char const(&)[37],char const(&)[6],unsigned long &,char const(&)[13]>(a1, v20, "axes in perm tensor must be unique, ", "axis ", &v26, " is repeated");
LABEL_18:
    v22 = v21;
  }

  else
  {
LABEL_19:
    v22 = 1;
  }

  std::__tree<unsigned long long>::destroy(&v28, v29);
  return v22;
}

uint64_t mlir::mps::OneHotOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, unint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v46 = a6;
  v47[0] = 0;
  v48 = 0;
  v49 = v14;
  v50 = a9;
  v51 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v46);
    if (v48 == 1)
    {
      v48 = 0;
    }

    mlir::OperationName::OperationName(v47, "mps.one_hot", 11, Context);
    v48 = 1;
  }

  v52 = a4;
  v53 = a5;
  if (a5 && (v16.var0.var0 = mlir::UnknownLoc::get(this, a2), mlir::mps::OneHotOpAdaptor::verify(&v46, v16)))
  {
    v43 = v52;
    v44 = 0;
    v17 = mlir::ValueRange::dereference_iterator(&v43, 0);
    v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    v20 = v19;
    v43 = v52;
    v44 = 1;
    v43 = mlir::ValueRange::offset_base(&v43, 1);
    v44 = 0;
    v21 = mlir::ValueRange::dereference_iterator(&v43, 0);
    v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
    v43 = v52;
    v44 = 2;
    v43 = mlir::ValueRange::offset_base(&v43, 2);
    v44 = 0;
    v23 = mlir::ValueRange::dereference_iterator(&v43, 0);
    v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v23 + 8) & 0xFFFFFFFFFFFFFFF8));
    v43 = &v45;
    v44 = 0x100000000;
    v41[0] = &v42;
    v41[1] = 0x100000000;
    if (v18 && v22 && v24 && (v54 = v52, v55 = 1, v54 = mlir::ValueRange::offset_base(&v54, 1), v55 = 0, v25 = mlir::ValueRange::dereference_iterator(&v54, 0), (mlir::matchConstantWithIntVector<unsigned long long>(v25, &v43) & 1) != 0) && (Axis = mlir::mps::OneHotOpGenericAdaptor<mlir::ValueRange>::getAxis(&v46), (mlir::matchConstantWithIntVector<long long>(Axis, v41) & 1) != 0))
    {
      v40 = 0;
      v27 = *v43;
      v28 = *v41[0];
      v54 = v49;
      Value = mlir::AffineMapAttr::getValue(&v54);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v40);
    }

    else
    {
      v54 = v49;
      v33 = mlir::AffineMapAttr::getValue(&v54);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
      v35 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v36 = *(a11 + 8);
      if (v36 >= *(a11 + 12))
      {
        v39 = v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v36 + 1, 8);
        v35 = v39;
        LODWORD(v36) = *(a11 + 8);
      }

      *(*a11 + 8 * v36) = v35;
      ++*(a11 + 8);
    }

    if (v41[0] != &v42)
    {
      free(v41[0]);
    }

    if (v43 != &v45)
    {
      free(v43);
    }
  }

  else
  {
    v30 = mlir::Float32Type::get(this, a2);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      v38 = v31;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v32 + 1, 8);
      v31 = v38;
      LODWORD(v32) = *(a11 + 8);
    }

    *(*a11 + 8 * v32) = v31;
    ++*(a11 + 8);
  }

  return 1;
}