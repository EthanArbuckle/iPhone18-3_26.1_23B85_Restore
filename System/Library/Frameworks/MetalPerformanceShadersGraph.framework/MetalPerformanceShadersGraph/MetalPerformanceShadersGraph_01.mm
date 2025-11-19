uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::LookupBucketFor<mlir::Block *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 656 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 656 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(656 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 656 * v10 - 656;
    if (v11 >= 0x290)
    {
      v16 = v11 / 0x290 + 1;
      v12 = &result[82 * (v16 & 0xFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[82] = -4096;
        v17 += 164;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v21 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v22 = *(a1 + 16);
              if (v22)
              {
                v23 = v22 - 1;
                v24 = v23 & ((v21 >> 4) ^ (v21 >> 9));
                v25 = (*a1 + 656 * v24);
                v26 = *v25;
                if (*v25 != v21)
                {
                  v27 = 0;
                  v28 = 1;
                  while (v26 != -4096)
                  {
                    if (v27)
                    {
                      v29 = 0;
                    }

                    else
                    {
                      v29 = v26 == -8192;
                    }

                    if (v29)
                    {
                      v27 = v25;
                    }

                    v30 = v24 + v28++;
                    v24 = v30 & v23;
                    v25 = (*a1 + 656 * v24);
                    v26 = *v25;
                    if (*v25 == v21)
                    {
                      goto LABEL_32;
                    }
                  }

                  if (v27)
                  {
                    v25 = v27;
                  }
                }
              }

              else
              {
                v25 = 0;
              }

LABEL_32:
              *v25 = v21;
              v25[1] = *(v20 + 1);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 2), v25 + 6, 16, v20 + 2);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 22), v25 + 26, 16, v20 + 22);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 42), v25 + 46, 16, v20 + 42);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 62), v25 + 66, 16, v20 + 62);
              ++*(a1 + 8);
              v31 = *(v20 + 63);
              if (v31 != *(v20 + 62))
              {
                free(v31);
              }

              v32 = *(v20 + 43);
              if (v32 != *(v20 + 42))
              {
                free(v32);
              }

              v33 = *(v20 + 23);
              if (v33 != *(v20 + 22))
              {
                free(v33);
              }

              v34 = *(v20 + 3);
              if (v34 != *(v20 + 2))
              {
                free(v34);
              }
            }

            v20 = (v20 + 656);
          }

          while (v20 != (v4 + 656 * v3));
        }

        llvm::deallocate_buffer(v4, (656 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[82 * v10];
    do
    {
      *v12 = -4096;
      v12 += 82;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 656 * v13 - 656;
    if (v14 < 0x290)
    {
      v15 = result;
LABEL_49:
      v38 = &result[82 * v13];
      do
      {
        *v15 = -4096;
        v15 += 82;
      }

      while (v15 != v38);
      return result;
    }

    v35 = v14 / 0x290 + 1;
    v15 = &result[82 * (v35 & 0xFFFFFFFFFFFFFELL)];
    v36 = result;
    v37 = v35 & 0xFFFFFFFFFFFFFELL;
    do
    {
      *v36 = -4096;
      v36[82] = -4096;
      v36 += 164;
      v37 -= 2;
    }

    while (v37);
    if (v35 != (v35 & 0xFFFFFFFFFFFFFELL))
    {
      goto LABEL_49;
    }
  }

  return result;
}

uint64_t llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 20) - *(result + 24) >= (*(a2 + 20) - *(a2 + 24)))
  {
    v3 = *(a2 + 8);
    v4 = 16;
    if (v3 == *a2)
    {
      v4 = 20;
    }

    v5 = *(a2 + v4);
    if (v5)
    {
      v6 = 8 * v5;
      for (i = *(a2 + 8); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }
    }

    else
    {
      i = *(a2 + 8);
    }

    v8 = (v3 + 8 * v5);
    while (i != v8)
    {
      v9 = *i;
      v10 = *v2;
      if (*(v2 + 8) == *v2)
      {
        v11 = *(v2 + 20);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = *v2;
          while (*v13 != v9)
          {
            ++v13;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_25;
            }
          }

          v14 = v11 - 1;
          *(v2 + 20) = v14;
          *v13 = v10[v14];
        }
      }

      else
      {
        result = llvm::SmallPtrSetImplBase::doFind(v2, v9);
        if (result)
        {
          *result = -2;
          ++*(v2 + 24);
        }
      }

      do
      {
LABEL_25:
        ++i;
      }

      while (i != v8 && *i >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

  else
  {

    return llvm::SmallPtrSetImpl<mlir::Value>::remove_if<void llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(llvm::SmallPtrSet<mlir::Value,16u> &,llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(llvm::SmallPtrSet<mlir::Value,16u> const&)#1}>(result, a2);
  }

  return result;
}

uint64_t llvm::SmallPtrSetImpl<mlir::Value>::remove_if<void llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(llvm::SmallPtrSet<mlir::Value,16u> &,llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(llvm::SmallPtrSet<mlir::Value,16u> const&)#1}>(uint64_t a1, const void ***this)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 != *a1)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = &v5[v6];
      while (1)
      {
        v9 = *v5;
        if (*v5 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          break;
        }

LABEL_4:
        if (++v5 == v8)
        {
          return v7 & 1;
        }
      }

      v10 = *this;
      v11 = this[1];
      if (v11 == *this)
      {
        v16 = *(this + 5);
        if (v16)
        {
          v17 = 8 * v16;
          while (*v10 != v9)
          {
            ++v10;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_20;
            }
          }

          if (v10 == &this[1][*(this + 5)])
          {
            goto LABEL_4;
          }

LABEL_25:
          *v5 = -2;
          ++*(a1 + 24);
          v7 = 1;
          goto LABEL_4;
        }

LABEL_20:
        v12 = &v11[v16];
        v13 = this[1];
      }

      else
      {
        v12 = llvm::SmallPtrSetImplBase::doFind(this, v9);
        v11 = *this;
        v13 = this[1];
        if (!v12)
        {
          if (v13 == v11)
          {
            v14 = 20;
          }

          else
          {
            v14 = 16;
          }

          if (v13 == v11)
          {
            v15 = 20;
          }

          else
          {
            v15 = 16;
          }

          if (&v13[*(this + v14)] == &v13[*(this + v15)])
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }
      }

      if (v13 == v11)
      {
        v18 = 20;
      }

      else
      {
        v18 = 16;
      }

      if (v12 == &v13[*(this + v18)])
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    goto LABEL_49;
  }

  v19 = *(a1 + 20);
  if (!v19)
  {
LABEL_49:
    v7 = 0;
    return v7 & 1;
  }

  v7 = 0;
  v20 = &v4[v19];
  do
  {
    while (1)
    {
      v21 = *v4;
      v22 = *this;
      v23 = this[1];
      if (v23 == *this)
      {
        v26 = *(this + 5);
        if (v26)
        {
          v27 = 8 * v26;
          while (*v22 != v21)
          {
            ++v22;
            v27 -= 8;
            if (!v27)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
LABEL_41:
          v22 = &v23[v26];
        }

        v24 = this[1];
      }

      else
      {
        v22 = llvm::SmallPtrSetImplBase::doFind(this, v21);
        v23 = *this;
        v24 = this[1];
        if (!v22)
        {
          if (v24 == v23)
          {
            v25 = 20;
          }

          else
          {
            v25 = 16;
          }

          v22 = &v24[*(this + v25)];
        }
      }

      v28 = v24 == v23 ? 20 : 16;
      if (v22 != &v24[*(this + v28)])
      {
        break;
      }

      if (++v4 == v20)
      {
        return v7 & 1;
      }
    }

    v29 = *--v20;
    *v4 = v29;
    --*(a1 + 20);
    v7 = 1;
  }

  while (v4 != v20);
  return v7 & 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
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

int64x2_t *llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != result + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = &result->i8[8 * v29];
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = &result->i8[8 * (v34 & v18)];
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = &result->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = &result->i8[8 * v20];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v26);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 336 * v6);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 336 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(336 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::moveFromOldBuckets(a1, v4, &v4[42 * v3]);

    llvm::deallocate_buffer(v4, (336 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 336 * v10 - 336;
    if (v11 < 0x150)
    {
      v12 = result;
LABEL_14:
      v16 = &result[42 * v10];
      do
      {
        *v12 = -4096;
        v12 += 42;
      }

      while (v12 != v16);
      return result;
    }

    v13 = v11 / 0x150 + 1;
    v12 = &result[42 * (v13 & 0x1FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v13 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      v14[42] = -4096;
      v14 += 84;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0x1FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 336 * v6 - 336;
    if (v8 < 0x150)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[42 * v6];
      do
      {
        *v9 = -4096;
        v9 += 42;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x150 + 1;
    v9 = &v7[42 * (v10 & 0x1FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[42] = -4096;
      v11 += 84;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFELL))
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
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & ((LODWORD(v14) >> 4) ^ (LODWORD(v14) >> 9));
          v18 = (*a1 + 336 * v17);
          v19 = *v18;
          if (*&v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -4096)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -8192;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = (*a1 + 336 * v17);
              v19 = *v18;
              if (*&v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        v18[1] = *(v4 + 1);
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v18 + 2), v18 + 6, 16, v4 + 2);
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v18 + 22), v18 + 26, 16, v4 + 22);
        ++*(a1 + 8);
        v24 = *(v4 + 23);
        if (v24 != *(v4 + 22))
        {
          free(v24);
        }

        v25 = *(v4 + 3);
        if (v25 != *(v4 + 2))
        {
          free(v25);
        }
      }

      v4 += 42;
    }

    while (v4 != a3);
  }
}

void *llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(uint64_t a1, int a2)
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
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
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
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v26 >> 47) ^ v26);
          v28 = (-348639895 * ((v27 >> 47) ^ v27)) & v16;
          v23 = &result[2 * v28];
          v29 = *v23;
          if (v25 != *v23)
          {
            v30 = 0;
            v31 = 1;
            while (v29 != -4096)
            {
              if (v30)
              {
                v32 = 0;
              }

              else
              {
                v32 = v29 == -8192;
              }

              if (v32)
              {
                v30 = v23;
              }

              v33 = v28 + v31++;
              v28 = v33 & v16;
              v23 = &result[2 * (v33 & v16)];
              v29 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v30)
            {
              v23 = v30;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
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
      *(v20 - 2) = -4096;
      *v20 = -4096;
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
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (*a1 + 16 * (v12 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v13 = *(a1 + 8);
  if (4 * v13 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v13 = *(v16 + 8);
    v7 = v17;
    goto LABEL_15;
  }

  if (v2 + ~v13 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v13 + 1;
  if (*v7 != -4096)
  {
    --*(a1 + 12);
  }

  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

const char *llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]";
  v6 = 84;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(uint64_t this)
{
  v1 = this + 96;
  v2 = *(this + 96) + 40 * *(this + 104);
  v3 = *(v2 - 24);
  if (v3 != *(v2 - 8))
  {
    v4 = this;
    while (1)
    {
      v7 = *(v2 - 32);
      *(v2 - 24) = v3 + 1;
      v8 = *(v7 + 32 * v3 + 24);
      v15 = v8;
      v9 = *v4;
      if (*(v4 + 8) == *v4)
      {
        v11 = *(v4 + 20);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = *v4;
          while (*v13 != v8)
          {
            ++v13;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_7;
        }

LABEL_15:
        if (v11 < *(v4 + 16))
        {
          break;
        }
      }

      this = llvm::SmallPtrSetImplBase::insert_imp_big(v4, v8);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_7:
      v2 = *(v4 + 96) + 40 * *(v4 + 104);
      v3 = *(v2 - 24);
      if (v3 == *(v2 - 8))
      {
        return this;
      }
    }

    *(v4 + 20) = v11 + 1;
    v9[v11] = v8;
LABEL_5:
    mlir::SuccessorRange::SuccessorRange(&v16, v15);
    v14 = v16;
    this = mlir::SuccessorRange::SuccessorRange(&v16, v15);
    v5 = *(v4 + 104);
    if (v5 >= *(v4 + 108))
    {
      this = llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v1, &v15, &v14, &v16);
    }

    else
    {
      v6 = *(v4 + 96) + 40 * v5;
      *v6 = v15;
      *(v6 + 8) = v14;
      *(v6 + 24) = v16;
      ++*(v4 + 104);
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v15 = *a2;
  v4 = *a4;
  v16 = *a3;
  v17 = v4;
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = &v15;
  if (v5 >= *(a1 + 12))
  {
    if (v6 <= &v15 && v6 + 40 * v5 > &v15)
    {
      v13 = &v15 - v6;
      v14 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 40);
      a1 = v14;
      v6 = *v14;
      v7 = &v13[*v14];
    }

    else
    {
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 40);
      a1 = v12;
      v6 = *v12;
      v7 = &v15;
    }
  }

  v8 = v6 + 40 * *(a1 + 8);
  v9 = *v7;
  v10 = *(v7 + 1);
  *(v8 + 32) = *(v7 + 4);
  *v8 = v9;
  *(v8 + 16) = v10;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 40 * v8 - 40;
}

uint64_t llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_20;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = *result;
        v13 = v2 + 40 * v7;
        do
        {
          *v12 = *v2;
          *(v12 + 8) = *(v2 + 8);
          *(v12 + 24) = *(v2 + 24);
          v2 += 40;
          v12 += 40;
        }

        while (v2 != v13);
      }

      *(result + 8) = v7;
      goto LABEL_20;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v14 = v2 + 40 * v8;
        v10 = result;
        v15 = *result;
        do
        {
          *v15 = *v2;
          *(v15 + 8) = *(v2 + 8);
          *(v15 + 24) = *(v2 + 24);
          v2 += 40;
          v15 += 40;
        }

        while (v2 != v14);
        v11 = *v6 - v8;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 40);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }

    memcpy((*v10 + 40 * v8), (*a2 + 40 * v8), 40 * v11);
LABEL_19:
    result = v10;
    *(v10 + 8) = v7;
LABEL_20:
    *v6 = 0;
  }

  return result;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(uint64_t a1, mlir::Block *a2)
{
  v9 = a2;
  *(a1 + 32) = a2;
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 32;
  *(a1 + 24) = 0;
  *(a1 + 96) = a1 + 112;
  v4 = a1 + 96;
  *(a1 + 104) = 0x800000000;
  *(a1 + 16) = 0x100000008;
  mlir::SuccessorRange::SuccessorRange(&v10, a2);
  v8 = v10;
  mlir::SuccessorRange::SuccessorRange(&v10, a2);
  v5 = *(a1 + 104);
  if (v5 >= *(a1 + 108))
  {
    llvm::SmallVectorTemplateBase<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,true>::growAndEmplaceBack<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v4, &v9, &v8, &v10);
  }

  else
  {
    v6 = *(a1 + 96) + 40 * v5;
    *v6 = a2;
    *(v6 + 8) = v8;
    *(v6 + 24) = v10;
    ++*(a1 + 104);
  }

  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(a1);
  return a1;
}

void mlir::arith::ConstantOp::getAsmResultNames(mlir::arith::ConstantOp *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v5 = *(*a1 - 8);
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(a1);
  if (*(*ValueAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = ValueAttr;
  }

  else
  {
    v7 = 0;
  }

  v35 = v7;
  if (v7)
  {
    v8 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if (*(*(v5 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v9 = 0;
    }

    v34 = v9;
    if (v9 && mlir::IntegerType::getWidth(&v34) == 1)
    {
      if (*(*a1 + 36))
      {
        v10 = *a1 - 16;
      }

      else
      {
        v10 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
      Int = mlir::IntegerAttr::getInt(&v35);
      if (Int)
      {
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }

      if (Int)
      {
        v14 = "true";
      }

      else
      {
        v14 = "false";
      }

      a2(a3, NextResultAtOffset, v14, v13);
    }

    else
    {
      v36 = v38;
      v37 = xmmword_1E096E640;
      v27 = 2;
      v31 = 0;
      v32 = 1;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      v26 = &unk_1F5B3FBC0;
      v33 = &v36;
      llvm::raw_ostream::SetBufferAndMode(&v26, 0, 0, 0);
      v15 = v30;
      if (v30 >= v29)
      {
        v16 = llvm::raw_ostream::write(&v26, 99);
      }

      else
      {
        ++v30;
        *v15 = 99;
        v16 = &v26;
      }

      mlir::IntegerAttr::getValue(&v35, &__p);
      llvm::APInt::print(&__p, v16, 1);
      if (v25 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v34)
      {
        v19 = v30;
        if (v30 >= v29)
        {
          v20 = llvm::raw_ostream::write(&v26, 95);
        }

        else
        {
          ++v30;
          *v19 = 95;
          v20 = &v26;
        }

        __p = v8;
        mlir::Type::print(&__p, v20);
      }

      if (*(*a1 + 36))
      {
        v21 = *a1 - 16;
      }

      else
      {
        v21 = 0;
      }

      v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
      a2(a3, v22, *v33, v33[1]);
      llvm::raw_ostream::~raw_ostream(&v26);
      if (v36 != v38)
      {
        free(v36);
      }
    }
  }

  else
  {
    if (*(*a1 + 36))
    {
      v17 = *a1 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);

    a2(a3, v18, "cst", 3);
  }
}

BOOL mlir::arith::ConstantOp::verify(mlir::arith::ConstantOp *this)
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(this);
  v76 = v3;
  if (mlir::CallOpInterface::getCallableForCallee(&ValueAttr) != v2)
  {
    v71 = 257;
    mlir::OpState::emitOpError(this, v70, &ValueAttr);
    if (ValueAttr)
    {
      LODWORD(v72) = 3;
      v73 = "value type ";
      v74 = 11;
      v16 = &v72;
      v17 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v65 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v17 = v77;
          v16 = v77 + v65;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v16 = &v72;
          v17 = v77;
        }
      }

      v18 = &v17[24 * v78];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v78;
    }

    v69[0] = mlir::arith::ConstantOp::getValueAttr(this);
    v69[1] = v20;
    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v69);
    if (ValueAttr)
    {
      v22 = &v72;
      mlir::DiagnosticArgument::DiagnosticArgument(&v72, CallableForCallee);
      v23 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v66 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v23 = v77;
          v22 = v77 + v66;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v22 = &v72;
          v23 = v77;
        }
      }

      v24 = &v23[24 * v78];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v78;
      if (ValueAttr)
      {
        LODWORD(v72) = 3;
        v73 = " must match return type: ";
        v74 = 25;
        v27 = &v72;
        v28 = v77;
        if (v26 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v26 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v26 + 1, 24);
            v28 = v77;
            v27 = v77 + v67;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v26 + 1, 24);
            v27 = &v72;
            v28 = v77;
          }
        }

        v29 = &v28[24 * v78];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v78;
        if (ValueAttr)
        {
          v31 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v2);
          v32 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v68 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v32 = v77;
              v31 = v77 + v68;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v31 = &v72;
              v32 = v77;
            }
          }

          v33 = &v32[24 * v78];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
          ++v78;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
    if (ValueAttr)
    {
      mlir::InFlightDiagnostic::report(&ValueAttr);
    }

    if (v86 == 1)
    {
      if (v85 != &v86)
      {
        free(v85);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v84;
        v37 = __p;
        if (v84 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v84 = v35;
        operator delete(v37);
      }

      v38 = v81;
      if (!v81)
      {
        goto LABEL_109;
      }

      v39 = v82;
      v40 = v81;
      if (v82 == v81)
      {
        goto LABEL_108;
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
      goto LABEL_107;
    }

    return v12;
  }

  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ValueAttr = v2;
    if (mlir::IntegerType::getSignedness(&ValueAttr))
    {
      v70[0] = "integer return type must be signless";
      v71 = 259;
      mlir::OpState::emitOpError(this, v70, &ValueAttr);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
      if (ValueAttr)
      {
        mlir::InFlightDiagnostic::report(&ValueAttr);
      }

      if (v86 == 1)
      {
        if (v85 != &v86)
        {
          free(v85);
        }

        v52 = __p;
        if (__p)
        {
          v53 = v84;
          v54 = __p;
          if (v84 != __p)
          {
            do
            {
              v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
            }

            while (v53 != v52);
            v54 = __p;
          }

          v84 = v52;
          operator delete(v54);
        }

        v38 = v81;
        if (!v81)
        {
          goto LABEL_109;
        }

        v55 = v82;
        v40 = v81;
        if (v82 == v81)
        {
LABEL_108:
          v82 = v38;
          operator delete(v40);
LABEL_109:
          if (v77 != v80)
          {
            free(v77);
          }

          return v12;
        }

        do
        {
          v57 = *--v55;
          v56 = v57;
          *v55 = 0;
          if (v57)
          {
            operator delete[](v56);
          }
        }

        while (v55 != v38);
LABEL_107:
        v40 = v81;
        goto LABEL_108;
      }

      return v12;
    }
  }

  v4 = mlir::arith::ConstantOp::getValueAttr(this);
  v5 = *v4;
  v6 = *(*v4 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    goto LABEL_8;
  }

  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v5 + 8);
    v45 = *(v5 + 16);
    if (!v45)
    {
      goto LABEL_91;
    }
  }

  else
  {
    mlir::arith::ConstantOp::verify();
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v5 + 8);
    v45 = *(v5 + 16);
    if (!v45)
    {
      goto LABEL_91;
    }
  }

  v46 = v44;
  v47 = v45;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
  if (v46 != &v44[2 * v45] && *v46 == v43 && v46[1])
  {
LABEL_8:
    if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    v72 = v8;
    if (!v8)
    {
      return 1;
    }

    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v72);
    v11 = v10;
    v12 = 1;
    v13 = memchr(RawStringData, 1, v10);
    if (!v13 || v13 == &RawStringData[v11])
    {
      return v12;
    }

    v14 = mlir::arith::ConstantOp::getValueAttr(this);
    v15 = mlir::DenseElementsAttr::classof(v14) ? v14 : 0;
    ValueAttr = v15;
    if (v15)
    {
      if (mlir::DenseElementsAttr::isSplat(&ValueAttr))
      {
        return 1;
      }
    }

    v70[0] = "intializing scalable vectors with elements attribute is not supported unless it's a vector splat";
    v71 = 259;
    mlir::OpState::emitOpError(this, v70, &ValueAttr);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
    if (ValueAttr)
    {
      mlir::InFlightDiagnostic::report(&ValueAttr);
    }

    if (v86 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v76);
    }

    return v12;
  }

LABEL_91:
  v70[0] = "value must be an integer, float, or elements attribute";
  v71 = 259;
  mlir::OpState::emitOpError(this, v70, &ValueAttr);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
  if (ValueAttr)
  {
    mlir::InFlightDiagnostic::report(&ValueAttr);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v58 = __p;
    if (__p)
    {
      v59 = v84;
      v60 = __p;
      if (v84 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v84 = v58;
      operator delete(v60);
    }

    v38 = v81;
    if (!v81)
    {
      goto LABEL_109;
    }

    v61 = v82;
    v40 = v81;
    if (v82 == v81)
    {
      goto LABEL_108;
    }

    do
    {
      v63 = *--v61;
      v62 = v63;
      *v61 = 0;
      if (v63)
      {
        operator delete[](v62);
      }
    }

    while (v61 != v38);
    goto LABEL_107;
  }

  return v12;
}

__n128 mlir::InFlightDiagnostic::operator<<<mlir::Type &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = v10;
    mlir::DiagnosticArgument::DiagnosticArgument(v10, *a2);
    v4 = a1;
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 <= v10 && v5 + 24 * v6 > v10)
      {
        v9 = &v10[-v5];
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = &v9[v5];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = v10;
      }
    }

    v7 = (v5 + 24 * *(v4 + 32));
    result = *v2;
    v7[1].n128_u64[0] = v2[1].n128_u64[0];
    *v7 = result;
    ++*(v4 + 32);
  }

  return result;
}

void mlir::InFlightDiagnostic::~InFlightDiagnostic(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::InFlightDiagnostic::report(this);
  }

  if (*(this + 200) == 1)
  {
    mlir::Diagnostic::~Diagnostic((this + 8));
  }
}

uint64_t mlir::arith::ConstantOp::isBuildableWith(uint64_t *a1, uint64_t a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
  v19[0] = result;
  v19[1] = v5;
  if (!result)
  {
    return result;
  }

  if (mlir::CallOpInterface::getCallableForCallee(v19) != a2)
  {
    return 0;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v18 = a2;
    if (mlir::IntegerType::getSignedness(&v18))
    {
      return 0;
    }
  }

  v6 = *a1;
  v7 = *(v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    return 1;
  }

  {
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v10 = *(v6 + 8);
    v11 = *(v6 + 16);
    if (v11)
    {
      goto LABEL_13;
    }

    return 0;
  }

  mlir::arith::ConstantOp::verify();
  v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  if (!v11)
  {
    return 0;
  }

LABEL_13:
  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 == &v10[2 * v11] || *v12 != v9)
  {
    return 0;
  }

  return v12[1] != 0;
}

uint64_t mlir::arith::ConstantOp::materialize(mlir::OpBuilder *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!mlir::arith::ConstantOp::isBuildableWith(a2, a3))
  {
    return 0;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v7 = *a2;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v7;
    mlir::arith::ConstantOp::materialize();
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v19 + 8);
    v10 = *(v19 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v18 = v11[1];
    goto LABEL_17;
  }

LABEL_16:
  v18 = 0;
LABEL_17:
  v20[0] = a2;
  v20[1] = v18;
  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(a1, a4, v20);
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::ConstantOp::build(a1, v15, *a3, a3[1]);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void mlir::arith::ConstantIntOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, int a4)
{
  IntegerType = mlir::Builder::getIntegerType(a1, a4);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a3);
  if (!IntegerAttr)
  {
    goto LABEL_14;
  }

  v9 = *IntegerAttr;
  {
    v19 = IntegerAttr;
    mlir::arith::ConstantOp::materialize();
    IntegerAttr = v19;
    v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_4:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 == &v11[2 * v12] || *v13 != v10)
  {
    goto LABEL_14;
  }

  v20 = v13[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IntegerAttr, a2, IntegerType, IntegerAttr, v20);
}

void mlir::arith::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 256);
  if (v9)
  {
    *v9 = a4;
    v9[1] = a5;
    v10 = *(a2 + 72);
    if (v10 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v10 + 1, 8);
      LODWORD(v10) = *(a2 + 72);
    }
  }

  else
  {
    v11 = operator new(0x10uLL);
    *v11 = 0;
    v11[1] = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v14;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v13;
    {
      mlir::arith::ConstantOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v12 = *(a2 + 256);
    *v12 = a4;
    v12[1] = a5;
    v10 = *(a2 + 72);
    if (v10 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
}

void mlir::arith::ConstantIntOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, a4, a3);
  if (!IntegerAttr)
  {
    goto LABEL_14;
  }

  v7 = *IntegerAttr;
  {
    v18 = v7;
    v19 = IntegerAttr;
    mlir::arith::ConstantOp::materialize();
    IntegerAttr = v19;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v18 + 8);
    v10 = *(v18 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IntegerAttr, a2, a4, IntegerAttr, v17);
}

BOOL mlir::arith::ConstantIntOp::classof(_BOOL8 this, mlir::Operation *a2)
{
  if (this)
  {
    if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v4[1] = v2;
      v4[2] = v3;
      v4[0] = *(this - 8) & 0xFFFFFFFFFFFFFFF8;
      return mlir::Type::isSignlessInteger(v4);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void mlir::arith::ConstantIndexOp::build(mlir::IndexType **a1, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  IndexType = mlir::Builder::getIndexType(a1, a2);
  IndexAttr = mlir::Builder::getIndexAttr(a1, a3);
  if (!IndexAttr)
  {
    goto LABEL_14;
  }

  v8 = *IndexAttr;
  {
    v18 = IndexAttr;
    mlir::arith::ConstantOp::materialize();
    IndexAttr = v18;
    v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_4:
  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 == &v10[2 * v11] || *v12 != v9)
  {
    goto LABEL_14;
  }

  v19 = v12[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IndexAttr, a2, IndexType, IndexAttr, v19);
}

BOOL mlir::arith::ConstantIndexOp::classof(_BOOL8 this, mlir::Operation *a2)
{
  if (this)
  {
    if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v4[1] = v2;
      v4[2] = v3;
      v4[0] = *(this - 8) & 0xFFFFFFFFFFFFFFF8;
      return mlir::Type::isIndex(v4);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t mlir::arith::AddIOp::fold(uint64_t *a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 48) + 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  LODWORD(v72) = 1;
  v71 = 0;
  v63 = &v71;
  v5 = mlir::detail::constant_int_value_binder::match(&v63, v4);
  v6 = v72;
  if (v5)
  {
    if (v72 < 0x41)
    {
      v7 = v71 == 0;
      goto LABEL_11;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&v71) > 0x40)
    {
      if (v71)
      {
        operator delete[](v71);
      }

      goto LABEL_16;
    }

    v7 = *v71 == 0;
  }

  else
  {
    v7 = 0;
    if (v72 < 0x41)
    {
      goto LABEL_11;
    }
  }

  if (!v71)
  {
LABEL_11:
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  operator delete[](v71);
  if (v7)
  {
LABEL_12:
    v8 = *(*a1 + 72);
    return *(v8 + 24) | 4;
  }

LABEL_16:
  v71 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v71);
  if (DefiningOp)
  {
    v11 = *a1;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v12 = *(DefiningOp + 72);
      if (*(*(v11 + 72) + 56) == *(v12 + 56))
      {
        return *(v12 + 24) | 4;
      }
    }
  }

  else
  {
    v11 = *a1;
  }

  v71 = *(*(v11 + 72) + 56);
  v13 = mlir::Value::getDefiningOp(&v71);
  if (v13)
  {
    if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v8 = *(v13 + 72);
      if (*(*(*a1 + 72) + 24) == *(v8 + 56))
      {
        return *(v8 + 24) | 4;
      }
    }
  }

  v14 = *(a2 + 48);
  v15 = *v14;
  if (*v14 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v17 = v14 + 1;
  v16 = v14[1];
  if (v16 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = v14[1];
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v15)
  {
    v71 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v72 = v18;
    if (v71)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v71);
      v15 = *v17;
      if (*v17)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  CallableForCallee = 0;
  v15 = *v17;
  if (*v17)
  {
LABEL_31:
    v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v71 = v15;
    v72 = v20;
    if (!v15)
    {
      return v15 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_36;
  }

LABEL_35:
  v71 = v15;
  v72 = 0;
  if (!v15)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_36:
  v21 = mlir::CallOpInterface::getCallableForCallee(&v71);
  v15 = 0;
  if (!CallableForCallee || !v21 || v21 != CallableForCallee)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v70 = CallableForCallee;
  v22 = *v14;
  if (*v14 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = *v14;
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v23 = *v17;
  if (!*v17)
  {
    goto LABEL_87;
  }

  v24 = *(*v23 + 136);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = *v17;
  }

  else
  {
    v15 = 0;
  }

  if (!v22 || v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v24 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v14))
    {
      v27 = v22;
    }

    else
    {
      v27 = 0;
    }

    v71 = v27;
    if (v27 && mlir::DenseElementsAttr::isSplat(&v71) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v14 + 1))
    {
      v28 = v14[1];
      v56 = *v14;
      v53 = v28;
      Value = mlir::ArrayAttr::getValue(&v56);
      if (Value == mlir::ArrayAttr::getValue(&v53))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v56, &v63);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &__p);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v71, &v63, &__p);
        if (v60 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (v64 >= 0x41 && v63)
        {
          operator delete[](v63);
        }

        if (v73 == 1)
        {
          v30 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
          v15 = mlir::DenseElementsAttr::get(v30, v31, &v71, 1);
          if ((v73 & 1) == 0)
          {
            return v15 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_58;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v14) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v14 + 1))
    {
      v68 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v14);
      v69 = v32;
      v67[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v14 + 1);
      v67[1] = v33;
      Type = mlir::ElementsAttr::getType(&v68);
      if (Type == mlir::ElementsAttr::getType(v67))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v68, &v63);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v67, &__p);
        if (v66 == 1 && v62 == 1)
        {
          LOWORD(v56) = v63;
          if (v63 == 1)
          {
            v57 = v64;
          }

          else
          {
            (*(*v64 + 16))(&v57);
          }

          v58 = v65;
          LOWORD(v53) = __p;
          if (__p == 1)
          {
            v54 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v54);
          }

          v55 = v61;
          v71 = &v73;
          v72 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v68, v69);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v71, NumElements);
          v39 = mlir::ElementsAttr::getNumElements(v68, v69);
          if (v39)
          {
            v40 = v39;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v56, &v48);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v46);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v50, &v48, &v46);
              if (v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              if (v49 >= 0x41 && v48)
              {
                operator delete[](v48);
              }

              if (v52 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v71, &v50);
              if ((v52 & 1) != 0 && v51 >= 0x41 && v50)
              {
                operator delete[](v50);
              }

              ++v58;
              ++v55;
              if (!--v40)
              {
                goto LABEL_116;
              }
            }

            v43 = 0;
          }

          else
          {
LABEL_116:
            v41 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
            v43 = mlir::DenseElementsAttr::get(v41, v42, v71, v72);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v71);
          if ((v53 & 1) == 0)
          {
            v44 = v54;
            v54 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }

          v15 = v43;
          if ((v56 & 1) == 0)
          {
            v45 = v57;
            v57 = 0;
            if (v45)
            {
              (*(*v45 + 8))(v45);
              v15 = v43;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        if (v62 == 1 && (__p & 1) == 0)
        {
          v35 = v60;
          v60 = 0;
          if (v35)
          {
            v36 = v15;
            (*(*v35 + 8))(v35);
            v15 = v36;
          }
        }

        if (v66 != 1)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v63)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v37 = v64;
        v64 = 0;
        if (!v37)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v26 = v15;
        (*(*v37 + 8))(v37);
LABEL_61:
        v15 = v26;
        return v15 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

LABEL_87:
    v15 = 0;
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v56 = *v14;
  v53 = v23;
  v25 = mlir::AffineMapAttr::getValue(&v56);
  if (v25 != mlir::AffineMapAttr::getValue(&v53))
  {
    goto LABEL_87;
  }

  mlir::IntegerAttr::getValue(&v56, &v63);
  mlir::IntegerAttr::getValue(&v53, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v71, &v63, &__p);
  if (v60 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v64 >= 0x41 && v63)
  {
    operator delete[](v63);
  }

  if (v73 != 1)
  {
    goto LABEL_87;
  }

  v15 = mlir::IntegerAttr::get(v70, &v71);
  if (v73)
  {
LABEL_58:
    if (v72 < 0x41 || !v71)
    {
      return v15 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v26 = v15;
    operator delete[](v71);
    goto LABEL_61;
  }

  return v15 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::AddIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 2);
  v105 = xmmword_1E86D27E0;
  v106 = *&off_1E86D27F0;
  mlir::Pattern::Pattern((v4 + 2), "arith.addi", 10, v104, a2, &v105, 2uLL);
  *v4 = &unk_1F5AEDE90;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *&v105 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AddIAddConstant]";
  *(&v105 + 1) = 88;
  v9 = llvm::StringRef::find(&v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105 + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v105 + 1);
  }

  v11 = v105 + v10;
  v12 = *(&v105 + 1) - v10;
  if (*(&v105 + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v105 + 1) - v10;
  }

  v14 = v11 + v13;
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_133;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 2);
  v105 = xmmword_1E86D27E0;
  v106 = *&off_1E86D27F0;
  mlir::Pattern::Pattern((v24 + 2), "arith.addi", 10, v104, a2, &v105, 2uLL);
  *v24 = &unk_1F5AEDEE8;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *&v105 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AddISubConstantRHS]";
  *(&v105 + 1) = 91;
  v29 = llvm::StringRef::find(&v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105 + 1) >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v105 + 1);
  }

  v31 = v105 + v30;
  v32 = *(&v105 + 1) - v30;
  if (*(&v105 + 1) - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = *(&v105 + 1) - v30;
  }

  v34 = v31 + v33;
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (v41 >> 61)
    {
      goto LABEL_133;
    }

    v42 = operator new(8 * v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
  v44 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 2);
  v105 = xmmword_1E86D2800;
  v106 = *&off_1E86D2810;
  mlir::Pattern::Pattern((v44 + 2), "arith.addi", 10, v104, a2, &v105, 2uLL);
  *v44 = &unk_1F5AEDF40;
  if (*(v44 + 9))
  {
    v45 = v44[22];
    if (v45 <= v44[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v44 + 20), (v44 + 24), v45, 16);
    v44[22] = v44[22];
    v47 = a1[2];
    v46 = a1[3];
    if (v47 < v46)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  *&v105 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AddISubConstantLHS]";
  *(&v105 + 1) = 91;
  v49 = llvm::StringRef::find(&v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105 + 1) >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = *(&v105 + 1);
  }

  v51 = v105 + v50;
  v52 = *(&v105 + 1) - v50;
  if (*(&v105 + 1) - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = *(&v105 + 1) - v50;
  }

  v54 = v51 + v53;
  v55 = v52 - v53;
  if (v55 >= v55 - 1)
  {
    --v55;
  }

  *(v44 + 8) = v54;
  *(v44 + 9) = v55;
  v45 = v44[22];
  if (v45 > v44[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v44[22] = v45;
  v47 = a1[2];
  v46 = a1[3];
  if (v47 < v46)
  {
LABEL_56:
    *v47 = v44;
    v48 = v47 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v56 = a1[1];
  v57 = v47 - v56;
  v58 = (v47 - v56) >> 3;
  v59 = v58 + 1;
  if ((v58 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v60 = v46 - v56;
  if (v60 >> 2 > v59)
  {
    v59 = v60 >> 2;
  }

  if (v60 >= 0x7FFFFFFFFFFFFFF8)
  {
    v61 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v61 = v59;
  }

  if (v61)
  {
    if (v61 >> 61)
    {
      goto LABEL_133;
    }

    v62 = operator new(8 * v61);
  }

  else
  {
    v62 = 0;
  }

  v63 = &v62[8 * v58];
  *v63 = v44;
  v48 = v63 + 8;
  memcpy(v62, v56, v57);
  a1[1] = v62;
  a1[2] = v48;
  a1[3] = &v62[8 * v61];
  if (v56)
  {
    operator delete(v56);
  }

LABEL_79:
  a1[2] = v48;
  v64 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 2);
  *&v105 = "arith.subi";
  *(&v105 + 1) = 10;
  mlir::Pattern::Pattern((v64 + 2), "arith.addi", 10, v104, a2, &v105, 1uLL);
  *v64 = &unk_1F5AEDF98;
  if (*(v64 + 9))
  {
    v65 = v64[22];
    if (v65 <= v64[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v64 + 20), (v64 + 24), v65, 16);
    v64[22] = v64[22];
    v67 = a1[2];
    v66 = a1[3];
    if (v67 < v66)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  *&v105 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AddIMulNegativeOneRhs]";
  *(&v105 + 1) = 94;
  v69 = llvm::StringRef::find(&v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105 + 1) >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = *(&v105 + 1);
  }

  v71 = v105 + v70;
  v72 = *(&v105 + 1) - v70;
  if (*(&v105 + 1) - v70 >= 0x12)
  {
    v73 = 18;
  }

  else
  {
    v73 = *(&v105 + 1) - v70;
  }

  v74 = v71 + v73;
  v75 = v72 - v73;
  if (v75 >= v75 - 1)
  {
    --v75;
  }

  *(v64 + 8) = v74;
  *(v64 + 9) = v75;
  v65 = v64[22];
  if (v65 > v64[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v64[22] = v65;
  v67 = a1[2];
  v66 = a1[3];
  if (v67 < v66)
  {
LABEL_82:
    *v67 = v64;
    v68 = v67 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v76 = a1[1];
  v77 = v67 - v76;
  v78 = (v67 - v76) >> 3;
  v79 = v78 + 1;
  if ((v78 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v80 = v66 - v76;
  if (v80 >> 2 > v79)
  {
    v79 = v80 >> 2;
  }

  if (v80 >= 0x7FFFFFFFFFFFFFF8)
  {
    v81 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v81 = v79;
  }

  if (v81)
  {
    if (v81 >> 61)
    {
      goto LABEL_133;
    }

    v82 = operator new(8 * v81);
  }

  else
  {
    v82 = 0;
  }

  v83 = &v82[8 * v78];
  *v83 = v64;
  v68 = v83 + 8;
  memcpy(v82, v76, v77);
  a1[1] = v82;
  a1[2] = v68;
  a1[3] = &v82[8 * v81];
  if (v76)
  {
    operator delete(v76);
  }

LABEL_105:
  a1[2] = v68;
  v84 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 2);
  *&v105 = "arith.subi";
  *(&v105 + 1) = 10;
  mlir::Pattern::Pattern((v84 + 2), "arith.addi", 10, v104, a2, &v105, 1uLL);
  *v84 = &unk_1F5AEDFF0;
  if (*(v84 + 9))
  {
    v85 = v84[22];
    if (v85 <= v84[23])
    {
      goto LABEL_107;
    }

LABEL_118:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v84 + 20), (v84 + 24), v85, 16);
    v84[22] = v84[22];
    v87 = a1[2];
    v86 = a1[3];
    if (v87 < v86)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

  *&v105 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AddIMulNegativeOneLhs]";
  *(&v105 + 1) = 94;
  v89 = llvm::StringRef::find(&v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105 + 1) >= v89)
  {
    v90 = v89;
  }

  else
  {
    v90 = *(&v105 + 1);
  }

  v91 = v105 + v90;
  v92 = *(&v105 + 1) - v90;
  if (*(&v105 + 1) - v90 >= 0x12)
  {
    v93 = 18;
  }

  else
  {
    v93 = *(&v105 + 1) - v90;
  }

  v94 = v91 + v93;
  v95 = v92 - v93;
  if (v95 >= v95 - 1)
  {
    --v95;
  }

  *(v84 + 8) = v94;
  *(v84 + 9) = v95;
  v85 = v84[22];
  if (v85 > v84[23])
  {
    goto LABEL_118;
  }

LABEL_107:
  v84[22] = v85;
  v87 = a1[2];
  v86 = a1[3];
  if (v87 < v86)
  {
LABEL_108:
    *v87 = v84;
    v88 = v87 + 8;
    goto LABEL_131;
  }

LABEL_119:
  v96 = a1[1];
  v97 = v87 - v96;
  v98 = (v87 - v96) >> 3;
  v99 = v98 + 1;
  if ((v98 + 1) >> 61)
  {
LABEL_132:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v100 = v86 - v96;
  if (v100 >> 2 > v99)
  {
    v99 = v100 >> 2;
  }

  if (v100 >= 0x7FFFFFFFFFFFFFF8)
  {
    v101 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v101 = v99;
  }

  if (v101)
  {
    if (!(v101 >> 61))
    {
      v102 = operator new(8 * v101);
      goto LABEL_129;
    }

LABEL_133:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v102 = 0;
LABEL_129:
  v103 = &v102[8 * v98];
  *v103 = v84;
  v88 = v103 + 8;
  memcpy(v102, v96, v97);
  a1[1] = v102;
  a1[2] = v88;
  a1[3] = &v102[8 * v101];
  if (v96)
  {
    operator delete(v96);
  }

LABEL_131:
  a1[2] = v88;
}

void mlir::arith::AddUIExtendedOp::getShapeForUnroll(mlir::arith::AddUIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v3 = 0;
  }

  v14 = v3;
  if (!v3)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  Value = mlir::ArrayAttr::getValue(&v14);
  v6 = v4;
  __src = v17;
  v16 = 0x400000000;
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v4, 8);
    v7 = v16;
    v8 = __src;
LABEL_9:
    memcpy(&v8[v7], Value, 8 * v6);
    v9 = v16;
    v10 = __src;
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = 0;
    v8 = v17;
    goto LABEL_9;
  }

  v9 = 0;
  v10 = v17;
LABEL_10:
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  v11 = (v9 + v6);
  LODWORD(v16) = v11;
  if (v11 && &__src != a2)
  {
    if (v10 == v17)
    {
      v13 = v11;
      if (v11 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v11, 8), v13 = v16, v10 = __src, v16))
      {
        memcpy(*a2, v10, 8 * v13);
        v10 = __src;
      }

      *(a2 + 8) = v11;
    }

    else
    {
      *a2 = v10;
      v12 = HIDWORD(v16);
      *(a2 + 8) = v11;
      *(a2 + 12) = v12;
      __src = v17;
      HIDWORD(v16) = 0;
      v10 = v17;
    }

    LODWORD(v16) = 0;
  }

  *(a2 + 48) = 1;
  if (v10 != v17)
  {
    free(v10);
  }
}

uint64_t mlir::arith::AddUIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 1);
  v8 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0) + 8);
  v76 = *(*(*a1 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v76);
  if (!DefiningOp)
  {
    goto LABEL_35;
  }

  v10 = DefiningOp;
  DWORD2(__p) = 1;
  *&__p = 0;
  p_p = &__p;
  v82 = 0;
  v92 = &v82;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v92, DefiningOp))
  {
    v11 = *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v13 || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v15 = mlir::detail::constant_int_value_binder::match(&p_p, v82);
      v16 = DWORD2(__p);
      if (v15)
      {
        if (DWORD2(__p) < 0x41)
        {
          v17 = __p == 0;
          goto LABEL_28;
        }

        if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
        {
          if (__p)
          {
            operator delete[](__p);
          }

          goto LABEL_35;
        }

        v17 = *__p == 0;
      }

      else
      {
        v17 = 0;
        if (DWORD2(__p) < 0x41)
        {
          goto LABEL_28;
        }
      }

LABEL_23:
      if (!__p)
      {
        goto LABEL_28;
      }

      operator delete[](__p);
      if (v17)
      {
        goto LABEL_29;
      }

LABEL_35:
      v24 = *(a2 + 40);
      v25 = *v24;
      if (*v24 && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_98;
      }

      v27 = v24 + 1;
      v26 = v24[1];
      if (v26 && *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v25 = v24[1];
        goto LABEL_98;
      }

      if (v25)
      {
        *&__p = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v24);
        *(&__p + 1) = v28;
        if (__p)
        {
          CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&__p);
          result = *v27;
          if (*v27)
          {
            goto LABEL_42;
          }

          goto LABEL_46;
        }
      }

      else
      {
        __p = 0uLL;
      }

      CallableForCallee = 0;
      result = *v27;
      if (*v27)
      {
LABEL_42:
        result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
        *&__p = result;
        *(&__p + 1) = v30;
        if (!result)
        {
          return result;
        }

        goto LABEL_47;
      }

LABEL_46:
      __p = result;
      if (!result)
      {
        return result;
      }

LABEL_47:
      v31 = mlir::CallOpInterface::getCallableForCallee(&__p);
      result = 0;
      if (!CallableForCallee || !v31 || v31 != CallableForCallee)
      {
        return result;
      }

      v89 = CallableForCallee;
      v32 = *v24;
      if (*v24 && *(*v32 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v25 = *v24;
        goto LABEL_98;
      }

      v33 = *v27;
      if (*v27)
      {
        v34 = *(*v33 + 136);
        if (v34 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v25 = *v27;
        }

        else
        {
          v25 = 0;
        }

        if (!v32 || v34 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          goto LABEL_98;
        }

        if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v32 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          p_p = *v24;
          v76 = v33;
          Value = mlir::AffineMapAttr::getValue(&p_p);
          if (Value == mlir::AffineMapAttr::getValue(&v76))
          {
            mlir::IntegerAttr::getValue(&p_p, &v82);
            mlir::IntegerAttr::getValue(&v76, &v92);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&__p, &v82, &v92);
            if (v93 >= 0x41 && v92)
            {
              operator delete[](v92);
            }

            if (v83 >= 0x41 && v82)
            {
              operator delete[](v82);
            }

            if (v91 == 1)
            {
              v25 = mlir::IntegerAttr::get(v89, &__p);
              if ((v91 & 1) == 0)
              {
                goto LABEL_98;
              }

LABEL_69:
              if (DWORD2(__p) >= 0x41 && __p)
              {
                operator delete[](__p);
              }

              goto LABEL_98;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v24))
          {
            v36 = v32;
          }

          else
          {
            v36 = 0;
          }

          *&__p = v36;
          if (v36 && mlir::DenseElementsAttr::isSplat(&__p) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v24 + 1))
          {
            v37 = v24[1];
            p_p = *v24;
            v76 = v37;
            v38 = mlir::ArrayAttr::getValue(&p_p);
            if (v38 == mlir::ArrayAttr::getValue(&v76))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&p_p, &v82);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v76, &v92);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&__p, &v82, &v92);
              if (v93 >= 0x41 && v92)
              {
                operator delete[](v92);
              }

              if (v83 >= 0x41 && v82)
              {
                operator delete[](v82);
              }

              if (v91 == 1)
              {
                v39 = llvm::cast<mlir::ShapedType,mlir::Type>(&v89);
                v25 = mlir::DenseElementsAttr::get(v39, v40, &__p, 1);
                if ((v91 & 1) == 0)
                {
                  goto LABEL_98;
                }

                goto LABEL_69;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v24) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v24 + 1))
          {
            v87 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v24);
            v88 = v41;
            v86[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v24 + 1);
            v86[1] = v42;
            Type = mlir::ElementsAttr::getType(&v87);
            if (Type == mlir::ElementsAttr::getType(v86))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v87, &v82);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v86, &v92);
              if (v85 == 1 && v95 == 1)
              {
                LOWORD(p_p) = v82;
                if (v82 == 1)
                {
                  v80 = v83;
                }

                else
                {
                  (*(*v83 + 16))(&v80);
                }

                v81 = v84;
                LOWORD(v76) = v92;
                if (v92 == 1)
                {
                  v77 = v93;
                }

                else
                {
                  (*(*v93 + 16))(&v77);
                }

                v78 = v94;
                *&__p = &v91;
                *(&__p + 1) = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v87, v88);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&__p, NumElements);
                v57 = mlir::ElementsAttr::getNumElements(v87, v88);
                if (v57)
                {
                  v58 = v57;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&p_p, &v71);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v76, &v69);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v71, &v69);
                    if (v70 >= 0x41 && v69)
                    {
                      operator delete[](v69);
                    }

                    if (v72 >= 0x41 && v71)
                    {
                      operator delete[](v71);
                    }

                    if (v75 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&__p, &v73);
                    if ((v75 & 1) != 0 && v74 >= 0x41 && v73)
                    {
                      operator delete[](v73);
                    }

                    ++v81;
                    ++v78;
                    if (!--v58)
                    {
                      goto LABEL_136;
                    }
                  }

                  v25 = 0;
                }

                else
                {
LABEL_136:
                  v59 = llvm::cast<mlir::ShapedType,mlir::Type>(&v89);
                  v25 = mlir::DenseElementsAttr::get(v59, v60, __p, DWORD2(__p));
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&__p);
                if ((v76 & 1) == 0)
                {
                  v61 = v77;
                  v77 = 0;
                  if (v61)
                  {
                    (*(*v61 + 8))(v61);
                  }
                }

                if ((p_p & 1) == 0)
                {
                  v62 = v80;
                  v80 = 0;
                  if (v62)
                  {
                    (*(*v62 + 8))(v62);
                  }
                }
              }

              else
              {
                v25 = 0;
              }

              if (v95 == 1 && (v92 & 1) == 0)
              {
                v54 = v93;
                v93 = 0;
                if (v54)
                {
                  (*(*v54 + 8))(v54);
                }
              }

              if (v85 == 1 && (v82 & 1) == 0)
              {
                v55 = v83;
                v83 = 0;
                if (v55)
                {
                  (*(*v55 + 8))(v55);
                }
              }

LABEL_98:
              if (!v25)
              {
                return 0;
              }

              v92 = v25;
              v93 = **(a2 + 40);
              v44 = *v25;
              {
                v45 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
                v46 = *(v44 + 8);
                v47 = *(v44 + 16);
                if (!v47)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                mlir::arith::AddUIExtendedOp::fold();
                v45 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
                v46 = *(v44 + 8);
                v47 = *(v44 + 16);
                if (!v47)
                {
                  goto LABEL_147;
                }
              }

              v48 = v46;
              v49 = v47;
              do
              {
                v50 = v49 >> 1;
                v51 = &v48[2 * (v49 >> 1)];
                v53 = *v51;
                v52 = v51 + 2;
                v49 += ~(v49 >> 1);
                if (v53 < v45)
                {
                  v48 = v52;
                }

                else
                {
                  v49 = v50;
                }
              }

              while (v49);
              if (v48 != &v46[2 * v47] && *v48 == v45)
              {
                v63 = v48[1];
LABEL_149:
                p_p = v25;
                v80 = v63;
                v76 = mlir::CallOpInterface::getCallableForCallee(&p_p);
                Context = mlir::Attribute::getContext(&v76);
                v65 = mlir::IntegerType::get(Context, 1, 0);
                v82 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v76);
                v83 = v66;
                if (v82)
                {
                  LOBYTE(__p) = 0;
                  v91 = 0;
                  v67 = mlir::ShapedType::cloneWith(&v82, &__p, v65);
                }

                else
                {
                  if (*(*v76 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
                  {
LABEL_153:
                    *&__p = calculateUnsignedOverflow;
                    result = mlir::constFoldBinaryOpConditional<mlir::IntegerAttr,llvm::APInt,void,mlir::Attribute mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,void,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&)>(llvm::ArrayRef<mlir::Attribute>,mlir::Type,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&) &&)::{lambda(llvm::APInt,llvm::APInt)#1}>(&v92, 2, v65, &__p);
                    if (!result)
                    {
                      return result;
                    }

                    v19 = v25 & 0xFFFFFFFFFFFFFFFBLL;
                    v20 = *(a3 + 8);
                    if (v20 < *(a3 + 12))
                    {
                      goto LABEL_30;
                    }

                    goto LABEL_155;
                  }

                  v67 = mlir::UnrankedTensorType::get(v65);
                }

                v65 = v67;
                goto LABEL_153;
              }

LABEL_147:
              v63 = 0;
              goto LABEL_149;
            }
          }
        }
      }

      v25 = 0;
      goto LABEL_98;
    }
  }

  v17 = 0;
  if (DWORD2(__p) >= 0x41)
  {
    goto LABEL_23;
  }

LABEL_28:
  if (!v17)
  {
    goto LABEL_35;
  }

LABEL_29:
  *&__p = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::Builder::getZeroAttr(&__p, (v8 & 0xFFFFFFFFFFFFFFF8));
  v19 = *(*(*a1 + 72) + 24) | 4;
  v20 = *(a3 + 8);
  if (v20 >= *(a3 + 12))
  {
LABEL_155:
    v68 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v20 + 1, 8);
    result = v68;
    LODWORD(v20) = *(a3 + 8);
  }

LABEL_30:
  *(*a3 + 8 * v20) = v19;
  v21 = *(a3 + 12);
  v22 = (*(a3 + 8) + 1);
  *(a3 + 8) = v22;
  v23 = result & 0xFFFFFFFFFFFFFFFBLL;
  if (v22 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v22 + 1, 8);
    LODWORD(v22) = *(a3 + 8);
  }

  *(*a3 + 8 * v22) = v23;
  ++*(a3 + 8);
  return 1;
}

uint64_t getI1SameShape(void *a1)
{
  v8 = a1;
  Context = mlir::Attribute::getContext(&v8);
  v2 = mlir::IntegerType::get(Context, 1, 0);
  v7[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
  v7[1] = v3;
  if (v7[0])
  {
    LOBYTE(v5) = 0;
    v6 = 0;
    return mlir::ShapedType::cloneWith(v7, &v5, v2);
  }

  else
  {
    result = v2;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return mlir::UnrankedTensorType::get(v2);
    }
  }

  return result;
}

uint64_t calculateUnsignedOverflow@<X0>(const llvm::APInt *a1@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::APInt::compare(a1, a2);
  *(a3 + 8) = 1;
  *a3 = result >> 31;
  return result;
}

void mlir::arith::AddUIExtendedOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  v25 = "arith.addi";
  v26 = 10;
  mlir::Pattern::Pattern((v4 + 2), "arith.addui_extended", 20, v24, a2, &v25, 1uLL);
  *v4 = &unk_1F5AEE048;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v25 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AddUIExtendedToAddI]";
  v26 = 92;
  v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
  if (v26 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v26;
  }

  v11 = &v25[v10];
  v12 = v26 - v10;
  if (v26 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v26 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

uint64_t mlir::arith::SubIOp::fold(uint64_t *a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
  }

  v6 = *(*(a2 + 48) + 8);
  if (v6)
  {
    LODWORD(v77) = 1;
    Context = 0;
    p_Context = &Context;
    v7 = mlir::detail::constant_int_value_binder::match(&p_Context, v6);
    v8 = v77;
    if (v7)
    {
      if (v77 < 0x41)
      {
        v9 = Context == 0;
LABEL_11:
        v13 = *a1;
        if (v9)
        {
          v14 = *(*(v13 + 72) + 24);
          return v14 | 4;
        }

        v4 = *(*(v13 + 72) + 24);
        goto LABEL_15;
      }

      if (v8 - llvm::APInt::countLeadingZerosSlowCase(&Context) >= 0x41)
      {
        v9 = 0;
        v12 = Context;
        if (!Context)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v9 = *Context == 0;
    }

    else
    {
      v9 = 0;
      if (v77 < 0x41)
      {
        goto LABEL_11;
      }
    }

    v12 = Context;
    if (!Context)
    {
      goto LABEL_11;
    }

LABEL_10:
    operator delete[](v12);
    goto LABEL_11;
  }

LABEL_15:
  Context = v4;
  DefiningOp = mlir::Value::getDefiningOp(&Context);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    goto LABEL_17;
  }

  v22 = *(*(*a1 + 72) + 56);
  v23 = *(DefiningOp + 72);
  v14 = *(v23 + 56);
  v24 = *(v23 + 24);
  if (v22 != v14)
  {
    if (v22 == v24)
    {
      return v14 | 4;
    }

LABEL_17:
    v16 = *(a2 + 48);
    ZeroAttr = *v16;
    if (*v16 && *(*ZeroAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    v18 = v16 + 1;
    v17 = v16[1];
    if (v17 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      ZeroAttr = v16[1];
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (ZeroAttr)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      v77 = v19;
      if (Context)
      {
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&Context);
        ZeroAttr = *v18;
        if (*v18)
        {
          goto LABEL_24;
        }

LABEL_33:
        Context = ZeroAttr;
        v77 = 0;
        if (ZeroAttr)
        {
          goto LABEL_34;
        }

        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      Context = 0;
      v77 = 0;
    }

    CallableForCallee = 0;
    ZeroAttr = *v18;
    if (*v18)
    {
LABEL_24:
      ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      Context = ZeroAttr;
      v77 = v21;
      if (!ZeroAttr)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_34:
      v25 = mlir::CallOpInterface::getCallableForCallee(&Context);
      ZeroAttr = 0;
      if (!CallableForCallee || !v25 || v25 != CallableForCallee)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v75 = CallableForCallee;
      v26 = *v16;
      if (*v16 && *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        ZeroAttr = *v16;
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v27 = *v18;
      if (*v18)
      {
        v28 = *(*v27 + 136);
        if (v28 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          ZeroAttr = *v18;
        }

        else
        {
          ZeroAttr = 0;
        }

        if (!v26 || v28 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v28 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v61 = *v16;
          v58 = v27;
          Value = mlir::AffineMapAttr::getValue(&v61);
          if (Value == mlir::AffineMapAttr::getValue(&v58))
          {
            mlir::IntegerAttr::getValue(&v61, &p_Context);
            mlir::IntegerAttr::getValue(&v58, &__p);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &p_Context, &__p);
            if (v65 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v69 >= 0x41 && p_Context)
            {
              operator delete[](p_Context);
            }

            if (v78 == 1)
            {
              ZeroAttr = mlir::IntegerAttr::get(v75, &Context);
              if ((v78 & 1) == 0 || v77 < 0x41 || !Context)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v30 = ZeroAttr;
              v31 = Context;
LABEL_59:
              operator delete[](v31);
LABEL_60:
              ZeroAttr = v30;
              return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v16))
          {
            v32 = v26;
          }

          else
          {
            v32 = 0;
          }

          Context = v32;
          if (v32 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v16 + 1))
          {
            v33 = v16[1];
            v61 = *v16;
            v58 = v33;
            v34 = mlir::ArrayAttr::getValue(&v61);
            if (v34 == mlir::ArrayAttr::getValue(&v58))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v61, &p_Context);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v58, &__p);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &p_Context, &__p);
              if (v65 >= 0x41 && __p)
              {
                operator delete[](__p);
              }

              if (v69 >= 0x41 && p_Context)
              {
                operator delete[](p_Context);
              }

              if (v78 == 1)
              {
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v75);
                ZeroAttr = mlir::DenseElementsAttr::get(v35, v36, &Context, 1);
                if ((v78 & 1) == 0 || v77 < 0x41)
                {
                  return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
                }

                v30 = ZeroAttr;
                v31 = Context;
                if (!Context)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16 + 1))
          {
            v73 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16);
            v74 = v37;
            v72[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16 + 1);
            v72[1] = v38;
            Type = mlir::ElementsAttr::getType(&v73);
            if (Type == mlir::ElementsAttr::getType(v72))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v73, &p_Context);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v72, &__p);
              if (v71 == 1 && v67 == 1)
              {
                LOWORD(v61) = p_Context;
                if (p_Context == 1)
                {
                  v62 = v69;
                }

                else
                {
                  (*(*v69 + 16))(&v62);
                }

                v63 = v70;
                LOWORD(v58) = __p;
                if (__p == 1)
                {
                  v59 = v65;
                }

                else
                {
                  (*(*v65 + 16))(&v59);
                }

                v60 = v66;
                Context = &v78;
                v77 = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v73, v74);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
                v41 = mlir::ElementsAttr::getNumElements(v73, v74);
                if (v41)
                {
                  v42 = v41;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v61, &v53);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v58, &v51);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v55, &v53, &v51);
                    if (v52 >= 0x41 && v51)
                    {
                      operator delete[](v51);
                    }

                    if (v54 >= 0x41 && v53)
                    {
                      operator delete[](v53);
                    }

                    if (v57 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v55);
                    if ((v57 & 1) != 0 && v56 >= 0x41 && v55)
                    {
                      operator delete[](v55);
                    }

                    ++v63;
                    ++v60;
                    if (!--v42)
                    {
                      goto LABEL_111;
                    }
                  }

                  v45 = 0;
                }

                else
                {
LABEL_111:
                  v43 = llvm::cast<mlir::ShapedType,mlir::Type>(&v75);
                  v45 = mlir::DenseElementsAttr::get(v43, v44, Context, v77);
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
                if ((v58 & 1) == 0)
                {
                  v46 = v59;
                  v59 = 0;
                  if (v46)
                  {
                    (*(*v46 + 8))(v46);
                  }
                }

                if ((v61 & 1) == 0)
                {
                  v47 = v62;
                  v62 = 0;
                  if (v47)
                  {
                    (*(*v47 + 8))(v47);
                  }
                }

                ZeroAttr = v45;
              }

              else
              {
                ZeroAttr = 0;
              }

              if (v67 == 1 && (__p & 1) == 0)
              {
                v48 = v65;
                v65 = 0;
                if (v48)
                {
                  v49 = ZeroAttr;
                  (*(*v48 + 8))(v48);
                  ZeroAttr = v49;
                }
              }

              if (v71 != 1)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              if (p_Context)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v50 = v69;
              v69 = 0;
              if (!v50)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v30 = ZeroAttr;
              (*(*v50 + 8))(v50);
              goto LABEL_60;
            }
          }
        }
      }

      ZeroAttr = 0;
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_33;
  }

  return v24 | 4;
}

void mlir::arith::SubIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v147 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v144, 2);
  v145 = xmmword_1E86D27E0;
  v146 = *&off_1E86D27F0;
  mlir::Pattern::Pattern((v4 + 2), "arith.subi", 10, v144, a2, &v145, 2uLL);
  *v4 = &unk_1F5AEE0A0;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *&v145 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SubIRHSAddConstant]";
  *(&v145 + 1) = 91;
  v9 = llvm::StringRef::find(&v145, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v145 + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v145 + 1);
  }

  v11 = v145 + v10;
  v12 = *(&v145 + 1) - v10;
  if (*(&v145 + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v145 + 1) - v10;
  }

  v14 = v11 + v13;
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_184;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_185;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v144, 2);
  v145 = xmmword_1E86D2800;
  v146 = *&off_1E86D2810;
  mlir::Pattern::Pattern((v24 + 2), "arith.subi", 10, v144, a2, &v145, 2uLL);
  *v24 = &unk_1F5AEE0F8;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *&v145 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SubILHSAddConstant]";
  *(&v145 + 1) = 91;
  v29 = llvm::StringRef::find(&v145, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v145 + 1) >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v145 + 1);
  }

  v31 = v145 + v30;
  v32 = *(&v145 + 1) - v30;
  if (*(&v145 + 1) - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = *(&v145 + 1) - v30;
  }

  v34 = v31 + v33;
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
    goto LABEL_184;
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (v41 >> 61)
    {
      goto LABEL_185;
    }

    v42 = operator new(8 * v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
  v44 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v144, 2);
  v145 = xmmword_1E86D2800;
  v146 = *&off_1E86D2810;
  mlir::Pattern::Pattern((v44 + 2), "arith.subi", 10, v144, a2, &v145, 2uLL);
  *v44 = &unk_1F5AEE150;
  if (*(v44 + 9))
  {
    v45 = v44[22];
    if (v45 <= v44[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v44 + 20), (v44 + 24), v45, 16);
    v44[22] = v44[22];
    v47 = a1[2];
    v46 = a1[3];
    if (v47 < v46)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  *&v145 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SubIRHSSubConstantRHS]";
  *(&v145 + 1) = 94;
  v49 = llvm::StringRef::find(&v145, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v145 + 1) >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = *(&v145 + 1);
  }

  v51 = v145 + v50;
  v52 = *(&v145 + 1) - v50;
  if (*(&v145 + 1) - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = *(&v145 + 1) - v50;
  }

  v54 = v51 + v53;
  v55 = v52 - v53;
  if (v55 >= v55 - 1)
  {
    --v55;
  }

  *(v44 + 8) = v54;
  *(v44 + 9) = v55;
  v45 = v44[22];
  if (v45 > v44[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v44[22] = v45;
  v47 = a1[2];
  v46 = a1[3];
  if (v47 < v46)
  {
LABEL_56:
    *v47 = v44;
    v48 = v47 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v56 = a1[1];
  v57 = v47 - v56;
  v58 = (v47 - v56) >> 3;
  v59 = v58 + 1;
  if ((v58 + 1) >> 61)
  {
    goto LABEL_184;
  }

  v60 = v46 - v56;
  if (v60 >> 2 > v59)
  {
    v59 = v60 >> 2;
  }

  if (v60 >= 0x7FFFFFFFFFFFFFF8)
  {
    v61 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v61 = v59;
  }

  if (v61)
  {
    if (v61 >> 61)
    {
      goto LABEL_185;
    }

    v62 = operator new(8 * v61);
  }

  else
  {
    v62 = 0;
  }

  v63 = &v62[8 * v58];
  *v63 = v44;
  v48 = v63 + 8;
  memcpy(v62, v56, v57);
  a1[1] = v62;
  a1[2] = v48;
  a1[3] = &v62[8 * v61];
  if (v56)
  {
    operator delete(v56);
  }

LABEL_79:
  a1[2] = v48;
  v64 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v144, 2);
  v145 = xmmword_1E86D2800;
  v146 = *&off_1E86D2810;
  mlir::Pattern::Pattern((v64 + 2), "arith.subi", 10, v144, a2, &v145, 2uLL);
  *v64 = &unk_1F5AEE1A8;
  if (*(v64 + 9))
  {
    v65 = v64[22];
    if (v65 <= v64[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v64 + 20), (v64 + 24), v65, 16);
    v64[22] = v64[22];
    v67 = a1[2];
    v66 = a1[3];
    if (v67 < v66)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  *&v145 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SubIRHSSubConstantLHS]";
  *(&v145 + 1) = 94;
  v69 = llvm::StringRef::find(&v145, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v145 + 1) >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = *(&v145 + 1);
  }

  v71 = v145 + v70;
  v72 = *(&v145 + 1) - v70;
  if (*(&v145 + 1) - v70 >= 0x12)
  {
    v73 = 18;
  }

  else
  {
    v73 = *(&v145 + 1) - v70;
  }

  v74 = v71 + v73;
  v75 = v72 - v73;
  if (v75 >= v75 - 1)
  {
    --v75;
  }

  *(v64 + 8) = v74;
  *(v64 + 9) = v75;
  v65 = v64[22];
  if (v65 > v64[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v64[22] = v65;
  v67 = a1[2];
  v66 = a1[3];
  if (v67 < v66)
  {
LABEL_82:
    *v67 = v64;
    v68 = v67 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v76 = a1[1];
  v77 = v67 - v76;
  v78 = (v67 - v76) >> 3;
  v79 = v78 + 1;
  if ((v78 + 1) >> 61)
  {
    goto LABEL_184;
  }

  v80 = v66 - v76;
  if (v80 >> 2 > v79)
  {
    v79 = v80 >> 2;
  }

  if (v80 >= 0x7FFFFFFFFFFFFFF8)
  {
    v81 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v81 = v79;
  }

  if (v81)
  {
    if (v81 >> 61)
    {
      goto LABEL_185;
    }

    v82 = operator new(8 * v81);
  }

  else
  {
    v82 = 0;
  }

  v83 = &v82[8 * v78];
  *v83 = v64;
  v68 = v83 + 8;
  memcpy(v82, v76, v77);
  a1[1] = v82;
  a1[2] = v68;
  a1[3] = &v82[8 * v81];
  if (v76)
  {
    operator delete(v76);
  }

LABEL_105:
  a1[2] = v68;
  v84 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v144, 2);
  v145 = xmmword_1E86D2800;
  v146 = *&off_1E86D2810;
  mlir::Pattern::Pattern((v84 + 2), "arith.subi", 10, v144, a2, &v145, 2uLL);
  *v84 = &unk_1F5AEE200;
  if (*(v84 + 9))
  {
    v85 = v84[22];
    if (v85 <= v84[23])
    {
      goto LABEL_107;
    }

LABEL_118:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v84 + 20), (v84 + 24), v85, 16);
    v84[22] = v84[22];
    v87 = a1[2];
    v86 = a1[3];
    if (v87 < v86)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

  *&v145 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SubILHSSubConstantRHS]";
  *(&v145 + 1) = 94;
  v89 = llvm::StringRef::find(&v145, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v145 + 1) >= v89)
  {
    v90 = v89;
  }

  else
  {
    v90 = *(&v145 + 1);
  }

  v91 = v145 + v90;
  v92 = *(&v145 + 1) - v90;
  if (*(&v145 + 1) - v90 >= 0x12)
  {
    v93 = 18;
  }

  else
  {
    v93 = *(&v145 + 1) - v90;
  }

  v94 = v91 + v93;
  v95 = v92 - v93;
  if (v95 >= v95 - 1)
  {
    --v95;
  }

  *(v84 + 8) = v94;
  *(v84 + 9) = v95;
  v85 = v84[22];
  if (v85 > v84[23])
  {
    goto LABEL_118;
  }

LABEL_107:
  v84[22] = v85;
  v87 = a1[2];
  v86 = a1[3];
  if (v87 < v86)
  {
LABEL_108:
    *v87 = v84;
    v88 = v87 + 8;
    goto LABEL_131;
  }

LABEL_119:
  v96 = a1[1];
  v97 = v87 - v96;
  v98 = (v87 - v96) >> 3;
  v99 = v98 + 1;
  if ((v98 + 1) >> 61)
  {
    goto LABEL_184;
  }

  v100 = v86 - v96;
  if (v100 >> 2 > v99)
  {
    v99 = v100 >> 2;
  }

  if (v100 >= 0x7FFFFFFFFFFFFFF8)
  {
    v101 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v101 = v99;
  }

  if (v101)
  {
    if (v101 >> 61)
    {
      goto LABEL_185;
    }

    v102 = operator new(8 * v101);
  }

  else
  {
    v102 = 0;
  }

  v103 = &v102[8 * v98];
  *v103 = v84;
  v88 = v103 + 8;
  memcpy(v102, v96, v97);
  a1[1] = v102;
  a1[2] = v88;
  a1[3] = &v102[8 * v101];
  if (v96)
  {
    operator delete(v96);
  }

LABEL_131:
  a1[2] = v88;
  v104 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v144, 2);
  v145 = xmmword_1E86D27E0;
  v146 = *&off_1E86D27F0;
  mlir::Pattern::Pattern((v104 + 2), "arith.subi", 10, v144, a2, &v145, 2uLL);
  *v104 = &unk_1F5AEE258;
  if (*(v104 + 9))
  {
    v105 = v104[22];
    if (v105 <= v104[23])
    {
      goto LABEL_133;
    }

LABEL_144:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v104 + 20), (v104 + 24), v105, 16);
    v104[22] = v104[22];
    v107 = a1[2];
    v106 = a1[3];
    if (v107 < v106)
    {
      goto LABEL_134;
    }

    goto LABEL_145;
  }

  *&v145 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SubILHSSubConstantLHS]";
  *(&v145 + 1) = 94;
  v109 = llvm::StringRef::find(&v145, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v145 + 1) >= v109)
  {
    v110 = v109;
  }

  else
  {
    v110 = *(&v145 + 1);
  }

  v111 = v145 + v110;
  v112 = *(&v145 + 1) - v110;
  if (*(&v145 + 1) - v110 >= 0x12)
  {
    v113 = 18;
  }

  else
  {
    v113 = *(&v145 + 1) - v110;
  }

  v114 = v111 + v113;
  v115 = v112 - v113;
  if (v115 >= v115 - 1)
  {
    --v115;
  }

  *(v104 + 8) = v114;
  *(v104 + 9) = v115;
  v105 = v104[22];
  if (v105 > v104[23])
  {
    goto LABEL_144;
  }

LABEL_133:
  v104[22] = v105;
  v107 = a1[2];
  v106 = a1[3];
  if (v107 < v106)
  {
LABEL_134:
    *v107 = v104;
    v108 = v107 + 8;
    goto LABEL_157;
  }

LABEL_145:
  v116 = a1[1];
  v117 = v107 - v116;
  v118 = (v107 - v116) >> 3;
  v119 = v118 + 1;
  if ((v118 + 1) >> 61)
  {
    goto LABEL_184;
  }

  v120 = v106 - v116;
  if (v120 >> 2 > v119)
  {
    v119 = v120 >> 2;
  }

  if (v120 >= 0x7FFFFFFFFFFFFFF8)
  {
    v121 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v121 = v119;
  }

  if (v121)
  {
    if (v121 >> 61)
    {
      goto LABEL_185;
    }

    v122 = operator new(8 * v121);
  }

  else
  {
    v122 = 0;
  }

  v123 = &v122[8 * v118];
  *v123 = v104;
  v108 = v123 + 8;
  memcpy(v122, v116, v117);
  a1[1] = v122;
  a1[2] = v108;
  a1[3] = &v122[8 * v121];
  if (v116)
  {
    operator delete(v116);
  }

LABEL_157:
  a1[2] = v108;
  v124 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v144, 2);
  v145 = xmmword_1E86D2800;
  v146 = *&off_1E86D2810;
  mlir::Pattern::Pattern((v124 + 2), "arith.subi", 10, v144, a2, &v145, 2uLL);
  *v124 = &unk_1F5AEE2B0;
  if (*(v124 + 9))
  {
    v125 = v124[22];
    if (v125 <= v124[23])
    {
      goto LABEL_159;
    }

LABEL_170:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v124 + 20), (v124 + 24), v125, 16);
    v124[22] = v124[22];
    v127 = a1[2];
    v126 = a1[3];
    if (v127 < v126)
    {
      goto LABEL_160;
    }

    goto LABEL_171;
  }

  *&v145 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SubISubILHSRHSLHS]";
  *(&v145 + 1) = 90;
  v129 = llvm::StringRef::find(&v145, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v145 + 1) >= v129)
  {
    v130 = v129;
  }

  else
  {
    v130 = *(&v145 + 1);
  }

  v131 = v145 + v130;
  v132 = *(&v145 + 1) - v130;
  if (*(&v145 + 1) - v130 >= 0x12)
  {
    v133 = 18;
  }

  else
  {
    v133 = *(&v145 + 1) - v130;
  }

  v134 = v131 + v133;
  v135 = v132 - v133;
  if (v135 >= v135 - 1)
  {
    --v135;
  }

  *(v124 + 8) = v134;
  *(v124 + 9) = v135;
  v125 = v124[22];
  if (v125 > v124[23])
  {
    goto LABEL_170;
  }

LABEL_159:
  v124[22] = v125;
  v127 = a1[2];
  v126 = a1[3];
  if (v127 < v126)
  {
LABEL_160:
    *v127 = v124;
    v128 = v127 + 8;
    goto LABEL_183;
  }

LABEL_171:
  v136 = a1[1];
  v137 = v127 - v136;
  v138 = (v127 - v136) >> 3;
  v139 = v138 + 1;
  if ((v138 + 1) >> 61)
  {
LABEL_184:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v140 = v126 - v136;
  if (v140 >> 2 > v139)
  {
    v139 = v140 >> 2;
  }

  if (v140 >= 0x7FFFFFFFFFFFFFF8)
  {
    v141 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v141 = v139;
  }

  if (v141)
  {
    if (!(v141 >> 61))
    {
      v142 = operator new(8 * v141);
      goto LABEL_181;
    }

LABEL_185:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v142 = 0;
LABEL_181:
  v143 = &v142[8 * v138];
  *v143 = v124;
  v128 = v143 + 8;
  memcpy(v142, v136, v137);
  a1[1] = v142;
  a1[2] = v128;
  a1[3] = &v142[8 * v141];
  if (v136)
  {
    operator delete(v136);
  }

LABEL_183:
  a1[2] = v128;
}

uint64_t mlir::arith::MulIOp::fold(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v74) = 1;
  v73 = 0;
  v63 = &v73;
  v6 = mlir::detail::constant_int_value_binder::match(&v63, v4);
  v7 = v74;
  if (v6)
  {
    if (v74 < 0x41)
    {
      v8 = v73 == 0;
      goto LABEL_11;
    }

    if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v73) > 0x40)
    {
      if (v73)
      {
        operator delete[](v73);
      }

      goto LABEL_15;
    }

    v8 = *v73 == 0;
  }

  else
  {
    v8 = 0;
    if (v74 < 0x41)
    {
      goto LABEL_11;
    }
  }

  if (!v73)
  {
LABEL_11:
    if (v8)
    {
      return *(*(*a1 + 72) + 56) | 4;
    }

    goto LABEL_15;
  }

  operator delete[](v73);
  if (v8)
  {
    return *(*(*a1 + 72) + 56) | 4;
  }

LABEL_15:
  v3 = *(a2 + 48);
  v10 = v3[1];
  if (v10)
  {
    LODWORD(v74) = 1;
    v73 = 0;
    v63 = &v73;
    v11 = mlir::detail::constant_int_value_binder::match(&v63, v10);
    v12 = v74;
    if (v11)
    {
      if (v74 < 0x41)
      {
        v13 = v73 == 1;
        goto LABEL_22;
      }

      if (v12 - llvm::APInt::countLeadingZerosSlowCase(&v73) > 0x40)
      {
        if (v73)
        {
          operator delete[](v73);
        }

LABEL_28:
        v3 = *(a2 + 48);
        goto LABEL_29;
      }

      v13 = *v73 == 1;
    }

    else
    {
      v13 = 0;
      if (v74 < 0x41)
      {
        goto LABEL_22;
      }
    }

    if (v73)
    {
      operator delete[](v73);
    }

LABEL_22:
    if (v13)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_28;
  }

LABEL_29:
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v16 = v3 + 1;
  v15 = v3[1];
  if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v14 = v3[1];
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v14)
  {
    v73 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    v74 = v17;
    if (v73)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v73);
      v14 = *v16;
      if (*v16)
      {
        goto LABEL_36;
      }

LABEL_40:
      v73 = v14;
      v74 = 0;
      if (!v14)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  CallableForCallee = 0;
  v14 = *v16;
  if (!*v16)
  {
    goto LABEL_40;
  }

LABEL_36:
  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
  v73 = v14;
  v74 = v19;
  if (!v14)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_41:
  v20 = mlir::CallOpInterface::getCallableForCallee(&v73);
  v14 = 0;
  if (!CallableForCallee || !v20 || v20 != CallableForCallee)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v70 = CallableForCallee;
  v21 = *v3;
  if (!*v3 || *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v22 = *v16;
    if (*v16)
    {
      v23 = *(*v22 + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = *v16;
      }

      else
      {
        v14 = 0;
      }

      if (!v21 || v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v53 = *v3;
        v50 = v22;
        Value = mlir::AffineMapAttr::getValue(&v53);
        if (Value == mlir::AffineMapAttr::getValue(&v50))
        {
          mlir::IntegerAttr::getValue(&v53, &v59);
          mlir::IntegerAttr::getValue(&v50, &__p);
          llvm::APInt::operator*(&v59, &__p, &v63);
          LODWORD(v74) = v64;
          v73 = v63;
          v75 = 1;
          if (v57 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v60 >= 0x41 && v59)
          {
            operator delete[](v59);
          }

          v14 = mlir::IntegerAttr::get(v70, &v73);
          goto LABEL_80;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v25 = v21;
        }

        else
        {
          v25 = 0;
        }

        v73 = v25;
        if (v25 && mlir::DenseElementsAttr::isSplat(&v73) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v26 = v3[1];
          v53 = *v3;
          v50 = v26;
          v27 = mlir::ArrayAttr::getValue(&v53);
          if (v27 == mlir::ArrayAttr::getValue(&v50))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v59);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &__p);
            llvm::APInt::operator*(&v59, &__p, &v63);
            LODWORD(v74) = v64;
            v73 = v63;
            v75 = 1;
            if (v57 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v60 >= 0x41 && v59)
            {
              operator delete[](v59);
            }

            v28 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
            v14 = mlir::DenseElementsAttr::get(v28, v29, &v73, 1);
LABEL_80:
            if ((v75 & 1) == 0 || v74 < 0x41 || !v73)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v14;
            operator delete[](v73);
            goto LABEL_84;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v68 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v69 = v32;
          v67[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v67[1] = v33;
          Type = mlir::ElementsAttr::getType(&v68);
          if (Type == mlir::ElementsAttr::getType(v67))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v68, &v63);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(v67, &v59);
            if (v66 == 1 && v62 == 1)
            {
              LOWORD(__p) = v63;
              if (v63 == 1)
              {
                v57 = v64;
              }

              else
              {
                (*(*v64 + 16))(&v57);
              }

              v58 = v65;
              LOWORD(v53) = v59;
              if (v59 == 1)
              {
                v54 = v60;
              }

              else
              {
                (*(*v60 + 16))(&v54);
              }

              v55 = v61;
              v73 = &v75;
              v74 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v68, v69);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v73, NumElements);
              v39 = mlir::ElementsAttr::getNumElements(v68, v69);
              if (v39)
              {
                v40 = v39;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&__p, &v48);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v46);
                  llvm::APInt::operator*(&v48, &v46, &v71);
                  v51 = v72;
                  v50 = v71;
                  v52 = 1;
                  if (v47 >= 0x41 && v46)
                  {
                    operator delete[](v46);
                  }

                  if (v49 >= 0x41 && v48)
                  {
                    operator delete[](v48);
                  }

                  if (v52 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v73, &v50);
                  if ((v52 & 1) != 0 && v51 >= 0x41 && v50)
                  {
                    operator delete[](v50);
                  }

                  ++v58;
                  ++v55;
                  if (!--v40)
                  {
                    goto LABEL_121;
                  }
                }

                v43 = 0;
              }

              else
              {
LABEL_121:
                v41 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
                v43 = mlir::DenseElementsAttr::get(v41, v42, v73, v74);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v73);
              if ((v53 & 1) == 0)
              {
                v44 = v54;
                v54 = 0;
                if (v44)
                {
                  (*(*v44 + 8))(v44);
                }
              }

              v14 = v43;
              if ((__p & 1) == 0)
              {
                v45 = v57;
                v57 = 0;
                if (v45)
                {
                  (*(*v45 + 8))(v45);
                  v14 = v43;
                }
              }
            }

            else
            {
              v14 = 0;
            }

            if (v62 == 1 && (v59 & 1) == 0)
            {
              v35 = v60;
              v60 = 0;
              if (v35)
              {
                v36 = v14;
                (*(*v35 + 8))(v35);
                v14 = v36;
              }
            }

            if (v66 != 1)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v63)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v37 = v64;
            v64 = 0;
            if (!v37)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v14;
            (*(*v37 + 8))(v37);
LABEL_84:
            v14 = v31;
            return v14 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    v14 = 0;
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v14 = *v3;
  return v14 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::MulIOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *, void *), uint64_t a3)
{
  v39[4] = *MEMORY[0x1E69E9840];
  if (*(*(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    if ((v6 = *(*a1 + 72), v7 = *(v6 + 24), v27 = *(v6 + 56), v35 = 0, v36 = &v35, v37 = v7, (DefiningOp = mlir::Value::getDefiningOp(&v37)) != 0) && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v36, DefiningOp) && (v9 = mlir::Value::getDefiningOp(&v27)) != 0 && (v37 = *(*(v9 + 48) + 8), AttrData = mlir::OpaqueAttr::getAttrData(&v37), v11 == 13) && (*AttrData == 0x762E726F74636576 ? (v12 = *(AttrData + 5) == 0x656C616373762E72) : (v12 = 0), v12) || (v13 = *(*a1 + 72), v14 = *(v13 + 56), v27 = *(v13 + 24), v36 = &v35, v37 = v14, (v15 = mlir::Value::getDefiningOp(&v37)) != 0) && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v36, v15) && (v16 = mlir::Value::getDefiningOp(&v27)) != 0 && (v37 = *(*(v16 + 48) + 8), v17 = mlir::OpaqueAttr::getAttrData(&v37), v18 == 13) && (*v17 == 0x762E726F74636576 ? (v19 = *(v17 + 5) == 0x656C616373762E72) : (v19 = 0), v19))
    {
      v37 = v39;
      v38 = xmmword_1E096E640;
      v28 = 2;
      v32 = 0;
      v33 = 1;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v27 = &unk_1F5B3FBC0;
      v34 = &v37;
      llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
      v20 = v31;
      if (v31 >= v30)
      {
        v21 = llvm::raw_ostream::write(&v27, 99);
      }

      else
      {
        ++v31;
        *v20 = 99;
        v21 = &v27;
      }

      Int = mlir::IntegerAttr::getInt(&v35);
      v23 = llvm::raw_ostream::operator<<(v21, Int);
      v24 = *(v23 + 4);
      if (*(v23 + 3) - v24 > 6uLL)
      {
        *(v24 + 3) = 1701601635;
        *v24 = 1668511327;
        *(v23 + 4) += 7;
      }

      else
      {
        llvm::raw_ostream::write(v23, "_vscale", 7uLL);
      }

      if (*(*a1 + 36))
      {
        v25 = *a1 - 16;
      }

      else
      {
        v25 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
      a2(a3, NextResultAtOffset, *v34, v34[1]);
      llvm::raw_ostream::~raw_ostream(&v27);
      if (v37 != v39)
      {
        free(v37);
      }
    }
  }
}

void mlir::arith::MulIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 2);
  v25[0] = xmmword_1E86D2820;
  v25[1] = *&off_1E86D2830;
  mlir::Pattern::Pattern((v4 + 2), "arith.muli", 10, v24, a2, v25, 2uLL);
  *v4 = &unk_1F5AEE308;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *&v25[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::MulIMulIConstant]";
  *(&v25[0] + 1) = 89;
  v9 = llvm::StringRef::find(v25, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v25[0] + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v25[0] + 1);
  }

  v11 = *&v25[0] + v10;
  v12 = *(&v25[0] + 1) - v10;
  if (*(&v25[0] + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v25[0] + 1) - v10;
  }

  v14 = v11 + v13;
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

uint64_t mlir::arith::MulSIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 40);
  v6 = v5[1];
  if (!v6)
  {
LABEL_17:
    v14 = *v5;
    if (*v5 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    v16 = v5 + 1;
    v15 = v5[1];
    if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = v5[1];
      goto LABEL_80;
    }

    if (v14)
    {
      v107 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5);
      v108 = v17;
      if (v107)
      {
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v107);
        result = *v16;
        if (*v16)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    CallableForCallee = 0;
    result = *v16;
    if (*v16)
    {
LABEL_24:
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
      v107 = result;
      v108 = v20;
      if (!result)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    v107 = result;
    v108 = 0;
    if (!result)
    {
      return result;
    }

LABEL_29:
    v21 = mlir::CallOpInterface::getCallableForCallee(&v107);
    result = 0;
    if (!CallableForCallee || !v21 || v21 != CallableForCallee)
    {
      return result;
    }

    v104 = CallableForCallee;
    v22 = *v5;
    if (*v5 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = *v5;
      goto LABEL_80;
    }

    v23 = *v16;
    if (!*v16)
    {
      goto LABEL_79;
    }

    v24 = *(*v23 + 136);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = *v16;
    }

    else
    {
      v14 = 0;
    }

    if (!v22 || v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v24 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v86 = *v5;
      v83 = v23;
      Value = mlir::AffineMapAttr::getValue(&v86);
      if (Value != mlir::AffineMapAttr::getValue(&v83))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v86, &v92);
      mlir::IntegerAttr::getValue(&v83, &__p);
      llvm::APInt::operator*(&v92, &__p, &v96);
      LODWORD(v108) = v97;
      v107 = v96;
      v109[0] = 1;
      if (v90 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v93 >= 0x41 && v92)
      {
        operator delete[](v92);
      }

      v14 = mlir::IntegerAttr::get(v104, &v107);
      if (v109[0])
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (mlir::DenseElementsAttr::classof(*v5))
      {
        v26 = v22;
      }

      else
      {
        v26 = 0;
      }

      v107 = v26;
      if (v26 && mlir::DenseElementsAttr::isSplat(&v107) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v5 + 1))
      {
        v27 = v5[1];
        v86 = *v5;
        v83 = v27;
        v28 = mlir::ArrayAttr::getValue(&v86);
        if (v28 == mlir::ArrayAttr::getValue(&v83))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v86, &v92);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v83, &__p);
          llvm::APInt::operator*(&v92, &__p, &v96);
          LODWORD(v108) = v97;
          v107 = v96;
          v109[0] = 1;
          if (v90 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v93 >= 0x41 && v92)
          {
            operator delete[](v92);
          }

          v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v104);
          v14 = mlir::DenseElementsAttr::get(v29, v30, &v107, 1);
          if ((v109[0] & 1) == 0)
          {
            goto LABEL_80;
          }

LABEL_69:
          if (v108 >= 0x41 && v107)
          {
            operator delete[](v107);
          }

          goto LABEL_80;
        }

LABEL_79:
        v14 = 0;
        goto LABEL_80;
      }

      if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5))
      {
        goto LABEL_79;
      }

      if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5 + 1))
      {
        goto LABEL_79;
      }

      v102 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5);
      v103 = v32;
      v100 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5 + 1);
      v101 = v33;
      Type = mlir::ElementsAttr::getType(&v102);
      if (Type != mlir::ElementsAttr::getType(&v100))
      {
        goto LABEL_79;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v102, &v96);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v100, &v92);
      if (v99 == 1 && v95 == 1)
      {
        LOWORD(__p) = v96;
        if (v96 == 1)
        {
          v90 = v97;
        }

        else
        {
          (*(*v97 + 16))(&v90);
        }

        v91 = v98;
        LOWORD(v86) = v92;
        if (v92 == 1)
        {
          v87 = v93;
        }

        else
        {
          (*(*v93 + 16))(&v87);
        }

        v88 = v94;
        v107 = v109;
        v108 = 0x400000000;
        NumElements = mlir::ElementsAttr::getNumElements(v102, v103);
        llvm::SmallVectorImpl<llvm::APInt>::reserve(&v107, NumElements);
        v61 = mlir::ElementsAttr::getNumElements(v102, v103);
        if (v61)
        {
          v62 = v61;
          while (1)
          {
            mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&__p, &v81);
            mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v86, &v79);
            llvm::APInt::operator*(&v81, &v79, &v105);
            v84 = v106;
            v83 = v105;
            v85 = 1;
            if (v80 >= 0x41 && v79)
            {
              operator delete[](v79);
            }

            if (v82 >= 0x41 && v81)
            {
              operator delete[](v81);
            }

            if (v85 != 1)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v107, &v83);
            if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
            {
              operator delete[](v83);
            }

            ++v91;
            ++v88;
            if (!--v62)
            {
              goto LABEL_179;
            }
          }

          v14 = 0;
        }

        else
        {
LABEL_179:
          v63 = llvm::cast<mlir::ShapedType,mlir::Type>(&v104);
          v14 = mlir::DenseElementsAttr::get(v63, v64, v107, v108);
        }

        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v107);
        if ((v86 & 1) == 0)
        {
          v66 = v87;
          v87 = 0;
          if (v66)
          {
            (*(*v66 + 8))(v66);
          }
        }

        if ((__p & 1) == 0)
        {
          v67 = v90;
          v90 = 0;
          if (v67)
          {
            (*(*v67 + 8))(v67);
          }
        }
      }

      else
      {
        v14 = 0;
      }

      if (v95 == 1 && (v92 & 1) == 0)
      {
        v58 = v93;
        v93 = 0;
        if (v58)
        {
          (*(*v58 + 8))(v58);
        }
      }

      if (v99 == 1 && (v96 & 1) == 0)
      {
        v59 = v97;
        v97 = 0;
        if (v59)
        {
          (*(*v59 + 8))(v59);
        }
      }
    }

LABEL_80:
    if (!v14)
    {
      return 0;
    }

    v35 = *(a2 + 40);
    v36 = *v35;
    if (*v35 && *(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_144;
    }

    v38 = v35 + 1;
    v37 = v35[1];
    if (v37 && *(*v37 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v36 = v35[1];
      goto LABEL_144;
    }

    if (v36)
    {
      v107 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v36);
      v108 = v39;
      if (v107)
      {
        v40 = mlir::CallOpInterface::getCallableForCallee(&v107);
        v36 = *v38;
        if (*v38)
        {
          goto LABEL_88;
        }

        goto LABEL_93;
      }
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    v40 = 0;
    v36 = *v38;
    if (*v38)
    {
LABEL_88:
      v36 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v36);
      v107 = v36;
      v108 = v41;
      if (!v36)
      {
        goto LABEL_144;
      }

      goto LABEL_94;
    }

LABEL_93:
    v107 = v36;
    v108 = 0;
    if (!v36)
    {
LABEL_144:
      v56 = v14 & 0xFFFFFFFFFFFFFFFBLL;
      v57 = *(a3 + 8);
      if (v57 >= *(a3 + 12))
      {
        v65 = v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v57 + 1, 8);
        v36 = v65;
        LODWORD(v57) = *(a3 + 8);
      }

      *(*a3 + 8 * v57) = v56;
      v12 = *(a3 + 12);
      v13 = (*(a3 + 8) + 1);
      *(a3 + 8) = v13;
      v10 = v36 & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_147;
    }

LABEL_94:
    v42 = mlir::CallOpInterface::getCallableForCallee(&v107);
    v36 = 0;
    if (!v40 || !v42 || v42 != v40)
    {
      goto LABEL_144;
    }

    v104 = v40;
    v43 = *v35;
    if (*v35 && *(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v36 = *v35;
      goto LABEL_144;
    }

    v44 = *v38;
    if (*v38)
    {
      v45 = *(*v44 + 136);
      if (v45 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v36 = *v38;
      }

      else
      {
        v36 = 0;
      }

      if (!v43 || v45 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_144;
      }

      if (v45 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v86 = *v35;
        v83 = v44;
        v46 = mlir::AffineMapAttr::getValue(&v86);
        if (v46 == mlir::AffineMapAttr::getValue(&v83))
        {
          mlir::IntegerAttr::getValue(&v86, &v92);
          mlir::IntegerAttr::getValue(&v83, &__p);
          llvm::APIntOps::mulhs(&v92, &__p, &v96);
          LODWORD(v108) = v97;
          v107 = v96;
          v109[0] = 1;
          if (v90 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v93 >= 0x41 && v92)
          {
            operator delete[](v92);
          }

          v36 = mlir::IntegerAttr::get(v104, &v107);
          if ((v109[0] & 1) == 0)
          {
            goto LABEL_144;
          }

          goto LABEL_115;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v35))
        {
          v48 = v43;
        }

        else
        {
          v48 = 0;
        }

        v107 = v48;
        if (v48 && mlir::DenseElementsAttr::isSplat(&v107) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v35 + 1))
        {
          v49 = v35[1];
          v86 = *v35;
          v83 = v49;
          v50 = mlir::ArrayAttr::getValue(&v86);
          if (v50 == mlir::ArrayAttr::getValue(&v83))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v86, &v92);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v83, &__p);
            llvm::APIntOps::mulhs(&v92, &__p, &v96);
            LODWORD(v108) = v97;
            v107 = v96;
            v109[0] = 1;
            if (v90 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v93 >= 0x41 && v92)
            {
              operator delete[](v92);
            }

            v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v104);
            v36 = mlir::DenseElementsAttr::get(v51, v52, &v107, 1);
            if ((v109[0] & 1) == 0)
            {
              goto LABEL_144;
            }

LABEL_115:
            if (v108 < 0x41 || !v107)
            {
              goto LABEL_144;
            }

            v47 = v36;
            operator delete[](v107);
            goto LABEL_118;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v35) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v35 + 1))
        {
          v102 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v35);
          v103 = v53;
          v100 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v35 + 1);
          v101 = v54;
          v55 = mlir::ElementsAttr::getType(&v102);
          if (v55 == mlir::ElementsAttr::getType(&v100))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v102, &v96);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v100, &v92);
            if (v99 == 1 && v95 == 1)
            {
              LOWORD(__p) = v96;
              if (v96 == 1)
              {
                v90 = v97;
              }

              else
              {
                (*(*v97 + 16))(&v90);
              }

              v91 = v98;
              LOWORD(v86) = v92;
              if (v92 == 1)
              {
                v87 = v93;
              }

              else
              {
                (*(*v93 + 16))(&v87);
              }

              v88 = v94;
              v107 = v109;
              v108 = 0x400000000;
              v68 = mlir::ElementsAttr::getNumElements(v102, v103);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v107, v68);
              v69 = mlir::ElementsAttr::getNumElements(v102, v103);
              if (v69)
              {
                v70 = v69;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&__p, &v81);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v86, &v79);
                  llvm::APIntOps::mulhs(&v81, &v79, &v105);
                  v84 = v106;
                  v83 = v105;
                  v85 = 1;
                  if (v80 >= 0x41 && v79)
                  {
                    operator delete[](v79);
                  }

                  if (v82 >= 0x41 && v81)
                  {
                    operator delete[](v81);
                  }

                  if (v85 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v107, &v83);
                  if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
                  {
                    operator delete[](v83);
                  }

                  ++v91;
                  ++v88;
                  if (!--v70)
                  {
                    goto LABEL_205;
                  }
                }

                v73 = 0;
              }

              else
              {
LABEL_205:
                v71 = llvm::cast<mlir::ShapedType,mlir::Type>(&v104);
                v73 = mlir::DenseElementsAttr::get(v71, v72, v107, v108);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v107);
              if ((v86 & 1) == 0)
              {
                v74 = v87;
                v87 = 0;
                if (v74)
                {
                  (*(*v74 + 8))(v74);
                }
              }

              if ((__p & 1) == 0)
              {
                v75 = v90;
                v90 = 0;
                if (v75)
                {
                  (*(*v75 + 8))(v75);
                }
              }

              v36 = v73;
            }

            else
            {
              v36 = 0;
            }

            if (v95 == 1 && (v92 & 1) == 0)
            {
              v76 = v93;
              v93 = 0;
              if (v76)
              {
                v77 = v36;
                (*(*v76 + 8))(v76);
                v36 = v77;
              }
            }

            if (v99 != 1)
            {
              goto LABEL_144;
            }

            if (v96)
            {
              goto LABEL_144;
            }

            v78 = v97;
            v97 = 0;
            if (!v78)
            {
              goto LABEL_144;
            }

            v47 = v36;
            (*(*v78 + 8))(v78);
LABEL_118:
            v36 = v47;
            goto LABEL_144;
          }
        }
      }
    }

    v36 = 0;
    goto LABEL_144;
  }

  LODWORD(v108) = 1;
  v107 = 0;
  v96 = &v107;
  v7 = mlir::detail::constant_int_value_binder::match(&v96, v6);
  v8 = v108;
  if (v7)
  {
    if (v108 < 0x41)
    {
      v9 = v107 == 0;
      goto LABEL_8;
    }

    if (v8 - llvm::APInt::countLeadingZerosSlowCase(&v107) > 0x40)
    {
      if (v107)
      {
        operator delete[](v107);
      }

      goto LABEL_16;
    }

    v9 = *v107 == 0;
  }

  else
  {
    v9 = 0;
    if (v108 < 0x41)
    {
      goto LABEL_8;
    }
  }

  if (v107)
  {
    operator delete[](v107);
  }

LABEL_8:
  if (!v9)
  {
LABEL_16:
    v5 = *(a2 + 40);
    goto LABEL_17;
  }

  v10 = *(*(a2 + 40) + 8) & 0xFFFFFFFFFFFFFFFBLL;
  v11 = *(a3 + 8);
  if (v11 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v11 + 1, 8);
    LODWORD(v11) = *(a3 + 8);
  }

  *(*a3 + 8 * v11) = v10;
  v12 = *(a3 + 12);
  v13 = (*(a3 + 8) + 1);
  *(a3 + 8) = v13;
LABEL_147:
  if (v13 >= v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v13 + 1, 8);
    LODWORD(v13) = *(a3 + 8);
  }

  *(*a3 + 8 * v13) = v10;
  ++*(a3 + 8);
  return 1;
}

void mlir::arith::MulSIExtendedOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  *&v45[0] = "arith.muli";
  *(&v45[0] + 1) = 10;
  mlir::Pattern::Pattern((v4 + 2), "arith.mulsi_extended", 20, v44, a2, v45, 1uLL);
  *v4 = &unk_1F5AEE360;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *&v45[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::MulSIExtendedToMulI]";
  *(&v45[0] + 1) = 92;
  v9 = llvm::StringRef::find(v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v45[0] + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v45[0] + 1);
  }

  v11 = *&v45[0] + v10;
  v12 = *(&v45[0] + 1) - v10;
  if (*(&v45[0] + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v45[0] + 1) - v10;
  }

  v14 = v11 + v13;
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  v45[0] = xmmword_1E86D2840;
  v45[1] = *&off_1E86D2850;
  v45[2] = xmmword_1E86D2860;
  mlir::Pattern::Pattern((v24 + 2), "arith.mulsi_extended", 20, v44, a2, v45, 3uLL);
  *v24 = &unk_1F5AEE3B8;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *&v45[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::MulSIExtendedRHSOne]";
  *(&v45[0] + 1) = 92;
  v29 = llvm::StringRef::find(v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v45[0] + 1) >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v45[0] + 1);
  }

  v31 = *&v45[0] + v30;
  v32 = *(&v45[0] + 1) - v30;
  if (*(&v45[0] + 1) - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = *(&v45[0] + 1) - v30;
  }

  v34 = v31 + v33;
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

uint64_t mlir::arith::MulUIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 40);
  v6 = v5[1];
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v114) = 1;
  Context = 0;
  v102 = &Context;
  v8 = mlir::detail::constant_int_value_binder::match(&v102, v6);
  v9 = v114;
  if (!v8)
  {
    v10 = 0;
    if (v114 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  if (v114 < 0x41)
  {
    v10 = Context == 0;
    goto LABEL_20;
  }

  if (v9 - llvm::APInt::countLeadingZerosSlowCase(&Context) < 0x41)
  {
    v10 = *Context == 0;
LABEL_6:
    v11 = Context;
    if (Context)
    {
      goto LABEL_7;
    }

LABEL_20:
    v5 = *(a2 + 40);
    v12 = v5[1];
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_8:
    if (v12)
    {
      LODWORD(v114) = 1;
      Context = 0;
      v102 = &Context;
      v13 = mlir::detail::constant_int_value_binder::match(&v102, v12);
      v14 = v114;
      if (v13)
      {
        if (v114 < 0x41)
        {
          v15 = Context == 1;
          goto LABEL_17;
        }

        if (v14 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
        {
          if (Context)
          {
            operator delete[](Context);
          }

LABEL_28:
          v5 = *(a2 + 40);
          goto LABEL_29;
        }

        v15 = *Context == 1;
      }

      else
      {
        v15 = 0;
        if (v114 < 0x41)
        {
          goto LABEL_17;
        }
      }

      if (Context)
      {
        operator delete[](Context);
      }

LABEL_17:
      if (v15)
      {
        Context = mlir::Attribute::getContext((*a1 + 24));
        ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        v17 = *(*(*a1 + 72) + 24) | 4;
LABEL_157:
        v63 = *(a3 + 8);
        if (v63 >= *(a3 + 12))
        {
          v71 = ZeroAttr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v63 + 1, 8);
          ZeroAttr = v71;
          LODWORD(v63) = *(a3 + 8);
        }

        *(*a3 + 8 * v63) = v17;
        v20 = *(a3 + 12);
        v21 = (*(a3 + 8) + 1);
        *(a3 + 8) = v21;
        v18 = ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_160;
      }

      goto LABEL_28;
    }

LABEL_29:
    v22 = *v5;
    if (*v5 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_92;
    }

    v24 = v5 + 1;
    v23 = v5[1];
    if (v23 && *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v22 = v5[1];
      goto LABEL_92;
    }

    if (v22)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5);
      v114 = v25;
      if (Context)
      {
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&Context);
        result = *v24;
        if (*v24)
        {
          goto LABEL_36;
        }

        goto LABEL_40;
      }
    }

    else
    {
      Context = 0;
      v114 = 0;
    }

    CallableForCallee = 0;
    result = *v24;
    if (*v24)
    {
LABEL_36:
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
      Context = result;
      v114 = v28;
      if (!result)
      {
        return result;
      }

      goto LABEL_41;
    }

LABEL_40:
    Context = result;
    v114 = 0;
    if (!result)
    {
      return result;
    }

LABEL_41:
    v29 = mlir::CallOpInterface::getCallableForCallee(&Context);
    result = 0;
    if (!CallableForCallee || !v29 || v29 != CallableForCallee)
    {
      return result;
    }

    v110 = CallableForCallee;
    v30 = *v5;
    if (*v5 && *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v22 = *v5;
      goto LABEL_92;
    }

    v31 = *v24;
    if (!*v24)
    {
      goto LABEL_91;
    }

    v32 = *(*v31 + 136);
    if (v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v22 = *v24;
    }

    else
    {
      v22 = 0;
    }

    if (!v30 || v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_92;
    }

    if (v32 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v92 = *v5;
      v89 = v31;
      Value = mlir::AffineMapAttr::getValue(&v92);
      if (Value != mlir::AffineMapAttr::getValue(&v89))
      {
        goto LABEL_91;
      }

      mlir::IntegerAttr::getValue(&v92, &v98);
      mlir::IntegerAttr::getValue(&v89, &__p);
      llvm::APInt::operator*(&v98, &__p, &v102);
      LODWORD(v114) = v103;
      Context = v102;
      v115[0] = 1;
      if (v96 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v99 >= 0x41 && v98)
      {
        operator delete[](v98);
      }

      v22 = mlir::IntegerAttr::get(v110, &Context);
      if (v115[0])
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (mlir::DenseElementsAttr::classof(*v5))
      {
        v34 = v30;
      }

      else
      {
        v34 = 0;
      }

      Context = v34;
      if (v34 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v5 + 1))
      {
        v35 = v5[1];
        v92 = *v5;
        v89 = v35;
        v36 = mlir::ArrayAttr::getValue(&v92);
        if (v36 == mlir::ArrayAttr::getValue(&v89))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v92, &v98);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v89, &__p);
          llvm::APInt::operator*(&v98, &__p, &v102);
          LODWORD(v114) = v103;
          Context = v102;
          v115[0] = 1;
          if (v96 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v99 >= 0x41 && v98)
          {
            operator delete[](v98);
          }

          v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v110);
          v22 = mlir::DenseElementsAttr::get(v37, v38, &Context, 1);
          if ((v115[0] & 1) == 0)
          {
            goto LABEL_92;
          }

LABEL_81:
          if (v114 >= 0x41 && Context)
          {
            operator delete[](Context);
          }

          goto LABEL_92;
        }

LABEL_91:
        v22 = 0;
        goto LABEL_92;
      }

      if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5))
      {
        goto LABEL_91;
      }

      if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5 + 1))
      {
        goto LABEL_91;
      }

      v108 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5);
      v109 = v40;
      v106 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5 + 1);
      v107 = v41;
      Type = mlir::ElementsAttr::getType(&v108);
      if (Type != mlir::ElementsAttr::getType(&v106))
      {
        goto LABEL_91;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v108, &v102);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v106, &v98);
      if (v105 == 1 && v101 == 1)
      {
        LOWORD(__p) = v102;
        if (v102 == 1)
        {
          v96 = v103;
        }

        else
        {
          (*(*v103 + 16))(&v96);
        }

        v97 = v104;
        LOWORD(v92) = v98;
        if (v98 == 1)
        {
          v93 = v99;
        }

        else
        {
          (*(*v99 + 16))(&v93);
        }

        v94 = v100;
        Context = v115;
        v114 = 0x400000000;
        NumElements = mlir::ElementsAttr::getNumElements(v108, v109);
        llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
        v67 = mlir::ElementsAttr::getNumElements(v108, v109);
        if (v67)
        {
          v68 = v67;
          while (1)
          {
            mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&__p, &v87);
            mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v92, &v85);
            llvm::APInt::operator*(&v87, &v85, &v111);
            v90 = v112;
            v89 = v111;
            v91 = 1;
            if (v86 >= 0x41 && v85)
            {
              operator delete[](v85);
            }

            if (v88 >= 0x41 && v87)
            {
              operator delete[](v87);
            }

            if (v91 != 1)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v89);
            if ((v91 & 1) != 0 && v90 >= 0x41 && v89)
            {
              operator delete[](v89);
            }

            ++v97;
            ++v94;
            if (!--v68)
            {
              goto LABEL_192;
            }
          }

          v22 = 0;
        }

        else
        {
LABEL_192:
          v69 = llvm::cast<mlir::ShapedType,mlir::Type>(&v110);
          v22 = mlir::DenseElementsAttr::get(v69, v70, Context, v114);
        }

        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
        if ((v92 & 1) == 0)
        {
          v72 = v93;
          v93 = 0;
          if (v72)
          {
            (*(*v72 + 8))(v72);
          }
        }

        if ((__p & 1) == 0)
        {
          v73 = v96;
          v96 = 0;
          if (v73)
          {
            (*(*v73 + 8))(v73);
          }
        }
      }

      else
      {
        v22 = 0;
      }

      if (v101 == 1 && (v98 & 1) == 0)
      {
        v64 = v99;
        v99 = 0;
        if (v64)
        {
          (*(*v64 + 8))(v64);
        }
      }

      if (v105 == 1 && (v102 & 1) == 0)
      {
        v65 = v103;
        v103 = 0;
        if (v65)
        {
          (*(*v65 + 8))(v65);
        }
      }
    }

LABEL_92:
    if (!v22)
    {
      return 0;
    }

    v43 = *(a2 + 40);
    ZeroAttr = *v43;
    if (*v43 && *(*ZeroAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_156;
    }

    v45 = v43 + 1;
    v44 = v43[1];
    if (v44 && *(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      ZeroAttr = v43[1];
      goto LABEL_156;
    }

    if (ZeroAttr)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      v114 = v46;
      if (Context)
      {
        v47 = mlir::CallOpInterface::getCallableForCallee(&Context);
        ZeroAttr = *v45;
        if (*v45)
        {
          goto LABEL_100;
        }

        goto LABEL_105;
      }
    }

    else
    {
      Context = 0;
      v114 = 0;
    }

    v47 = 0;
    ZeroAttr = *v45;
    if (*v45)
    {
LABEL_100:
      ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      Context = ZeroAttr;
      v114 = v48;
      if (!ZeroAttr)
      {
        goto LABEL_156;
      }

      goto LABEL_106;
    }

LABEL_105:
    Context = ZeroAttr;
    v114 = 0;
    if (!ZeroAttr)
    {
LABEL_156:
      v17 = v22 & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_157;
    }

LABEL_106:
    v49 = mlir::CallOpInterface::getCallableForCallee(&Context);
    ZeroAttr = 0;
    if (!v47 || !v49 || v49 != v47)
    {
      goto LABEL_156;
    }

    v110 = v47;
    v50 = *v43;
    if (*v43 && *(*v50 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      ZeroAttr = *v43;
      goto LABEL_156;
    }

    v51 = *v45;
    if (*v45)
    {
      v52 = *(*v51 + 136);
      if (v52 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        ZeroAttr = *v45;
      }

      else
      {
        ZeroAttr = 0;
      }

      if (!v50 || v52 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_156;
      }

      if (v52 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v50 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v92 = *v43;
        v89 = v51;
        v53 = mlir::AffineMapAttr::getValue(&v92);
        if (v53 == mlir::AffineMapAttr::getValue(&v89))
        {
          mlir::IntegerAttr::getValue(&v92, &v98);
          mlir::IntegerAttr::getValue(&v89, &__p);
          llvm::APIntOps::mulhu(&v98, &__p, &v102);
          LODWORD(v114) = v103;
          Context = v102;
          v115[0] = 1;
          if (v96 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v99 >= 0x41 && v98)
          {
            operator delete[](v98);
          }

          ZeroAttr = mlir::IntegerAttr::get(v110, &Context);
          if ((v115[0] & 1) == 0)
          {
            goto LABEL_156;
          }

          goto LABEL_127;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v43))
        {
          v55 = v50;
        }

        else
        {
          v55 = 0;
        }

        Context = v55;
        if (v55 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v43 + 1))
        {
          v56 = v43[1];
          v92 = *v43;
          v89 = v56;
          v57 = mlir::ArrayAttr::getValue(&v92);
          if (v57 == mlir::ArrayAttr::getValue(&v89))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v92, &v98);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v89, &__p);
            llvm::APIntOps::mulhu(&v98, &__p, &v102);
            LODWORD(v114) = v103;
            Context = v102;
            v115[0] = 1;
            if (v96 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v99 >= 0x41 && v98)
            {
              operator delete[](v98);
            }

            v58 = llvm::cast<mlir::ShapedType,mlir::Type>(&v110);
            ZeroAttr = mlir::DenseElementsAttr::get(v58, v59, &Context, 1);
            if ((v115[0] & 1) == 0)
            {
              goto LABEL_156;
            }

LABEL_127:
            if (v114 < 0x41 || !Context)
            {
              goto LABEL_156;
            }

            v54 = ZeroAttr;
            operator delete[](Context);
            goto LABEL_130;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v43) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v43 + 1))
        {
          v108 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v43);
          v109 = v60;
          v106 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v43 + 1);
          v107 = v61;
          v62 = mlir::ElementsAttr::getType(&v108);
          if (v62 == mlir::ElementsAttr::getType(&v106))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v108, &v102);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v106, &v98);
            if (v105 == 1 && v101 == 1)
            {
              LOWORD(__p) = v102;
              if (v102 == 1)
              {
                v96 = v103;
              }

              else
              {
                (*(*v103 + 16))(&v96);
              }

              v97 = v104;
              LOWORD(v92) = v98;
              if (v98 == 1)
              {
                v93 = v99;
              }

              else
              {
                (*(*v99 + 16))(&v93);
              }

              v94 = v100;
              Context = v115;
              v114 = 0x400000000;
              v74 = mlir::ElementsAttr::getNumElements(v108, v109);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, v74);
              v75 = mlir::ElementsAttr::getNumElements(v108, v109);
              if (v75)
              {
                v76 = v75;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&__p, &v87);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v92, &v85);
                  llvm::APIntOps::mulhu(&v87, &v85, &v111);
                  v90 = v112;
                  v89 = v111;
                  v91 = 1;
                  if (v86 >= 0x41 && v85)
                  {
                    operator delete[](v85);
                  }

                  if (v88 >= 0x41 && v87)
                  {
                    operator delete[](v87);
                  }

                  if (v91 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v89);
                  if ((v91 & 1) != 0 && v90 >= 0x41 && v89)
                  {
                    operator delete[](v89);
                  }

                  ++v97;
                  ++v94;
                  if (!--v76)
                  {
                    goto LABEL_218;
                  }
                }

                v79 = 0;
              }

              else
              {
LABEL_218:
                v77 = llvm::cast<mlir::ShapedType,mlir::Type>(&v110);
                v79 = mlir::DenseElementsAttr::get(v77, v78, Context, v114);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
              if ((v92 & 1) == 0)
              {
                v80 = v93;
                v93 = 0;
                if (v80)
                {
                  (*(*v80 + 8))(v80);
                }
              }

              if ((__p & 1) == 0)
              {
                v81 = v96;
                v96 = 0;
                if (v81)
                {
                  (*(*v81 + 8))(v81);
                }
              }

              ZeroAttr = v79;
            }

            else
            {
              ZeroAttr = 0;
            }

            if (v101 == 1 && (v98 & 1) == 0)
            {
              v82 = v99;
              v99 = 0;
              if (v82)
              {
                v83 = ZeroAttr;
                (*(*v82 + 8))(v82);
                ZeroAttr = v83;
              }
            }

            if (v105 != 1)
            {
              goto LABEL_156;
            }

            if (v102)
            {
              goto LABEL_156;
            }

            v84 = v103;
            v103 = 0;
            if (!v84)
            {
              goto LABEL_156;
            }

            v54 = ZeroAttr;
            (*(*v84 + 8))(v84);
LABEL_130:
            ZeroAttr = v54;
            goto LABEL_156;
          }
        }
      }
    }

    ZeroAttr = 0;
    goto LABEL_156;
  }

  v10 = 0;
  v11 = Context;
  if (!Context)
  {
    goto LABEL_20;
  }

LABEL_7:
  operator delete[](v11);
  v5 = *(a2 + 40);
  v12 = v5[1];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_21:
  v18 = v12 & 0xFFFFFFFFFFFFFFFBLL;
  v19 = *(a3 + 8);
  if (v19 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v19 + 1, 8);
    LODWORD(v19) = *(a3 + 8);
  }

  *(*a3 + 8 * v19) = v18;
  v20 = *(a3 + 12);
  v21 = (*(a3 + 8) + 1);
  *(a3 + 8) = v21;
LABEL_160:
  if (v21 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v21 + 1, 8);
    LODWORD(v21) = *(a3 + 8);
  }

  *(*a3 + 8 * v21) = v18;
  ++*(a3 + 8);
  return 1;
}

void mlir::arith::MulUIExtendedOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  v25 = "arith.muli";
  v26 = 10;
  mlir::Pattern::Pattern((v4 + 2), "arith.mului_extended", 20, v24, a2, &v25, 1uLL);
  *v4 = &unk_1F5AEE410;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v25 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::MulUIExtendedToMulI]";
  v26 = 92;
  v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
  if (v26 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v26;
  }

  v11 = &v25[v10];
  v12 = v26 - v10;
  if (v26 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v26 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

unint64_t mlir::arith::DivUIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    v67 = 0;
    v59 = &v67;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = v67 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v67) > 0x40)
      {
        if (v67)
        {
          operator delete[](v67);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v67 == 1;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v67)
    {
      operator delete[](v67);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (v67)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v67);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  v67 = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&v67);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && v67)
    {
      operator delete[](v67);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&v67) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          v67 = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v67, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v67, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, v67, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v67);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &v67, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

mlir::Operation *mlir::arith::DivUIOp::getSpeculatability(mlir::arith::DivUIOp *this)
{
  v1 = *(*(*this + 72) + 56);
  v3 = mlir::m_IntRangeWithoutZeroU(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  v4 = v1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return (mlir::detail::constant_int_range_predicate_matcher::match(&v3, result) & 1);
  }

  return result;
}

unint64_t mlir::arith::DivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    v67 = 0;
    v59 = &v67;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = v67 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v67) > 0x40)
      {
        if (v67)
        {
          operator delete[](v67);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v67 == 1;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v67)
    {
      operator delete[](v67);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (v67)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v67);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  v67 = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&v67);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && v67)
    {
      operator delete[](v67);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&v67) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          v67 = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v67, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v67, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, v67, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v67);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &v67, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}