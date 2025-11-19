uint64_t anonymous namespace::PassTiming::runBeforeAnalysis(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  threadid = llvm::get_threadid(a1);
  v8 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &threadid);
  v9 = v8;
  v10 = *(v8 + 2);
  if (v10)
  {
    v11 = *v8 + 16 * v10;
    v23 = a2;
    v24 = a3;
    v14 = *(v11 - 16);
    v12 = (v11 - 16);
    v13 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    v21 = 0;
    v16 = *v8;
    v17 = &v20;
    if (v10 < *(v8 + 3))
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v12 = *(a1 + 10);
  v23 = a2;
  v24 = a3;
  v13 = *v12;
  if (!*v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = v13;
  v21 = v15;
  (*(*v13 + 24))(v13, v15);
  LODWORD(v10) = *(v9 + 8);
  v16 = *v9;
  v17 = &v20;
  if (v10 < *(v9 + 12))
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v16 <= &v20 && v16 + 16 * v10 > &v20)
  {
    v19 = &v20 - v16;
    llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(v9, v10 + 1);
    v16 = *v9;
    v17 = &v19[*v9];
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(v9, v10 + 1);
    v16 = *v9;
    v17 = &v20;
  }

LABEL_7:
  *(v16 + 16 * *(v9 + 8)) = *v17;
  *v17 = 0;
  v17[1] = 0;
  ++*(v9 + 8);
  result = v20;
  if (v20)
  {
    return (*(*v20 + 32))(v20, v21);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterAnalysis(llvm *a1)
{
  threadid = llvm::get_threadid(a1);
  v2 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &threadid);
  v3 = *(v2 + 2) - 1;
  *(v2 + 2) = v3;
  v4 = (*v2 + 16 * v3);
  result = *v4;
  if (*v4)
  {
    result = (*(*result + 32))(result, v4[1]);
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = (*a1 + 88 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -2;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 88 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -1)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = v5 + 3;
  v5[2] = 0x400000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 88 * v6);
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
        v7 = (v4 + 88 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(88 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::moveFromOldBuckets(a1, v4, &v4[11 * v3]);

    llvm::deallocate_buffer(v4, (88 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 88 * v10 - 88;
    if (v11 < 0x58)
    {
      v12 = result;
LABEL_14:
      v16 = &result[11 * v10];
      do
      {
        *v12 = -1;
        v12 += 11;
      }

      while (v12 != v16);
      return result;
    }

    v13 = v11 / 0x58 + 1;
    v12 = &result[11 * (v13 & 0x7FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v13 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -1;
      v14[11] = -1;
      v14 += 22;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 88 * v6 - 88;
    if (v8 < 0x58)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[11 * v6];
      do
      {
        *v9 = -1;
        v9 += 11;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x58 + 1;
    v9 = &v7[11 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[11] = -1;
      v11 += 22;
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
    while (1)
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_11:
      v4 += 11;
      if (v4 == a3)
      {
        return;
      }
    }

    v15 = *(a1 + 16) - 1;
    v16 = v15 & (((0xBF58476D1CE4E5B9 * v14) >> 31) ^ (484763065 * v14));
    v17 = (*a1 + 88 * v16);
    v18 = *v17;
    if (v14 != *v17)
    {
      v24 = 0;
      v25 = 1;
      while (v18 != -1)
      {
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = v18 == -2;
        }

        if (v26)
        {
          v24 = v17;
        }

        v27 = v16 + v25++;
        v16 = v27 & v15;
        v17 = (*a1 + 88 * (v27 & v15));
        v18 = *v17;
        if (v14 == *v17)
        {
          goto LABEL_14;
        }
      }

      if (v24)
      {
        v17 = v24;
      }
    }

LABEL_14:
    *v17 = v14;
    v17[1] = (v17 + 3);
    v17[2] = 0x400000000;
    if (*(v4 + 4))
    {
      llvm::SmallVectorImpl<mlir::TimingScope>::operator=((v17 + 1), v4 + 1);
      v19 = *(v4 + 4);
      ++*(a1 + 8);
      v20 = v4[1];
      if (!v19)
      {
        goto LABEL_22;
      }

      v21 = 16 * v19;
      v22 = &v20[v21 - 16];
      v23 = -v21;
      do
      {
        if (*v22)
        {
          (*(**v22 + 32))(*v22, *(v22 + 1));
        }

        *v22 = 0;
        *(v22 + 1) = 0;
        v22 -= 16;
        v23 += 16;
      }

      while (v23);
    }

    else
    {
      ++*(a1 + 8);
    }

    v20 = v4[1];
LABEL_22:
    if (v20 != (v4 + 3))
    {
      free(v20);
    }

    goto LABEL_11;
  }
}

uint64_t llvm::SmallVectorImpl<mlir::TimingScope>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != a2 + 2)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = 2 * v7;
        v9 = &v6[v8 - 2];
        v10 = -(v8 * 8);
        do
        {
          if (*v9)
          {
            (*(**v9 + 32))(*v9, v9[1]);
          }

          *v9 = 0;
          v9[1] = 0;
          v9 -= 2;
          v10 += 16;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v11 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v11 = 0;
      return a1;
    }

    v11 = a2 + 1;
    v13 = *(a2 + 2);
    v14 = *(a1 + 8);
    if (v14 < v13)
    {
      if (*(a1 + 12) >= v13)
      {
        v20 = *a1;
        if (v14)
        {
          v21 = 16 * v14;
          do
          {
            if (*v20)
            {
              (*(**v20 + 32))(*v20, v20[1]);
            }

            *v20 = 0;
            v20[1] = 0;
            *v20 = *v5;
            v20 += 2;
            *v5 = 0;
            *(v5 + 8) = 0;
            v5 += 16;
            v21 -= 16;
          }

          while (v21);
          v20 = *a1;
          v38 = *a2;
          v39 = *(a2 + 2);
          if (v14 == v39)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v14 = 0;
          v38 = *a2;
          v39 = *(a2 + 2);
          if (!*(a2 + 2))
          {
            goto LABEL_62;
          }
        }
      }

      else
      {
        if (v14)
        {
          v15 = (16 * v14 + *a1 - 16);
          v16 = -16 * v14;
          do
          {
            if (*v15)
            {
              (*(**v15 + 32))(*v15, v15[1]);
            }

            *v15 = 0;
            v15[1] = 0;
            v15 -= 2;
            v16 += 16;
          }

          while (v16);
        }

        *(a1 + 8) = 0;
        v48 = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v13, 16, &v48);
        v20 = v22;
        v23 = *a1;
        v24 = *(a1 + 8);
        if (v24)
        {
          v25 = 16 * v24;
          v26 = v20;
          do
          {
            *v26++ = *v23;
            *v23 = 0;
            v23[1] = 0;
            v23 += 2;
            v25 -= 16;
          }

          while (v25);
          v23 = *a1;
          v27 = *(a1 + 8);
          if (v27)
          {
            v28 = 2 * v27;
            v29 = &v23[v28 - 2];
            v30 = -(v28 * 8);
            do
            {
              if (*v29)
              {
                (*(**v29 + 32))(*v29, v29[1]);
              }

              *v29 = 0;
              v29[1] = 0;
              v29 -= 2;
              v30 += 16;
            }

            while (v30);
            v23 = *a1;
          }
        }

        v40 = v48;
        if (v23 != (a1 + 16))
        {
          free(v23);
        }

        v14 = 0;
        *a1 = v20;
        *(a1 + 12) = v40;
        v38 = *a2;
        v39 = *(a2 + 2);
        if (!*(a2 + 2))
        {
          goto LABEL_62;
        }
      }

      v41 = &v20[2 * v14];
      v42 = v38 + 16 * v14;
      v43 = 16 * v39 - 16 * v14;
      do
      {
        *v41++ = *v42;
        *v42 = 0;
        *(v42 + 8) = 0;
        v42 += 16;
        v43 -= 16;
      }

      while (v43);
      v38 = *a2;
LABEL_62:
      *(a1 + 8) = v13;
      v44 = *v11;
      if (v44)
      {
        v45 = 16 * v44;
        v46 = (v45 + v38 - 16);
        v47 = -v45;
        do
        {
          if (*v46)
          {
            (*(**v46 + 32))(*v46, v46[1]);
          }

          *v46 = 0;
          v46[1] = 0;
          v46 -= 2;
          v47 += 16;
        }

        while (v47);
      }

      goto LABEL_12;
    }

    v17 = *a1;
    if (v13)
    {
      v18 = 16 * v13;
      do
      {
        if (*v17)
        {
          (*(**v17 + 32))(*v17, v17[1]);
        }

        *v17 = 0;
        v17[1] = 0;
        *v17 = *v5;
        v17 += 2;
        *v5 = 0;
        *(v5 + 8) = 0;
        v5 += 16;
        v18 -= 16;
      }

      while (v18);
      v19 = *a1 + 16 * *(a1 + 8);
      if (v19 == v17)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = &v17[2 * v14];
      if (v19 == v17)
      {
LABEL_46:
        *(a1 + 8) = v13;
        v34 = *(a2 + 2);
        if (v34)
        {
          v35 = 16 * v34;
          v36 = (v35 + *a2 - 16);
          v37 = -v35;
          do
          {
            if (*v36)
            {
              (*(**v36 + 32))(*v36, v36[1]);
            }

            *v36 = 0;
            v36[1] = 0;
            v36 -= 2;
            v37 += 16;
          }

          while (v37);
        }

        goto LABEL_12;
      }
    }

    v31 = v19;
    do
    {
      v33 = *(v31 - 2);
      v31 -= 2;
      v32 = v33;
      if (v33)
      {
        (*(*v32 + 32))(v32, *(v19 - 8));
      }

      *v31 = 0;
      v31[1] = 0;
      v19 = v31;
    }

    while (v31 != v17);
    goto LABEL_46;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 16 * v7;
    v9 = v5;
    do
    {
      *v9++ = *v6;
      *v6 = 0;
      v6[1] = 0;
      v6 += 2;
      v8 -= 16;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 2 * v10;
      v12 = &v6[v11 - 2];
      v13 = -(v11 * 8);
      do
      {
        if (*v12)
        {
          (*(**v12 + 32))(*v12, v12[1]);
        }

        *v12 = 0;
        v12[1] = 0;
        v12 -= 2;
        v13 += 16;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v14;
}

void llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforePipeline(std::optional<mlir::OperationName>,mlir::PassInstrumentation::PipelineParentInfo const&)::{lambda(void)#1}>(_BYTE *a1@<X0>, std::string *a2@<X8>)
{
  if (a1[8] == 1)
  {
    v7[0] = *(*a1 + 8);
    v2 = a2;
    AttrData = mlir::OpaqueAttr::getAttrData(v7);
    a2 = v2;
  }

  else
  {
    AttrData = "any";
    v4 = 3;
  }

  v6 = 1283;
  v5[0] = "'";
  v5[2] = AttrData;
  v5[3] = v4;
  v7[0] = v5;
  v7[2] = "' Pipeline";
  v8 = 770;
  llvm::Twine::str(v7, a2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2[1];
    v4 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | ((((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2)) << 32));
    v5 = v2 - 1;
    v6 = (v2 - 1) & ((v4 >> 31) ^ v4);
    v7 = *a1 + 24 * v6;
    v9 = *v7;
    v8 = *(v7 + 8);
    if (*a2 == *v7 && v3 == v8)
    {
      return v7 + 16;
    }

    v13 = 0;
    v14 = 1;
    while (v9 != -1 || v8 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8 == -8192;
      }

      if (v15 && v9 == -2)
      {
        v13 = v7;
      }

      v17 = v6 + v14++;
      v6 = v17 & v5;
      v7 = *a1 + 24 * (v17 & v5);
      v9 = *v7;
      v8 = *(v7 + 8);
      if (*a2 == *v7 && v3 == v8)
      {
        return v7 + 16;
      }
    }

    if (v13)
    {
      v7 = v13;
    }
  }

  else
  {
    v7 = 0;
  }

  v21 = v7;
  v12 = *(a1 + 8);
  if (4 * v12 + 4 >= 3 * v2)
  {
    v19 = a2;
    v2 *= 2;
    goto LABEL_35;
  }

  if (v2 + ~v12 - *(a1 + 12) <= v2 >> 3)
  {
    v19 = a2;
LABEL_35:
    v20 = a1;
    llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(v20, v19, &v21);
    a1 = v20;
    a2 = v19;
    v7 = v21;
    ++*(v20 + 8);
    if (*v7 != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(a1 + 8) = v12 + 1;
  if (*v7 != -1)
  {
LABEL_13:
    --*(a1 + 12);
    goto LABEL_14;
  }

LABEL_12:
  if (*(v7 + 8) != -4096)
  {
    goto LABEL_13;
  }

LABEL_14:
  *v7 = *a2;
  *(v7 + 16) = 0;
  return v7 + 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((v6 >> 4) ^ (v6 >> 9) | ((((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2)) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (v5 == *v11 && v6 == v12)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v13 != -1 || v12 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == -8192;
        }

        if (v18 && v13 == -2)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 24 * (v20 & v9));
        v13 = *v11;
        v12 = v11[1];
        if (v5 == *v11 && v6 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

_OWORD *llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    if (v12 < 0x18)
    {
      v13 = result;
LABEL_14:
      v17 = (result + 24 * v11);
      do
      {
        *v13 = xmmword_1E097C4F0;
        v13 = (v13 + 24);
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = (result + 24 * (v14 & 0x1FFFFFFFFFFFFFFELL));
    v15 = result;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v15 = xmmword_1E097C4F0;
      *(v15 + 24) = xmmword_1E097C4F0;
      v15 += 3;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    if (v5 < 0x18)
    {
      v6 = *result;
LABEL_7:
      v10 = (v4 + 24 * v3);
      do
      {
        *v6 = xmmword_1E097C4F0;
        v6 = (v6 + 24);
      }

      while (v6 != v10);
      goto LABEL_9;
    }

    v7 = v5 / 0x18 + 1;
    v6 = (v4 + 24 * (v7 & 0x1FFFFFFFFFFFFFFELL));
    v8 = *result;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = xmmword_1E097C4F0;
      *(v8 + 24) = xmmword_1E097C4F0;
      v8 += 3;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  while (a2 != a3)
  {
    v19 = *a2;
    v20 = a2[1];
    if ((*a2 != -1 || v20 != -4096) && (v19 != -2 || v20 != -8192))
    {
      v11 = 0xBF58476D1CE4E5B9 * ((v20 >> 4) ^ (v20 >> 9) | ((((0xBF58476D1CE4E5B9 * v19) >> 31) ^ (484763065 * v19)) << 32));
      v12 = (v11 >> 31) ^ v11;
      v13 = *(result + 16) - 1;
      v14 = v13 & v12;
      v15 = *result + 24 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      if (v19 != *v15 || v20 != v17)
      {
        v21 = 0;
        v22 = 1;
        while (v16 != -1 || v17 != -4096)
        {
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v17 == -8192;
          }

          if (v23 && v16 == -2)
          {
            v21 = v15;
          }

          v25 = v14 + v22++;
          v14 = v25 & v13;
          v15 = *result + 24 * (v25 & v13);
          v16 = *v15;
          v17 = *(v15 + 8);
          if (v19 == *v15 && v20 == v17)
          {
            goto LABEL_16;
          }
        }

        if (v21)
        {
          v15 = v21;
        }
      }

LABEL_16:
      *v15 = *a2;
      *(v15 + 16) = *(a2 + 4);
      ++*(result + 8);
    }

    a2 += 3;
  }

  return result;
}

void *llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforePass(mlir::Pass *,mlir::Operation *)::{lambda(void)#2}>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 16))(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v5 = result;
  v6 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = v4;
    if (!v4)
    {
      *a2 = 0;
      return result;
    }
  }

  result = memmove(a2, v5, v6);
  *(a2 + v6) = 0;
  return result;
}

void llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforeAnalysis(llvm::StringRef,mlir::TypeID,mlir::Operation *)::{lambda(void)#1}>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_13;
  }

  v4 = *(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    p_dst = operator new(v6);
    __dst.__r_.__value_.__l.__size_ = v4;
    __dst.__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    p_dst = &__dst;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  memmove(p_dst, v3, v4);
LABEL_12:
  p_dst->__r_.__value_.__s.__data_[v4] = 0;
LABEL_13:
  v7 = std::string::insert(&__dst, 0, "(A) ");
  *a2 = *v7;
  v7->__r_.__value_.__r.__words[0] = 0;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

mlir::pdl::PDLDialect *mlir::pdl::PDLDialect::PDLDialect(mlir::pdl::PDLDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "pdl", 3, a2, &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id);
  *v3 = &unk_1F5B01E48;
  mlir::Dialect::addOperations<mlir::pdl::ApplyNativeConstraintOp,mlir::pdl::ApplyNativeRewriteOp,mlir::pdl::AttributeOp,mlir::pdl::EraseOp,mlir::pdl::OperandOp,mlir::pdl::OperandsOp,mlir::pdl::OperationOp,mlir::pdl::PatternOp,mlir::pdl::RangeOp,mlir::pdl::ReplaceOp,mlir::pdl::ResultOp,mlir::pdl::ResultsOp,mlir::pdl::RewriteOp,mlir::pdl::TypeOp,mlir::pdl::TypesOp>(v3);
  mlir::pdl::PDLDialect::registerTypes(this);
  return this;
}

void sub_1DFD46328(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::Dialect::addOperations<mlir::pdl::ApplyNativeConstraintOp,mlir::pdl::ApplyNativeRewriteOp,mlir::pdl::AttributeOp,mlir::pdl::EraseOp,mlir::pdl::OperandOp,mlir::pdl::OperandsOp,mlir::pdl::OperationOp,mlir::pdl::PatternOp,mlir::pdl::RangeOp,mlir::pdl::ReplaceOp,mlir::pdl::ResultOp,mlir::pdl::ResultsOp,mlir::pdl::RewriteOp,mlir::pdl::TypeOp,mlir::pdl::TypesOp>(uint64_t a1)
{
  v2 = operator new(0x70uLL);
  v16 = mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::Model(v2, a1);
  mlir::RegisteredOperationName::insert(&v16, &mlir::pdl::ApplyNativeConstraintOp::getAttributeNames(void)::attrNames, 2);
  v3 = v16;
  v16 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = operator new(0x70uLL);
  v16 = mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::Model(v4, a1);
  mlir::RegisteredOperationName::insert(&v16, &mlir::pdl::ApplyNativeRewriteOp::getAttributeNames(void)::attrNames, 1);
  v5 = v16;
  v16 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = operator new(0x70uLL);
  v16 = mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::Model(v6, a1);
  mlir::RegisteredOperationName::insert(&v16, &mlir::pdl::AttributeOp::getAttributeNames(void)::attrNames, 1);
  v7 = v16;
  v16 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  mlir::RegisteredOperationName::insert<mlir::pdl::EraseOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::pdl::OperandOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::pdl::OperandsOp>(a1);
  v8 = operator new(0x70uLL);
  v16 = mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::Model(v8, a1);
  mlir::RegisteredOperationName::insert(&v16, &mlir::pdl::OperationOp::getAttributeNames(void)::attrNames, 3);
  v9 = v16;
  v16 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  mlir::RegisteredOperationName::insert<mlir::pdl::PatternOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::pdl::RangeOp>(a1);
  v10 = operator new(0x70uLL);
  v16 = mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::Model(v10, a1);
  mlir::RegisteredOperationName::insert(&v16, &mlir::pdl::ReplaceOp::getAttributeNames(void)::attrNames, 1);
  v11 = v16;
  v16 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  mlir::RegisteredOperationName::insert<mlir::pdl::ResultOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::pdl::ResultsOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::pdl::RewriteOp>(a1);
  v12 = operator new(0x70uLL);
  v16 = mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::Model(v12, a1);
  mlir::RegisteredOperationName::insert(&v16, &mlir::pdl::TypeOp::getAttributeNames(void)::attrNames, 1);
  v13 = v16;
  v16 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = operator new(0x70uLL);
  v16 = mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::Model(v14, a1);
  mlir::RegisteredOperationName::insert(&v16, &mlir::pdl::TypesOp::getAttributeNames(void)::attrNames, 1);
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::verify(mlir::pdl::ApplyNativeConstraintOp *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v1 + 68))
  {
    v2 = *(v1 + 36);
    v3 = v1 - 16;
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v2)
    {
      v6 = 0;
      while (*(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v6) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        if (v2 == ++v6)
        {
          return 1;
        }
      }

      v17 = "returning an operation from a constraint is not supported";
      v18 = 259;
      mlir::OpState::emitOpError(this, &v17, v19);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
      if (*v19)
      {
        mlir::InFlightDiagnostic::report(v19);
      }

      if (v27 == 1)
      {
        if (v26 != &v27)
        {
          free(v26);
        }

        v9 = __p;
        if (__p)
        {
          v10 = v25;
          v11 = __p;
          if (v25 != __p)
          {
            do
            {
              v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
            }

            while (v10 != v9);
            v11 = __p;
          }

          v25 = v9;
          operator delete(v11);
        }

        v12 = v22;
        if (v22)
        {
          v13 = v23;
          v14 = v22;
          if (v23 != v22)
          {
            do
            {
              v16 = *--v13;
              v15 = v16;
              *v13 = 0;
              if (v16)
              {
                operator delete[](v15);
              }
            }

            while (v13 != v12);
            v14 = v22;
          }

          v23 = v12;
          operator delete(v14);
        }

        if (v20 != &v21)
        {
          free(v20);
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    mlir::pdl::ApplyNativeConstraintOp::verify(this, v19);
    return v19[0];
  }

  return v7;
}

BOOL mlir::pdl::ApplyNativeRewriteOp::verify(mlir::pdl::ApplyNativeRewriteOp *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v1 + 68) || *(v1 + 36))
  {
    return 1;
  }

  v12 = "expected at least one argument or result";
  v13 = 259;
  mlir::OpState::emitOpError(this, &v12, v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  v3 = result;
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
    result = v3;
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
      result = v3;
    }

    v4 = __p;
    if (__p)
    {
      v5 = v20;
      v6 = __p;
      if (v20 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v20 = v4;
      operator delete(v6);
      result = v3;
    }

    v7 = v17;
    if (v17)
    {
      v8 = v18;
      v9 = v17;
      if (v18 != v17)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            operator delete[](v10);
          }
        }

        while (v8 != v7);
        v9 = v17;
      }

      v18 = v7;
      operator delete(v9);
      result = v3;
    }

    if (v15 != &v16)
    {
      free(v15);
      return v3;
    }
  }

  return result;
}

BOOL verifyHasBindingUse(mlir::Operation *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  if (!v2)
  {
    return 1;
  }

  ParentOp = mlir::Block::getParentOp(v2);
  if (!ParentOp || *(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id || (hasBindingUse(a1) & 1) != 0)
  {
    return 1;
  }

  v15 = 259;
  mlir::Operation::emitOpError(a1, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v5 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v5;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v5;
    }

    v6 = __p;
    if (__p)
    {
      v7 = v22;
      v8 = __p;
      if (v22 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v22 = v6;
      operator delete(v8);
      result = v5;
    }

    v9 = v19;
    if (v19)
    {
      v10 = v20;
      v11 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        v11 = v19;
      }

      v20 = v9;
      operator delete(v11);
      result = v5;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v5;
    }
  }

  return result;
}

BOOL mlir::pdl::OperationOp::verify(mlir::pdl::OperationOp *this)
{
  v154 = *MEMORY[0x1E69E9840];
  v2 = *(*this + 16);
  if (v2 && (ParentOp = mlir::Block::getParentOp(v2)) != 0 && *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    *&v143 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    if (!v143)
    {
      LOWORD(v142) = 259;
      mlir::OpState::emitOpError(this, &v140, &v143);
      v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v143);
      if (v143)
      {
        mlir::InFlightDiagnostic::report(&v143);
      }

      if (v153 != 1)
      {
        return v52;
      }

      if (v152 != &v153)
      {
        free(v152);
      }

      v115 = __p;
      if (__p)
      {
        v116 = v151;
        v117 = __p;
        if (v151 != __p)
        {
          do
          {
            v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
          }

          while (v116 != v115);
          v117 = __p;
        }

        v151 = v115;
        operator delete(v117);
      }

      v56 = v148;
      if (v148)
      {
        v118 = v149;
        v58 = v148;
        if (v149 == v148)
        {
          goto LABEL_137;
        }

        do
        {
          v120 = *--v118;
          v119 = v120;
          *v118 = 0;
          if (v120)
          {
            operator delete[](v119);
          }
        }

        while (v118 != v56);
        goto LABEL_136;
      }

LABEL_138:
      if (*(&v144 + 1) != v146)
      {
        free(*(&v144 + 1));
      }

      return v52;
    }

    mlir::OpaqueAttr::getAttrData(&v143);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v134 = *(v5 + 64);
  v6 = (*(v5 + 84) + *(v5 + 80)) - *(v5 + 80);
  mlir::ArrayAttr::getValue(&v134);
  if (v7 != v6)
  {
    LOWORD(v142) = 257;
    mlir::OpState::emitOpError(this, &v140, &v143);
    if (v143)
    {
      v135.n128_u32[0] = 3;
      v135.n128_u64[1] = "expected the same number of attribute values and attribute names, got ";
      v136 = 70;
      v28 = &v135;
      v29 = *(&v144 + 1);
      if (v145 >= HIDWORD(v145))
      {
        if (*(&v144 + 1) <= &v135 && *(&v144 + 1) + 24 * v145 > &v135)
        {
          v129 = &v135 - *(&v144 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v145 + 1, 24);
          v29 = *(&v144 + 1);
          v28 = &v129[*(&v144 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v145 + 1, 24);
          v28 = &v135;
          v29 = *(&v144 + 1);
        }
      }

      v30 = (v29 + 24 * v145);
      v31 = *v28;
      v30[1].n128_u64[0] = v28[1].n128_u64[0];
      *v30 = v31;
      LODWORD(v145) = v145 + 1;
    }

    mlir::ArrayAttr::getValue(&v134);
    if (v143)
    {
      v135.n128_u32[0] = 5;
      v135.n128_u64[1] = v32;
      v33 = &v135;
      v34 = *(&v144 + 1);
      if (v145 >= HIDWORD(v145))
      {
        if (*(&v144 + 1) <= &v135 && *(&v144 + 1) + 24 * v145 > &v135)
        {
          v130 = &v135 - *(&v144 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v145 + 1, 24);
          v34 = *(&v144 + 1);
          v33 = &v130[*(&v144 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v145 + 1, 24);
          v33 = &v135;
          v34 = *(&v144 + 1);
        }
      }

      v35 = (v34 + 24 * v145);
      v36 = *v33;
      v35[1].n128_u64[0] = v33[1].n128_u64[0];
      *v35 = v36;
      v37 = (v145 + 1);
      LODWORD(v145) = v145 + 1;
      if (v143)
      {
        v135.n128_u32[0] = 3;
        v135.n128_u64[1] = " names and ";
        v136 = 11;
        v38 = &v135;
        v39 = *(&v144 + 1);
        if (v37 >= HIDWORD(v145))
        {
          if (*(&v144 + 1) <= &v135 && *(&v144 + 1) + 24 * v37 > &v135)
          {
            v131 = &v135 - *(&v144 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v37 + 1, 24);
            v39 = *(&v144 + 1);
            v38 = &v131[*(&v144 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v37 + 1, 24);
            v38 = &v135;
            v39 = *(&v144 + 1);
          }
        }

        v40 = (v39 + 24 * v145);
        v41 = *v38;
        v40[1].n128_u64[0] = v38[1].n128_u64[0];
        *v40 = v41;
        v42 = (v145 + 1);
        LODWORD(v145) = v145 + 1;
        if (v143)
        {
          v135.n128_u32[0] = 5;
          v135.n128_u64[1] = v6;
          v43 = &v135;
          v44 = *(&v144 + 1);
          if (v42 >= HIDWORD(v145))
          {
            if (*(&v144 + 1) <= &v135 && *(&v144 + 1) + 24 * v42 > &v135)
            {
              v132 = &v135 - *(&v144 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v42 + 1, 24);
              v44 = *(&v144 + 1);
              v43 = &v132[*(&v144 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v42 + 1, 24);
              v43 = &v135;
              v44 = *(&v144 + 1);
            }
          }

          v45 = (v44 + 24 * v145);
          v46 = *v43;
          v45[1].n128_u64[0] = v43[1].n128_u64[0];
          *v45 = v46;
          v47 = (v145 + 1);
          LODWORD(v145) = v145 + 1;
          if (v143)
          {
            v135.n128_u32[0] = 3;
            v135.n128_u64[1] = " values";
            v136 = 7;
            v48 = &v135;
            v49 = *(&v144 + 1);
            if (v47 >= HIDWORD(v145))
            {
              if (*(&v144 + 1) <= &v135 && *(&v144 + 1) + 24 * v47 > &v135)
              {
                v133 = &v135 - *(&v144 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v47 + 1, 24);
                v49 = *(&v144 + 1);
                v48 = &v133[*(&v144 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v144 + 8, v146, v47 + 1, 24);
                v48 = &v135;
                v49 = *(&v144 + 1);
              }
            }

            v50 = (v49 + 24 * v145);
            v51 = *v48;
            v50[1].n128_u64[0] = v48[1].n128_u64[0];
            *v50 = v51;
            LODWORD(v145) = v145 + 1;
          }
        }
      }
    }

    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v143);
    if (v143)
    {
      mlir::InFlightDiagnostic::report(&v143);
    }

    if (v153 != 1)
    {
      return v52;
    }

    if (v152 != &v153)
    {
      free(v152);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v151;
      v55 = __p;
      if (v151 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v151 = v53;
      operator delete(v55);
    }

    v56 = v148;
    if (v148)
    {
      v57 = v149;
      v58 = v148;
      if (v149 == v148)
      {
        goto LABEL_137;
      }

      do
      {
        v60 = *--v57;
        v59 = v60;
        *v57 = 0;
        if (v60)
        {
          operator delete[](v59);
        }
      }

      while (v57 != v56);
LABEL_136:
      v58 = v148;
LABEL_137:
      v149 = v56;
      operator delete(v58);
      goto LABEL_138;
    }

    goto LABEL_138;
  }

  if (!v4)
  {
    return verifyHasBindingUse(*this);
  }

  v8 = *this;
  v9 = *(*this + 44);
  v10 = (v9 >> 23) & 1;
  *&v143 = *(*this + 16 * v10 + 72);
  if (v143)
  {
    AttrData = mlir::OpaqueAttr::getAttrData(&v143);
    v13 = v12;
    Context = mlir::Attribute::getContext((*this + 24));
    mlir::OperationName::OperationName(&v143, AttrData, v13, Context);
    if (mlir::OperationName::mightHaveInterface<mlir::InferTypeOpInterface>(&v143))
    {
      return verifyHasBindingUse(*this);
    }

    v8 = *this;
    v9 = *(*this + 44);
    v10 = (v9 >> 23) & 1;
  }

  v15 = (v8 + 16 * v10);
  if ((v9 & 0x800000) != 0)
  {
    v16 = *(v8 + 72);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15[20];
  v18 = v15[21];
  v19 = v15[22];
  v139 = v8;
  v20 = *(v8 + 16);
  v21 = *(v8 + 36);
  v22 = v8 - 16;
  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  for (i = *mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0); i; i = *i)
  {
    v25 = *(i + 2);
    if (v25)
    {
      v26 = *(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ReplaceOp,void>::id;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      if (mlir::OpOperand::getOperandNumber(i))
      {
        *&v143 = *(*(v25 + 72) + 24);
        DefiningOp = mlir::Value::getDefiningOp(&v143);
        if (*(DefiningOp + 2) != v20 || mlir::Operation::isBeforeInBlock(DefiningOp, v139))
        {
          return verifyHasBindingUse(*this);
        }
      }
    }
  }

  if (!v19)
  {
    *&v143 = *(v139 + 2 * ((*(v139 + 11) >> 23) & 1) + 9);
    if (!v143)
    {
      return verifyHasBindingUse(*this);
    }

    v121 = mlir::OpaqueAttr::getAttrData(&v143);
    v123 = v122;
    v124 = mlir::Attribute::getContext((v139 + 24));
    v135.n128_u64[0] = mlir::RegisteredOperationName::lookup(v121, v123, v124);
    v135.n128_u8[8] = v125;
    if ((v125 & 1) == 0)
    {
      return verifyHasBindingUse(*this);
    }

    {
      mlir::pdl::OperationOp::verify();
    }

    if ((*(*v135.n128_u64[0] + 32))(v135.n128_u64[0], mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return verifyHasBindingUse(*this);
    }

    {
      mlir::pdl::OperationOp::verify();
    }

    if ((*(*v135.n128_u64[0] + 32))(v135.n128_u64[0], mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return verifyHasBindingUse(*this);
    }

    LOWORD(v142) = 259;
    mlir::OpState::emitOpError(&v139, &v140, &v143);
    v126 = mlir::Diagnostic::attachNote(&v143 + 1, 0, 0);
    mlir::Diagnostic::append<char const(&)[56],mlir::RegisteredOperationName &,char const(&)[42]>(v126, "operation is created in a non-inferrable context, but '", &v135, "' does not implement InferTypeOpInterface");
    Enum = getEnumTag for MPSGraphDelegateKernelError();
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v143);
    if (Enum)
    {
      return verifyHasBindingUse(*this);
    }

    return 0;
  }

  v61 = 0;
  v62 = (v18 + v17);
  v63 = v16 + 32 * v62;
  v64 = (v19 + v62) - v62;
  v65 = &mlir::detail::TypeIDResolver<mlir::pdl::ApplyNativeRewriteOp,void>::id;
  v66 = &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id;
  v67 = &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id;
  while (1)
  {
    v68 = *(v63 + 32 * v61 + 24);
    v137 = v61;
    v138 = v68;
    v69 = mlir::Value::getDefiningOp(&v138);
    v70 = *(*(v69 + 48) + 16);
    if (v70 == v65)
    {
      goto LABEL_61;
    }

    if (v70 == v66)
    {
      break;
    }

    if (v70 != &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
    {
      goto LABEL_104;
    }

    if (!*(v69 + 16 * ((*(v69 + 44) >> 23) & 1) + 64))
    {
      v71 = *(v69 + 36);
      v72 = v69 - 16;
      if (v71)
      {
        v73 = v69 - 16;
      }

      else
      {
        v73 = 0;
      }

      v135.n128_u64[0] = v73;
      v135.n128_u64[1] = v71;
      v74 = v63;
      v75 = v67;
      v76 = v66;
      v77 = v64;
      v78 = v65;
      v79 = v69;
      mlir::ResultRange::use_begin(&v135, &v140);
      v80 = *(v79 + 36);
      v65 = v78;
      v64 = v77;
      v66 = v76;
      v67 = v75;
      v63 = v74;
      if (v80)
      {
        v81 = v72;
      }

      else
      {
        v81 = 0;
      }

      v135.n128_u64[0] = v81;
      v135.n128_u64[1] = v80;
      mlir::ResultRange::use_end(&v135, v146);
      v82 = v142;
      v145 = v142;
      v143 = v140;
      v144 = v141;
      v83 = v147;
      while (v82 != v83)
      {
        v84 = *(v82 + 16);
        if (*(v84 + 16) != v20)
        {
          v85 = *(*(v84 + 48) + 16);
          v86 = v85 == v67 || v85 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id;
          if (v86 || v85 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
          {
            goto LABEL_61;
          }
        }

        mlir::ResultRange::UseIterator::operator++(&v140);
        v82 = v142;
      }

      goto LABEL_104;
    }

LABEL_61:
    if (++v61 == v64)
    {
      return verifyHasBindingUse(*this);
    }
  }

  *&v143 = *(v69 + 16 * ((*(v69 + 44) >> 23) & 1) + 64);
  if (v143)
  {
    mlir::AffineMapAttr::getValue(&v143);
    goto LABEL_61;
  }

  v88 = *(v69 + 36);
  v89 = v69 - 16;
  if (v88)
  {
    v90 = v69 - 16;
  }

  else
  {
    v90 = 0;
  }

  v135.n128_u64[0] = v90;
  v135.n128_u64[1] = v88;
  v91 = v63;
  v92 = v67;
  v93 = v66;
  v94 = v64;
  v95 = v65;
  v96 = v69;
  mlir::ResultRange::use_begin(&v135, &v140);
  v97 = *(v96 + 36);
  v65 = v95;
  v64 = v94;
  v66 = v93;
  v67 = v92;
  v63 = v91;
  if (v97)
  {
    v98 = v89;
  }

  else
  {
    v98 = 0;
  }

  v135.n128_u64[0] = v98;
  v135.n128_u64[1] = v97;
  mlir::ResultRange::use_end(&v135, v146);
  v99 = v142;
  v145 = v142;
  v143 = v140;
  v144 = v141;
  v100 = v147;
  while (v99 != v100)
  {
    v101 = *(v99 + 16);
    if (*(v101 + 16) != v20)
    {
      v102 = *(*(v101 + 48) + 16);
      v103 = v102 == v67 || v102 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id;
      if (v103 || v102 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        goto LABEL_61;
      }
    }

    mlir::ResultRange::UseIterator::operator++(&v140);
    v99 = v142;
  }

LABEL_104:
  LOWORD(v142) = 259;
  mlir::OpState::emitOpError(&v139, &v140, &v143);
  v105 = mlir::Diagnostic::attachNote(&v143 + 1, 0, 0);
  v135.n128_u64[0] = v137;
  mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(v105, "result type #", &v135, " was not constrained");
  v106 = getEnumTag for MPSGraphDelegateKernelError();
  if (v143)
  {
    mlir::InFlightDiagnostic::report(&v143);
  }

  if (v153 == 1)
  {
    if (v152 != &v153)
    {
      free(v152);
    }

    v107 = __p;
    if (__p)
    {
      v108 = v151;
      v109 = __p;
      if (v151 != __p)
      {
        do
        {
          v108 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v108 - 1);
        }

        while (v108 != v107);
        v109 = __p;
      }

      v151 = v107;
      operator delete(v109);
    }

    v110 = v148;
    if (v148)
    {
      v111 = v149;
      v112 = v148;
      if (v149 != v148)
      {
        do
        {
          v114 = *--v111;
          v113 = v114;
          *v111 = 0;
          if (v114)
          {
            operator delete[](v113);
          }
        }

        while (v111 != v110);
        v112 = v148;
      }

      v149 = v110;
      operator delete(v112);
    }

    if (*(&v144 + 1) != v146)
    {
      free(*(&v144 + 1));
    }
  }

  if (v106)
  {
    return verifyHasBindingUse(*this);
  }

  return 0;
}

uint64_t mlir::pdl::OperationOp::getOpName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v4)
  {
    this = mlir::OpaqueAttr::getAttrData(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

BOOL mlir::pdl::OperationOp::hasTypeInference(mlir::pdl::OperationOp *this)
{
  v16 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (!v16)
  {
    return 0;
  }

  AttrData = mlir::OpaqueAttr::getAttrData(&v16);
  v4 = v3;
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::OperationName::OperationName(&v16, AttrData, v4, Context);
  {
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
    v7 = *(v16 + 32);
    v8 = *(v16 + 40);
    if (v8)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
  v7 = *(v16 + 32);
  v8 = *(v16 + 40);
  if (!v8)
  {
    return 0;
  }

LABEL_4:
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
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
    return 0;
  }

  return v9[1] != 0;
}

BOOL mlir::OperationName::mightHaveInterface<mlir::InferTypeOpInterface>(uint64_t *a1)
{
  {
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v1 = *a1;
    if (*(*a1 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v1 = *a1;
  if (*(*a1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_3:
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 32);
  v5 = v3;
  do
  {
    v6 = v5 >> 1;
    v7 = &v4[2 * (v5 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v5 += ~(v5 >> 1);
    if (v9 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
    {
      v4 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v4 == (v2 + 16 * v3))
  {
    return 0;
  }

  if (*v4 == mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v4[1] != 0;
  }

  return 0;
}

uint64_t mlir::pdl::PatternOp::verifyRegions(mlir::pdl::PatternOp *this, uint64_t a2)
{
  v105 = *MEMORY[0x1E69E9840];
  v3 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = (v4 - 8);
  }

  else
  {
    v5 = 0;
  }

  Terminator = mlir::Block::getTerminator(v5, a2);
  if (Terminator)
  {
    v8 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    *&v94 = this;
    v25 = *(v3 + 8);
    if (v25 != v3)
    {
      do
      {
        v26 = v25 - 8;
        if (!v25)
        {
          v26 = 0;
        }

        v27 = *(v26 + 40);
        v28 = v26 + 32;
        while (v27 != v28)
        {
          v29 = *(v27 + 8);
          v30 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v27, v7);
          v31 = mlir::detail::walk<mlir::ForwardIterator>(v30, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::pdl::PatternOp::verifyRegions(void)::$_0>, &v94, 1);
          v27 = v29;
          if (!v31)
          {
            return 0;
          }
        }

        v25 = *(v25 + 8);
      }

      while (v25 != v3);
      v25 = *(v3 + 8);
    }

    v32 = v25 - 8;
    if (!v25)
    {
      v32 = 0;
    }

    v33 = v32 + 32;
    v34 = *(v32 + 40);
    if (v34 != v32 + 32)
    {
      while (*(*(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v34, v7) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        v34 = *(v34 + 8);
        if (v34 == v33)
        {
          goto LABEL_46;
        }
      }

      if (v34 != v33)
      {
        v89 = 0;
        v88[0] = 0;
        v88[1] = 0;
        v35 = *(v3 + 8);
        if (v35)
        {
          v36 = v35 - 8;
        }

        else
        {
          v36 = 0;
        }

        v37 = v36 + 32;
        v38 = *(v36 + 40);
        if (v38 == v36 + 32)
        {
          goto LABEL_105;
        }

        v39 = 1;
LABEL_70:
        v47 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v38, v7);
        v48 = *(*(v47 + 48) + 16);
        if (v48 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id && v48 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id && v48 != &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id && v48 != &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id && v48 != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
        {
          goto LABEL_69;
        }

        v53 = v47;
        v54 = *(v47 + 36);
        v55 = v47 - 16;
        if (v54)
        {
          v56 = v47 - 16;
        }

        else
        {
          v56 = 0;
        }

        v92.n128_u64[0] = v56;
        v92.n128_u64[1] = v54;
        mlir::ResultRange::use_begin(&v92, v90);
        v57 = *(v53 + 36);
        if (v57)
        {
          v58 = v55;
        }

        else
        {
          v58 = 0;
        }

        v92.n128_u64[0] = v58;
        v92.n128_u64[1] = v57;
        mlir::ResultRange::use_end(&v92, v97);
        v59 = v91;
        v96 = v91;
        v94 = v90[0];
        v95 = v90[1];
        v60 = v98;
        while (1)
        {
          if (v59 == v60)
          {
            goto LABEL_69;
          }

          v61 = *(v59 + 16);
          v62 = *(v61 + 16);
          if (v62)
          {
            Parent = mlir::Block::getParent(v62);
            if (*(*(v61 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id || Parent && *(*(*(Parent + 16) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
            {
LABEL_98:
              if (v39)
              {
                visit(v53, v88);
              }

              else
              {
                if (!v89)
                {
                  goto LABEL_106;
                }

                v64 = (v89 - 1) & ((v53 >> 4) ^ (v53 >> 9));
                v65 = *(v88[0] + v64);
                if (v65 != v53)
                {
                  v66 = 1;
                  while (v65 != -4096)
                  {
                    v39 = 0;
                    v67 = v64 + v66++;
                    v64 = v67 & (v89 - 1);
                    v65 = *(v88[0] + v64);
                    if (v65 == v53)
                    {
                      goto LABEL_69;
                    }
                  }

LABEL_106:
                  *&v90[0] = "the operations must form a connected component";
                  LOWORD(v91) = 259;
                  mlir::OpState::emitOpError(this, v90, &v94);
                  v68 = mlir::Diagnostic::attachNote(&v94 + 1, *(v53 + 24), 1);
                  v69 = *(v68 + 16);
                  v92.n128_u32[0] = 3;
                  v92.n128_u64[1] = "see a disconnected value / operation here";
                  v93 = 41;
                  v70 = *(v68 + 24);
                  v71 = &v92;
                  if (v70 >= *(v68 + 28))
                  {
                    if (v69 <= &v92 && v69 + 24 * v70 > &v92)
                    {
                      v86 = &v92 - v69;
                      v87 = v68;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(v68 + 16, v68 + 32, v70 + 1, 24);
                      v68 = v87;
                      v69 = *(v87 + 16);
                      v71 = &v86[v69];
                    }

                    else
                    {
                      v83 = v68;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(v68 + 16, v68 + 32, v70 + 1, 24);
                      v68 = v83;
                      v69 = *(v83 + 16);
                      v71 = &v92;
                    }
                  }

                  v72 = (v69 + 24 * *(v68 + 24));
                  v73 = *v71;
                  v72[1].n128_u64[0] = v71[1].n128_u64[0];
                  *v72 = v73;
                  ++*(v68 + 24);
                  getEnumTag for MPSGraphDelegateKernelError();
                  if (v94)
                  {
                    mlir::InFlightDiagnostic::report(&v94);
                  }

                  if (v104 == 1)
                  {
                    if (v103 != &v104)
                    {
                      free(v103);
                    }

                    v74 = __p;
                    if (__p)
                    {
                      v75 = v102;
                      v76 = __p;
                      if (v102 != __p)
                      {
                        do
                        {
                          v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
                        }

                        while (v75 != v74);
                        v76 = __p;
                      }

                      v102 = v74;
                      operator delete(v76);
                    }

                    v77 = v99;
                    if (v99)
                    {
                      v78 = v100;
                      v79 = v99;
                      if (v100 != v99)
                      {
                        do
                        {
                          v81 = *--v78;
                          v80 = v81;
                          *v78 = 0;
                          if (v81)
                          {
                            operator delete[](v80);
                          }
                        }

                        while (v78 != v77);
                        v79 = v99;
                      }

                      v100 = v77;
                      operator delete(v79);
                    }

                    if (*(&v95 + 1) != v97)
                    {
                      free(*(&v95 + 1));
                    }
                  }

LABEL_105:
                  llvm::deallocate_buffer(v88[0], (8 * v89));
                }
              }

              v39 = 0;
LABEL_69:
              v38 = *(v38 + 8);
              if (v38 == v37)
              {
                goto LABEL_105;
              }

              goto LABEL_70;
            }
          }

          else if (*(*(v61 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
          {
            goto LABEL_98;
          }

          mlir::ResultRange::UseIterator::operator++(v90);
          v59 = v91;
        }
      }
    }

LABEL_46:
    LOWORD(v91) = 259;
    mlir::OpState::emitOpError(this, v90, &v94);
    Enum = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
    if (v94)
    {
      mlir::InFlightDiagnostic::report(&v94);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v40 = __p;
      if (__p)
      {
        v41 = v102;
        v42 = __p;
        if (v102 != __p)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = __p;
        }

        v102 = v40;
        operator delete(v42);
      }

      v20 = v99;
      if (!v99)
      {
        goto LABEL_64;
      }

      v43 = v100;
      v22 = v99;
      if (v100 == v99)
      {
        goto LABEL_63;
      }

      do
      {
        v45 = *--v43;
        v44 = v45;
        *v43 = 0;
        if (v45)
        {
          operator delete[](v44);
        }
      }

      while (v43 != v20);
      goto LABEL_62;
    }
  }

  else
  {
    v9 = Terminator;
    LOWORD(v91) = 259;
    mlir::OpState::emitOpError(this, v90, &v94);
    v10 = mlir::Diagnostic::attachNote(&v94 + 1, *(v9 + 24), 1);
    v11 = *(v10 + 16);
    v92.n128_u32[0] = 3;
    v92.n128_u64[1] = "see terminator defined here";
    v93 = 27;
    v12 = *(v10 + 24);
    v13 = &v92;
    if (v12 >= *(v10 + 28))
    {
      if (v11 <= &v92 && v11 + 24 * v12 > &v92)
      {
        v84 = &v92 - v11;
        v85 = v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v10 + 16, v10 + 32, v12 + 1, 24);
        v10 = v85;
        v11 = *(v85 + 16);
        v13 = &v84[v11];
      }

      else
      {
        v82 = v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v10 + 16, v10 + 32, v12 + 1, 24);
        v10 = v82;
        v11 = *(v82 + 16);
        v13 = &v92;
      }
    }

    v14 = (v11 + 24 * *(v10 + 24));
    v15 = *v13;
    v14[1].n128_u64[0] = v13[1].n128_u64[0];
    *v14 = v15;
    ++*(v10 + 24);
    Enum = getEnumTag for MPSGraphDelegateKernelError();
    if (v94)
    {
      mlir::InFlightDiagnostic::report(&v94);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v102;
        v19 = __p;
        if (v102 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v102 = v17;
        operator delete(v19);
      }

      v20 = v99;
      if (!v99)
      {
        goto LABEL_64;
      }

      v21 = v100;
      v22 = v99;
      if (v100 == v99)
      {
LABEL_63:
        v100 = v20;
        operator delete(v22);
LABEL_64:
        if (*(&v95 + 1) != v97)
        {
          free(*(&v95 + 1));
        }

        return Enum;
      }

      do
      {
        v24 = *--v21;
        v23 = v24;
        *v21 = 0;
        if (v24)
        {
          operator delete[](v23);
        }
      }

      while (v21 != v20);
LABEL_62:
      v22 = v99;
      goto LABEL_63;
    }
  }

  return Enum;
}

void visit(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  if (*(*(mlir::Block::getParentOp(*(a1 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id && *(*(a1 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2, &v19, &v14);
    if (v15 == 1)
    {
      v4 = *(*(v19 + 48) + 16);
      if (v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        visit(v19, a2);
      }

      else if (v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id || v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
      {
        *&v14 = *(*(v19 + 72) + 24);
        DefiningOp = mlir::Value::getDefiningOp(&v14);
        visit(DefiningOp, a2);
      }

      v6 = v19;
      v7 = *(v19 + 36);
      v8 = v19 - 16;
      if (v7)
      {
        v9 = v19 - 16;
      }

      else
      {
        v9 = 0;
      }

      *&v14 = v9;
      *(&v14 + 1) = v7;
      mlir::ResultRange::use_begin(&v14, v20);
      v10 = *(v6 + 36);
      if (v10)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      v22.n128_u64[0] = v11;
      v22.n128_u64[1] = v10;
      mlir::ResultRange::use_end(&v22, v17);
      v12 = v21;
      v16 = v21;
      v14 = v20[0];
      v15 = v20[1];
      for (i = v18; v21 != i; v12 = v21)
      {
        visit(*(v12 + 16), a2);
        mlir::ResultRange::UseIterator::operator++(v20);
      }
    }
  }
}

_OWORD *mlir::Region::emplaceBlock(mlir::Region *this)
{
  v2 = operator new(0x48uLL);
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = v2 + 2;
  *(v2 + 5) = v2 + 2;
  *(v2 + 7) = 0;
  *(v2 + 8) = 0;
  *(v2 + 6) = 0;
  llvm::ilist_traits<mlir::Block>::addNodeToList(this, v2);
  v3 = *this;
  *(v2 + 2) = this;
  *(v2 + 1) = v3;
  *(v3 + 8) = v2 + 8;
  *this = v2 + 8;
  return v2;
}

uint64_t mlir::pdl::PatternOp::getRewriter(mlir::pdl::PatternOp *this, uint64_t a2)
{
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  return mlir::Block::getTerminator(v3, a2);
}

BOOL mlir::pdl::ResultsOp::verify(mlir::pdl::ResultsOp *this)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v25[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v25[0])
  {
    mlir::IntegerAttr::getValue(v25, &__p);
    if (v31 >= 0x41 && __p != 0)
    {
      operator delete[](__p);
    }

    return 1;
  }

  if (*(*(*(v1 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  v26 = 257;
  mlir::OpState::emitOpError(this, v25, &__p);
  if (__p)
  {
    v27 = 3;
    v29 = 77;
    v5 = &v27;
    v6 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v27 && v32 + 24 * v33 > &v27)
      {
        v23 = &v27 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v6 = v32;
        v5 = (v32 + v23);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v5 = &v27;
        v6 = v32;
      }
    }

    v7 = &v6[24 * v33];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v33;
    if (__p)
    {
      v9 = *(*this - 8);
      v10 = &v27;
      mlir::DiagnosticArgument::DiagnosticArgument(&v27, v9 & 0xFFFFFFFFFFFFFFF8);
      v11 = v32;
      if (v33 >= v34)
      {
        if (v32 <= &v27 && v32 + 24 * v33 > &v27)
        {
          v24 = &v27 - v32;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
          v11 = v32;
          v10 = (v32 + v24);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
          v10 = &v27;
          v11 = v32;
        }
      }

      v12 = &v11[24 * v33];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v33;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
  v14 = result;
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
    result = v14;
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
      result = v14;
    }

    v15 = v38;
    if (v38)
    {
      v16 = v39;
      v17 = v38;
      if (v39 != v38)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = v38;
      }

      v39 = v15;
      operator delete(v17);
      result = v14;
    }

    v18 = v36;
    if (v36)
    {
      v19 = v37;
      v20 = v36;
      if (v37 != v36)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            operator delete[](v21);
          }
        }

        while (v19 != v18);
        v20 = v36;
      }

      v37 = v18;
      operator delete(v20);
      result = v14;
    }

    if (v32 != v35)
    {
      free(v32);
      return v14;
    }
  }

  return result;
}

uint64_t mlir::pdl::ResultsOp::getIndex(mlir::pdl::ResultsOp *this)
{
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v7)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v7, &__p);
  if (v6 >= 0x41)
  {
    p_p = __p;
  }

  else
  {
    p_p = &__p;
  }

  v2 = *p_p;
  if (v6 >= 0x41 && __p != 0)
  {
    operator delete[](__p);
  }

  return v2 | 0x100000000;
}

BOOL mlir::pdl::RewriteOp::verifyRegions(mlir::pdl::RewriteOp *this)
{
  v58 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 44);
  v2 = *this + 64 + 16 * ((v1 >> 23) & 1);
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  v47[0] = *v2;
  if (v47[0])
  {
    mlir::OpaqueAttr::getAttrData(v47);
    if (*v3 != v3)
    {
      v43 = 257;
      mlir::OpState::emitOpError(this, v42, v47);
      if (v47[0])
      {
        v44 = 3;
        v45 = "expected rewrite region to be empty when rewrite is external";
        v46 = 60;
        v5 = &v44;
        v6 = v48;
        if (v49 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v49 > &v44)
          {
            v39 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v6 = v48;
            v5 = (v48 + v39);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v5 = &v44;
            v6 = v48;
          }
        }

        v7 = &v6[24 * v49];
        v8 = *v5;
        *(v7 + 2) = *(v5 + 2);
        *v7 = v8;
        ++v49;
      }

      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v57 == 1)
      {
        if (v56 != &v57)
        {
          free(v56);
        }

        v10 = __p;
        if (__p)
        {
          v11 = v55;
          v12 = __p;
          if (v55 != __p)
          {
            do
            {
              v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
            }

            while (v11 != v10);
            v12 = __p;
          }

          v55 = v10;
          operator delete(v12);
        }

        v13 = v52;
        if (!v52)
        {
          goto LABEL_65;
        }

        v14 = v53;
        v15 = v52;
        if (v53 == v52)
        {
LABEL_64:
          v53 = v13;
          operator delete(v15);
LABEL_65:
          if (v48 != v51)
          {
            free(v48);
          }

          return v9;
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
LABEL_63:
        v15 = v52;
        goto LABEL_64;
      }

      return v9;
    }

    return 1;
  }

  if (*v3 == v3)
  {
    v43 = 257;
    mlir::OpState::emitOpError(this, v42, v47);
    if (v47[0])
    {
      v44 = 3;
      v45 = "expected rewrite region to be non-empty if external name is not specified";
      v46 = 73;
      v28 = &v44;
      v29 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v49 > &v44)
        {
          v41 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v29 = v48;
          v28 = (v48 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v28 = &v44;
          v29 = v48;
        }
      }

      v30 = &v29[24 * v49];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v49;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v55;
        v34 = __p;
        if (v55 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v55 = v32;
        operator delete(v34);
      }

      v13 = v52;
      if (!v52)
      {
        goto LABEL_65;
      }

      v35 = v53;
      v15 = v52;
      if (v53 == v52)
      {
        goto LABEL_64;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          operator delete[](v36);
        }
      }

      while (v35 != v13);
      goto LABEL_63;
    }

    return v9;
  }

  if (!*(v2 + 12))
  {
    return 1;
  }

  v43 = 257;
  mlir::OpState::emitOpError(this, v42, v47);
  if (v47[0])
  {
    v44 = 3;
    v45 = "expected no external arguments when the rewrite is specified inline";
    v46 = 67;
    v18 = &v44;
    v19 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v40 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v19 = v48;
        v18 = (v48 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v18 = &v44;
        v19 = v48;
      }
    }

    v20 = &v19[24 * v49];
    v21 = *v18;
    *(v20 + 2) = *(v18 + 2);
    *v20 = v21;
    ++v49;
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v55;
      v24 = __p;
      if (v55 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v55 = v22;
      operator delete(v24);
    }

    v13 = v52;
    if (!v52)
    {
      goto LABEL_65;
    }

    v25 = v53;
    v15 = v52;
    if (v53 == v52)
    {
      goto LABEL_64;
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
    goto LABEL_63;
  }

  return v9;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v28 = &v59;
      v29 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v29 = v63;
          v28 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v28 = &v59;
          v29 = v63;
        }
      }

      v30 = &v29[24 * v64];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v70;
      v34 = __p;
      if (v70 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v70 = v32;
      operator delete(v34);
    }

    v23 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v35 = v68;
    v25 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v35 != v23);
    goto LABEL_68;
  }

  v74.var0 = "isNegated";
  v74.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    v9 = v8;
    if (!mlir::BoolAttr::classof(v8))
    {
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 54;
        v38 = &v59;
        v39 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v39 = v63;
            v38 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v38 = &v59;
            v39 = v63;
          }
        }

        v40 = &v39[24 * v64];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v64;
        if (v62[0])
        {
          v42 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v43 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v56 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v43 = v63;
              v42 = (v63 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v42 = &v59;
              v43 = v63;
            }
          }

          v44 = &v43[24 * v64];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v70;
        v48 = __p;
        if (v70 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v70 = v46;
        operator delete(v48);
      }

      v23 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v49 = v68;
      v25 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v23);
      goto LABEL_68;
    }

    *a1 = v9;
  }

  v75.var0 = "name";
  v75.var1 = 4;
  v10 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v10)
  {
    return 1;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v10;
    return 1;
  }

  v11 = v10;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 49;
    v12 = &v59;
    v13 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v55 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v13 = v63;
        v12 = (v63 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v12 = &v59;
        v13 = v63;
      }
    }

    v14 = &v13[24 * v64];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v64;
    if (v62[0])
    {
      v16 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v11);
      v17 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v17 = v63;
          v16 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v16 = &v59;
          v17 = v63;
        }
      }

      v18 = &v17[24 * v64];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if ((v72 & 1) == 0)
  {
    return 0;
  }

  if (v71 != &v72)
  {
    free(v71);
  }

  v20 = __p;
  if (__p)
  {
    v21 = v70;
    v22 = __p;
    if (v70 != __p)
    {
      do
      {
        v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
      }

      while (v21 != v20);
      v22 = __p;
    }

    v70 = v20;
    operator delete(v22);
  }

  v23 = v67;
  if (v67)
  {
    v24 = v68;
    v25 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

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
LABEL_68:
    v25 = v67;
LABEL_69:
    v68 = v23;
    operator delete(v25);
  }

LABEL_70:
  if (v63 != v66)
  {
    free(v63);
  }

  return 0;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "isNegated", 9, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "name", 4, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

BOOL mlir::pdl::ApplyNativeConstraintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v8, "isNegated", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v9, "name", 4, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, a2[32]))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) & 1;
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    a2[32] = v6;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::pdl::ApplyNativeConstraintOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) & 1;
    }
  }

  return 0;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl(mlir::pdl::ApplyNativeConstraintOp *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    *v22 = v2;
    if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v4, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) == 0)
    {
      return 0;
    }

    *v22 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v5, "isNegated", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) == 0)
    {
      return 0;
    }

    v6 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v7 = *(v6 + 68);
      if (v7)
      {
        v8 = 0;
        v9 = *(v6 + 72) + 24;
        while ((mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8) & 1) != 0)
        {
          ++v8;
          v9 += 32;
          if (v7 == v8)
          {
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl();
    return v22[0];
  }

  else
  {
    v20 = "requires attribute 'name'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (*v22)
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              operator delete[](v17);
            }
          }

          while (v15 != v14);
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

uint64_t mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (mlir::pdl::PDLType::classof(a2))
  {
    return 1;
  }

  v43 = 261;
  v42[0] = a3;
  v42[1] = a4;
  mlir::Operation::emitOpError(a1, v42, v47);
  if (v47[0])
  {
    v44 = 3;
    v45 = " #";
    v46 = 2;
    v11 = &v44;
    v12 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v38 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v12 = v48;
        v11 = (v48 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v11 = &v44;
        v12 = v48;
      }
    }

    v13 = &v12[24 * v49];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    v15 = ++v49;
    if (v47[0])
    {
      v44 = 5;
      v45 = a5;
      v16 = &v44;
      v17 = v48;
      if (v15 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v15 > &v44)
        {
          v39 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v15 + 1, 24);
          v17 = v48;
          v16 = (v48 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v15 + 1, 24);
          v16 = &v44;
          v17 = v48;
        }
      }

      v18 = &v17[24 * v49];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      v20 = ++v49;
      if (v47[0])
      {
        v44 = 3;
        v45 = " must be variadic of pdl type, but got ";
        v46 = 39;
        v21 = &v44;
        v22 = v48;
        if (v20 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v20 > &v44)
          {
            v40 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v20 + 1, 24);
            v22 = v48;
            v21 = (v48 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v20 + 1, 24);
            v21 = &v44;
            v22 = v48;
          }
        }

        v23 = &v22[24 * v49];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        ++v49;
        if (v47[0])
        {
          v25 = &v44;
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, a2);
          v26 = v48;
          if (v49 >= v50)
          {
            if (v48 <= &v44 && v48 + 24 * v49 > &v44)
            {
              v41 = &v44 - v48;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v26 = v48;
              v25 = (v48 + v41);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v25 = &v44;
              v26 = v48;
            }
          }

          v27 = &v26[24 * v49];
          v28 = *v25;
          *(v27 + 2) = *(v25 + 2);
          *v27 = v28;
          ++v49;
        }
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v55;
      v31 = __p;
      if (v55 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v55 = v29;
      operator delete(v31);
    }

    v32 = v52;
    if (v52)
    {
      v33 = v53;
      v34 = v52;
      if (v53 != v52)
      {
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
        v34 = v52;
      }

      v53 = v32;
      operator delete(v34);
    }

    if (v48 != v51)
    {
      free(v48);
    }
  }

  return v10;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::parse(uint64_t a1, void *a2)
{
  v23[16] = *MEMORY[0x1E69E9840];
  v22[0] = v23;
  v22[1] = 0x400000000;
  v20[0] = &v21;
  v20[1] = 0x100000000;
  v16 = 0;
  v17 = &v19;
  v18 = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v16, v6))
  {
    goto LABEL_18;
  }

  v7 = v16;
  if (v16)
  {
    v8 = a2[32];
    if (!v8)
    {
      v9 = operator new(0x10uLL);
      *v9 = 0;
      v9[1] = 0;
      a2[32] = v9;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v14;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v14;
      {
        mlir::pdl::ApplyNativeConstraintOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = a2[32];
      v7 = v16;
    }

    *(v8 + 8) = v7;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v22, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v20) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && (((*(*a1 + 112))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v17)) && (v15 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v11 = a2[1], v14[0] = a1, v14[1] = &v15, v14[2] = a2, mlir::pdl::ApplyNativeConstraintOp::verifyInherentAttrs(v11, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v14)))
  {
    mlir::OperationState::addTypes(a2, v17, v18);
    v12 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v22, v20, v10, (a2 + 2)) & 1;
  }

  else
  {
LABEL_18:
    v12 = 0;
  }

  if (v17 != &v19)
  {
    free(v17);
  }

  if (v20[0] != &v21)
  {
    free(v20[0]);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  return v12;
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "name";
  v56.var1 = 4;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 49;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::pdl::ApplyNativeRewriteOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::verifyInvariantsImpl(mlir::pdl::ApplyNativeRewriteOp *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    *v20 = v2;
    if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 68);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 72) + 24;
        while ((mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6) & 1) != 0)
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            goto LABEL_8;
          }
        }

        return 0;
      }
    }

LABEL_8:
    mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl();
    return v20[0];
  }

  else
  {
    v18 = "requires attribute 'name'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (*v20)
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::parse(uint64_t a1, uint64_t a2)
{
  v29[16] = *MEMORY[0x1E69E9840];
  v28[0] = v29;
  v28[1] = 0x400000000;
  v26[0] = &v27;
  v26[1] = 0x100000000;
  v22 = 0;
  __src = &v25;
  v24 = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v22, v6))
  {
    goto LABEL_26;
  }

  v7 = v22;
  if (v22)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      *(a2 + 256) = v9;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v20;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v20;
      {
        mlir::pdl::ApplyNativeRewriteOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = *(a2 + 256);
      v7 = v22;
    }

    *v8 = v7;
  }

  if ((*(*a1 + 288))(a1))
  {
    v10 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v28, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v26) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0;
  }

  if (((*(*a1 + 112))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || (v21 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v11 = *(a2 + 8), v20[0] = a1, v20[1] = &v21, v20[2] = a2, (v12 = mlir::NamedAttrList::get(a2 + 112, **(v11 + 96))) != 0) && (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v12, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) & 1) == 0)
  {
LABEL_26:
    v17 = 0;
    v18 = __src;
    if (__src == &v25)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = __src;
  v14 = v24;
  v15 = *(a2 + 72);
  v16 = v15 + v24;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  v17 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v28, v26, v10, a2 + 16) & 1;
  v18 = __src;
  if (__src != &v25)
  {
LABEL_27:
    free(v18);
  }

LABEL_28:
  if (v26[0] != &v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return v17;
}

uint64_t mlir::pdl::AttributeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v21 = v4;
  if (v4)
  {
    v37.var0 = "value";
    v37.var1 = 5;
    v6 = mlir::DictionaryAttr::get(&v21, v37);
    if (v6)
    {
      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v25, a4);
    if (v25[0])
    {
      v22 = 3;
      v23 = "expected DictionaryAttr to set properties";
      v24 = 41;
      v8 = &v22;
      v9 = v26;
      if (v27 >= v28)
      {
        if (v26 <= &v22 && v26 + 24 * v27 > &v22)
        {
          v20 = &v22 - v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
          v9 = v26;
          v8 = (v26 + v20);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
          v8 = &v22;
          v9 = v26;
        }
      }

      v10 = &v9[24 * v27];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v27;
      if (v25[0])
      {
        mlir::InFlightDiagnostic::report(v25);
      }
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v33;
        v14 = __p;
        if (v33 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v33 = v12;
        operator delete(v14);
      }

      v15 = v30;
      if (v30)
      {
        v16 = v31;
        v17 = v30;
        if (v31 != v30)
        {
          do
          {
            v19 = *--v16;
            v18 = v19;
            *v16 = 0;
            if (v19)
            {
              operator delete[](v18);
            }
          }

          while (v16 != v15);
          v17 = v30;
        }

        v31 = v15;
        operator delete(v17);
      }

      if (v26 != v29)
      {
        free(v26);
      }
    }

    return 0;
  }
}

uint64_t mlir::pdl::AttributeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    v4 = a1;
    v5 = operator new(8uLL);
    *v5 = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::pdl::AttributeOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    a1 = v4;
  }

  return (*(*a1 + 56))(a1, v3) & 1;
}

BOOL mlir::pdl::AttributeOp::verifyInvariantsImpl(mlir::pdl::AttributeOp *this)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    v27 = this;
    goto LABEL_29;
  }

  v3 = *(v2 + 68);
  if (v3 < 2)
  {
    v27 = this;
    if (v3)
    {
      if ((mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(v2, *(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
      {
        return 0;
      }

      v2 = *v27;
    }

LABEL_29:
    if (*(v2 + 36))
    {
      v28 = v2 - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
    {
      return 1;
    }

    v30 = *v27;
    v67 = 261;
    v66[0] = "result";
    v66[1] = 6;
    mlir::Operation::emitOpError(v30, v66, v71);
    if (v71[0])
    {
      v68 = 3;
      v69 = " #";
      v70 = 2;
      v31 = &v68;
      v32 = v72;
      if (v73 >= v74)
      {
        if (v72 <= &v68 && v72 + 24 * v73 > &v68)
        {
          v61 = &v68 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v32 = v72;
          v31 = (v72 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v31 = &v68;
          v32 = v72;
        }
      }

      v33 = &v32[24 * v73];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v73;
      if (v71[0])
      {
        v68 = 5;
        v69 = 0;
        v36 = &v68;
        v37 = v72;
        if (v35 >= v74)
        {
          if (v72 <= &v68 && v72 + 24 * v35 > &v68)
          {
            v63 = &v68 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v35 + 1, 24);
            v37 = v72;
            v36 = (v72 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v35 + 1, 24);
            v36 = &v68;
            v37 = v72;
          }
        }

        v38 = &v37[24 * v73];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        v40 = ++v73;
        if (v71[0])
        {
          v68 = 3;
          v70 = 53;
          v41 = &v68;
          v42 = v72;
          if (v40 >= v74)
          {
            if (v72 <= &v68 && v72 + 24 * v40 > &v68)
            {
              v64 = &v68 - v72;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v40 + 1, 24);
              v42 = v72;
              v41 = (v72 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v40 + 1, 24);
              v41 = &v68;
              v42 = v72;
            }
          }

          v43 = &v42[24 * v73];
          v44 = *v41;
          *(v43 + 2) = *(v41 + 2);
          *v43 = v44;
          ++v73;
          if (v71[0])
          {
            v45 = &v68;
            mlir::DiagnosticArgument::DiagnosticArgument(&v68, v29);
            v46 = v72;
            if (v73 >= v74)
            {
              if (v72 <= &v68 && v72 + 24 * v73 > &v68)
              {
                v65 = &v68 - v72;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
                v46 = v72;
                v45 = (v72 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
                v45 = &v68;
                v46 = v72;
              }
            }

            v47 = &v46[24 * v73];
            v48 = *v45;
            *(v47 + 2) = *(v45 + 2);
            *v47 = v48;
            ++v73;
          }
        }
      }
    }

    v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
    if (v71[0])
    {
      mlir::InFlightDiagnostic::report(v71);
    }

    if (v81 == 1)
    {
      if (v80 != &v81)
      {
        free(v80);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v79;
        v52 = __p;
        if (v79 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v79 = v50;
        operator delete(v52);
      }

      v53 = v76;
      if (v76)
      {
        v54 = v77;
        v55 = v76;
        if (v77 != v76)
        {
          do
          {
            v57 = *--v54;
            v56 = v57;
            *v54 = 0;
            if (v57)
            {
              operator delete[](v56);
            }
          }

          while (v54 != v53);
          v55 = v76;
        }

        v77 = v53;
        operator delete(v55);
      }

      if (v72 != v75)
      {
        free(v72);
      }
    }

    return v49;
  }

  v66[0] = "operand group starting at #";
  v67 = 259;
  mlir::OpState::emitOpError(this, v66, v71);
  if (v71[0])
  {
    v68 = 5;
    v69 = 0;
    v4 = &v68;
    v5 = v72;
    if (v73 >= v74)
    {
      if (v72 <= &v68 && v72 + 24 * v73 > &v68)
      {
        v59 = &v68 - v72;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v5 = v72;
        v4 = (v72 + v59);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v4 = &v68;
        v5 = v72;
      }
    }

    v6 = &v5[24 * v73];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v73;
    if (v71[0])
    {
      v68 = 3;
      v69 = " requires 0 or 1 element, but found ";
      v70 = 36;
      v9 = &v68;
      v10 = v72;
      if (v8 >= v74)
      {
        if (v72 <= &v68 && v72 + 24 * v8 > &v68)
        {
          v60 = &v68 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v8 + 1, 24);
          v10 = v72;
          v9 = (v72 + v60);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v8 + 1, 24);
          v9 = &v68;
          v10 = v72;
        }
      }

      v11 = &v10[24 * v73];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v73;
      if (v71[0])
      {
        v68 = 5;
        v69 = v3;
        v14 = &v68;
        v15 = v72;
        if (v13 >= v74)
        {
          if (v72 <= &v68 && v72 + 24 * v13 > &v68)
          {
            v62 = &v68 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v13 + 1, 24);
            v15 = v72;
            v14 = (v72 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v13 + 1, 24);
            v14 = &v68;
            v15 = v72;
          }
        }

        v16 = &v15[24 * v73];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v73;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
  if (v71[0])
  {
    mlir::InFlightDiagnostic::report(v71);
  }

  if (v81 == 1)
  {
    if (v80 != &v81)
    {
      free(v80);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v79;
      v21 = __p;
      if (v79 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v79 = v19;
      operator delete(v21);
    }

    v22 = v76;
    if (v76)
    {
      v23 = v77;
      v24 = v76;
      if (v77 != v76)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v23 != v22);
        v24 = v76;
      }

      v77 = v22;
      operator delete(v24);
    }

    if (v72 != v75)
    {
      free(v72);
    }
  }

  return v18;
}

uint64_t mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v43 = 48;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
              v22 = v45;
            }
          }

          v23 = &v22[24 * v46];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v46;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            operator delete[](v32);
          }
        }

        while (v30 != v29);
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

uint64_t mlir::pdl::AttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v29[16] = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = v29;
  v28 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v25, 0, 24);
    v4 = (*(*a1 + 712))(a1, v25, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_23;
      }

      v5 = v25;
      v6 = v27;
      if (v28 >= HIDWORD(v28))
      {
        if (v27 <= v25 && v27 + 32 * v28 > v25)
        {
          v24 = v25 - v27;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 32);
          v6 = v27;
          v5 = v27 + v24;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 32);
          v5 = v25;
          v6 = v27;
        }
      }

      v7 = &v6[32 * v28];
      v8 = v5[1];
      *v7 = *v5;
      *(v7 + 1) = v8;
      LODWORD(v28) = v28 + 1;
    }
  }

  if ((*(*a1 + 144))(a1))
  {
    if (((*(*a1 + 440))(a1, &v26, 0) & 1) == 0)
    {
      goto LABEL_23;
    }

    v9 = v26;
    if (v26)
    {
      v10 = *(a2 + 256);
      if (!v10)
      {
        v11 = operator new(8uLL);
        *v11 = 0;
        *(a2 + 256) = v11;
        *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
        *(a2 + 280) = v25;
        *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
        *(a2 + 296) = v25;
        {
          mlir::pdl::AttributeOp::readProperties();
        }

        *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
        v10 = *(a2 + 256);
        v9 = v26;
      }

      *v10 = v9;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 496))(a1, a2 + 112))
  {
    mlir::NamedAttrList::get(a2 + 112, **(*(a2 + 8) + 96));
    v12 = (*(*a1 + 32))(a1);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v12);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
    v15 = (*(*a1 + 32))(a1);
    v16 = mlir::MLIRContext::getTypeUniquer(*v15);
    v17 = mlir::StorageUniquer::getSingletonImpl(v16, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18 + 1, 8);
      LODWORD(v18) = *(a2 + 72);
    }

    *(*(a2 + 64) + 8 * v18) = SingletonImpl;
    ++*(a2 + 72);
    if (!v28)
    {
LABEL_21:
      v21 = 1;
      v22 = v27;
      if (v27 == v29)
      {
        return v21;
      }

      goto LABEL_24;
    }

    v19 = v27;
    v20 = 32 * v28;
    while (((*(*a1 + 728))(a1, v19, v17, a2 + 16) & 1) != 0)
    {
      v19 += 32;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_23:
  v21 = 0;
  v22 = v27;
  if (v27 != v29)
  {
LABEL_24:
    free(v22);
  }

  return v21;
}

uint64_t mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v43 = 55;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
              v22 = v45;
            }
          }

          v23 = &v22[24 * v46];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v46;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            operator delete[](v32);
          }
        }

        while (v30 != v29);
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

uint64_t mlir::pdl::EraseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v8, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v4);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  return (*(*a1 + 728))(a1, v8, SingletonImpl, a2 + 16) & 1;
}

void mlir::pdl::EraseOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v9 = v11;
  v10 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::pdl::OperandOp::verifyInvariantsImpl(mlir::pdl::OperandOp *this)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    goto LABEL_29;
  }

  v3 = *(v2 + 68);
  if (v3 < 2)
  {
    if (v3)
    {
      v18 = 0;
      if ((mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(v2, *(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
      {
        return v18;
      }

      v2 = *this;
    }

LABEL_29:
    mlir::pdl::OperandOp::verifyInvariantsImpl(v2, this, v36);
    return v36[0];
  }

  v31 = "operand group starting at #";
  v32 = 259;
  mlir::OpState::emitOpError(this, &v31, v36);
  if (*v36)
  {
    v33 = 5;
    v34 = 0;
    v4 = &v33;
    v5 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v28 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = v37;
        v4 = (v37 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v4 = &v33;
        v5 = v37;
      }
    }

    v6 = &v5[24 * v38];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v38;
    if (*v36)
    {
      v33 = 3;
      v34 = " requires 0 or 1 element, but found ";
      v35 = 36;
      v9 = &v33;
      v10 = v37;
      if (v8 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v8 > &v33)
        {
          v29 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v8 + 1, 24);
          v10 = v37;
          v9 = (v37 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v8 + 1, 24);
          v9 = &v33;
          v10 = v37;
        }
      }

      v11 = &v10[24 * v38];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v38;
      if (*v36)
      {
        v33 = 5;
        v34 = v3;
        v14 = &v33;
        v15 = v37;
        if (v13 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v13 > &v33)
          {
            v30 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v13 + 1, 24);
            v15 = v37;
            v14 = (v37 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v13 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (*v36)
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v44;
      v21 = __p;
      if (v44 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v44 = v19;
      operator delete(v21);
    }

    v22 = v41;
    if (v41)
    {
      v23 = v42;
      v24 = v41;
      if (v42 != v41)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v23 != v22);
        v24 = v41;
      }

      v42 = v22;
      operator delete(v24);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v18;
}

uint64_t mlir::pdl::__mlir_ods_local_type_constraint_PDLOps5(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v43 = 50;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
              v22 = v45;
            }
          }

          v23 = &v22[24 * v46];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v46;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            operator delete[](v32);
          }
        }

        while (v30 != v29);
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

uint64_t mlir::pdl::OperandOp::parse(uint64_t a1, uint64_t a2)
{
  v25[16] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v24 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v22, 0, 24);
    v4 = (*(*a1 + 712))(a1, v22, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_15;
      }

      v5 = v22;
      v6 = v23;
      if (v24 >= HIDWORD(v24))
      {
        if (v23 <= v22 && v23 + 32 * v24 > v22)
        {
          v21 = v22 - v23;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 32);
          v6 = v23;
          v5 = (v23 + v21);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 32);
          v5 = v22;
          v6 = v23;
        }
      }

      v7 = &v6[32 * v24];
      v8 = *(v5 + 1);
      *v7 = *v5;
      *(v7 + 1) = v8;
      LODWORD(v24) = v24 + 1;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v9 = (*(*a1 + 32))(a1);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v12 = (*(*a1 + 32))(a1);
    v13 = mlir::MLIRContext::getTypeUniquer(*v12);
    v14 = mlir::StorageUniquer::getSingletonImpl(v13, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v15 = *(a2 + 72);
    if (v15 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v15 + 1, 8);
      LODWORD(v15) = *(a2 + 72);
    }

    *(*(a2 + 64) + 8 * v15) = SingletonImpl;
    ++*(a2 + 72);
    if (!v24)
    {
LABEL_13:
      v18 = 1;
      v19 = v23;
      if (v23 == v25)
      {
        return v18;
      }

      goto LABEL_16;
    }

    v16 = v23;
    v17 = 32 * v24;
    while (((*(*a1 + 728))(a1, v16, v14, a2 + 16) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  v18 = 0;
  v19 = v23;
  if (v23 != v25)
  {
LABEL_16:
    free(v19);
  }

  return v18;
}

BOOL mlir::pdl::OperandsOp::verifyInvariantsImpl(mlir::pdl::OperandsOp *this)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    goto LABEL_29;
  }

  v3 = *(v2 + 68);
  if (v3 < 2)
  {
    if (v3)
    {
      if ((mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(v2, *(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
      {
        return 0;
      }

      v2 = *this;
    }

LABEL_29:
    if (*(v2 + 36))
    {
      v27 = v2 - 16;
    }

    else
    {
      v27 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
    v29 = *this;
    v30 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v71[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*mlir::AffineMapAttr::getValue(v71) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return 1;
      }
    }

    v67 = 261;
    v66[0] = "result";
    v66[1] = 6;
    mlir::Operation::emitOpError(v29, v66, v71);
    if (v71[0])
    {
      v68 = 3;
      v69 = " #";
      v70 = 2;
      v31 = &v68;
      v32 = v72;
      if (v73 >= v74)
      {
        if (v72 <= &v68 && v72 + 24 * v73 > &v68)
        {
          v61 = &v68 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v32 = v72;
          v31 = (v72 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v31 = &v68;
          v32 = v72;
        }
      }

      v33 = &v32[24 * v73];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v73;
      if (v71[0])
      {
        v68 = 5;
        v69 = 0;
        v36 = &v68;
        v37 = v72;
        if (v35 >= v74)
        {
          if (v72 <= &v68 && v72 + 24 * v35 > &v68)
          {
            v63 = &v68 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v35 + 1, 24);
            v37 = v72;
            v36 = (v72 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v35 + 1, 24);
            v36 = &v68;
            v37 = v72;
          }
        }

        v38 = &v37[24 * v73];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        v40 = ++v73;
        if (v71[0])
        {
          v68 = 3;
          v70 = 66;
          v41 = &v68;
          v42 = v72;
          if (v40 >= v74)
          {
            if (v72 <= &v68 && v72 + 24 * v40 > &v68)
            {
              v64 = &v68 - v72;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v40 + 1, 24);
              v42 = v72;
              v41 = (v72 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v40 + 1, 24);
              v41 = &v68;
              v42 = v72;
            }
          }

          v43 = &v42[24 * v73];
          v44 = *v41;
          *(v43 + 2) = *(v41 + 2);
          *v43 = v44;
          ++v73;
          if (v71[0])
          {
            v45 = &v68;
            mlir::DiagnosticArgument::DiagnosticArgument(&v68, v30);
            v46 = v72;
            if (v73 >= v74)
            {
              if (v72 <= &v68 && v72 + 24 * v73 > &v68)
              {
                v65 = &v68 - v72;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
                v46 = v72;
                v45 = (v72 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
                v45 = &v68;
                v46 = v72;
              }
            }

            v47 = &v46[24 * v73];
            v48 = *v45;
            *(v47 + 2) = *(v45 + 2);
            *v47 = v48;
            ++v73;
          }
        }
      }
    }

    v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
    if (v71[0])
    {
      mlir::InFlightDiagnostic::report(v71);
    }

    if (v81 == 1)
    {
      if (v80 != &v81)
      {
        free(v80);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v79;
        v52 = __p;
        if (v79 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v79 = v50;
        operator delete(v52);
      }

      v53 = v76;
      if (v76)
      {
        v54 = v77;
        v55 = v76;
        if (v77 != v76)
        {
          do
          {
            v57 = *--v54;
            v56 = v57;
            *v54 = 0;
            if (v57)
            {
              operator delete[](v56);
            }
          }

          while (v54 != v53);
          v55 = v76;
        }

        v77 = v53;
        operator delete(v55);
      }

      if (v72 != v75)
      {
        free(v72);
      }
    }

    return v49;
  }

  v66[0] = "operand group starting at #";
  v67 = 259;
  mlir::OpState::emitOpError(this, v66, v71);
  if (v71[0])
  {
    v68 = 5;
    v69 = 0;
    v4 = &v68;
    v5 = v72;
    if (v73 >= v74)
    {
      if (v72 <= &v68 && v72 + 24 * v73 > &v68)
      {
        v59 = &v68 - v72;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v5 = v72;
        v4 = (v72 + v59);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v4 = &v68;
        v5 = v72;
      }
    }

    v6 = &v5[24 * v73];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v73;
    if (v71[0])
    {
      v68 = 3;
      v69 = " requires 0 or 1 element, but found ";
      v70 = 36;
      v9 = &v68;
      v10 = v72;
      if (v8 >= v74)
      {
        if (v72 <= &v68 && v72 + 24 * v8 > &v68)
        {
          v60 = &v68 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v8 + 1, 24);
          v10 = v72;
          v9 = (v72 + v60);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v8 + 1, 24);
          v9 = &v68;
          v10 = v72;
        }
      }

      v11 = &v10[24 * v73];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v73;
      if (v71[0])
      {
        v68 = 5;
        v69 = v3;
        v14 = &v68;
        v15 = v72;
        if (v13 >= v74)
        {
          if (v72 <= &v68 && v72 + 24 * v13 > &v68)
          {
            v62 = &v68 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v13 + 1, 24);
            v15 = v72;
            v14 = (v72 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v13 + 1, 24);
            v14 = &v68;
            v15 = v72;
          }
        }

        v16 = &v15[24 * v73];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v73;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
  if (v71[0])
  {
    mlir::InFlightDiagnostic::report(v71);
  }

  if (v81 == 1)
  {
    if (v80 != &v81)
    {
      free(v80);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v79;
      v21 = __p;
      if (v79 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v79 = v19;
      operator delete(v21);
    }

    v22 = v76;
    if (v76)
    {
      v23 = v77;
      v24 = v76;
      if (v77 != v76)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v23 != v22);
        v24 = v76;
      }

      v77 = v22;
      operator delete(v24);
    }

    if (v72 != v75)
    {
      free(v72);
    }
  }

  return v18;
}

uint64_t mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v49[0] = a2;
    v7 = a1;
    v8 = a4;
    v9 = a3;
    Value = mlir::AffineMapAttr::getValue(v49);
    a3 = v9;
    a4 = v8;
    v11 = Value;
    a1 = v7;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      return 1;
    }
  }

  v45 = 261;
  v44[0] = a3;
  v44[1] = a4;
  mlir::Operation::emitOpError(a1, v44, v49);
  if (v49[0])
  {
    v46 = 3;
    v47 = " #";
    v48 = 2;
    v12 = &v46;
    v13 = v50;
    if (v51 >= v52)
    {
      if (v50 <= &v46 && v50 + 24 * v51 > &v46)
      {
        v40 = &v46 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v13 = v50;
        v12 = (v50 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v12 = &v46;
        v13 = v50;
      }
    }

    v14 = &v13[24 * v51];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    v16 = ++v51;
    if (v49[0])
    {
      v46 = 5;
      v47 = a5;
      v17 = &v46;
      v18 = v50;
      if (v16 >= v52)
      {
        if (v50 <= &v46 && v50 + 24 * v16 > &v46)
        {
          v41 = &v46 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v16 + 1, 24);
          v18 = v50;
          v17 = (v50 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v16 + 1, 24);
          v17 = &v46;
          v18 = v50;
        }
      }

      v19 = &v18[24 * v51];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v51;
      if (v49[0])
      {
        v46 = 3;
        v48 = 64;
        v22 = &v46;
        v23 = v50;
        if (v21 >= v52)
        {
          if (v50 <= &v46 && v50 + 24 * v21 > &v46)
          {
            v42 = &v46 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v21 + 1, 24);
            v23 = v50;
            v22 = (v50 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v21 + 1, 24);
            v22 = &v46;
            v23 = v50;
          }
        }

        v24 = &v23[24 * v51];
        v25 = *v22;
        *(v24 + 2) = *(v22 + 2);
        *v24 = v25;
        ++v51;
        if (v49[0])
        {
          v26 = &v46;
          mlir::DiagnosticArgument::DiagnosticArgument(&v46, a2);
          v27 = v50;
          if (v51 >= v52)
          {
            if (v50 <= &v46 && v50 + 24 * v51 > &v46)
            {
              v43 = &v46 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v27 = v50;
              v26 = (v50 + v43);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v26 = &v46;
              v27 = v50;
            }
          }

          v28 = &v27[24 * v51];
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          ++v51;
        }
      }
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v57;
      v33 = __p;
      if (v57 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v57 = v31;
      operator delete(v33);
    }

    v34 = v54;
    if (v54)
    {
      v35 = v55;
      v36 = v54;
      if (v55 != v54)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            operator delete[](v37);
          }
        }

        while (v35 != v34);
        v36 = v54;
      }

      v55 = v34;
      operator delete(v36);
    }

    if (v50 != v53)
    {
      free(v50);
    }
  }

  return v30;
}

uint64_t mlir::pdl::OperandsOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v24, 0, 24);
    v4 = (*(*a1 + 712))(a1, v24, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_15;
      }

      v5 = v24;
      v6 = v25;
      if (v26 >= HIDWORD(v26))
      {
        if (v25 <= v24 && v25 + 32 * v26 > v24)
        {
          v23 = v24 - v25;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 32);
          v6 = v25;
          v5 = (v25 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 32);
          v5 = v24;
          v6 = v25;
        }
      }

      v7 = &v6[32 * v26];
      v8 = *(v5 + 1);
      *v7 = *v5;
      *(v7 + 1) = v8;
      LODWORD(v26) = v26 + 1;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v9 = (*(*a1 + 32))(a1);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v12 = mlir::pdl::RangeType::get(SingletonImpl);
    v13 = (*(*a1 + 32))(a1);
    v14 = mlir::MLIRContext::getTypeUniquer(*v13);
    v15 = mlir::StorageUniquer::getSingletonImpl(v14, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v16 = mlir::pdl::RangeType::get(v15);
    v17 = *(a2 + 72);
    if (v17 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v17 + 1, 8);
      LODWORD(v17) = *(a2 + 72);
    }

    *(*(a2 + 64) + 8 * v17) = v12;
    ++*(a2 + 72);
    if (!v26)
    {
LABEL_13:
      v20 = 1;
      v21 = v25;
      if (v25 == v27)
      {
        return v20;
      }

      goto LABEL_16;
    }

    v18 = v25;
    v19 = 32 * v26;
    while (((*(*a1 + 728))(a1, v18, v16, a2 + 16) & 1) != 0)
    {
      v18 += 32;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  v20 = 0;
  v21 = v25;
  if (v25 != v27)
  {
LABEL_16:
    free(v21);
  }

  return v20;
}

unint64_t mlir::pdl::OperationOp::getODSOperandIndexAndLength(mlir::pdl::OperationOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 80);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 96);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 80);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

BOOL mlir::pdl::OperationOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  if (!v6)
  {
    a3(v63, a4);
    if (v63[0])
    {
      v60 = 3;
      v61 = "expected DictionaryAttr to set properties";
      v62 = 41;
      v26 = &v60;
      v27 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v65 > &v60)
        {
          v54 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v27 = v64;
          v26 = (v64 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v26 = &v60;
          v27 = v64;
        }
      }

      v28 = &v27[24 * v65];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v65;
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }
    }

    if (v73 != 1)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v71;
      v32 = __p;
      if (v71 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v71 = v30;
      operator delete(v32);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_70;
    }

    v33 = v69;
    v23 = v68;
    if (v69 == v68)
    {
LABEL_69:
      v69 = v21;
      operator delete(v23);
LABEL_70:
      if (v64 != v67)
      {
        free(v64);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v68;
    goto LABEL_69;
  }

  v75.var0 = "attributeValueNames";
  v75.var1 = 19;
  v8 = mlir::DictionaryAttr::get(&v59, v75);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 64;
        v10 = &v60;
        v11 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v55 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v11 = v64;
            v10 = (v64 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v10 = &v60;
            v11 = v64;
          }
        }

        v12 = &v11[24 * v65];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v65;
        if (v63[0])
        {
          v14 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v9);
          v15 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v56 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v15 = v64;
              v14 = (v64 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v14 = &v60;
              v15 = v64;
            }
          }

          v16 = &v15[24 * v65];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v71;
        v20 = __p;
        if (v71 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v71 = v18;
        operator delete(v20);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v22 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v76.var0 = "opName";
  v76.var1 = 6;
  v36 = mlir::DictionaryAttr::get(&v59, v76);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v37 = v36;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 51;
        v38 = &v60;
        v39 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v57 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v39 = v64;
            v38 = (v64 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v38 = &v60;
            v39 = v64;
          }
        }

        v40 = &v39[24 * v65];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v65;
        if (v63[0])
        {
          v42 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v37);
          v43 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v58 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v43 = v64;
              v42 = (v64 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v42 = &v60;
              v43 = v64;
            }
          }

          v44 = &v43[24 * v65];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v71;
        v48 = __p;
        if (v71 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v71 = v46;
        operator delete(v48);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v49 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v77.var0 = "operandSegmentSizes";
  v77.var1 = 19;
  v52 = mlir::DictionaryAttr::get(&v59, v77);
  if (!v52)
  {
    v78.var0 = "operand_segment_sizes";
    v78.var1 = 21;
    v52 = mlir::DictionaryAttr::get(&v59, v78);
    if (!v52)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 2, 3, v52, a3, a4) & 1) != 0;
}

uint64_t mlir::pdl::OperationOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = a1;
  v30 = v32;
  v31 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v29, "attributeValueNames", 19, *a2);
    v6 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v25 = NamedAttr;
      v26 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v5 = v26;
      NamedAttr = v25;
      v6 = v31;
    }

    v7 = (v30 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v31) = v31 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v29, "opName", 6, v8);
    v11 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v27 = v9;
      v28 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v10 = v28;
      v9 = v27;
      v11 = v31;
    }

    v12 = (v30 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v31) = v31 + 1;
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 2, 3);
  v14 = mlir::Builder::getNamedAttr(&v29, "operandSegmentSizes", 19, v13);
  v16 = v31;
  if (v31 >= HIDWORD(v31))
  {
    v23 = v14;
    v24 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
    v15 = v24;
    v14 = v23;
    v16 = v31;
  }

  v17 = (v30 + 16 * v16);
  *v17 = v14;
  v17[1] = v15;
  v18 = __CFADD__(v31, 1);
  v19 = (v31 + 1);
  LODWORD(v31) = v31 + 1;
  if (v18)
  {
    DictionaryAttr = 0;
    v21 = v30;
    if (v30 == v32)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v29, v30, v19);
  v21 = v30;
  if (v30 != v32)
  {
LABEL_16:
    free(v21);
  }

  return DictionaryAttr;
}

uint64_t mlir::pdl::OperationOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 6)
  {
    if (!memcmp(__s1, "opName", 6uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 21)
  {
    v7 = a1;
    if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v7, a2 + 2, 3);
    }

    return 0;
  }

  if (__n != 19)
  {
    return 0;
  }

  if (*__s1 != 0x7475626972747461 || *(__s1 + 1) != 0x614E65756C615665 || *(__s1 + 11) != 0x73656D614E65756CLL)
  {
    v7 = a1;
    if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v7, a2 + 2, 3);
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::pdl::OperationOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 6)
  {
    result = memcmp(__s1, "opName", 6uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *(v5 + 8) = v10;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else
  {
    if (a3 == 21)
    {
      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 19)
      {
        return result;
      }

      if (*__s1 == 0x7475626972747461 && *(__s1 + 1) == 0x614E65756C615665 && *(__s1 + 11) == 0x73656D614E65756CLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          *result = v11;
        }

        else
        {
          *result = 0;
        }

        return result;
      }

      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      if (result)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 3)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove((v5 + 16), result, 4 * v9);
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(uint64_t a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v37 = a1;
    v24 = a4;
    v25 = a5;
    Value = mlir::ArrayAttr::getValue(&v37);
    v27 = mlir::ArrayAttr::getValue(&v37);
    v29 = v27 + 8 * v28;
    if (v29 != Value)
    {
      a5 = v25;
      a4 = v24;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        Value += 8;
        if (Value == v29)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v37, a5);
  if (v37)
  {
    LODWORD(v33) = 3;
    v34 = "attribute '";
    v35 = 11;
    v7 = &v33;
    v8 = v39;
    if (v40 >= v41)
    {
      if (v39 <= &v33 && v39 + 24 * v40 > &v33)
      {
        v31 = &v33 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v8 = v39;
        v7 = v39 + v31;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v7 = &v33;
        v8 = v39;
      }
    }

    v9 = &v8[24 * v40];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v40;
    if (v37)
    {
      v36 = 261;
      v33 = a2;
      v34 = a3;
      mlir::Diagnostic::operator<<(&v38, &v33);
      if (v37)
      {
        LODWORD(v33) = 3;
        v34 = "' failed to satisfy constraint: string array attribute";
        v35 = 54;
        v11 = &v33;
        v12 = v39;
        if (v40 >= v41)
        {
          if (v39 <= &v33 && v39 + 24 * v40 > &v33)
          {
            v32 = &v33 - v39;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v12 = v39;
            v11 = v39 + v32;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v11 = &v33;
            v12 = v39;
          }
        }

        v13 = &v12[24 * v40];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v40;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
  if (v37)
  {
    mlir::InFlightDiagnostic::report(&v37);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v46;
      v18 = __p;
      if (v46 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v46 = v16;
      operator delete(v18);
    }

    v19 = v43;
    if (v43)
    {
      v20 = v44;
      v21 = v43;
      if (v44 != v43)
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
        v21 = v43;
      }

      v44 = v19;
      operator delete(v21);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }

  return v15;
}

uint64_t mlir::pdl::OperationOp::readProperties(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x20uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(v5 + 6) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v9;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v9;
    {
      mlir::pdl::OperationOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 1))
  {
    if ((*(*a1 + 40))(a1) <= 5)
    {
      v11 = 0;
      if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v11))
      {
        return 0;
      }

      if (mlir::AffineBinaryOpExpr::getLHS(&v11) >= 4)
      {
        v9[0] = "size mismatch for operand/result_segment_size";
        v10 = 259;
        (*(*a1 + 16))(&v12, a1, v9);
        if (v12)
        {
          mlir::InFlightDiagnostic::report(&v12);
        }

        if (v13[192] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v13);
        }

        return 0;
      }

      v6 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v11);
      if (v7)
      {
        memmove(v3 + 2, v6, 4 * v7);
      }
    }

    if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 4, 3))
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::pdl::OperationOp::verifyInvariantsImpl(mlir::pdl::OperationOp *this)
{
  v129 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v112 = "requires attribute 'attributeValueNames'";
    v114 = 259;
    mlir::OpState::emitOpError(this, &v112, v118);
    v56 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
    if (v118[0])
    {
      mlir::InFlightDiagnostic::report(v118);
    }

    if (v128 == 1)
    {
      if (v127 != &v128)
      {
        free(v127);
      }

      v57 = __p;
      if (__p)
      {
        v58 = v126;
        v59 = __p;
        if (v126 != __p)
        {
          do
          {
            v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
          }

          while (v58 != v57);
          v59 = __p;
        }

        v126 = v57;
        operator delete(v59);
      }

      v60 = v123;
      if (v123)
      {
        v61 = v124;
        v62 = v123;
        if (v124 != v123)
        {
          do
          {
            v64 = *--v61;
            v63 = v64;
            *v61 = 0;
            if (v64)
            {
              operator delete[](v63);
            }
          }

          while (v61 != v60);
          v62 = v123;
        }

        v124 = v60;
        operator delete(v62);
      }

      if (v119 != v122)
      {
        free(v119);
      }
    }

    return v56;
  }

  v7 = *(v4 + 8);
  v118[0] = v2;
  if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v7, "opName", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v118) & 1) == 0)
  {
    return 0;
  }

  v118[0] = *this;
  if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v5, "attributeValueNames", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v118) & 1) == 0)
  {
    return 0;
  }

  v8 = *this;
  v9 = *(*this + 44);
  v10 = (v9 >> 23) & 1;
  v11 = *(*this + 16 * v10 + 80);
  if ((v9 & 0x800000) != 0)
  {
    v12 = *(v8 + 72);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_6:
      v13 = 0;
      v14 = v12 + 24;
      while ((mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(*this, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) != 0)
      {
        ++v13;
        v14 += 32;
        if (v11 == v13)
        {
          v8 = *this;
          v9 = *(*this + 44);
          v10 = (v9 >> 23) & 1;
          goto LABEL_10;
        }
      }

      return 0;
    }
  }

LABEL_10:
  v15 = v9 & 0x800000;
  v16 = v8 + 16 * v10;
  v17 = *(v16 + 84);
  if (v15)
  {
    v18 = *(v8 + 72);
    if (v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
    if (v17)
    {
LABEL_12:
      v19 = 0;
      v20 = *(v16 + 80);
      v21 = v18 + 32 * v20;
      v22 = (v17 + v20) - v20;
      do
      {
        v23 = *(*(v21 + 32 * v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
        {
          v24 = *this;
          v114 = 261;
          v112 = "operand";
          v113 = 7;
          mlir::Operation::emitOpError(v24, &v112, v118);
          if (v118[0])
          {
            v115 = 3;
            v116 = " #";
            v117 = 2;
            v25 = v119;
            if (v120 >= v121)
            {
              if (v119 <= &v115 && v119 + 24 * v120 > &v115)
              {
                v52 = &v115 - v119;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                v25 = v119;
                v26 = (v119 + v52);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                v26 = &v115;
                v25 = v119;
              }
            }

            else
            {
              v26 = &v115;
            }

            v27 = &v25[24 * v120];
            v28 = *v26;
            *(v27 + 2) = *(v26 + 2);
            *v27 = v28;
            v29 = ++v120;
            if (v118[0])
            {
              v115 = 5;
              v116 = v11;
              v30 = v119;
              if (v29 >= v121)
              {
                if (v119 <= &v115 && v119 + 24 * v29 > &v115)
                {
                  v53 = &v115 - v119;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v29 + 1, 24);
                  v30 = v119;
                  v31 = (v119 + v53);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v29 + 1, 24);
                  v31 = &v115;
                  v30 = v119;
                }
              }

              else
              {
                v31 = &v115;
              }

              v32 = &v30[24 * v120];
              v33 = *v31;
              *(v32 + 2) = *(v31 + 2);
              *v32 = v33;
              v34 = ++v120;
              if (v118[0])
              {
                v115 = 3;
                v117 = 65;
                v35 = v119;
                if (v34 >= v121)
                {
                  if (v119 <= &v115 && v119 + 24 * v34 > &v115)
                  {
                    v54 = &v115 - v119;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v34 + 1, 24);
                    v35 = v119;
                    v36 = (v119 + v54);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v34 + 1, 24);
                    v36 = &v115;
                    v35 = v119;
                  }
                }

                else
                {
                  v36 = &v115;
                }

                v37 = &v35[24 * v120];
                v38 = *v36;
                *(v37 + 2) = *(v36 + 2);
                *v37 = v38;
                ++v120;
                if (v118[0])
                {
                  v39 = &v115;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v115, v23);
                  v40 = v119;
                  if (v120 >= v121)
                  {
                    if (v119 <= &v115 && v119 + 24 * v120 > &v115)
                    {
                      v55 = &v115 - v119;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                      v40 = v119;
                      v39 = (v119 + v55);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                      v39 = &v115;
                      v40 = v119;
                    }
                  }

                  v41 = &v40[24 * v120];
                  v42 = *v39;
                  *(v41 + 2) = *(v39 + 2);
                  *v41 = v42;
                  ++v120;
                }
              }
            }
          }

          v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
          if (v118[0])
          {
            mlir::InFlightDiagnostic::report(v118);
          }

          if (v128 == 1)
          {
            if (v127 != &v128)
            {
              free(v127);
            }

            v44 = __p;
            if (__p)
            {
              v45 = v126;
              v46 = __p;
              if (v126 != __p)
              {
                do
                {
                  v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
                }

                while (v45 != v44);
                v46 = __p;
              }

              v126 = v44;
              operator delete(v46);
            }

            v47 = v123;
            if (v123)
            {
              v48 = v124;
              v49 = v123;
              if (v124 != v123)
              {
                do
                {
                  v51 = *--v48;
                  v50 = v51;
                  *v48 = 0;
                  if (v51)
                  {
                    operator delete[](v50);
                  }
                }

                while (v48 != v47);
                v49 = v123;
              }

              v124 = v47;
              operator delete(v49);
            }

            if (v119 != v122)
            {
              free(v119);
            }

            if (!v43)
            {
              return 0;
            }
          }

          else if (!v43)
          {
            return 0;
          }
        }

        LODWORD(v11) = v11 + 1;
        ++v19;
      }

      while (v19 != v22);
      v8 = *this;
      v65 = *(*this + 44);
      v10 = (v65 >> 23) & 1;
      v15 = v65 & 0x800000;
    }
  }

  v66 = (v8 + 16 * v10);
  v67 = v66[22];
  if (v15)
  {
    v68 = *(v8 + 72);
    if (v67)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v68 = 0;
    if (v67)
    {
LABEL_89:
      v69 = 0;
      v70 = (v66[21] + v66[20]);
      v71 = v68 + 32 * v70;
      v72 = (v67 + v70) - v70;
      while (1)
      {
        v73 = *(*(v71 + 32 * v69 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v74 = *(*v73 + 136);
        if (v74 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v75 = *this;
          if (v74 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || (v118[0] = *(*(v71 + 32 * v69 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*mlir::AffineMapAttr::getValue(v118) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
          {
            v114 = 261;
            v112 = "operand";
            v113 = 7;
            mlir::Operation::emitOpError(v75, &v112, v118);
            if (v118[0])
            {
              v115 = 3;
              v116 = " #";
              v117 = 2;
              v76 = v119;
              if (v120 >= v121)
              {
                if (v119 <= &v115 && v119 + 24 * v120 > &v115)
                {
                  v103 = &v115 - v119;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                  v76 = v119;
                  v77 = (v119 + v103);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                  v77 = &v115;
                  v76 = v119;
                }
              }

              else
              {
                v77 = &v115;
              }

              v78 = &v76[24 * v120];
              v79 = *v77;
              *(v78 + 2) = *(v77 + 2);
              *v78 = v79;
              v80 = ++v120;
              if (v118[0])
              {
                v115 = 5;
                v116 = v11;
                v81 = v119;
                if (v80 >= v121)
                {
                  if (v119 <= &v115 && v119 + 24 * v80 > &v115)
                  {
                    v104 = &v115 - v119;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v80 + 1, 24);
                    v81 = v119;
                    v82 = (v119 + v104);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v80 + 1, 24);
                    v82 = &v115;
                    v81 = v119;
                  }
                }

                else
                {
                  v82 = &v115;
                }

                v83 = &v81[24 * v120];
                v84 = *v82;
                *(v83 + 2) = *(v82 + 2);
                *v83 = v84;
                v85 = ++v120;
                if (v118[0])
                {
                  v115 = 3;
                  v117 = 87;
                  v86 = v119;
                  if (v85 >= v121)
                  {
                    if (v119 <= &v115 && v119 + 24 * v85 > &v115)
                    {
                      v105 = &v115 - v119;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v85 + 1, 24);
                      v86 = v119;
                      v87 = (v119 + v105);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v85 + 1, 24);
                      v87 = &v115;
                      v86 = v119;
                    }
                  }

                  else
                  {
                    v87 = &v115;
                  }

                  v88 = &v86[24 * v120];
                  v89 = *v87;
                  *(v88 + 2) = *(v87 + 2);
                  *v88 = v89;
                  ++v120;
                  if (v118[0])
                  {
                    v90 = &v115;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v115, v73);
                    v91 = v119;
                    if (v120 >= v121)
                    {
                      if (v119 <= &v115 && v119 + 24 * v120 > &v115)
                      {
                        v106 = &v115 - v119;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                        v91 = v119;
                        v90 = (v119 + v106);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                        v90 = &v115;
                        v91 = v119;
                      }
                    }

                    v92 = &v91[24 * v120];
                    v93 = *v90;
                    *(v92 + 2) = *(v90 + 2);
                    *v92 = v93;
                    ++v120;
                  }
                }
              }
            }

            v94 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
            if (v118[0])
            {
              mlir::InFlightDiagnostic::report(v118);
            }

            if (v128 == 1)
            {
              if (v127 != &v128)
              {
                free(v127);
              }

              v95 = __p;
              if (__p)
              {
                v96 = v126;
                v97 = __p;
                if (v126 != __p)
                {
                  do
                  {
                    v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
                  }

                  while (v96 != v95);
                  v97 = __p;
                }

                v126 = v95;
                operator delete(v97);
              }

              v98 = v123;
              if (v123)
              {
                v99 = v124;
                v100 = v123;
                if (v124 != v123)
                {
                  do
                  {
                    v102 = *--v99;
                    v101 = v102;
                    *v99 = 0;
                    if (v102)
                    {
                      operator delete[](v101);
                    }
                  }

                  while (v99 != v98);
                  v100 = v123;
                }

                v124 = v98;
                operator delete(v100);
              }

              if (v119 != v122)
              {
                free(v119);
              }
            }

            if (!v94)
            {
              return 0;
            }
          }
        }

        LODWORD(v11) = v11 + 1;
        if (++v69 == v72)
        {
          v8 = *this;
          break;
        }
      }
    }
  }

  v108 = *(v8 + 36);
  v109 = v8 - 16;
  if (v108)
  {
    v110 = v109;
  }

  else
  {
    v110 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v110, 0);
  return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v50[0] = a2;
    v8 = a1;
    v9 = a4;
    v10 = a3;
    Value = mlir::AffineMapAttr::getValue(v50);
    a3 = v10;
    a4 = v9;
    v12 = Value;
    a1 = v8;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      return 1;
    }
  }

  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(a1, v45, v50);
  if (v50[0])
  {
    v47 = 3;
    v48 = " #";
    v49 = 2;
    v13 = &v47;
    v14 = v51;
    if (v52 >= v53)
    {
      if (v51 <= &v47 && v51 + 24 * v52 > &v47)
      {
        v41 = &v47 - v51;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v14 = v51;
        v13 = (v51 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v13 = &v47;
        v14 = v51;
      }
    }

    v15 = &v14[24 * v52];
    v16 = *v13;
    *(v15 + 2) = *(v13 + 2);
    *v15 = v16;
    v17 = ++v52;
    if (v50[0])
    {
      v47 = 5;
      v48 = a5;
      v18 = &v47;
      v19 = v51;
      if (v17 >= v53)
      {
        if (v51 <= &v47 && v51 + 24 * v17 > &v47)
        {
          v42 = &v47 - v51;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v17 + 1, 24);
          v19 = v51;
          v18 = (v51 + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v17 + 1, 24);
          v18 = &v47;
          v19 = v51;
        }
      }

      v20 = &v19[24 * v52];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      v22 = ++v52;
      if (v50[0])
      {
        v47 = 3;
        v49 = 89;
        v23 = &v47;
        v24 = v51;
        if (v22 >= v53)
        {
          if (v51 <= &v47 && v51 + 24 * v22 > &v47)
          {
            v43 = &v47 - v51;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v22 + 1, 24);
            v24 = v51;
            v23 = (v51 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v22 + 1, 24);
            v23 = &v47;
            v24 = v51;
          }
        }

        v25 = &v24[24 * v52];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        ++v52;
        if (v50[0])
        {
          v27 = &v47;
          mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
          v28 = v51;
          if (v52 >= v53)
          {
            if (v51 <= &v47 && v51 + 24 * v52 > &v47)
            {
              v44 = &v47 - v51;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
              v28 = v51;
              v27 = (v51 + v44);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
              v27 = &v47;
              v28 = v51;
            }
          }

          v29 = &v28[24 * v52];
          v30 = *v27;
          *(v29 + 2) = *(v27 + 2);
          *v29 = v30;
          ++v52;
        }
      }
    }
  }

  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            operator delete[](v38);
          }
        }

        while (v36 != v35);
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
    }

    if (v51 != v54)
    {
      free(v51);
    }
  }

  return v31;
}

uint64_t mlir::pdl::OperationOp::parse(_DWORD *a1, uint64_t a2)
{
  v58[4] = *MEMORY[0x1E69E9840];
  v41 = 0;
  v53 = v55;
  v54 = 0x400000000;
  v51[0] = &v52;
  v51[1] = 0x100000000;
  v48 = v50;
  v49 = 0x400000000;
  v45 = v47;
  v46 = 0x400000000;
  v43[0] = &v44;
  v43[1] = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  v7 = (*(*a1 + 472))(a1, &v41, v6);
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_53;
    }

    v8 = v41;
    if (v41)
    {
      v9 = *(a2 + 256);
      if (!v9)
      {
        v10 = operator new(0x20uLL);
        v10[1] = 0;
        v10[2] = 0;
        *v10 = 0;
        *(v10 + 6) = 0;
        *(a2 + 256) = v10;
        *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
        *(a2 + 280) = &v56;
        *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
        *(a2 + 296) = &v56;
        {
          mlir::pdl::OperationOp::readProperties();
        }

        *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
        v9 = *(a2 + 256);
        v8 = v41;
      }

      *(v9 + 8) = v8;
    }
  }

  if ((*(*a1 + 288))(a1))
  {
    v11 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v53, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v51) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v11 = 0;
  }

  v40 = v11;
  (*(*a1 + 40))(a1);
  v12 = (*(*a1 + 32))(a1);
  v56 = v58;
  v57 = 0x400000000;
  if ((*(*a1 + 80))(a1) & 1) == 0 || (v42[0] = a1, v42[1] = &v56, v42[2] = &v48, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, v42, 0, 0)) && ((*(*a1 + 88))(a1))
  {
    ArrayAttr = mlir::Builder::getArrayAttr(v12, v56, v57);
    v14 = 0;
    v15 = v56;
    if (v56 == v58)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  ArrayAttr = 0;
  v14 = 1;
  v15 = v56;
  if (v56 != v58)
  {
LABEL_20:
    free(v15);
  }

LABEL_21:
  if ((v14 & 1) == 0)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      v17 = operator new(0x20uLL);
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;
      *(v17 + 6) = 0;
      *(a2 + 256) = v17;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v56;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v56;
      {
        mlir::pdl::OperationOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v16 = *(a2 + 256);
    }

    *v16 = ArrayAttr;
    if ((*(*a1 + 64))(a1))
    {
      if (((*(*a1 + 280))(a1) & 1) == 0)
      {
        goto LABEL_53;
      }

      v18 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 720))(a1, &v45, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v43) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v18 = 0;
    }

    v42[0] = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v19 = *(a2 + 8);
      v56 = a1;
      v57 = v42;
      v58[0] = a2;
      v20 = mlir::NamedAttrList::get(a2 + 112, **(v19 + 96));
      if (!v20 || (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v20, "attributeValueNames", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v56) & 1) != 0)
      {
        v21 = mlir::NamedAttrList::get(a2 + 112, *(*(v19 + 96) + 8));
        if (!v21 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v21, "opName", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v56) & 1) != 0)
        {
          v22 = v54;
          v23 = v49;
          v24 = v46;
          v25 = *(a2 + 256);
          if (!v25)
          {
            v38 = v46;
            v26 = operator new(0x20uLL);
            v26[1] = 0;
            v26[2] = 0;
            *v26 = 0;
            *(v26 + 6) = 0;
            *(a2 + 256) = v26;
            *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
            *(a2 + 280) = &v56;
            *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
            *(a2 + 296) = &v56;
            {
              mlir::pdl::OperationOp::readProperties();
            }

            *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
            v25 = *(a2 + 256);
            v24 = v38;
          }

          v39 = v18;
          v25[4] = v22;
          v25[5] = v23;
          v25[6] = v24;
          v27 = (*(*a1 + 32))(a1);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v27);
          SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
          v30 = (*(*a1 + 32))(a1);
          v31 = mlir::MLIRContext::getTypeUniquer(*v30);
          v32 = mlir::StorageUniquer::getSingletonImpl(v31, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
          v33 = *(a2 + 72);
          if (v33 >= *(a2 + 76))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v33 + 1, 8);
            LODWORD(v33) = *(a2 + 72);
          }

          *(*(a2 + 64) + 8 * v33) = SingletonImpl;
          ++*(a2 + 72);
          if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v53, v51, v40, a2 + 16))
          {
            if (!v49)
            {
LABEL_52:
              v36 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v45, v43, v39, a2 + 16) & 1;
              goto LABEL_54;
            }

            v34 = v48;
            v35 = 32 * v49;
            while (((*(*a1 + 728))(a1, v34, v32, a2 + 16) & 1) != 0)
            {
              v34 += 32;
              v35 -= 32;
              if (!v35)
              {
                goto LABEL_52;
              }
            }
          }
        }
      }
    }
  }

LABEL_53:
  v36 = 0;
LABEL_54:
  if (v43[0] != &v44)
  {
    free(v43[0]);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  if (v51[0] != &v52)
  {
    free(v51[0]);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  return v36;
}

uint64_t mlir::pdl::PatternOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v26 = &v59;
          v27 = v63;
        }
      }

      v28 = &v27[24 * v64];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_68;
  }

  v74.var0 = "benefit";
  v74.var1 = 7;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 52;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v75.var0 = "sym_name";
  v75.var1 = 8;
  v36 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 53;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        operator delete[](v50);
      }
    }

    while (v49 != v21);
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}