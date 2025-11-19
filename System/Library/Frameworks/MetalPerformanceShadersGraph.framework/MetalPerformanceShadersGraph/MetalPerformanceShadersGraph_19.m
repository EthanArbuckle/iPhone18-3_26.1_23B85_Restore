char *std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if ((v7 - v8) >= a5)
  {
    v18 = v8 - __dst;
    if ((v8 - __dst) >= a5)
    {
      v26 = &__dst[a5];
      v27 = (v8 - a5);
      v28 = *(a1 + 8);
      if (v8 >= a5)
      {
        if (a5 <= 0x1F)
        {
          goto LABEL_56;
        }

        v27 += a5 & 0x7FFFFFFFFFFFFFE0;
        v28 = (v8 + (a5 & 0x7FFFFFFFFFFFFFE0));
        v29 = (v8 + 16);
        v30 = (v8 + 16 - a5);
        v31 = a5 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v32 = *v30;
          *(v29 - 1) = *(v30 - 1);
          *v29 = v32;
          v29 += 2;
          v30 += 2;
          v31 -= 32;
        }

        while (v31);
        if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
        {
LABEL_56:
          do
          {
            v33 = *v27++;
            *v28++ = v33;
          }

          while (v27 != v8);
        }
      }

      *(a1 + 8) = v28;
      if (v8 != v26)
      {
        v34 = __src;
        memmove(v26, __dst, v8 - v26);
        __src = v34;
      }

      v35 = v5;
      v36 = __src;
      v37 = a5;
      goto LABEL_51;
    }

    v19 = &__src[v18];
    if (&__src[v18] == a4)
    {
      v21 = *(a1 + 8);
    }

    else
    {
      v20 = &__dst[a4] - __src - v8;
      if (v20 < 0x20)
      {
        v21 = *(a1 + 8);
      }

      else
      {
        v21 = *(a1 + 8);
        if ((__dst - __src) >= 0x20)
        {
          v19 += v20 & 0xFFFFFFFFFFFFFFE0;
          v21 = (v8 + (v20 & 0xFFFFFFFFFFFFFFE0));
          v22 = (v8 + 16);
          v23 = &__src[v8 + 16 - __dst];
          v24 = v20 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v25 = *v23;
            *(v22 - 1) = *(v23 - 1);
            *v22 = v25;
            v22 += 2;
            v23 += 2;
            v24 -= 32;
          }

          while (v24);
          if (v20 == (v20 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_35;
          }
        }
      }

      do
      {
        v39 = *v19++;
        *v21++ = v39;
      }

      while (v19 != a4);
    }

LABEL_35:
    *(a1 + 8) = v21;
    if (v18 < 1)
    {
      return v5;
    }

    v40 = &__dst[a5];
    v41 = &v21[-a5];
    if (&v21[-a5] >= v8)
    {
      v44 = v21;
    }

    else
    {
      v42 = v8 + a5 - v21;
      v43 = v42 >= 0x20 && a5 > 0x1F;
      v44 = v21;
      if (!v43)
      {
        goto LABEL_57;
      }

      v41 += v42 & 0xFFFFFFFFFFFFFFE0;
      v44 = &v21[v42 & 0xFFFFFFFFFFFFFFE0];
      v45 = v21 + 16;
      v46 = &v21[-a5 + 16];
      v47 = v42 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v48 = *v46;
        *(v45 - 1) = *(v46 - 1);
        *v45 = v48;
        v45 += 2;
        v46 += 2;
        v47 -= 32;
      }

      while (v47);
      if (v42 != (v42 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_57:
        do
        {
          v49 = *v41++;
          *v44++ = v49;
        }

        while (v41 != v8);
      }
    }

    *(a1 + 8) = v44;
    if (v21 != v40)
    {
      v50 = __src;
      memmove(v40, __dst, v21 - v40);
      __src = v50;
    }

    v35 = v5;
    v36 = __src;
    v37 = v8 - v5;
LABEL_51:
    memmove(v35, v36, v37);
    return v5;
  }

  v9 = *a1;
  v10 = v8 - *a1 + a5;
  if (v10 < 0)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v12 = (__dst - v9);
  v13 = v7 - v9;
  if (2 * v13 > v10)
  {
    v10 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    v15 = __src;
    v16 = operator new(v14);
    __src = v15;
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  memcpy(&v12[v17], __src, a5);
  v38 = &v12[v17 + a5];
  memcpy(v38, v5, v8 - v5);
  *(a1 + 8) = v5;
  memcpy(v17, v9, v5 - v9);
  *a1 = v17;
  *(a1 + 8) = &v38[v8 - v5];
  *(a1 + 16) = v17 + v14;
  if (v9)
  {
    operator delete(v9);
  }

  return &v12[v17];
}

char *anonymous namespace::EncodingEmitter::emitMultiByteVarInt(void *a1, unint64_t a2)
{
  v3 = a1;
  v18 = *MEMORY[0x1E69E9840];
  if (!(a2 >> 14))
  {
    v13 = &v17 + 2;
    v15 = 2;
LABEL_30:
    v17 = ((2 * a2) | 1) << (v15 - 1);
    v14 = a1[1];
    return std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, v14, &v17, v13, v15);
  }

  if (a2 < 0x200000)
  {
    v13 = &v17 + 3;
    v15 = 3;
    goto LABEL_30;
  }

  if (!(a2 >> 28))
  {
    v13 = &v17 + 4;
    v15 = 4;
    goto LABEL_30;
  }

  if (!(a2 >> 35))
  {
    v13 = &v17 + 5;
    v15 = 5;
    goto LABEL_30;
  }

  if (!(a2 >> 42))
  {
    v13 = &v17 + 6;
    v15 = 6;
    goto LABEL_30;
  }

  if (!(a2 >> 49))
  {
    v13 = &v17 + 7;
    v15 = 7;
    goto LABEL_30;
  }

  if (!HIBYTE(a2))
  {
    v13 = &v18;
    v15 = 8;
    goto LABEL_30;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v12[v8] = 0;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *v3 = v12;
    v3[1] = v6;
    v3[2] = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = 0;
    v6 = (v5 + 1);
  }

  v3[1] = v6;
  v17 = a2;
  v13 = &v18;
  a1 = v3;
  v14 = v6;
  v15 = 8;
  return std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, v14, &v17, v13, v15);
}

uint64_t anonymous namespace::anonymous namespace::StringSectionBuilder::insert(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(a2, a3);
  v7 = *(a1 + 32);
  *&v12 = a2;
  *(&v12 + 1) = __PAIR64__(HashValue, v3);
  v13 = v7;
  v15 = v12;
  v16 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::try_emplace<unsigned int>(a1, &v15, &v16, &v17);
  if (v18 != 1)
  {
    return *(*(a1 + 24) + 24 * *(v17 + 16) + 16);
  }

  v8 = *(a1 + 32);
  *(v17 + 16) = v8;
  v14 = &v13;
  *&v15 = &v12;
  if (v8 >= *(a1 + 36))
  {
    llvm::SmallVectorTemplateBase<std::pair<llvm::CachedHashStringRef,unsigned long>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::CachedHashStringRef&&>,std::tuple<unsigned long &&>>(a1 + 24, &std::piecewise_construct, &v15, &v14);
    v10 = *(a1 + 32);
  }

  else
  {
    v9 = *(a1 + 24) + 24 * v8;
    *v9 = v12;
    *(v9 + 16) = v13;
    v10 = *(a1 + 32) + 1;
    *(a1 + 32) = v10;
  }

  return *(*(a1 + 24) + 24 * v10 - 8);
}

char *anonymous namespace::EncodingEmitter::emitVarIntWithFlag(char *result, uint64_t a2, char a3)
{
  v3 = 2 * a2;
  v4 = a3 & 1 | (2 * a2);
  if (v3 > 0x7F)
  {
  }

  else
  {
    v5 = (2 * v4) | 1;
    v7 = *(result + 1);
    v6 = *(result + 2);
    if (v7 >= v6)
    {
      v9 = *result;
      v10 = &v7[-*result];
      v11 = v10 + 1;
      if ((v10 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = result;
      v13 = v6 - v9;
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      if (v14)
      {
        v15 = operator new(v14);
      }

      else
      {
        v15 = 0;
      }

      v15[v10] = v5;
      v8 = &v15[v10 + 1];
      memcpy(v15, v9, v10);
      *v12 = v15;
      *(v12 + 1) = v8;
      *(v12 + 2) = &v15[v14];
      if (v9)
      {
        operator delete(v9);
      }

      result = v12;
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(result + 1) = v8;
  }

  return result;
}

void anonymous namespace::EncodingEmitter::emitSection(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = &v6[-*a1];
  v8 = *(a1 + 16);
  if (v6 >= v8)
  {
    v10 = v7 + 1;
    if ((v7 + 1) < 0)
    {
      goto LABEL_62;
    }

    v11 = v8 - v5;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = a2;
      v14 = operator new(v12);
      a2 = v13;
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v15[v7] = a2;
    v9 = &v15[v7 + 1];
    memcpy(v15, v5, v7);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = &v15[v12];
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v6 = a2;
    v9 = v6 + 1;
  }

  *(a1 + 8) = v9;
  v16 = *(a3 + 72) + *(a3 + 8) - *a3;
  if (v16 > 0x7F)
  {
    v21 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a3 + 80);
    if (v20 < 2)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v17 = (2 * v16) | 1;
    v18 = *(a1 + 16);
    if (v9 >= v18)
    {
      v22 = *a1;
      v23 = &v9[-*a1];
      v24 = v23 + 1;
      if ((v23 + 1) < 0)
      {
        goto LABEL_62;
      }

      v25 = v18 - v22;
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        v27 = operator new(v26);
      }

      else
      {
        v27 = 0;
      }

      v27[v23] = v17;
      v19 = &v27[v23 + 1];
      memcpy(v27, v22, v23);
      *a1 = v27;
      *(a1 + 8) = v19;
      *(a1 + 16) = &v27[v26];
      if (v22)
      {
        operator delete(v22);
      }

      *(a1 + 8) = v19;
      v20 = *(a3 + 80);
      v21 = *a1;
      if (v20 < 2)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *v9 = v17;
      v19 = v9 + 1;
      *(a1 + 8) = v19;
      v20 = *(a3 + 80);
      v21 = *a1;
      if (v20 < 2)
      {
        goto LABEL_53;
      }
    }
  }

  if (((*(a1 + 72) + v19 - v21) & (v20 - 1)) != 0)
  {
    if (v20 > 0x7F)
    {
LABEL_52:
      *(*a1 + v7) |= 0x80u;
      v21 = *a1;
      v19 = *(a1 + 8);
      goto LABEL_53;
    }

    v28 = (2 * v20) | 1;
    v29 = *(a1 + 16);
    if (v19 < v29)
    {
      *v19 = v28;
      v30 = (v19 + 1);
LABEL_51:
      *(a1 + 8) = v30;
      goto LABEL_52;
    }

    v32 = v19 - v21;
    v33 = v19 - v21 + 1;
    if (v33 >= 0)
    {
      v34 = v29 - v21;
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        v36 = operator new(v35);
      }

      else
      {
        v36 = 0;
      }

      v36[v32] = v28;
      v30 = &v36[v32 + 1];
      memcpy(v36, v21, v32);
      *a1 = v36;
      *(a1 + 8) = v30;
      *(a1 + 16) = &v36[v35];
      if (v21)
      {
        operator delete(v21);
      }

      goto LABEL_51;
    }

LABEL_62:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v31 = *(a1 + 80);
  if (v31 <= v20)
  {
    v31 = v20;
  }

  *(a1 + 80) = v31;
LABEL_53:
  if (v21 != v19)
  {
    std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(a1 + 48, a1);
  }

  v37 = *(a3 + 48);
  for (i = *(a3 + 56); v37 != i; v37 += 24)
  {
    std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(a1 + 48, v37);
  }

  std::vector<llvm::ArrayRef<unsigned char>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<llvm::ArrayRef<unsigned char>*>,std::__wrap_iter<llvm::ArrayRef<unsigned char>*>>(a1 + 24, *(a1 + 32), *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 4);
  *(a1 + 72) += *(a3 + 72);
  if (*a3 != *(a3 + 8))
  {
    std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(a1 + 48, a3);
    v39 = *(a1 + 56);
    v40 = *(v39 - 24);
    v41 = *(v39 - 16) - v40;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*(v9 + 12))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*(v9 + 12))
    {
      goto LABEL_7;
    }

LABEL_6:
    if (*v9 == -1)
    {
LABEL_8:
      *v9 = *a2;
      *(v9 + 16) = *a3;
      v10 = 1;
      goto LABEL_9;
    }

LABEL_7:
    --*(a1 + 12);
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = 0;
    v5 = *a1;
    v19 = xmmword_1E09700E0;
    v20 = xmmword_1E096FB70;
    v6 = v3 - 1;
    v7 = 1;
    v8 = *(a2 + 12) & (v3 - 1);
    v9 = v5 + 24 * v8;
    if (*(a2 + 12) != *(v9 + 12))
    {
      goto LABEL_12;
    }

LABEL_3:
    v10 = *a2;
    if (*v9 == -2)
    {
      if (v10 != -2)
      {
        goto LABEL_12;
      }
    }

    else if (*v9 == -1)
    {
      if (v10 != -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = *(a2 + 8);
      if (v11 != *(v9 + 8) || v11 && (v12 = a2, v13 = a3, v14 = memcmp(v10, *v9, v11), a2 = v12, a3 = v13, v14))
      {
LABEL_12:
        while (1)
        {
          v15 = a2;
          v16 = a3;
          if (llvm::DenseMapInfo<llvm::CachedHashStringRef,void>::isEqual(v9, &v20))
          {
            break;
          }

          if ((llvm::DenseMapInfo<llvm::CachedHashStringRef,void>::isEqual(v9, &v19) & (v4 == 0)) != 0)
          {
            v4 = v9;
          }

          v17 = v8 + v7++;
          a2 = v15;
          a3 = v16;
          v8 = v17 & v6;
          v9 = v5 + 24 * (v17 & v6);
          if (*(v15 + 12) == *(v9 + 12))
          {
            goto LABEL_3;
          }
        }

        result = 0;
        if (v4)
        {
          v9 = v4;
        }

        a3 = v16;
        goto LABEL_18;
      }
    }

    result = 1;
LABEL_18:
    *a3 = v9;
    return result;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t llvm::DenseMapInfo<llvm::CachedHashStringRef,void>::isEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v3 = *a1;
  v5 = *a2;
  if (v5 == -2)
  {
    return v3 == -2;
  }

  if (v5 == -1)
  {
    return v3 == -1;
  }

  v7 = *(a1 + 8);
  if (v7 != *(a2 + 8))
  {
    return 0;
  }

  if (v7)
  {
    return memcmp(v3, v5, v7) == 0;
  }

  return 1;
}

_OWORD *llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::grow(uint64_t a1, int a2)
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
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10 - 24;
      if (v11 >= 0x18)
      {
        v16 = v11 / 0x18 + 1;
        v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
        v17 = result;
        v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *v17 = xmmword_1E096FB70;
          *(v17 + 24) = xmmword_1E096FB70;
          v17 += 3;
          v18 -= 2;
        }

        while (v18);
        if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v12 = result;
      }

      v19 = (result + 24 * v10);
      do
      {
        *v12 = xmmword_1E096FB70;
        v12 = (v12 + 24);
      }

      while (v12 != v19);
    }

LABEL_16:
    v20 = 3 * v3;
    if (!v3)
    {
LABEL_25:
      llvm::deallocate_buffer(v4, (8 * v20));
    }

    v21 = 24 * v3;
    v22 = v4;
    while (1)
    {
      v24 = *(v22 + 12);
      if (v24 != 1)
      {
        break;
      }

      if (*v22 != -2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v22 += 24;
      v21 -= 24;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    if (!v24 && *v22 == -1)
    {
      goto LABEL_20;
    }

LABEL_19:
    v29 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(a1, v22, &v29);
    v23 = v29;
    *v29 = *v22;
    *(v23 + 4) = *(v22 + 16);
    ++*(a1 + 8);
    goto LABEL_20;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_29:
      v28 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_1E096FB70;
        v15 = (v15 + 24);
      }

      while (v15 != v28);
      return result;
    }

    v25 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v25 & 0x1FFFFFFFFFFFFFFELL));
    v26 = result;
    v27 = v25 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v26 = xmmword_1E096FB70;
      *(v26 + 24) = xmmword_1E096FB70;
      v26 += 3;
      v27 -= 2;
    }

    while (v27);
    if (v25 != (v25 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<llvm::CachedHashStringRef,unsigned long>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::CachedHashStringRef&&>,std::tuple<unsigned long &&>>(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t **a4)
{
  v4 = *a4;
  v14 = **a3;
  v15 = *v4;
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = &v14;
  if (v5 >= *(a1 + 12))
  {
    if (v6 <= &v14 && v6 + 24 * v5 > &v14)
    {
      v12 = &v14 - v6;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 24);
      a1 = v13;
      v6 = *v13;
      v7 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 24);
      a1 = v11;
      v6 = *v11;
      v7 = &v14;
    }
  }

  v8 = v6 + 24 * *(a1 + 8);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 24 * v8 - 24;
}

void anonymous namespace::DialectWriter::writeAttribute(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v15 = a2;
  v4 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2, &v15) + 8);
  if (v4 > 0x7F)
  {
  }

  else
  {
    v5 = (2 * v4) | 1;
    v7 = v3[1];
    v6 = v3[2];
    if (v7 >= v6)
    {
      v9 = *v3;
      v10 = &v7[-*v3];
      v11 = v10 + 1;
      if ((v10 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = v6 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        v14 = operator new(v13);
      }

      else
      {
        v14 = 0;
      }

      v14[v10] = v5;
      v8 = &v14[v10 + 1];
      memcpy(v14, v9, v10);
      *v3 = v14;
      v3[1] = v8;
      v3[2] = &v14[v13];
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    v3[1] = v8;
  }
}

void anonymous namespace::DialectWriter::writeOptionalAttribute(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v2 = *(a1 + 24);
    v15 = a2;
    v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2, &v15);
  }

  else
  {
    v5 = *(a1 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = &v7[-*v5];
      v11 = v10 + 1;
      if ((v10 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = v6 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        v14 = operator new(v13);
      }

      else
      {
        v14 = 0;
      }

      v14[v10] = 1;
      v8 = &v14[v10 + 1];
      memcpy(v14, v9, v10);
      *v5 = v14;
      *(v5 + 8) = v8;
      *(v5 + 16) = &v14[v13];
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = 1;
      v8 = (v7 + 1);
    }

    *(v5 + 8) = v8;
  }
}

void anonymous namespace::DialectWriter::writeType(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v15 = a2;
  v4 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2 + 72, &v15) + 8);
  if (v4 > 0x7F)
  {
  }

  else
  {
    v5 = (2 * v4) | 1;
    v7 = v3[1];
    v6 = v3[2];
    if (v7 >= v6)
    {
      v9 = *v3;
      v10 = &v7[-*v3];
      v11 = v10 + 1;
      if ((v10 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = v6 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        v14 = operator new(v13);
      }

      else
      {
        v14 = 0;
      }

      v14[v10] = v5;
      v8 = &v14[v10 + 1];
      memcpy(v14, v9, v10);
      *v3 = v14;
      v3[1] = v8;
      v3[2] = &v14[v13];
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    v3[1] = v8;
  }
}

void anonymous namespace::DialectWriter::writeResourceHandle(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::operator[](*(a1 + 24) + 232, a2) + 24);
  if (v3 > 0x7F)
  {
  }

  else
  {
    v4 = (2 * v3) | 1;
    v6 = v2[1];
    v5 = v2[2];
    if (v6 >= v5)
    {
      v8 = *v2;
      v9 = &v6[-*v2];
      v10 = v9 + 1;
      if ((v9 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = v5 - v8;
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        v13 = operator new(v12);
      }

      else
      {
        v13 = 0;
      }

      v13[v9] = v4;
      v7 = &v13[v9 + 1];
      memcpy(v13, v8, v9);
      *v2 = v13;
      v2[1] = v7;
      v2[2] = &v13[v12];
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v6 = v4;
      v7 = (v6 + 1);
    }

    v2[1] = v7;
  }
}

void anonymous namespace::DialectWriter::writeVarInt(_anonymous_namespace_::DialectWriter *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (a2 > 0x7F)
  {
    v7 = *(this + 2);
  }

  else
  {
    v3 = (2 * a2) | 1;
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    if (v5 >= v4)
    {
      v8 = *v2;
      v9 = &v5[-*v2];
      v10 = v9 + 1;
      if ((v9 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = v4 - v8;
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        v13 = operator new(v12);
      }

      else
      {
        v13 = 0;
      }

      v13[v9] = v3;
      v6 = &v13[v9 + 1];
      memcpy(v13, v8, v9);
      *v2 = v13;
      *(v2 + 8) = v6;
      *(v2 + 16) = &v13[v12];
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v5 = v3;
      v6 = (v5 + 1);
    }

    *(v2 + 8) = v6;
  }
}

void anonymous namespace::DialectWriter::writeAPIntWithKnownWidth(_anonymous_namespace_::DialectWriter *this, const llvm::APInt *a2)
{
  v3 = *(a2 + 2);
  if (v3 <= 8)
  {
    v4 = *(this + 2);
    v5 = *a2;
    v7 = *(v4 + 8);
    v6 = *(v4 + 16);
    if (v7 < v6)
    {
      *v7 = v5;
      *(v4 + 8) = v7 + 1;
      return;
    }

    v10 = *v4;
    v11 = &v7[-*v4];
    v12 = v11 + 1;
    if ((v11 + 1) >= 0)
    {
      v13 = v6 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = operator new(v14);
      }

      else
      {
        v15 = 0;
      }

      v15[v11] = v5;
      v24 = &v15[v11 + 1];
      memcpy(v15, v10, v11);
      *v4 = v15;
      *(v4 + 8) = v24;
      *(v4 + 16) = &v15[v14];
      if (v10)
      {
        operator delete(v10);
      }

      *(v4 + 8) = v24;
      return;
    }

LABEL_44:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v3 > 0x40)
  {
    v17 = llvm::APInt::countLeadingZerosSlowCase(a2);
    if (v3 == v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = ((v3 + ~v17) >> 6) + 1;
    }

    v19 = *(this + 2);
    if (v18 > 0x7F)
    {
    }

    else
    {
      v20 = (2 * v18) | 1;
      v22 = *(v19 + 8);
      v21 = *(v19 + 16);
      if (v22 >= v21)
      {
        v25 = *v19;
        v26 = &v22[-*v19];
        v27 = v26 + 1;
        if ((v26 + 1) < 0)
        {
          goto LABEL_44;
        }

        v28 = v21 - v25;
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          v30 = operator new(v29);
        }

        else
        {
          v30 = 0;
        }

        v30[v26] = v20;
        v23 = &v30[v26 + 1];
        memcpy(v30, v25, v26);
        *v19 = v30;
        *(v19 + 8) = v23;
        *(v19 + 16) = &v30[v29];
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v22 = v20;
        v23 = (v22 + 1);
      }

      *(v19 + 8) = v23;
    }

    if (*(a2 + 2) >= 0x41u)
    {
      v31 = *a2;
    }

    else
    {
      v31 = a2;
    }

    do
    {
      v32 = *v31++;
      --v18;
    }

    while (v18);
    return;
  }

  v8 = *(this + 2);
  v9 = *a2;
}

void anonymous namespace::DialectWriter::writeAPFloatWithKnownSemantics(_anonymous_namespace_::DialectWriter *this, const llvm::APFloat *a2)
{
  v3 = (a2 + 8);
  v4 = *(a2 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v4)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v3, &__p);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v3, &__p);
  }

  (*(*this + 64))(this, &__p);
  if (v6 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void anonymous namespace::DialectWriter::writeOwnedString(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v4 > 0x7F)
  {
  }

  else
  {
    v5 = (2 * v4) | 1;
    v7 = v3[1];
    v6 = v3[2];
    if (v7 >= v6)
    {
      v9 = *v3;
      v10 = &v7[-*v3];
      v11 = v10 + 1;
      if ((v10 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = v6 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        v14 = operator new(v13);
      }

      else
      {
        v14 = 0;
      }

      v14[v10] = v5;
      v8 = &v14[v10 + 1];
      memcpy(v14, v9, v10);
      *v3 = v14;
      v3[1] = v8;
      v3[2] = &v14[v13];
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    v3[1] = v8;
  }
}

void anonymous namespace::DialectWriter::writeOwnedBlob(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 16);
  if (a3 > 0x7F)
  {
    v10 = *(a1 + 16);
    if (*v10 == v10[1])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = (2 * a3) | 1;
  v9 = *(v6 + 8);
  v8 = *(v6 + 16);
  if (v9 < v8)
  {
    *v9 = v7;
    *(v6 + 8) = v9 + 1;
    v10 = *(a1 + 16);
    if (*v10 == v10[1])
    {
      goto LABEL_7;
    }

LABEL_6:
    std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>((v10 + 6), v10);
    goto LABEL_7;
  }

  v11 = *v6;
  v12 = &v9[-*v6];
  v13 = v12 + 1;
  if ((v12 + 1) < 0)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v14 = v8 - v11;
  if (2 * v14 > v13)
  {
    v13 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  v16[v12] = v7;
  v17 = &v16[v12 + 1];
  memcpy(v16, v11, v12);
  *v6 = v16;
  *(v6 + 8) = v17;
  *(v6 + 16) = &v16[v15];
  if (v11)
  {
    operator delete(v11);
  }

  *(v6 + 8) = v17;
  v10 = *(a1 + 16);
  if (*v10 != v10[1])
  {
    goto LABEL_6;
  }

LABEL_7:
}

void anonymous namespace::DialectWriter::writeOwnedBool(_anonymous_namespace_::DialectWriter *this, char a2)
{
  v2 = *(this + 2);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  if (v4 < v3)
  {
    *v4 = a2;
    v5 = (v4 + 1);
LABEL_3:
    *(v2 + 8) = v5;
    return;
  }

  v6 = *v2;
  v7 = &v4[-*v2];
  v8 = v7 + 1;
  if ((v7 + 1) < 0)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v9 = v3 - v6;
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    v11 = a2;
    v12 = operator new(v10);
    a2 = v11;
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v13[v7] = a2;
  v5 = &v13[v7 + 1];
  memcpy(v13, v6, v7);
  *v2 = v13;
  *(v2 + 8) = v5;
  *(v2 + 16) = &v13[v10];
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(v2 + 8) = v5;
}

uint64_t anonymous namespace::DialectWriter::getDialectVersion(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = *(a1 + 40);
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(v6, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = *v6 + 8 * v9;
  if (v10 == **(a1 + 40) + 8 * *(*(a1 + 40) + 8))
  {
    return 0;
  }

  else
  {
    return *(*v10 + 8);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
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
    llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 3;
    }

    v9 = 0;
    v10 = 1;
    while (v5 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v5 == -8192;
      }

      if (v11)
      {
        v9 = v4;
      }

      v12 = v3 + v10++;
      v3 = v12 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 3;
      }
    }

    if (v9)
    {
      v4 = v9;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v4 = v15;
    ++*(v14 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v8 = a2[2];
  *v4 = *a2;
  v4[2] = v8;
  v4[3] = 0;
  return v4 + 3;
}

void *llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *(v13 - 3) = -4096;
        *v13 = -4096;
        v13[1] = -4096;
        *(v13 - 2) = 0;
        v13[2] = 0;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10[1] = -4096;
          v10[2] = 0;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 32 * v26);
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 32 * v26);
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *v16;
          v22[2] = *(v16 + 2);
          *v22 = v23;
          v22[3] = *(v16 + 3);
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *(v19 - 3) = -4096;
      *v19 = -4096;
      v19[1] = -4096;
      *(v19 - 2) = 0;
      v19[2] = 0;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10[1] = -4096;
        v10[2] = 0;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

char *anonymous namespace::EncodingEmitter::emitSignedVarInt(char *result, uint64_t a2)
{
  v2 = (2 * a2) ^ (a2 >> 63);
  if (v2 > 0x7F)
  {
  }

  else
  {
    v3 = (2 * v2) | 1;
    v5 = *(result + 1);
    v4 = *(result + 2);
    if (v5 >= v4)
    {
      v7 = *result;
      v8 = &v5[-*result];
      v9 = v8 + 1;
      if ((v8 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v10 = result;
      v11 = v4 - v7;
      if (2 * v11 > v9)
      {
        v9 = 2 * v11;
      }

      if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = operator new(v12);
      }

      else
      {
        v13 = 0;
      }

      v13[v8] = v3;
      v6 = &v13[v8 + 1];
      memcpy(v13, v7, v8);
      *v10 = v13;
      *(v10 + 1) = v6;
      *(v10 + 2) = &v13[v12];
      if (v7)
      {
        operator delete(v7);
      }

      result = v10;
    }

    else
    {
      *v5 = v3;
      v6 = (v5 + 1);
    }

    *(result + 1) = v6;
  }

  return result;
}

void anonymous namespace::EncodingEmitter::appendOwnedResult(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    a1[9] += a3;
    v5 = a1[4];
    v4 = a1[5];
    if (v5 >= v4)
    {
      v7 = a1[3];
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (v12 >> 60)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v13 = a2;
        v14 = a3;
        v15 = operator new(16 * v12);
        a3 = v14;
        a2 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = &v15[16 * v9];
      *v16 = a2;
      *(v16 + 1) = a3;
      v6 = v16 + 16;
      memcpy(v15, v7, v8);
      a1[3] = v15;
      a1[4] = v6;
      a1[5] = &v15[16 * v12];
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v5 = a2;
      *(v5 + 1) = a3;
      v6 = v5 + 16;
    }

    a1[4] = v6;
  }
}

void *std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v10 = a2;
      v11 = operator new(24 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[24 * v6];
    v13 = &v11[24 * v9];
    *v12 = *a2;
    *(v12 + 2) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = v12 + 24;
    v14 = *a1;
    v15 = *(a1 + 8) - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    *a1 = v16;
    *(a1 + 8) = v5;
    *(a1 + 16) = v13;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = v3 + 3;
  }

  *(a1 + 8) = v5;
  return v5 - 3;
}

void anonymous namespace::EncodingEmitter::alignTo(_anonymous_namespace_::EncodingEmitter *this, unsigned int a2)
{
  if (a2 >= 2)
  {
    v4 = *(this + 1);
    v5 = &v4[*(this + 9)];
    v6 = v5 != *this;
    v7 = &v5[-*this];
    v8 = &v7[-v6] / a2;
    if (v7)
    {
      ++v8;
    }

    for (i = v8 * a2 - v7; i; --i)
    {
      v10 = *(this + 2);
      if (v4 < v10)
      {
        *v4++ = -53;
      }

      else
      {
        v11 = *this;
        v12 = &v4[-*this];
        v13 = v12 + 1;
        if ((v12 + 1) < 0)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v14 = v10 - v11;
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          v16 = operator new(v15);
        }

        else
        {
          v16 = 0;
        }

        v16[v12] = -53;
        v4 = &v16[v12 + 1];
        memcpy(v16, v11, v12);
        *this = v16;
        *(this + 1) = v4;
        *(this + 2) = &v16[v15];
        if (v11)
        {
          operator delete(v11);
        }
      }

      *(this + 1) = v4;
    }

    v17 = *(this + 20);
    if (v17 <= a2)
    {
      v17 = a2;
    }

    *(this + 20) = v17;
  }
}

char *std::vector<llvm::ArrayRef<unsigned char>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<llvm::ArrayRef<unsigned char>*>,std::__wrap_iter<llvm::ArrayRef<unsigned char>*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v14 = a5;
      v15 = operator new(16 * v13);
      a5 = v14;
    }

    else
    {
      v15 = 0;
    }

    v30 = &v15[16 * ((v5 - v10) >> 4)];
    v31 = 16 * a5;
    v32 = &v30[16 * a5];
    v33 = v30;
    do
    {
      v34 = *v6;
      v6 += 16;
      *v33 = v34;
      v33 += 16;
      v31 -= 16;
    }

    while (v31);
    v35 = &v15[16 * v13];
    memcpy(&v30[16 * a5], v5, v9 - v5);
    v36 = &v32[v9 - v5];
    *(a1 + 8) = v5;
    v37 = *a1;
    v38 = &v5[-*a1];
    v39 = &v30[-v38];
    memcpy(&v30[-v38], *a1, v38);
    *a1 = v39;
    *(a1 + 8) = v36;
    *(a1 + 16) = v35;
    if (v37)
    {
      operator delete(v37);
    }

    return v30;
  }

  v16 = v9 - __dst;
  v17 = (v9 - __dst) >> 4;
  if (v17 >= a5)
  {
    v16 = 16 * a5;
    v26 = &__dst[16 * a5];
    v27 = (v9 - 16 * a5);
    for (i = *(a1 + 8); v27 < v9; ++i)
    {
      v29 = *v27++;
      *i = v29;
    }

    *(a1 + 8) = i;
    if (v9 != v26)
    {
      memmove(&__dst[16 * a5], __dst, v9 - v26);
    }

    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    v19 = a5;
    v20 = a4;
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
    a4 = v20;
    a5 = v19;
  }

  v21 = (v9 + v18);
  *(a1 + 8) = v9 + v18;
  if (v17 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v9 + v18;
    if (&v21[-16 * a5] < v9)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -16 * a5];
      do
      {
        *(v24 - v6) = *(v25 - v6);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v6 < v9);
      v23 = v24 - v6;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v9 != v5)
    {
LABEL_28:
      memmove(v5, v6, v16);
    }
  }

  return v5;
}

const char *llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::StorageUserTrait::IsMutable<Empty>]";
  v6 = 98;
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

void anonymous namespace::RawEmitterOstream::~RawEmitterOstream(_anonymous_namespace_::RawEmitterOstream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  operator delete(v1);
}

uint64_t anonymous namespace::BytecodeWriter::writeOp(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v218 = *MEMORY[0x1E69E9840];
  *&v212 = *(a3 + 48);
  v6 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 88, &v212) + 16);
  if (v6 > 0x7F)
  {
    v10 = *(a2 + 1);
  }

  else
  {
    v7 = (2 * v6) | 1;
    v9 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v9 >= v8)
    {
      v11 = *a2;
      v12 = &v9[-*a2];
      v13 = v12 + 1;
      if ((v12 + 1) < 0)
      {
        goto LABEL_282;
      }

      v14 = v8 - v11;
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        v16 = operator new(v15);
      }

      else
      {
        v16 = 0;
      }

      v16[v12] = v7;
      memcpy(v16, v11, v12);
      v10 = &v16[v12 + 1];
      *a2 = v16;
      *(a2 + 1) = v10;
      *(a2 + 2) = &v16[v15];
      if (v11)
      {
        operator delete(v11);
        v10 = &v16[v12 + 1];
      }
    }

    else
    {
      *v9 = v7;
      v10 = v9 + 1;
    }

    *(a2 + 1) = v10;
  }

  v17 = *(a2 + 9);
  v18 = *a2;
  v199 = 0;
  v19 = *(a2 + 2);
  v194 = v10;
  __src = v18;
  v193 = v17;
  if (v10 >= v19)
  {
    v21 = v10 - v18;
    v22 = v10 - v18 + 1;
    if (v22 < 0)
    {
      goto LABEL_282;
    }

    v23 = v19 - v18;
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      v25 = operator new(v24);
    }

    else
    {
      v25 = 0;
    }

    v25[v21] = 0;
    v20 = &v25[v21 + 1];
    memcpy(v25, __src, v21);
    *a2 = v25;
    *(a2 + 1) = v20;
    *(a2 + 2) = &v25[v24];
    if (__src)
    {
      operator delete(__src);
    }
  }

  else
  {
    *v10 = 0;
    v20 = (v10 + 1);
  }

  *(a2 + 1) = v20;
  *&v212 = *(v3 + 24);
  v26 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v5 + 40, &v212) + 8);
  v197 = v5;
  if (v26 > 0x7F)
  {
  }

  else
  {
    v27 = (2 * v26) | 1;
    v29 = *(a2 + 1);
    v28 = *(a2 + 2);
    if (v29 >= v28)
    {
      v31 = *a2;
      v32 = &v29[-*a2];
      v33 = v32 + 1;
      if ((v32 + 1) < 0)
      {
        goto LABEL_282;
      }

      v34 = v28 - v31;
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        v36 = operator new(v35);
      }

      else
      {
        v36 = 0;
      }

      v36[v32] = v27;
      v30 = &v36[v32 + 1];
      memcpy(v36, v31, v32);
      *a2 = v36;
      *(a2 + 1) = v30;
      *(a2 + 2) = &v36[v35];
      if (v31)
      {
        operator delete(v31);
      }

      v5 = v197;
    }

    else
    {
      *v29 = v27;
      v30 = (v29 + 1);
    }

    *(a2 + 1) = v30;
  }

  DiscardableAttrDictionary = mlir::Operation::getDiscardableAttrDictionary(v3);
  if (**(v5 + 984) < 5 || !*(v3 + 47))
  {
    DiscardableAttrDictionary = mlir::Operation::getAttrDictionary(v3);
  }

  if (!mlir::AffineBinaryOpExpr::getLHS(&DiscardableAttrDictionary))
  {
LABEL_56:
    if (**(v5 + 984) < 5)
    {
      goto LABEL_82;
    }

    goto LABEL_57;
  }

  v199 = 1;
  *&v212 = DiscardableAttrDictionary;
  v37 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v5 + 40, &v212) + 8);
  if (v37 > 0x7F)
  {
    goto LABEL_56;
  }

  v38 = (2 * v37) | 1;
  v40 = *(a2 + 1);
  v39 = *(a2 + 2);
  if (v40 >= v39)
  {
    v55 = *a2;
    v56 = &v40[-*a2];
    v57 = v56 + 1;
    if ((v56 + 1) < 0)
    {
      goto LABEL_282;
    }

    v58 = v39 - v55;
    if (2 * v58 > v57)
    {
      v57 = 2 * v58;
    }

    if (v58 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v59 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v59 = v57;
    }

    if (v59)
    {
      v60 = operator new(v59);
    }

    else
    {
      v60 = 0;
    }

    v60[v56] = v38;
    v66 = &v60[v56 + 1];
    memcpy(v60, v55, v56);
    *a2 = v60;
    *(a2 + 1) = v66;
    *(a2 + 2) = &v60[v59];
    if (v55)
    {
      operator delete(v55);
    }

    v5 = v197;
    *(a2 + 1) = v66;
    if (**(v197 + 984) < 5)
    {
LABEL_82:
      v67 = *(v3 + 36);
      v196 = v3;
      if (!v67)
      {
        goto LABEL_103;
      }

      goto LABEL_83;
    }
  }

  else
  {
    *v40 = v38;
    *(a2 + 1) = v40 + 1;
    if (**(v5 + 984) < 5)
    {
      goto LABEL_82;
    }
  }

LABEL_57:
  if (!HIBYTE(*(v3 + 44)))
  {
    goto LABEL_82;
  }

  if (*(*(v3 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v61 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 64);
    if (!v61)
    {
      goto LABEL_82;
    }

    __p = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v212 = 0u;
    v217 = 1;
    v62 = *(v5 + 1104);
    v204 = v61;
    v63 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v62, &v204) + 8);
    if (v63 > 0x7F)
    {
    }

    else
    {
      v64 = (2 * v63) | 1;
      v65 = operator new(1uLL);
      *&v212 = v65;
      *v65 = v64;
      *(&v212 + 1) = v65 + 1;
      *&v213 = v65 + 1;
    }

    *(v5 + 1024) = 0;
    LODWORD(v205) = 2;
    v209 = 0;
    v210 = 1;
    v207 = 0;
    v208 = 0;
    v206 = 0;
    v204 = &unk_1F5B3FBC0;
    v211 = v5 + 1016;
    llvm::raw_ostream::SetBufferAndMode(&v204, 0, 0, 0);
    v166 = *(&v213 + 1);
    v167 = v214;
    while (v166 != v167)
    {
      v168 = *v166;
      v169 = *(v166 + 8);
      v166 += 16;
      llvm::raw_ostream::write(&v204, v168, v169);
    }

    llvm::raw_ostream::write(&v204, v212, *(&v212 + 1) - v212);
    llvm::raw_ostream::~raw_ostream(&v204);
    v49 = __p;
    if (__p)
    {
      v170 = *(&__p + 1);
      v51 = __p;
      if (*(&__p + 1) != __p)
      {
        v171 = *(&__p + 1);
        do
        {
          v173 = *(v171 - 24);
          v171 -= 24;
          v172 = v173;
          if (v173)
          {
            *(v170 - 16) = v172;
            operator delete(v172);
          }

          v170 = v171;
        }

        while (v171 != v49);
        goto LABEL_235;
      }

LABEL_236:
      *(&__p + 1) = v49;
      operator delete(v51);
    }
  }

  else
  {
    __p = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v212 = 0u;
    v217 = 1;
    v41 = *(v5 + 1120);
    v42 = *v41;
    v201[0] = &unk_1F5AF22D8;
    v201[1] = v42;
    v201[2] = &v212;
    v202 = *(v5 + 1104);
    v203 = v41 + 2;
    InterfaceFor = mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
    v200[0] = v3;
    v200[1] = InterfaceFor;
    mlir::FunctionOpInterface::setFunctionTypeAttr(v200, v201);
    *(v5 + 1024) = 0;
    LODWORD(v205) = 2;
    v209 = 0;
    v210 = 1;
    v207 = 0;
    v208 = 0;
    v206 = 0;
    v204 = &unk_1F5B3FBC0;
    v211 = v5 + 1016;
    llvm::raw_ostream::SetBufferAndMode(&v204, 0, 0, 0);
    v44 = *(&v213 + 1);
    v45 = v214;
    while (v44 != v45)
    {
      v46 = *v44;
      v47 = *(v44 + 8);
      v44 += 16;
      llvm::raw_ostream::write(&v204, v46, v47);
    }

    llvm::raw_ostream::write(&v204, v212, *(&v212 + 1) - v212);
    llvm::raw_ostream::~raw_ostream(&v204);
    v49 = __p;
    if (__p)
    {
      v50 = *(&__p + 1);
      v51 = __p;
      if (*(&__p + 1) != __p)
      {
        v52 = *(&__p + 1);
        do
        {
          v54 = *(v52 - 24);
          v52 -= 24;
          v53 = v54;
          if (v54)
          {
            *(v50 - 16) = v53;
            operator delete(v53);
          }

          v50 = v52;
        }

        while (v52 != v49);
LABEL_235:
        v51 = __p;
        goto LABEL_236;
      }

      goto LABEL_236;
    }
  }

  if (*(&v213 + 1))
  {
    *&v214 = *(&v213 + 1);
    operator delete(*(&v213 + 1));
  }

  if (v212)
  {
    *(&v212 + 1) = v212;
    operator delete(v212);
  }

  v199 |= 0x40u;
  if (v48 > 0x7F)
  {
    v67 = *(v3 + 36);
    v196 = v3;
    if (!v67)
    {
      goto LABEL_103;
    }

    goto LABEL_83;
  }

  v174 = (2 * v48) | 1;
  v176 = *(a2 + 1);
  v175 = *(a2 + 2);
  if (v176 < v175)
  {
    *v176 = v174;
    *(a2 + 1) = v176 + 1;
    v67 = *(v3 + 36);
    v196 = v3;
    if (!v67)
    {
      goto LABEL_103;
    }

    goto LABEL_83;
  }

  v177 = *a2;
  v178 = &v176[-*a2];
  v179 = v178 + 1;
  if ((v178 + 1) < 0)
  {
    goto LABEL_282;
  }

  v180 = v175 - v177;
  if (2 * v180 > v179)
  {
    v179 = 2 * v180;
  }

  if (v180 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v181 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v181 = v179;
  }

  if (v181)
  {
    v182 = operator new(v181);
  }

  else
  {
    v182 = 0;
  }

  v182[v178] = v174;
  v192 = &v182[v178 + 1];
  memcpy(v182, v177, v178);
  *a2 = v182;
  *(a2 + 1) = v192;
  *(a2 + 2) = &v182[v181];
  if (v177)
  {
    operator delete(v177);
  }

  v5 = v197;
  *(a2 + 1) = v192;
  v67 = *(v3 + 36);
  v196 = v3;
  if (v67)
  {
LABEL_83:
    v199 |= 2u;
    if (v67 > 0x7F)
    {
    }

    else
    {
      v68 = (2 * v67) | 1;
      v70 = *(a2 + 1);
      v69 = *(a2 + 2);
      if (v70 >= v69)
      {
        v72 = *a2;
        v73 = &v70[-*a2];
        v74 = v73 + 1;
        if ((v73 + 1) < 0)
        {
          goto LABEL_282;
        }

        v75 = v69 - v72;
        if (2 * v75 > v74)
        {
          v74 = 2 * v75;
        }

        if (v75 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v76 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v76 = v74;
        }

        if (v76)
        {
          v77 = operator new(v76);
        }

        else
        {
          v77 = 0;
        }

        v77[v73] = v68;
        v71 = &v77[v73 + 1];
        memcpy(v77, v72, v73);
        *a2 = v77;
        *(a2 + 1) = v71;
        *(a2 + 2) = &v77[v76];
        if (v72)
        {
          operator delete(v72);
        }

        v5 = v197;
      }

      else
      {
        *v70 = v68;
        v71 = (v70 + 1);
      }

      *(a2 + 1) = v71;
    }

    v78 = *(v3 + 36);
    v79 = (v3 - 16);
    if (!v78)
    {
      v79 = 0;
    }

    v204 = v79;
    v205 = v78;
    mlir::OperandRange::getTypes(&v204, &v212);
    v80 = *(&v212 + 1);
    v81 = *(&v213 + 1);
    if (*(&v212 + 1) != *(&v213 + 1))
    {
      v86 = v212;
      do
      {
        v204 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v86, v80) + 8) & 0xFFFFFFFFFFFFFFF8);
        v87 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v5 + 112, &v204) + 8);
        if (v87 > 0x7F)
        {
        }

        else
        {
          v88 = (2 * v87) | 1;
          v90 = *(a2 + 1);
          v89 = *(a2 + 2);
          if (v90 >= v89)
          {
            v91 = *a2;
            v92 = &v90[-*a2];
            v93 = v92 + 1;
            if ((v92 + 1) < 0)
            {
              goto LABEL_282;
            }

            v94 = v89 - v91;
            if (2 * v94 > v93)
            {
              v93 = 2 * v94;
            }

            if (v94 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v95 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v95 = v93;
            }

            if (v95)
            {
              v96 = operator new(v95);
            }

            else
            {
              v96 = 0;
            }

            v96[v92] = v88;
            v97 = &v96[v92 + 1];
            memcpy(v96, v91, v92);
            *a2 = v96;
            *(a2 + 1) = v97;
            *(a2 + 2) = &v96[v95];
            if (v91)
            {
              operator delete(v91);
            }

            v3 = v196;
            v5 = v197;
            *(a2 + 1) = v97;
          }

          else
          {
            *v90 = v88;
            *(a2 + 1) = v90 + 1;
          }
        }
      }

      while (v81 != ++v80);
    }
  }

LABEL_103:
  if ((*(v3 + 46) & 0x80) == 0)
  {
    goto LABEL_160;
  }

  v82 = *(v196 + 17);
  if (!v82)
  {
    goto LABEL_160;
  }

  v199 |= 4u;
  if (v82 > 0x7F)
  {
    if ((*(v196 + 46) & 0x80) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_141;
  }

  v83 = (2 * v82) | 1;
  v85 = *(a2 + 1);
  v84 = *(a2 + 2);
  if (v85 < v84)
  {
    *v85 = v83;
    *(a2 + 1) = v85 + 1;
    if ((*(v196 + 46) & 0x80) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_141;
  }

  v98 = *a2;
  v99 = &v85[-*a2];
  v100 = v99 + 1;
  if ((v99 + 1) < 0)
  {
    goto LABEL_282;
  }

  v101 = v84 - v98;
  if (2 * v101 > v100)
  {
    v100 = 2 * v101;
  }

  if (v101 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v102 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v102 = v100;
  }

  if (v102)
  {
    v103 = operator new(v102);
  }

  else
  {
    v103 = 0;
  }

  v103[v99] = v83;
  v104 = &v103[v99 + 1];
  memcpy(v103, v98, v99);
  *a2 = v103;
  *(a2 + 1) = v104;
  *(a2 + 2) = &v103[v102];
  if (v98)
  {
    operator delete(v98);
  }

  v5 = v197;
  *(a2 + 1) = v104;
  if ((*(v196 + 46) & 0x80) != 0)
  {
LABEL_141:
    v105 = *(v196 + 17);
    if (v105)
    {
      v106 = (*(v196 + 9) + 24);
      do
      {
        *&v212 = *v106;
        v107 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](v5 + 896, &v212);
        if (v107 > 0x7F)
        {
        }

        else
        {
          v108 = (2 * v107) | 1;
          v110 = *(a2 + 1);
          v109 = *(a2 + 2);
          if (v110 >= v109)
          {
            v111 = *a2;
            v112 = &v110[-*a2];
            v113 = v112 + 1;
            if ((v112 + 1) < 0)
            {
              goto LABEL_282;
            }

            v114 = v109 - v111;
            if (2 * v114 > v113)
            {
              v113 = 2 * v114;
            }

            if (v114 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v115 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v115 = v113;
            }

            if (v115)
            {
              v116 = operator new(v115);
            }

            else
            {
              v116 = 0;
            }

            v116[v112] = v108;
            v117 = &v116[v112 + 1];
            memcpy(v116, v111, v112);
            *a2 = v116;
            *(a2 + 1) = v117;
            *(a2 + 2) = &v116[v115];
            if (v111)
            {
              operator delete(v111);
            }

            v5 = v197;
            *(a2 + 1) = v117;
          }

          else
          {
            *v110 = v108;
            *(a2 + 1) = v110 + 1;
          }
        }

        v106 += 4;
      }

      while (--v105);
    }
  }

LABEL_160:
  v118 = *(v196 + 10);
  if (!v118)
  {
    goto LABEL_197;
  }

  v199 |= 8u;
  if (v118 > 0x7F)
  {
    mlir::SuccessorRange::SuccessorRange(&v212, v196);
    v122 = *(&v212 + 1);
    if (*(&v212 + 1))
    {
      goto LABEL_179;
    }
  }

  else
  {
    v119 = (2 * v118) | 1;
    v121 = *(a2 + 1);
    v120 = *(a2 + 2);
    if (v121 < v120)
    {
      *v121 = v119;
      *(a2 + 1) = v121 + 1;
      mlir::SuccessorRange::SuccessorRange(&v212, v196);
      v122 = *(&v212 + 1);
      if (!*(&v212 + 1))
      {
        goto LABEL_197;
      }

LABEL_179:
      v130 = (v212 + 24);
      while (1)
      {
        *&v212 = *v130;
        v131 = *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](v5 + 872, &v212);
        if (v131 > 0x7F)
        {
        }

        else
        {
          v132 = (2 * v131) | 1;
          v134 = *(a2 + 1);
          v133 = *(a2 + 2);
          if (v134 >= v133)
          {
            v135 = *a2;
            v136 = &v134[-*a2];
            v137 = v136 + 1;
            if ((v136 + 1) < 0)
            {
              goto LABEL_282;
            }

            v138 = v133 - v135;
            if (2 * v138 > v137)
            {
              v137 = 2 * v138;
            }

            if (v138 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v139 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v139 = v137;
            }

            if (v139)
            {
              v140 = operator new(v139);
            }

            else
            {
              v140 = 0;
            }

            v140[v136] = v132;
            v141 = &v140[v136 + 1];
            memcpy(v140, v135, v136);
            *a2 = v140;
            *(a2 + 1) = v141;
            *(a2 + 2) = &v140[v139];
            if (v135)
            {
              operator delete(v135);
            }

            v5 = v197;
            *(a2 + 1) = v141;
          }

          else
          {
            *v134 = v132;
            *(a2 + 1) = v134 + 1;
          }
        }

        v130 += 4;
        if (!--v122)
        {
          goto LABEL_197;
        }
      }
    }

    v123 = *a2;
    v124 = &v121[-*a2];
    v125 = v124 + 1;
    if ((v124 + 1) < 0)
    {
      goto LABEL_282;
    }

    v126 = v120 - v123;
    if (2 * v126 > v125)
    {
      v125 = 2 * v126;
    }

    if (v126 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v127 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v127 = v125;
    }

    if (v127)
    {
      v128 = operator new(v127);
    }

    else
    {
      v128 = 0;
    }

    v128[v124] = v119;
    v129 = &v128[v124 + 1];
    memcpy(v128, v123, v124);
    *a2 = v128;
    *(a2 + 1) = v129;
    *(a2 + 2) = &v128[v127];
    if (v123)
    {
      operator delete(v123);
    }

    v5 = v197;
    *(a2 + 1) = v129;
    mlir::SuccessorRange::SuccessorRange(&v212, v196);
    v122 = *(&v212 + 1);
    if (*(&v212 + 1))
    {
      goto LABEL_179;
    }
  }

LABEL_197:
  if (**(v5 + 984) >= 3)
  {
    v142 = *(v196 + 9);
    if (v142)
    {
      v143 = v196 - 16;
    }

    else
    {
      v143 = 0;
    }

    mlir::ValueRange::ValueRange(&v212, v143, v142);
  }

  v144 = &v194[v193] - __src;
  v145 = *(v196 + 11);
  v146 = *&v145 & 0x7FFFFFLL;
  if ((v145 & 0x7FFFFF) == 0)
  {
    *(*a2 + v144 - *(a2 + 9)) = v199;
    return 1;
  }

  *(*a2 + v144 - *(a2 + 9)) = v199 | 0x10;
  *&v212 = v196;
  v147 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v5 + 64, &v212);
  v148 = *v147;
  if ((*(*v147 + 5) & 1) == 0)
  {
    if (v146 > 0x3F)
    {
      goto LABEL_215;
    }

    v153 = (4 * v146) | 1;
    v155 = *(a2 + 1);
    v154 = *(a2 + 2);
    if (v155 < v154)
    {
      *v155 = v153;
      *(a2 + 1) = v155 + 1;
      v156 = *(v196 + 11);
      v157 = v156 & 0x7FFFFF;
      if ((v156 & 0x7FFFFF) != 0)
      {
        goto LABEL_216;
      }

      goto LABEL_212;
    }

    v160 = *a2;
    v161 = &v155[-*a2];
    v162 = v161 + 1;
    if ((v161 + 1) >= 0)
    {
      v163 = v154 - v160;
      if (2 * v163 > v162)
      {
        v162 = 2 * v163;
      }

      if (v163 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v164 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v164 = v162;
      }

      if (v164)
      {
        v165 = operator new(v164);
      }

      else
      {
        v165 = 0;
      }

      v165[v161] = v153;
      v191 = &v165[v161 + 1];
      memcpy(v165, v160, v161);
      *a2 = v165;
      *(a2 + 1) = v191;
      *(a2 + 2) = &v165[v164];
      if (v160)
      {
        operator delete(v160);
      }

      *(a2 + 1) = v191;
      v156 = *(v196 + 11);
      v157 = v156 & 0x7FFFFF;
      if ((v156 & 0x7FFFFF) != 0)
      {
LABEL_216:
        v159 = (((v196 + 16 * ((v156 >> 23) & 1) + ((v156 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v196 + 10));
        *&v212 = v5;
        *(&v212 + 1) = a2;
      }

LABEL_212:
      *&v212 = v5;
      *(&v212 + 1) = a2;
    }

LABEL_282:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v149 = *(v148 + 4);
  if (v149 != 1 || **(v5 + 984) < 2)
  {
LABEL_215:
    v156 = *(v196 + 11);
    v157 = v156 & 0x7FFFFF;
    if ((v156 & 0x7FFFFF) != 0)
    {
      goto LABEL_216;
    }

    goto LABEL_212;
  }

  __p = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v212 = 0u;
  v217 = 1;
  v150 = *(v196 + 11);
  v151 = v150 & 0x7FFFFF;
  if ((v150 & 0x7FFFFF) != 0)
  {
    v152 = (((v196 + 16 * ((v150 >> 23) & 1) + ((v150 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v196 + 10));
  }

  else
  {
    v152 = 0;
    v151 = 0;
  }

  v204 = v5;
  v205 = &v212;
  v184 = v183;
  if (v183)
  {
  }

  v185 = __p;
  if (__p)
  {
    v186 = *(&__p + 1);
    v187 = __p;
    if (*(&__p + 1) != __p)
    {
      v188 = *(&__p + 1);
      do
      {
        v190 = *(v188 - 24);
        v188 -= 24;
        v189 = v190;
        if (v190)
        {
          *(v186 - 16) = v189;
          operator delete(v189);
        }

        v186 = v188;
      }

      while (v188 != v185);
      v187 = __p;
    }

    *(&__p + 1) = v185;
    operator delete(v187);
  }

  if (*(&v213 + 1))
  {
    *&v214 = *(&v213 + 1);
    operator delete(*(&v213 + 1));
  }

  if (v212)
  {
    *(&v212 + 1) = v212;
    operator delete(v212);
  }

  return (v184 & 1) != 0;
}

uint64_t mlir::Operation::getDiscardableAttrDictionary(mlir::Operation *this)
{
  v16[6] = *MEMORY[0x1E69E9840];
  if (*(this + 47))
  {
    return *(this + 7);
  }

  Context = mlir::Attribute::getContext((this + 24));
  mlir::Operation::getDiscardableAttrs(this, v5);
  v12[0] = v5[0];
  v12[1] = v5[1];
  v13 = v6;
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v14 = v16;
  v15 = 0x300000000;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<llvm::filter_iterator_impl<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>,void>(&v14, v12, v10);
  result = mlir::DictionaryAttr::get(Context, v14, v15);
  if (v14 != v16)
  {
    v4 = result;
    free(v14);
    return v4;
  }

  return result;
}

void anonymous namespace::BytecodeWriter::writeUseListOrders(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v196 = *MEMORY[0x1E69E9840];
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v193 = 0;
  v194 = a4;
  v195 = 0;
  if (!a5)
  {
    goto LABEL_239;
  }

  v6 = a5;
  v9 = 0;
  v10 = 0;
  v183 = a2;
LABEL_5:
  v11 = mlir::ValueRange::dereference_iterator(&v194, v10);
  v12 = *v11;
  if (!*v11 || !*v12)
  {
    goto LABEL_4;
  }

  v13 = v11;
  __dst = v12[2];
  v14 = **llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 64, &__dst);
  v15 = mlir::OpOperand::getOperandNumber(v12) | (v14 << 32);
  __dst = &v191;
  v191 = 0;
  v192 = v15;
  v190 = 0x300000001;
  v16 = **v13;
  if (!v16)
  {
    a2 = v183;
    goto LABEL_4;
  }

  v17 = v5 & 0xFFFFFFFF00000000;
  v18 = 1;
  v19 = 1;
  while (1)
  {
    v20 = *(v16 + 2);
    v21 = *(a1 + 80);
    if (!v21)
    {
      goto LABEL_32;
    }

    v22 = *(a1 + 64);
    v23 = v21 - 1;
    v24 = ((v20 >> 4) ^ (v20 >> 9)) & (v21 - 1);
    v25 = (v22 + 16 * v24);
    v26 = *v25;
    if (v20 != *v25)
    {
      break;
    }

LABEL_25:
    v31 = *v25[1];
    v32 = mlir::OpOperand::getOperandNumber(v16) | (v31 << 32);
    v33 = v190;
    if (v190 >= HIDWORD(v190))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v191, v190 + 1, 16);
      v33 = v190;
    }

    v18 &= v15 > v32;
    v5 = v19 | v17;
    v34 = (__dst + 16 * v33);
    *v34 = v5;
    v34[1] = v32;
    v35 = (v190 + 1);
    LODWORD(v190) = v190 + 1;
    ++v19;
    v16 = *v16;
    v15 = v32;
    if (!v16)
    {
      v46 = __dst;
      if (v18)
      {
        v6 = a5;
        a2 = v183;
LABEL_86:
        if (v46 != &v191)
        {
          free(v46);
        }

LABEL_4:
        v9 = v193 + 1;
        v10 = v195 + 1;
        ++v193;
        v195 = v10;
        if (v10 != v6)
        {
          goto LABEL_5;
        }

        v83 = v186;
        if (!v186)
        {
          goto LABEL_239;
        }

        *a3 |= 0x20u;
        if (a5 != 1)
        {
          if (v83 <= 0x7F)
          {
            v84 = (2 * v83) | 1;
            v86 = a2[1];
            v85 = a2[2];
            if (v86 >= v85)
            {
              v167 = *a2;
              v168 = &v86[-*a2];
              v169 = v168 + 1;
              if ((v168 + 1) < 0)
              {
LABEL_248:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v170 = v85 - v167;
              if (2 * v170 > v169)
              {
                v169 = 2 * v170;
              }

              if (v170 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v171 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v171 = v169;
              }

              if (v171)
              {
                v172 = operator new(v171);
              }

              else
              {
                v172 = 0;
              }

              v172[v168] = v84;
              v173 = &v172[v168 + 1];
              memcpy(v172, v167, v168);
              *v183 = v172;
              v183[1] = v173;
              v183[2] = &v172[v171];
              if (v167)
              {
                operator delete(v167);
              }

              v183[1] = v173;
              if (v186)
              {
                goto LABEL_103;
              }
            }

            else
            {
              *v86 = v84;
              a2[1] = v86 + 1;
              if (!v186)
              {
                goto LABEL_239;
              }

LABEL_103:
              if (v187)
              {
                v87 = 72 * v187;
                j = v185;
                while (*j >= 0xFFFFFFFE)
                {
                  j = (j + 72);
                  v87 -= 72;
                  if (!v87)
                  {
                    goto LABEL_239;
                  }
                }
              }

              else
              {
                j = v185;
              }

              if (j != (v185 + 72 * v187))
              {
                v182 = vdupq_n_s64(2uLL);
                v179 = (v185 + 72 * v187);
                do
                {
                  v89 = 0;
                  v90 = *j;
                  __dst = &v191;
                  v190 = 0xC00000000;
                  if (&__dst == (j + 8))
                  {
                    v92 = 0;
LABEL_121:
                    v98 = v183;
                    if (a5 == 1)
                    {
                      goto LABEL_135;
                    }

                    goto LABEL_130;
                  }

                  v91 = *(j + 4);
                  v92 = 0;
                  if (!*(j + 4))
                  {
                    goto LABEL_121;
                  }

                  v93 = &v191;
                  v94 = *(j + 4);
                  if (v91 >= 0xD)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v191, *(j + 4), 4);
                    v94 = *(j + 4);
                    if (!v94)
                    {
                      goto LABEL_118;
                    }

                    v93 = __dst;
                  }

                  memcpy(v93, *(j + 1), 4 * v94);
LABEL_118:
                  LODWORD(v190) = v91;
                  v95 = (v91 - 1) & 0x3FFFFFFFFFFFFFFFLL;
                  if (v95 >= 3)
                  {
                    v99 = v95 + 1;
                    v96 = (v95 + 1) & 0x7FFFFFFFFFFFFFFCLL;
                    v97 = (__dst + 4 * v96);
                    v100 = __dst + 8;
                    v101 = 0uLL;
                    v102 = v96;
                    v103 = 0uLL;
                    v104 = xmmword_1E09700F0;
                    do
                    {
                      v105 = *(v100 - 1);
                      v106.i64[0] = v105;
                      v106.i64[1] = HIDWORD(v105);
                      v107 = v106;
                      v106.i64[0] = *v100;
                      v106.i64[1] = HIDWORD(*v100);
                      v101 = vsubq_s64(v101, vmvnq_s8(vceqq_s64(v104, v107)));
                      v103 = vsubq_s64(v103, vmvnq_s8(vceqq_s64(vaddq_s64(v104, v182), v106)));
                      v104 = vaddq_s64(v104, vdupq_n_s64(4uLL));
                      v100 += 2;
                      v102 -= 4;
                    }

                    while (v102);
                    v92 = vaddvq_s64(vaddq_s64(v103, v101));
                    if (v99 == v96)
                    {
                      goto LABEL_129;
                    }
                  }

                  else
                  {
                    v92 = 0;
                    v96 = 0;
                    v97 = __dst;
                  }

                  do
                  {
                    v108 = *v97++;
                    if (v96 != v108)
                    {
                      ++v92;
                    }

                    ++v96;
                  }

                  while (v97 != (__dst + 4 * v91));
LABEL_129:
                  v89 = v91 >> 1;
                  v98 = v183;
                  if (a5 == 1)
                  {
                    goto LABEL_135;
                  }

LABEL_130:
                  if (v90 > 0x7F)
                  {
LABEL_135:
                    if (v92 >= v89)
                    {
                      goto LABEL_185;
                    }

                    goto LABEL_136;
                  }

                  v109 = (2 * v90) | 1;
                  v111 = *(v98 + 1);
                  v110 = *(v98 + 2);
                  if (v111 >= v110)
                  {
                    v136 = *v98;
                    v137 = &v111[-*v98];
                    v138 = v137 + 1;
                    if ((v137 + 1) < 0)
                    {
                      goto LABEL_248;
                    }

                    v139 = v110 - v136;
                    if (2 * v139 > v138)
                    {
                      v138 = 2 * v139;
                    }

                    if (v139 >= 0x3FFFFFFFFFFFFFFFLL)
                    {
                      v140 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v140 = v138;
                    }

                    if (v140)
                    {
                      v141 = operator new(v140);
                    }

                    else
                    {
                      v141 = 0;
                    }

                    v141[v137] = v109;
                    v142 = &v141[v137 + 1];
                    memcpy(v141, v136, v137);
                    v98 = v183;
                    *v183 = v141;
                    v183[1] = v142;
                    v183[2] = &v141[v140];
                    if (v136)
                    {
                      operator delete(v136);
                    }

                    v183[1] = v142;
                    if (v92 >= v89)
                    {
LABEL_185:
                      if (v190 > 0x3F)
                      {
                        v146 = v190;
                        if (v190)
                        {
                          goto LABEL_203;
                        }
                      }

                      else
                      {
                        v143 = (4 * v190) | 1;
                        v145 = *(v98 + 1);
                        v144 = *(v98 + 2);
                        if (v145 >= v144)
                        {
                          v147 = *v98;
                          v148 = &v145[-*v98];
                          v149 = v148 + 1;
                          if ((v148 + 1) < 0)
                          {
                            goto LABEL_248;
                          }

                          v150 = v144 - v147;
                          if (2 * v150 > v149)
                          {
                            v149 = 2 * v150;
                          }

                          if (v150 >= 0x3FFFFFFFFFFFFFFFLL)
                          {
                            v151 = 0x7FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v151 = v149;
                          }

                          if (v151)
                          {
                            v152 = operator new(v151);
                          }

                          else
                          {
                            v152 = 0;
                          }

                          v152[v148] = v143;
                          v153 = &v152[v148 + 1];
                          memcpy(v152, v147, v148);
                          v98 = v183;
                          *v183 = v152;
                          v183[1] = v153;
                          v183[2] = &v152[v151];
                          if (v147)
                          {
                            operator delete(v147);
                          }

                          v183[1] = v153;
                          v146 = v190;
                          if (v190)
                          {
LABEL_203:
                            v154 = __dst;
                            v155 = 4 * v146;
                            while (1)
                            {
                              v156 = *v154;
                              if (v156 > 0x7F)
                              {
                              }

                              else
                              {
                                v157 = (2 * v156) | 1;
                                v159 = *(v98 + 1);
                                v158 = *(v98 + 2);
                                if (v159 >= v158)
                                {
                                  v160 = *v98;
                                  v161 = &v159[-*v98];
                                  v162 = v161 + 1;
                                  if ((v161 + 1) < 0)
                                  {
                                    goto LABEL_248;
                                  }

                                  v163 = v158 - v160;
                                  if (2 * v163 > v162)
                                  {
                                    v162 = 2 * v163;
                                  }

                                  if (v163 >= 0x3FFFFFFFFFFFFFFFLL)
                                  {
                                    v164 = 0x7FFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v164 = v162;
                                  }

                                  if (v164)
                                  {
                                    v165 = operator new(v164);
                                  }

                                  else
                                  {
                                    v165 = 0;
                                  }

                                  v165[v161] = v157;
                                  v166 = &v165[v161 + 1];
                                  memcpy(v165, v160, v161);
                                  v98 = v183;
                                  *v183 = v165;
                                  v183[1] = v166;
                                  v183[2] = &v165[v164];
                                  if (v160)
                                  {
                                    operator delete(v160);
                                  }

                                  v183[1] = v166;
                                }

                                else
                                {
                                  *v159 = v157;
                                  *(v98 + 1) = v159 + 1;
                                }
                              }

                              ++v154;
                              v155 -= 4;
                              if (!v155)
                              {
                                goto LABEL_221;
                              }
                            }
                          }
                        }

                        else
                        {
                          *v145 = v143;
                          *(v98 + 1) = v145 + 1;
                          v146 = v190;
                          if (v190)
                          {
                            goto LABEL_203;
                          }
                        }
                      }

                      goto LABEL_221;
                    }
                  }

                  else
                  {
                    *v111 = v109;
                    *(v98 + 1) = v111 + 1;
                    if (v92 >= v89)
                    {
                      goto LABEL_185;
                    }
                  }

LABEL_136:
                  if (v190)
                  {
                    v112 = 0;
                    v113 = __dst;
                    for (i = 4 * v190; i; i -= 4)
                    {
                      v115 = v113[v112];
                      if (v112 == v115)
                      {
                        goto LABEL_139;
                      }

                      if (v115 > 0x7F)
                      {
                        if (v112 > 0x7F)
                        {
                          goto LABEL_138;
                        }
                      }

                      else
                      {
                        v116 = (2 * v115) | 1;
                        v118 = *(v98 + 1);
                        v117 = *(v98 + 2);
                        if (v118 >= v117)
                        {
                          v119 = *v98;
                          v120 = v118 - v119;
                          v121 = v118 - v119 + 1;
                          if (v121 < 0)
                          {
                            goto LABEL_248;
                          }

                          v122 = v117 - v119;
                          if (2 * v122 > v121)
                          {
                            v121 = 2 * v122;
                          }

                          if (v122 >= 0x3FFFFFFFFFFFFFFFLL)
                          {
                            v123 = 0x7FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v123 = v121;
                          }

                          if (v123)
                          {
                            v124 = operator new(v123);
                          }

                          else
                          {
                            v124 = 0;
                          }

                          v124[v120] = v116;
                          v125 = &v124[v120 + 1];
                          memcpy(v124, v119, v120);
                          *v183 = v124;
                          v183[1] = v125;
                          v183[2] = &v124[v123];
                          if (v119)
                          {
                            operator delete(v119);
                          }

                          v98 = v183;
                          v183[1] = v125;
                          if (v112 > 0x7F)
                          {
LABEL_138:
                            goto LABEL_139;
                          }
                        }

                        else
                        {
                          *v118 = v116;
                          *(v98 + 1) = v118 + 1;
                          if (v112 > 0x7F)
                          {
                            goto LABEL_138;
                          }
                        }
                      }

                      v126 = (2 * v112) | 1;
                      v128 = *(v98 + 1);
                      v127 = *(v98 + 2);
                      if (v128 >= v127)
                      {
                        v129 = *v98;
                        v130 = v128 - v129;
                        v131 = v128 - v129 + 1;
                        if (v131 < 0)
                        {
                          goto LABEL_248;
                        }

                        v132 = v127 - v129;
                        if (2 * v132 > v131)
                        {
                          v131 = 2 * v132;
                        }

                        if (v132 >= 0x3FFFFFFFFFFFFFFFLL)
                        {
                          v133 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v133 = v131;
                        }

                        if (v133)
                        {
                          v134 = operator new(v133);
                        }

                        else
                        {
                          v134 = 0;
                        }

                        v134[v130] = v126;
                        v135 = &v134[v130 + 1];
                        memcpy(v134, v129, v130);
                        *v183 = v134;
                        v183[1] = v135;
                        v183[2] = &v134[v133];
                        if (v129)
                        {
                          operator delete(v129);
                        }

                        v98 = v183;
                        v183[1] = v135;
                      }

                      else
                      {
                        *v128 = v126;
                        *(v98 + 1) = v128 + 1;
                      }

LABEL_139:
                      ++v112;
                    }
                  }

LABEL_221:
                  if (__dst != &v191)
                  {
                    free(__dst);
                  }

                  for (j = (j + 72); j != v179; j = (j + 72))
                  {
                    if (*j < 0xFFFFFFFE)
                    {
                      break;
                    }
                  }
                }

                while (j != v179);
              }
            }

LABEL_239:
            v174 = v185;
            if (v187)
            {
              v175 = 72 * v187;
              v176 = v185 + 24;
              do
              {
                if (*(v176 - 6) <= 0xFFFFFFFD)
                {
                  v177 = *(v176 - 2);
                  if (v176 != v177)
                  {
                    free(v177);
                  }
                }

                v176 += 72;
                v175 -= 72;
              }

              while (v175);
              v174 = v185;
              v178 = 72 * v187;
            }

            else
            {
              v178 = 0;
            }

            llvm::deallocate_buffer(v174, v178);
          }
        }

        if (!v186)
        {
          goto LABEL_239;
        }

        goto LABEL_103;
      }

      v47 = 126 - 2 * __clz(v35);
      if (v35)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(__dst, __dst + 4 * v35, v48, 1);
      v184 = v9;
      v46 = __dst;
      v49 = v190;
      v50 = v187;
      v6 = a5;
      a2 = v183;
      if (v187)
      {
        v51 = (v187 - 1) & (37 * v9);
        v52 = (v185 + 72 * v51);
        v53 = *v52;
        if (*v52 == v9)
        {
          goto LABEL_86;
        }

        v54 = 0;
        v55 = 1;
        while (v53 != -1)
        {
          if (v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v53 == -2;
          }

          if (v56)
          {
            v54 = v52;
          }

          v57 = v51 + v55++;
          v51 = v57 & (v187 - 1);
          v52 = (v185 + 72 * v51);
          v53 = *v52;
          if (*v52 == v9)
          {
            goto LABEL_86;
          }
        }

        if (v54)
        {
          v58 = v54;
        }

        else
        {
          v58 = v52;
        }
      }

      else
      {
        v58 = 0;
      }

      v188 = v58;
      v59 = __dst;
      if (4 * v186 + 4 >= 3 * v187)
      {
        v50 = 2 * v187;
      }

      else if (v187 + ~v186 - HIDWORD(v186) > v187 >> 3)
      {
        LODWORD(v186) = v186 + 1;
        if (*v58 != -1)
        {
          goto LABEL_70;
        }

        goto LABEL_71;
      }

      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::grow(&v185, v50);
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::LookupBucketFor<unsigned int>(&v185, &v184, &v188);
      v58 = v188;
      LODWORD(v186) = v186 + 1;
      if (*v188 != -1)
      {
LABEL_70:
        --HIDWORD(v186);
      }

LABEL_71:
      *v58 = v184;
      *(v58 + 1) = v58 + 6;
      v60 = (v58 + 2);
      *(v58 + 2) = 0xC00000000;
      if (v49 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v58 + 2), (v58 + 6), v49, 4);
        v61 = v58[4];
        v62 = *v60;
        v63 = (*v60 + 4 * v61);
        v64 = (v49 - 1) & 0xFFFFFFFFFFFFFFFLL;
        if (v64 < 0xC)
        {
          goto LABEL_73;
        }

LABEL_76:
        if (v63 >= &v59[16 * v64 + 8] || (v66 = v62->u64 + 4 * v61 + 4 * v64 + 4, v65 = v59, v59 >= v66))
        {
          v67 = v64 + 1;
          v68 = (v64 + 1) & 7;
          if (!v68)
          {
            v68 = 8;
          }

          v69 = v67 - v68;
          v70 = (v63 + 4 * v69);
          v65 = &v59[16 * v69];
          v71 = (v59 + 64);
          v72 = v63 + 1;
          do
          {
            v73 = v71 - 8;
            v74 = vld2q_f64(v73);
            v75 = v71 - 4;
            v76 = vld2q_f64(v75);
            v77 = v71 + 16;
            v79 = vld2q_f64(v71);
            v78 = v71 + 4;
            v80 = vld2q_f64(v78);
            v72[-1] = vuzp1q_s32(v74, v76);
            *v72 = vuzp1q_s32(v79, v80);
            v72 += 2;
            v71 = v77;
            v69 -= 8;
          }

          while (v69);
          v63 = v70;
        }

        goto LABEL_83;
      }

      if (v49)
      {
        v61 = 0;
        v62 = *v60;
        v63 = *v60;
        v64 = (v49 - 1) & 0xFFFFFFFFFFFFFFFLL;
        if (v64 >= 0xC)
        {
          goto LABEL_76;
        }

LABEL_73:
        v65 = v59;
        do
        {
LABEL_83:
          v81 = *v65;
          v65 += 16;
          v63->i32[0] = v81;
          v63 = (v63 + 4);
        }

        while (v65 != &v59[16 * v49]);
        v82 = v58[4];
      }

      else
      {
        v82 = 0;
      }

      v58[4] = v82 + v49;
      v46 = __dst;
      goto LABEL_86;
    }
  }

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
    v25 = (v22 + 16 * (v30 & v23));
    v26 = *v25;
    if (v20 == *v25)
    {
      goto LABEL_25;
    }
  }

  if (v27)
  {
    v25 = v27;
  }

  v36 = *(a1 + 72);
  if (4 * v36 + 4 < 3 * v21)
  {
    if (v21 + ~v36 - *(a1 + 76) > v21 >> 3)
    {
      *(a1 + 72) = v36 + 1;
      if (*v25 == -4096)
      {
LABEL_24:
        *v25 = v20;
        v25[1] = 0;
        goto LABEL_25;
      }

LABEL_23:
      --*(a1 + 76);
      goto LABEL_24;
    }
  }

  else
  {
LABEL_32:
    v21 *= 2;
  }

  llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(a1 + 64, v21);
  v37 = *(a1 + 80);
  if (v37)
  {
    v38 = *(a1 + 64);
    v39 = v37 - 1;
    v40 = (v37 - 1) & ((v20 >> 4) ^ (v20 >> 9));
    v25 = (v38 + 16 * v40);
    v41 = *v25;
    if (v20 != *v25)
    {
      v42 = 0;
      v43 = 1;
      while (v41 != -4096)
      {
        if (v42)
        {
          v44 = 0;
        }

        else
        {
          v44 = v41 == -8192;
        }

        if (v44)
        {
          v42 = v25;
        }

        v45 = v40 + v43++;
        v40 = v45 & v39;
        v25 = (v38 + 16 * (v45 & v39));
        v41 = *v25;
        if (v20 == *v25)
        {
          goto LABEL_45;
        }
      }

      if (v42)
      {
        v25 = v42;
      }
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_45:
  ++*(a1 + 72);
  if (*v25 == -4096)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void *mlir::Operation::getDiscardableAttrs@<X0>(mlir::Operation *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 6);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    result = mlir::ArrayAttr::getValue((this + 56));
    v8 = result;
    v10 = &result[2 * v14];
    v5 = 0;
    if (!v14)
    {
LABEL_17:
      v6 = 0;
      goto LABEL_18;
    }

    v11 = this + 44;
LABEL_15:
    v15 = v8[1];
    *&v16 = *v8;
    *(&v16 + 1) = v15;
    if (!v11[3])
    {
      result = mlir::CallGraphNode::getCallableRegion(&v16);
    }

    goto LABEL_17;
  }

  v5 = *(v4 + 96);
  v6 = *(v4 + 104);
  result = mlir::ArrayAttr::getValue((this + 56));
  v8 = result;
  v10 = &result[2 * v9];
  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = this + 44;
  if (!v6)
  {
    goto LABEL_15;
  }

  v12 = 8 * v6;
  while (1)
  {
    v16 = *v8;
    if (*(this + 47))
    {
      break;
    }

    result = mlir::CallGraphNode::getCallableRegion(&v16);
    v13 = 0;
    while (*(v5 + v13) != result)
    {
      v13 += 8;
      if (v12 == v13)
      {
        goto LABEL_18;
      }
    }

    if (v12 == v13)
    {
      break;
    }

    v8 += 2;
    if (v8 == v10)
    {
      v8 = v10;
      break;
    }
  }

LABEL_18:
  *a2 = v8;
  a2[1] = v10;
  a2[2] = this;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v10;
  a2[6] = v10;
  a2[7] = this;
  a2[8] = v5;
  a2[9] = v6;
  return result;
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::append<llvm::filter_iterator_impl<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>,void>(uint64_t a1, __int128 **a2, __int128 **a3)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 == *a3)
  {
    v11 = 0;
  }

  else
  {
    v8 = a2[4];
    v9 = a2[1];
    v10 = a2[2];
    v11 = 0;
    if (v8)
    {
      v12 = a2[3];
      v13 = 8 * v8;
      do
      {
        do
        {
          if (++v6 == v9)
          {
            break;
          }

          v32 = *v6;
          if (*(v10 + 47))
          {
            break;
          }

          CallableRegion = mlir::CallGraphNode::getCallableRegion(&v32);
          v15 = v13;
          v16 = v12;
          while (*v16 != CallableRegion)
          {
            v16 = (v16 + 8);
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_10;
            }
          }
        }

        while (v15);
LABEL_10:
        ++v11;
      }

      while (v6 != v7);
    }

    else
    {
      v29 = v6 + 1;
      do
      {
        if (v29 != v9)
        {
          v32 = *v29;
          if (!*(v10 + 47))
          {
            mlir::CallGraphNode::getCallableRegion(&v32);
          }
        }

        ++v11;
        v30 = v29++ == v7;
      }

      while (!v30);
    }
  }

  v17 = v11 + *(a1 + 8);
  if (v17 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v17, 16);
  }

  v18 = *a2;
  v19 = *a3;
  if (*a2 != v19)
  {
    v20 = (*a1 + 16 * *(a1 + 8));
    v21 = a2[4];
    v22 = a2[1];
    v23 = a2[2];
    if (v21)
    {
      v24 = a2[3];
      v25 = 8 * v21;
      do
      {
        *v20 = *v18;
        do
        {
          if (++v18 == v22)
          {
            break;
          }

          v32 = *v18;
          if (*(v23 + 47))
          {
            break;
          }

          v26 = mlir::CallGraphNode::getCallableRegion(&v32);
          v27 = v25;
          v28 = v24;
          while (*v28 != v26)
          {
            v28 = (v28 + 8);
            v27 -= 8;
            if (!v27)
            {
              goto LABEL_18;
            }
          }
        }

        while (v27);
LABEL_18:
        ++v20;
      }

      while (v18 != v19);
    }

    else
    {
      v31 = v18 + 1;
      do
      {
        *v20 = *(v31 - 1);
        if (v31 != v22)
        {
          v32 = *v31;
          if (!*(v23 + 47))
          {
            mlir::CallGraphNode::getCallableRegion(&v32);
          }
        }

        ++v20;
        v30 = v31++ == v19;
      }

      while (!v30);
    }
  }

  *(a1 + 8) += v11;
}

uint64_t anonymous namespace::anonymous namespace::PropertiesSectionBuilder::emit(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v57[5] = *MEMORY[0x1E69E9840];
  v55 = v57;
  v56 = xmmword_1E09700D0;
  *__p = 0u;
  v53 = 0u;
  *v50 = 0u;
  v51 = 0u;
  *v49 = 0u;
  v54 = 1;
  if (a3 > 0x7F)
  {
  }

  else
  {
    v6 = (2 * a3) | 1;
    v7 = operator new(1uLL);
    v49[0] = v7;
    *v7 = v6;
    v49[1] = v7 + 1;
    v50[0] = v7 + 1;
  }

  DWORD2(v44) = 2;
  v46 = 0;
  v47 = 1;
  memset(v45, 0, sizeof(v45));
  *&v44 = &unk_1F5B3FBC0;
  v48 = &v55;
  llvm::raw_ostream::SetBufferAndMode(&v44, 0, 0, 0);
  v8 = v50[1];
  v9 = v51;
  while (v8 != v9)
  {
    v10 = *v8;
    v11 = *(v8 + 1);
    v8 += 16;
    llvm::raw_ostream::write(&v44, v10, v11);
  }

  llvm::raw_ostream::write(&v44, v49[0], v49[1] - v49[0]);
  llvm::raw_ostream::~raw_ostream(&v44);
  v12 = __p[0];
  if (__p[0])
  {
    v13 = __p[1];
    v14 = __p[0];
    if (__p[1] != __p[0])
    {
      v15 = __p[1];
      do
      {
        v17 = *(v15 - 3);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 2) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = __p[0];
    }

    __p[1] = v12;
    operator delete(v14);
  }

  if (v50[1])
  {
    *&v51 = v50[1];
    operator delete(v50[1]);
  }

  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = v18 - *a1;
  v21 = (0xAAAAAAAAAAAAAAABLL * (v20 >> 3));
  v22 = *(a1 + 16);
  if (v18 >= v22)
  {
    v24 = (v21 + 1);
    if ((v21 + 1) > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v25 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v19) >> 3);
    if (2 * v25 > v24)
    {
      v24 = 2 * v25;
    }

    if (v25 >= 0x555555555555555)
    {
      v26 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v26 = v24;
    }

    if (v26)
    {
      if (v26 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v27 = operator new(24 * v26);
    }

    else
    {
      v27 = 0;
    }

    v28 = &v27[8 * (v20 >> 3)];
    v29 = &v27[24 * v26];
    *v28 = 0;
    *(v28 + 1) = 0;
    *(v28 + 2) = 0;
    v23 = v28 + 24;
    v30 = &v28[-v20];
    memcpy(&v28[-v20], v19, v20);
    *a1 = v30;
    *(a1 + 8) = v23;
    *(a1 + 16) = v29;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v18 = 0;
    v18[1] = 0;
    v23 = v18 + 3;
    v18[2] = 0;
  }

  *(a1 + 8) = v23;
  v31 = *(v23 - 3);
  v32 = v56;
  v33 = v56 + a3;
  if (*(v23 - 1) - v31 < v56 + a3)
  {
    v43 = a2;
    if ((v33 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v34 = *(v23 - 2) - v31;
    v35 = operator new(v33);
    memcpy(v35, v31, v34);
    *(v23 - 3) = v35;
    *(v23 - 2) = &v35[v34];
    *(v23 - 1) = &v35[v33];
    a2 = v43;
    if (v31)
    {
      operator delete(v31);
      v32 = v56;
    }
  }

  std::vector<char>::__insert_with_size[abi:nn200100]<char *,char *>((v23 - 3), *(v23 - 2), v55, &v55[v32], v32);
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>((v23 - 3), *(v23 - 2), a2, &a2[a3], a3);
  v36 = *(v23 - 2) - *(v23 - 3);
  *&v44 = *(v23 - 3);
  *(&v44 + 1) = v36;
  v45[0] = v21;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::try_emplace<long long>(a1 + 88, &v44, v45, v49);
  if ((v50[0] & 1) == 0)
  {
    v37 = *(a1 + 8);
    v40 = *(v37 - 24);
    v39 = v37 - 24;
    v38 = v40;
    if (v40)
    {
      *(*(a1 + 8) - 16) = v38;
      operator delete(v38);
    }

    *(a1 + 8) = v39;
  }

  v41 = *(v49[0] + 2);
  if (v55 != v57)
  {
    free(v55);
  }

  return v41;
}

char *std::vector<char>::__insert_with_size[abi:nn200100]<char *,char *>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) < a5)
  {
    v11 = *a1;
    v12 = v10 - *a1 + a5;
    if (v12 < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = operator new(v15);
    }

    else
    {
      v16 = 0;
    }

    memcpy(&v13[v16], __src, a5);
    v42 = v10 - v5;
    memcpy(&v13[v16 + a5], v5, v42);
    *(a1 + 8) = v5;
    memcpy(v16, v11, v5 - v11);
    *a1 = v16;
    *(a1 + 8) = &v13[v16 + a5 + v42];
    *(a1 + 16) = v16 + v15;
    if (v11)
    {
      operator delete(v11);
    }

    return &v13[v16];
  }

  v17 = v10 - __dst;
  if ((v10 - __dst) >= a5)
  {
    v31 = &__dst[a5];
    v32 = (v10 - a5);
    v33 = *(a1 + 8);
    if (v10 >= a5)
    {
      if (a5 <= 0x1F)
      {
        goto LABEL_45;
      }

      v32 += a5 & 0x7FFFFFFFFFFFFFE0;
      v33 = (v10 + (a5 & 0x7FFFFFFFFFFFFFE0));
      v34 = (v10 + 16);
      v35 = (v10 + 16 - a5);
      v36 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v37 = *v35;
        *(v34 - 1) = *(v35 - 1);
        *v34 = v37;
        v34 += 2;
        v35 += 2;
        v36 -= 32;
      }

      while (v36);
      if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
      {
LABEL_45:
        do
        {
          v38 = *v32++;
          *v33++ = v38;
        }

        while (v32 != v10);
      }
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[a5], __dst, v10 - v31);
    }

    v39 = v5;
    v40 = __src;
    v41 = a5;
    goto LABEL_40;
  }

  v18 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    v19 = a4;
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
    a4 = v19;
  }

  v20 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v17 >= 1)
  {
    v21 = v5 + a5;
    v22 = &v20[-a5];
    if (&v20[-a5] >= v10)
    {
      v24 = (v10 + v18);
    }

    else
    {
      v23 = &__src[v10 + a5] - (v5 + a4);
      v24 = (v10 + v18);
      if (v23 < 0x20)
      {
        goto LABEL_46;
      }

      if (a5 <= 0x1F)
      {
        goto LABEL_46;
      }

      v22 += v23 & 0xFFFFFFFFFFFFFFE0;
      v24 = &v20[v23 & 0xFFFFFFFFFFFFFFE0];
      v25 = &a4[v5 + 16];
      v26 = (v25 - __src);
      v27 = (v25 - &__src[a5]);
      v28 = v23 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v29 = *v27;
        *(v26 - 1) = *(v27 - 1);
        *v26 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 32;
      }

      while (v28);
      if (v23 != (v23 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_46:
        do
        {
          v30 = *v22++;
          *v24++ = v30;
        }

        while (v22 < v10);
      }
    }

    *(a1 + 8) = v24;
    if (v20 != v21)
    {
      memmove(v5 + a5, v5, v20 - v21);
    }

    v39 = v5;
    v40 = __src;
    v41 = v10 - v5;
LABEL_40:
    memmove(v39, v40, v41);
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::try_emplace<long long>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::LookupBucketFor<llvm::ArrayRef<char>>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        v9[2] = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::LookupBucketFor<llvm::ArrayRef<char>>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::LookupBucketFor<llvm::ArrayRef<char>>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = *a1;
    v7 = v4 - 1;
    v8 = (v4 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8));
    v9 = *a2;
    v10 = *(a2 + 8);
    if (v9 == -2)
    {
      v11 = 1;
      v12 = (v5 + 24 * v8);
      v13 = *v12;
      if (*v12 == -2)
      {
LABEL_27:
        result = 1;
        goto LABEL_28;
      }

      while (v13 != -1)
      {
        if (v10 != v12[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v13, v10))
        {
          v14 = v8 + v11++;
          v8 = v14 & v7;
          v12 = (v5 + 24 * (v14 & v7));
          v13 = *v12;
          if (*v12 != -2)
          {
            continue;
          }
        }

        goto LABEL_27;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v18 = 1;
      v12 = (v5 + 24 * v8);
      v19 = *v12;
      if (*v12 != -2)
      {
        goto LABEL_24;
      }

      while (1)
      {
        do
        {
          if (v16)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19 + 2 == 0;
          }

          if (v20)
          {
            v16 = v12;
          }

          v21 = v8 + v18++;
          v8 = v21 & v7;
          v12 = (v5 + 24 * (v21 & v7));
          v19 = *v12;
        }

        while (*v12 == -2);
LABEL_24:
        if (v19 == -1)
        {
          break;
        }

        if (v10 == v12[1] && !memcmp(v9, v19, v10))
        {
          goto LABEL_27;
        }
      }
    }

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    if (v9 == -1)
    {
      result = 1;
    }

    else
    {
      v12 = v17;
      result = 0;
    }
  }

  else
  {
    v12 = 0;
    result = 0;
  }

LABEL_28:
  *a3 = v12;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<char const>(void *a1, uint64_t a2)
{
  v4 = a2 - a1;
  if (v4 > 0x40)
  {
    v6 = a1[1];
    v7 = a1[6];
    v8 = a1[7];
    v9 = (0xB492B66FBE98F273 * __ROR8__(v6 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
    v10 = a1[5];
    v11 = v10 - 0x4B6D499041670D8DLL * __ROR8__(v7 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
    v12 = *a1 + 0x298DF016A9F64655;
    v13 = a1[2];
    v14 = a1[3];
    v15 = v12 + v6 + v13;
    v16 = 0x544962662A7EE1A4;
    v17 = __ROR8__(v15, 44) + v12 + __ROR8__(v9 + v12 + v14 - 0xAE502812AB8D92, 21);
    v18 = v15 + v14;
    v19 = a1[4] + 0x4BF62CB950C3753ALL;
    v20 = v10 + v7 + v19;
    v21 = __ROR8__(v20, 44) + v19 + __ROR8__(v11 + v13 + v19 + v8, 21);
    v22 = v20 + v8;
    v23 = (v4 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v4 & 0xFFFFFFFFFFFFFFC0) == 0x40)
    {
      v24 = v9;
      if ((v4 & 0x3F) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v25 = a1 + 15;
      do
      {
        v26 = *(v25 - 6);
        v27 = v11 + v18 + v16 + v26;
        v28 = *(v25 - 1);
        v29 = *(v25 - 2);
        v11 = v29 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v11 + v17 + v28, 42);
        v30 = v9 + v22;
        v31 = *(v25 - 7) - 0x4B6D499041670D8DLL * v17;
        v32 = *(v25 - 5);
        v33 = *(v25 - 4);
        v34 = v31 + v26 + v32;
        v24 = (0xB492B66FBE98F273 * __ROR8__(v27, 37)) ^ v21;
        v17 = __ROR8__(v34, 44) + v31 + __ROR8__(v24 + v22 + v31 + v33, 21);
        v16 = 0xB492B66FBE98F273 * __ROR8__(v30, 33);
        v18 = v34 + v33;
        v35 = v16 + v21 + *(v25 - 3);
        v36 = v29 + v28 + v35;
        v21 = __ROR8__(v11 + v32 + v35 + *v25, 21) + v35 + __ROR8__(v36, 44);
        v22 = v36 + *v25;
        v25 += 8;
        v9 = v24;
        v23 -= 64;
      }

      while (v23);
      if ((v4 & 0x3F) == 0)
      {
        goto LABEL_12;
      }
    }

    v37 = *(a2 - 56);
    v39 = *(a2 - 16);
    v38 = *(a2 - 8);
    v40 = v24 + v22;
    v41 = (0xB492B66FBE98F273 * __ROR8__(v11 + v18 + v16 + v37, 37)) ^ v21;
    v43 = *(a2 - 32);
    v42 = *(a2 - 24);
    v11 = v42 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v11 + v17 + v39, 42);
    v44 = v41 + v22;
    v45 = *(a2 - 64) - 0x4B6D499041670D8DLL * v17;
    v48 = a2 - 48;
    v46 = *(a2 - 48);
    v47 = *(v48 + 8);
    v49 = v45 + v37 + v46;
    v16 = 0xB492B66FBE98F273 * __ROR8__(v40, 33);
    v17 = __ROR8__(v49, 44) + v45 + __ROR8__(v44 + v45 + v47, 21);
    v18 = v49 + v47;
    v50 = v16 + v21 + v43;
    v51 = v42 + v39 + v50;
    v21 = __ROR8__(v11 + v46 + v50 + v38, 21) + v50 + __ROR8__(v51, 44);
    v22 = v51 + v38;
    v24 = v41;
LABEL_12:
    v52 = 0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v21)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v21)));
    v53 = v16 - 0x4B6D499041670D8DLL * (v4 ^ (v4 >> 47)) - 0x622015F714C7D297 * (v52 ^ (v52 >> 47));
    v54 = 0x9DDFEA08EB382D69 * ((v24 - 0x4B6D499041670D8DLL * (v11 ^ (v11 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v22)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v22)))) >> 47))) ^ v53);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) ^ ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 47));
  }

  return llvm::hashing::detail::hash_short(a1, v4, 0xFF51AFD7ED558CCDLL);
}

_OWORD *llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::grow(uint64_t a1, int a2)
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
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1E096FB70;
        *(v17 + 24) = xmmword_1E096FB70;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v28 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::LookupBucketFor<llvm::ArrayRef<char>>(a1, v22, &v28);
              v23 = v28;
              *v28 = *v22;
              v23[2] = *(v22 + 16);
              ++*(a1 + 8);
            }

            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_1E096FB70;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_25:
      v27 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_1E096FB70;
        v15 = (v15 + 24);
      }

      while (v15 != v27);
      return result;
    }

    v24 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
    v25 = result;
    v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v25 = xmmword_1E096FB70;
      *(v25 + 24) = xmmword_1E096FB70;
      v25 += 3;
      v26 -= 2;
    }

    while (v26);
    if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::BytecodeReader::Impl::parseRegions();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
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
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[247];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 16 * v6;
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 8;
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
      v7 = *a1 + 16 * (v14 & v5);
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 8;
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
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(a1, v2);
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
  *(v7 + 8) = 0;
  return v7 + 8;
}

void *llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(uint64_t a1, int a2)
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
        goto LABEL_10;
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
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          LODWORD(v25) = -348639895 * ((v26 >> 47) ^ v26);
          v27 = *(a1 + 16) - 1;
          v28 = v27 & v25;
          v23 = &result[2 * v28];
          v29 = *v23;
          if (v24 != *v23)
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
              v28 = v33 & v27;
              v23 = &result[2 * (v33 & v27)];
              v29 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v30)
            {
              v23 = v30;
            }
          }

LABEL_24:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 8) = ++v16;
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
      goto LABEL_19;
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
LABEL_19:
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::grow(uint64_t a1, int a2)
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
    v10 = 18 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 4));
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
      v17 = &result[18 * v11];
      do
      {
        *v13 = -1;
        v13 += 18;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[18 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[18] = -1;
      v15 += 36;
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

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::moveFromOldBuckets(uint64_t a1, int *a2, int *a3)
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
      v13 = &v7[18 * v6];
      do
      {
        *v9 = -1;
        v9 += 18;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[18 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[18] = -1;
      v11 += 36;
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
      if (*v4 <= 0xFFFFFFFD)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & (37 * v14);
        v17 = *a1 + 72 * v16;
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
            v17 = *a1 + 72 * (v23 & v15);
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
        *(v17 + 8) = v17 + 24;
        *(v17 + 16) = 0xC00000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v17 + 8, v4 + 1);
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

uint64_t std::__all_of[abi:nn200100]<mlir::Region *,mlir::Region *,std::__identity,anonymous namespace::BytecodeWriter::writeRegions(anonymous namespace::EncodingEmitter &,llvm::MutableArrayRef<mlir::Region>)::{lambda(mlir::Region&)#1}>(void *a1, void *a2, uint64_t *a3)
{
  v216[2] = *MEMORY[0x1E69E9840];
  v3 = 1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = a1;
  v206 = a3;
  while (1)
  {
    v5 = a3[1];
    if (*v4 == v4)
    {
      v13 = v5[1];
      v12 = v5[2];
      if (v13 >= v12)
      {
        v19 = *v5;
        v20 = &v13[-*v5];
        v21 = v20 + 1;
        if ((v20 + 1) < 0)
        {
          goto LABEL_343;
        }

        v22 = v12 - v19;
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          v24 = operator new(v23);
        }

        else
        {
          v24 = 0;
        }

        v24[v20] = 1;
        v14 = &v24[v20 + 1];
        memcpy(v24, v19, v20);
        *v5 = v24;
        v5[1] = v14;
        v5[2] = &v24[v23];
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v13 = 1;
        v14 = (v13 + 1);
      }

      v5[1] = v14;
      goto LABEL_41;
    }

    v6 = *a3;
    v216[0] = v4;
    v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::operator[](v6 + 944, v216);
    v213 = v4;
    if (v7 > 0x7FuLL)
    {
      v11 = HIDWORD(v7);
      if (!(v7 >> 39))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = (2 * v7) | 1;
      v10 = v5[1];
      v9 = v5[2];
      if (v10 >= v9)
      {
        v25 = *v5;
        v26 = &v10[-*v5];
        v27 = v26 + 1;
        if ((v26 + 1) < 0)
        {
          goto LABEL_343;
        }

        v28 = v9 - v25;
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          v30 = operator new(v29);
        }

        else
        {
          v30 = 0;
        }

        v30[v26] = v8;
        v37 = &v30[v26 + 1];
        memcpy(v30, v25, v26);
        *v5 = v30;
        v5[1] = v37;
        v5[2] = &v30[v29];
        if (v25)
        {
          operator delete(v25);
        }

        v4 = v213;
        v5[1] = v37;
        v11 = HIDWORD(v7);
        if (!(v7 >> 39))
        {
LABEL_11:
          v15 = (2 * v11) | 1;
          v17 = v5[1];
          v16 = v5[2];
          if (v17 >= v16)
          {
            v31 = *v5;
            v32 = &v17[-*v5];
            v33 = v32 + 1;
            if ((v32 + 1) < 0)
            {
              goto LABEL_343;
            }

            v34 = v16 - v31;
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v35 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              v36 = operator new(v35);
            }

            else
            {
              v36 = 0;
            }

            v36[v32] = v15;
            v18 = &v36[v32 + 1];
            memcpy(v36, v31, v32);
            *v5 = v36;
            v5[1] = v18;
            v5[2] = &v36[v35];
            if (v31)
            {
              operator delete(v31);
            }

            v4 = v213;
          }

          else
          {
            *v17 = v15;
            v18 = (v17 + 1);
          }

          v5[1] = v18;
          goto LABEL_53;
        }
      }

      else
      {
        *v10 = v8;
        v4 = v213;
        v5[1] = v10 + 1;
        v11 = HIDWORD(v7);
        if (!(v7 >> 39))
        {
          goto LABEL_11;
        }
      }
    }

LABEL_53:
    v38 = v4[1];
LABEL_55:
    if (v38 != v4)
    {
      break;
    }

LABEL_41:
    v4 += 3;
    a3 = v206;
    if (v4 == a2)
    {
      return 1;
    }
  }

  if (v38)
  {
    v39 = v38 - 1;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39[6];
  v41 = v39[7];
  v42 = *(v6 + 936);
  v214 = v41;
  v210 = v38;
  if (!v42)
  {
    goto LABEL_323;
  }

  v43 = *(v6 + 920);
  v44 = v42 - 1;
  v45 = (v42 - 1) & ((v39 >> 4) ^ (v39 >> 9));
  v46 = v43 + 16 * v45;
  v47 = *v46;
  if (v39 != *v46)
  {
    v48 = 0;
    v49 = 1;
    while (v47 != -4096)
    {
      if (v48)
      {
        v50 = 0;
      }

      else
      {
        v50 = v47 == -8192;
      }

      if (v50)
      {
        v48 = v46;
      }

      v51 = v45 + v49++;
      v45 = v51 & v44;
      v46 = v43 + 16 * (v51 & v44);
      v47 = *v46;
      if (v39 == *v46)
      {
        goto LABEL_75;
      }
    }

    if (v48)
    {
      v46 = v48;
    }

    v195 = *(v6 + 928);
    if (4 * v195 + 4 >= 3 * v42)
    {
LABEL_323:
      v42 *= 2;
LABEL_324:
      llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(v6 + 920, v42);
      v196 = *(v6 + 936);
      if (v196)
      {
        v197 = *(v6 + 920);
        v198 = v196 - 1;
        v199 = (v196 - 1) & ((v39 >> 4) ^ (v39 >> 9));
        v46 = v197 + 16 * v199;
        v200 = *v46;
        if (v39 != *v46)
        {
          v201 = 0;
          v202 = 1;
          while (v200 != -4096)
          {
            if (v201)
            {
              v203 = 0;
            }

            else
            {
              v203 = v200 == -8192;
            }

            if (v203)
            {
              v201 = v46;
            }

            v204 = v199 + v202++;
            v199 = v204 & v198;
            v46 = v197 + 16 * (v204 & v198);
            v200 = *v46;
            v41 = v214;
            if (v39 == *v46)
            {
              goto LABEL_336;
            }
          }

          if (v201)
          {
            v46 = v201;
          }

          v41 = v214;
        }
      }

      else
      {
        v46 = 0;
      }

LABEL_336:
      ++*(v6 + 928);
      if (*v46 == -4096)
      {
        goto LABEL_74;
      }

LABEL_73:
      --*(v6 + 932);
      goto LABEL_74;
    }

    if (v42 + ~v195 - *(v6 + 932) <= v42 >> 3)
    {
      goto LABEL_324;
    }

    *(v6 + 928) = v195 + 1;
    if (*v46 != -4096)
    {
      goto LABEL_73;
    }

LABEL_74:
    *v46 = v39;
    *(v46 + 8) = 0;
  }

LABEL_75:
  v52 = *(v46 + 8);
  v53 = (v41 != v40) | (2 * v52);
  if (v52 > 0x3F)
  {
    if (v41 == v40)
    {
      goto LABEL_316;
    }
  }

  else
  {
    v54 = (2 * v53) | 1;
    v56 = v5[1];
    v55 = v5[2];
    if (v56 >= v55)
    {
      v211 = v39;
      v57 = *v5;
      v58 = &v56[-*v5];
      v59 = v58 + 1;
      if ((v58 + 1) < 0)
      {
        goto LABEL_343;
      }

      v60 = v55 - v57;
      if (2 * v60 > v59)
      {
        v59 = 2 * v60;
      }

      if (v60 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v61 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        v62 = operator new(v61);
      }

      else
      {
        v62 = 0;
      }

      v62[v58] = v54;
      v63 = &v62[v58 + 1];
      memcpy(v62, v57, v58);
      *v5 = v62;
      v5[1] = v63;
      v5[2] = &v62[v61];
      if (v57)
      {
        operator delete(v57);
      }

      v39 = v211;
      v41 = v214;
      v5[1] = v63;
      if (v214 == v40)
      {
        goto LABEL_316;
      }
    }

    else
    {
      *v56 = v54;
      v5[1] = v56 + 1;
      if (v41 == v40)
      {
        goto LABEL_316;
      }
    }
  }

  v212 = v39;
  v64 = (v41 - v40) >> 3;
  v207 = v40;
  v208 = v64;
  if (v64 > 0x7F)
  {
    goto LABEL_111;
  }

  v65 = (2 * ((v41 - v40) >> 3)) | 1;
  v67 = v5[1];
  v66 = v5[2];
  if (v67 < v66)
  {
    *v67 = v65;
    v5[1] = v67 + 1;
    goto LABEL_111;
  }

  v68 = *v5;
  v69 = &v67[-*v5];
  v70 = v69 + 1;
  if ((v69 + 1) < 0)
  {
    goto LABEL_343;
  }

  v71 = v66 - v68;
  if (2 * v71 > v70)
  {
    v70 = 2 * v71;
  }

  if (v71 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v72 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v72 = v70;
  }

  if (v72)
  {
    v73 = operator new(v72);
  }

  else
  {
    v73 = 0;
  }

  v73[v69] = v65;
  v74 = &v73[v69 + 1];
  memcpy(v73, v68, v69);
  *v5 = v73;
  v5[1] = v74;
  v5[2] = &v73[v72];
  if (v68)
  {
    operator delete(v68);
  }

  v41 = v214;
  v5[1] = v74;
LABEL_111:
  while (2)
  {
    v75 = *(*v40 + 32);
    v76 = *(*v40 + 8) & 0xFFFFFFFFFFFFFFF8;
    v77 = *(v6 + 112);
    v78 = *(v6 + 128);
    if (**(v6 + 984) < 4)
    {
      if (!v78)
      {
        goto LABEL_241;
      }

      v87 = v78 - 1;
      v88 = ((v76 >> 4) ^ (v76 >> 9)) & (v78 - 1);
      v89 = (v77 + 16 * v88);
      v90 = *v89;
      if (*v89 == v76)
      {
        goto LABEL_150;
      }

      v91 = 0;
      v92 = 1;
      while (v90 != -4096)
      {
        if (v91)
        {
          v93 = 0;
        }

        else
        {
          v93 = v90 == -8192;
        }

        if (v93)
        {
          v91 = v89;
        }

        v94 = v88 + v92++;
        v88 = v94 & v87;
        v89 = (v77 + 16 * (v94 & v87));
        v90 = *v89;
        if (*v89 == v76)
        {
          goto LABEL_150;
        }
      }

      if (v91)
      {
        v89 = v91;
      }

      v157 = *(v6 + 120);
      if (4 * v157 + 4 < 3 * v78)
      {
        if (v78 + ~v157 - *(v6 + 124) > v78 >> 3)
        {
          *(v6 + 120) = v157 + 1;
          if (*v89 == -4096)
          {
LABEL_149:
            *v89 = v76;
            v89[1] = 0;
LABEL_150:
            v99 = *(v89[1] + 8);
            if (v99 > 0x7F)
            {
              v103 = *(v6 + 56);
              if (v103)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v100 = (2 * v99) | 1;
              v102 = v5[1];
              v101 = v5[2];
              if (v102 < v101)
              {
                *v102 = v100;
                v5[1] = v102 + 1;
                v103 = *(v6 + 56);
                if (!v103)
                {
                  goto LABEL_153;
                }

LABEL_157:
                v106 = *(v6 + 40);
                v107 = v103 - 1;
                v108 = (v103 - 1) & ((v75 >> 4) ^ (v75 >> 9));
                v104 = (v106 + 16 * v108);
                v109 = *v104;
                if (v75 == *v104)
                {
                  goto LABEL_203;
                }

                v110 = 0;
                v111 = 1;
                while (v109 != -4096)
                {
                  if (v110)
                  {
                    v112 = 0;
                  }

                  else
                  {
                    v112 = v109 == -8192;
                  }

                  if (v112)
                  {
                    v110 = v104;
                  }

                  v113 = v108 + v111++;
                  v108 = v113 & v107;
                  v104 = (v106 + 16 * (v113 & v107));
                  v109 = *v104;
                  if (v75 == *v104)
                  {
                    goto LABEL_203;
                  }
                }

                if (v110)
                {
                  v104 = v110;
                }

                v105 = *(v6 + 48);
                if (4 * v105 + 4 < 3 * v103)
                {
                  goto LABEL_154;
                }

                goto LABEL_256;
              }

              v120 = *v5;
              v121 = &v102[-*v5];
              v122 = v121 + 1;
              if ((v121 + 1) < 0)
              {
                goto LABEL_343;
              }

              v123 = v101 - v120;
              if (2 * v123 > v122)
              {
                v122 = 2 * v123;
              }

              if (v123 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v124 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v124 = v122;
              }

              if (v124)
              {
                v125 = operator new(v124);
              }

              else
              {
                v125 = 0;
              }

              v125[v121] = v100;
              v146 = &v125[v121 + 1];
              memcpy(v125, v120, v121);
              *v5 = v125;
              v5[1] = v146;
              v5[2] = &v125[v124];
              if (v120)
              {
                operator delete(v120);
              }

              v41 = v214;
              v5[1] = v146;
              v103 = *(v6 + 56);
              if (v103)
              {
                goto LABEL_157;
              }
            }

LABEL_153:
            v104 = 0;
            v105 = *(v6 + 48);
            if (4 * v105 + 4 < 3 * v103)
            {
LABEL_154:
              if (v103 + ~v105 - *(v6 + 52) > v103 >> 3)
              {
                goto LABEL_200;
              }

              goto LABEL_257;
            }

LABEL_256:
            v103 *= 2;
LABEL_257:
            llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v6 + 40, v103);
            v167 = *(v6 + 56);
            if (!v167)
            {
              goto LABEL_283;
            }

            v168 = *(v6 + 40);
            v169 = v167 - 1;
            v170 = (v167 - 1) & ((v75 >> 4) ^ (v75 >> 9));
            v104 = (v168 + 16 * v170);
            v171 = *v104;
            if (v75 != *v104)
            {
              v172 = 0;
              v173 = 1;
              while (v171 != -4096)
              {
                if (v172)
                {
                  v174 = 0;
                }

                else
                {
                  v174 = v171 == -8192;
                }

                if (v174)
                {
                  v172 = v104;
                }

                v175 = v170 + v173++;
                v170 = v175 & v169;
                v104 = (v168 + 16 * (v175 & v169));
                v171 = *v104;
                v41 = v214;
                if (v75 == *v104)
                {
                  goto LABEL_284;
                }
              }

LABEL_292:
              if (v172)
              {
                v104 = v172;
              }

              v41 = v214;
            }

LABEL_284:
            ++*(v6 + 48);
            if (*v104 != -4096)
            {
LABEL_201:
              --*(v6 + 52);
            }

LABEL_202:
            *v104 = v75;
            v104[1] = 0;
            goto LABEL_203;
          }

LABEL_148:
          --*(v6 + 124);
          goto LABEL_149;
        }
      }

      else
      {
LABEL_241:
        v78 *= 2;
      }

      llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v6 + 112, v78);
      v158 = *(v6 + 128);
      if (v158)
      {
        v159 = *(v6 + 112);
        v160 = v158 - 1;
        v161 = (v158 - 1) & ((v76 >> 4) ^ (v76 >> 9));
        v89 = (v159 + 16 * v161);
        v162 = *v89;
        if (*v89 != v76)
        {
          v163 = 0;
          v164 = 1;
          while (v162 != -4096)
          {
            if (v163)
            {
              v165 = 0;
            }

            else
            {
              v165 = v162 == -8192;
            }

            if (v165)
            {
              v163 = v89;
            }

            v166 = v161 + v164++;
            v161 = v166 & v160;
            v89 = (v159 + 16 * (v166 & v160));
            v162 = *v89;
            v41 = v214;
            if (*v89 == v76)
            {
              goto LABEL_290;
            }
          }

          if (v163)
          {
            v89 = v163;
          }

          v41 = v214;
        }
      }

      else
      {
        v89 = 0;
      }

LABEL_290:
      ++*(v6 + 120);
      if (*v89 == -4096)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }

    if (!v78)
    {
      goto LABEL_226;
    }

    v79 = v78 - 1;
    v80 = ((v76 >> 4) ^ (v76 >> 9)) & (v78 - 1);
    v81 = (v77 + 16 * v80);
    v82 = *v81;
    if (*v81 != v76)
    {
      v83 = 0;
      v84 = 1;
      while (v82 != -4096)
      {
        if (v83)
        {
          v85 = 0;
        }

        else
        {
          v85 = v82 == -8192;
        }

        if (v85)
        {
          v83 = v81;
        }

        v86 = v80 + v84++;
        v80 = v86 & v79;
        v81 = (v77 + 16 * (v86 & v79));
        v82 = *v81;
        if (*v81 == v76)
        {
          goto LABEL_139;
        }
      }

      if (v83)
      {
        v81 = v83;
      }

      v147 = *(v6 + 120);
      if (4 * v147 + 4 >= 3 * v78)
      {
LABEL_226:
        v78 *= 2;
LABEL_227:
        llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v6 + 112, v78);
        v148 = *(v6 + 128);
        if (v148)
        {
          v149 = *(v6 + 112);
          v150 = v148 - 1;
          v151 = (v148 - 1) & ((v76 >> 4) ^ (v76 >> 9));
          v81 = (v149 + 16 * v151);
          v152 = *v81;
          if (*v81 != v76)
          {
            v153 = 0;
            v154 = 1;
            while (v152 != -4096)
            {
              if (v153)
              {
                v155 = 0;
              }

              else
              {
                v155 = v152 == -8192;
              }

              if (v155)
              {
                v153 = v81;
              }

              v156 = v151 + v154++;
              v151 = v156 & v150;
              v81 = (v149 + 16 * (v156 & v150));
              v152 = *v81;
              v41 = v214;
              if (*v81 == v76)
              {
                goto LABEL_287;
              }
            }

            if (v153)
            {
              v81 = v153;
            }

            v41 = v214;
          }
        }

        else
        {
          v81 = 0;
        }

LABEL_287:
        ++*(v6 + 120);
        if (*v81 == -4096)
        {
          goto LABEL_138;
        }

LABEL_137:
        --*(v6 + 124);
        goto LABEL_138;
      }

      if (v78 + ~v147 - *(v6 + 124) <= v78 >> 3)
      {
        goto LABEL_227;
      }

      *(v6 + 120) = v147 + 1;
      if (*v81 != -4096)
      {
        goto LABEL_137;
      }

LABEL_138:
      *v81 = v76;
      v81[1] = 0;
    }

LABEL_139:
    v95 = *(v81[1] + 8);
    v53 = (*(*v75 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id) | (2 * v95);
    if (v95 > 0x3F)
    {
      if (*(*v75 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v96 = (2 * v53) | 1;
      v98 = v5[1];
      v97 = v5[2];
      if (v98 >= v97)
      {
        v114 = *v5;
        v115 = &v98[-*v5];
        v116 = v115 + 1;
        if ((v115 + 1) < 0)
        {
          goto LABEL_343;
        }

        v117 = v97 - v114;
        if (2 * v117 > v116)
        {
          v116 = 2 * v117;
        }

        if (v117 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v118 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v118 = v116;
        }

        if (v118)
        {
          v119 = operator new(v118);
        }

        else
        {
          v119 = 0;
        }

        v119[v115] = v96;
        v126 = &v119[v115 + 1];
        memcpy(v119, v114, v115);
        *v5 = v119;
        v5[1] = v126;
        v5[2] = &v119[v118];
        if (v114)
        {
          operator delete(v114);
        }

        v41 = v214;
        v5[1] = v126;
        if (*(*v75 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
          goto LABEL_187;
        }
      }

      else
      {
        *v98 = v96;
        v5[1] = v98 + 1;
        if (*(*v75 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
          goto LABEL_110;
        }

LABEL_187:
        v127 = *(v6 + 56);
        if (!v127)
        {
LABEL_271:
          v127 *= 2;
          goto LABEL_272;
        }

        v128 = *(v6 + 40);
        v129 = v127 - 1;
        v130 = (v127 - 1) & ((v75 >> 4) ^ (v75 >> 9));
        v104 = (v128 + 16 * v130);
        v131 = *v104;
        if (v75 != *v104)
        {
          v132 = 0;
          v133 = 1;
          while (v131 != -4096)
          {
            if (v132)
            {
              v134 = 0;
            }

            else
            {
              v134 = v131 == -8192;
            }

            if (v134)
            {
              v132 = v104;
            }

            v135 = v130 + v133++;
            v130 = v135 & v129;
            v104 = (v128 + 16 * (v135 & v129));
            v131 = *v104;
            if (v75 == *v104)
            {
              goto LABEL_203;
            }
          }

          if (v132)
          {
            v104 = v132;
          }

          v105 = *(v6 + 48);
          if (4 * v105 + 4 >= 3 * v127)
          {
            goto LABEL_271;
          }

          if (v127 + ~v105 - *(v6 + 52) > v127 >> 3)
          {
LABEL_200:
            *(v6 + 48) = v105 + 1;
            if (*v104 != -4096)
            {
              goto LABEL_201;
            }

            goto LABEL_202;
          }

LABEL_272:
          llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v6 + 40, v127);
          v176 = *(v6 + 56);
          if (v176)
          {
            v177 = *(v6 + 40);
            v178 = v176 - 1;
            v179 = (v176 - 1) & ((v75 >> 4) ^ (v75 >> 9));
            v104 = (v177 + 16 * v179);
            v180 = *v104;
            if (v75 != *v104)
            {
              v172 = 0;
              v181 = 1;
              while (v180 != -4096)
              {
                if (v172)
                {
                  v182 = 0;
                }

                else
                {
                  v182 = v180 == -8192;
                }

                if (v182)
                {
                  v172 = v104;
                }

                v183 = v179 + v181++;
                v179 = v183 & v178;
                v104 = (v177 + 16 * (v183 & v178));
                v180 = *v104;
                v41 = v214;
                if (v75 == *v104)
                {
                  goto LABEL_284;
                }
              }

              goto LABEL_292;
            }

            goto LABEL_284;
          }

LABEL_283:
          v104 = 0;
          goto LABEL_284;
        }

LABEL_203:
        v53 = *(v104[1] + 8);
        if (v53 > 0x7F)
        {
        }

        else
        {
          v136 = (2 * v53) | 1;
          v138 = v5[1];
          v137 = v5[2];
          if (v138 >= v137)
          {
            v139 = *v5;
            v140 = &v138[-*v5];
            v141 = v140 + 1;
            if ((v140 + 1) < 0)
            {
              goto LABEL_343;
            }

            v142 = v137 - v139;
            if (2 * v142 > v141)
            {
              v141 = 2 * v142;
            }

            if (v142 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v143 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v143 = v141;
            }

            if (v143)
            {
              v144 = operator new(v143);
            }

            else
            {
              v144 = 0;
            }

            v144[v140] = v136;
            v145 = &v144[v140 + 1];
            memcpy(v144, v139, v140);
            *v5 = v144;
            v5[1] = v145;
            v5[2] = &v144[v143];
            if (v139)
            {
              operator delete(v139);
            }

            v41 = v214;
            v5[1] = v145;
          }

          else
          {
            *v138 = v136;
            v5[1] = v138 + 1;
          }
        }
      }
    }

LABEL_110:
    v40 += 8;
    if (v40 != v41)
    {
      continue;
    }

    break;
  }

  v39 = v212;
  if (**(v6 + 984) > 2)
  {
    v185 = *v5;
    v184 = v5[1];
    v215 = 0;
    v186 = v5[2];
    if (v184 < v186)
    {
      *v184 = 0;
      v187 = (v184 + 1);
      goto LABEL_315;
    }

    v188 = v184 - v185;
    v189 = v184 - v185 + 1;
    if (v189 >= 0)
    {
      v190 = v186 - v185;
      if (2 * v190 > v189)
      {
        v189 = 2 * v190;
      }

      if (v190 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v191 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v191 = v189;
      }

      if (v191)
      {
        v192 = operator new(v191);
      }

      else
      {
        v192 = 0;
      }

      v192[v188] = 0;
      v187 = &v192[v188 + 1];
      memcpy(v192, v185, v184 - v185);
      *v5 = v192;
      v5[1] = v187;
      v5[2] = &v192[v191];
      if (v185)
      {
        operator delete(v185);
      }

LABEL_315:
      v5[1] = v187;
      mlir::ValueRange::ValueRange(v216, v207, v208);
    }

LABEL_343:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_316:
  v193 = v39[5];
  v4 = v213;
  if (v193 == v39 + 4)
  {
LABEL_54:
    v38 = v210[1];
    goto LABEL_55;
  }

  while (1)
  {
    v194 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v193, v53);
    {
      return 0;
    }

    v193 = v193[1];
    if (v193 == v39 + 4)
    {
      goto LABEL_54;
    }
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
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
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(uint64_t a1, int a2)
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
        goto LABEL_10;
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
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = (*a1 + 16 * v25);
          v26 = *v22;
          if (v23 != *v22)
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
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 16 * (v30 & v24));
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = *(v16 + 1);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void anonymous namespace::BytecodeWriter::writeResourceSection(mlir::Operation *,anonymous namespace::EncodingEmitter &)::$_1::operator()(void **a1, unint64_t a2)
{
  v2 = a1;
  v71 = a1[2];
  v3 = *a1;
  if (a2 > 0x7F)
  {
    v7 = *v2;
    v8 = *(v2[1] + 8);
    if (v8 > 0x7F)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = (2 * a2) | 1;
    v6 = *(v3 + 8);
    v5 = *(v3 + 16);
    if (v6 >= v5)
    {
      v14 = *v3;
      v15 = &v6[-*v3];
      v16 = v15 + 1;
      if ((v15 + 1) < 0)
      {
        goto LABEL_83;
      }

      v17 = v5 - v14;
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        v19 = operator new(v18);
      }

      else
      {
        v19 = 0;
      }

      v19[v15] = v4;
      v26 = &v19[v15 + 1];
      memcpy(v19, v14, v15);
      *v3 = v19;
      *(v3 + 8) = v26;
      *(v3 + 16) = &v19[v18];
      if (v14)
      {
        operator delete(v14);
      }

      *(v3 + 8) = v26;
      v7 = *v2;
      v8 = *(v2[1] + 8);
      if (v8 > 0x7F)
      {
LABEL_29:
        v12 = v2[1];
        v13 = *(v12 + 2);
        if (!v13)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      *v6 = v4;
      *(v3 + 8) = v6 + 1;
      v7 = *a1;
      v8 = *(a1[1] + 2);
      if (v8 > 0x7F)
      {
        goto LABEL_29;
      }
    }
  }

  v9 = (2 * v8) | 1;
  v11 = v7[1];
  v10 = v7[2];
  if (v11 < v10)
  {
    *v11 = v9;
    v7[1] = v11 + 1;
    v12 = v2[1];
    v13 = *(v12 + 2);
    if (!v13)
    {
      return;
    }

    goto LABEL_35;
  }

  v20 = *v7;
  v21 = &v11[-*v7];
  v22 = v21 + 1;
  if ((v21 + 1) < 0)
  {
LABEL_83:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v23 = v10 - v20;
  if (2 * v23 > v22)
  {
    v22 = 2 * v23;
  }

  if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = v22;
  }

  if (v24)
  {
    v25 = operator new(v24);
  }

  else
  {
    v25 = 0;
  }

  v25[v21] = v9;
  v27 = &v25[v21 + 1];
  memcpy(v25, v20, v21);
  *v7 = v25;
  v7[1] = v27;
  v7[2] = &v25[v24];
  if (v20)
  {
    operator delete(v20);
  }

  v7[1] = v27;
  v12 = v2[1];
  v13 = *(v12 + 2);
  if (v13)
  {
LABEL_35:
    v28 = *v12;
    v29 = *v12 + 32 * v13;
    v69 = v2;
    v70 = v29;
    do
    {
      v31 = *(v28 + 16);
      v32 = *(v28 + 24);
      v33 = *v2;
      if (v34 > 0x7F)
      {
        v40 = *v2;
        if (v32 > 0x7F)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v35 = v2;
        v36 = (2 * v34) | 1;
        v38 = v33[1];
        v37 = v33[2];
        if (v38 >= v37)
        {
          v47 = *v33;
          v48 = &v38[-*v33];
          v49 = v48 + 1;
          if ((v48 + 1) < 0)
          {
            goto LABEL_83;
          }

          v68 = v31;
          v50 = v37 - v47;
          if (2 * v50 > v49)
          {
            v49 = 2 * v50;
          }

          if (v50 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v51 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v49;
          }

          if (v51)
          {
            v52 = operator new(v51);
          }

          else
          {
            v52 = 0;
          }

          v52[v48] = v36;
          v39 = &v52[v48 + 1];
          memcpy(v52, v47, v48);
          *v33 = v52;
          v33[1] = v39;
          v33[2] = &v52[v51];
          if (v47)
          {
            operator delete(v47);
          }

          v2 = v35;
          LOBYTE(v31) = v68;
        }

        else
        {
          *v38 = v36;
          v39 = (v38 + 1);
          v2 = v35;
        }

        v33[1] = v39;
        v29 = v70;
        v40 = *v2;
        if (v32 > 0x7F)
        {
LABEL_65:
          v59 = *v2;
          v61 = *(*v2 + 8);
          v60 = *(*v2 + 16);
          if (v61 < v60)
          {
            goto LABEL_36;
          }

          goto LABEL_71;
        }
      }

      v41 = v29;
      v42 = v31;
      v43 = (2 * v32) | 1;
      v45 = v40[1];
      v44 = v40[2];
      if (v45 >= v44)
      {
        v53 = *v40;
        v54 = &v45[-*v40];
        v55 = v54 + 1;
        if ((v54 + 1) < 0)
        {
          goto LABEL_83;
        }

        v56 = v44 - v53;
        if (2 * v56 > v55)
        {
          v55 = 2 * v56;
        }

        if (v56 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v57 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v55;
        }

        if (v57)
        {
          v58 = operator new(v57);
        }

        else
        {
          v58 = 0;
        }

        v58[v54] = v43;
        v46 = &v58[v54 + 1];
        memcpy(v58, v53, v54);
        *v40 = v58;
        v40[1] = v46;
        v40[2] = &v58[v57];
        if (v53)
        {
          operator delete(v53);
        }
      }

      else
      {
        *v45 = v43;
        v46 = (v45 + 1);
      }

      LOBYTE(v31) = v42;
      v40[1] = v46;
      v29 = v41;
      v2 = v69;
      v59 = *v69;
      v61 = *(*v69 + 8);
      v60 = *(*v69 + 16);
      if (v61 < v60)
      {
LABEL_36:
        *v61 = v31;
        v30 = (v61 + 1);
        goto LABEL_37;
      }

LABEL_71:
      v62 = *v59;
      v63 = &v61[-*v59];
      v64 = v63 + 1;
      if ((v63 + 1) < 0)
      {
        goto LABEL_83;
      }

      v65 = v60 - v62;
      if (2 * v65 > v64)
      {
        v64 = 2 * v65;
      }

      if (v65 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v66 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v64;
      }

      if (v66)
      {
        v67 = operator new(v66);
      }

      else
      {
        v67 = 0;
      }

      v67[v63] = v31;
      v30 = &v67[v63 + 1];
      memcpy(v67, v62, v63);
      *v59 = v67;
      v59[1] = v30;
      v59[2] = &v67[v66];
      if (v62)
      {
        operator delete(v62);
      }

LABEL_37:
      v59[1] = v30;
      v28 += 32;
    }

    while (v28 != v29);
  }
}

void **llvm::function_ref<void ()(llvm::StringRef,mlir::AsmResourceEntryKind)>::callback_fn<anonymous namespace::BytecodeWriter::writeResourceSection(mlir::Operation *,anonymous namespace::EncodingEmitter &)::$_0>(void **result, uint64_t a2, uint64_t a3, int a4)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v11 = a4;
  v4 = result[1];
  v5 = (*result)[9] + (*result)[1] - **result;
  v6 = v5 - *result[2];
  v10 = v6;
  v7 = *(v4 + 8);
  if (v7 >= *(v4 + 12))
  {
    v9 = result;
    llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,mlir::AsmResourceEntryKind,unsigned long long>,true>::growAndEmplaceBack<llvm::StringRef&,mlir::AsmResourceEntryKind&,unsigned long long>(v4, &v12, &v11, &v10);
    result = v9;
    *v9[2] = v5;
  }

  else
  {
    v8 = *v4 + 32 * v7;
    *v8 = v12;
    *(v8 + 16) = a4;
    *(v8 + 24) = v6;
    ++*(v4 + 8);
    *result[2] = v5;
  }

  return result;
}

void anonymous namespace::ResourceBuilder::~ResourceBuilder(_anonymous_namespace_::ResourceBuilder *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t anonymous namespace::ResourceBuilder::buildBool(_anonymous_namespace_::ResourceBuilder *this, StringRef a2, char a3)
{
  if ((*(this + 40) & 1) == 0)
  {
    v3 = *(this + 1);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v5 >= v4)
    {
      v7 = *v3;
      v8 = &v5[-*v3];
      v9 = v8 + 1;
      if ((v8 + 1) < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v10 = this;
      var0 = a2.var0;
      var1 = a2.var1;
      v13 = v4 - v7;
      if (2 * v13 > v9)
      {
        v9 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v9;
      }

      if (v14)
      {
        v15 = a3;
        v16 = operator new(v14);
        a3 = v15;
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v17[v8] = a3;
      v6 = &v17[v8 + 1];
      memcpy(v17, v7, v8);
      *v3 = v17;
      *(v3 + 8) = v6;
      *(v3 + 16) = &v17[v14];
      if (v7)
      {
        operator delete(v7);
      }

      a2.var1 = var1;
      a2.var0 = var0;
      this = v10;
    }

    else
    {
      *v5 = a3;
      v6 = (v5 + 1);
    }

    *(v3 + 8) = v6;
  }

  v19 = *(this + 3);
  v18 = *(this + 4);

  return v19(v18, a2.var0, a2.var1, 1);
}

uint64_t anonymous namespace::ResourceBuilder::buildString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = a2;
    v7 = a3;
    v8 = *(a1 + 8);
    if (v9 > 0x7F)
    {
      a3 = v7;
      a2 = v6;
    }

    else
    {
      v10 = (2 * v9) | 1;
      v12 = v8[1];
      v11 = v8[2];
      if (v12 >= v11)
      {
        v14 = *v8;
        v15 = &v12[-*v8];
        v16 = v15 + 1;
        if ((v15 + 1) < 0)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v17 = v11 - v14;
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          v19 = operator new(v18);
        }

        else
        {
          v19 = 0;
        }

        v19[v15] = v10;
        v13 = &v19[v15 + 1];
        memcpy(v19, v14, v15);
        *v8 = v19;
        v8[1] = v13;
        v8[2] = &v19[v18];
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v12 = v10;
        v13 = (v12 + 1);
      }

      a3 = v7;
      a2 = v6;
      v8[1] = v13;
    }
  }

  v21 = *(a1 + 24);
  v20 = *(a1 + 32);

  return v21(v20, a2, a3, 2);
}

uint64_t anonymous namespace::ResourceBuilder::buildBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v9 = a4;
    v10 = *(a1 + 8);
    v36 = a3;
    v37 = a2;
    if (a6 > 0x7F)
    {
      if (a5 > 0x7F)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = (2 * a6) | 1;
      v13 = *(v10 + 1);
      v12 = *(v10 + 2);
      if (v13 < v12)
      {
        *v13 = v11;
        *(v10 + 1) = v13 + 1;
        if (a5 > 0x7F)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }

      v21 = *v10;
      v22 = &v13[-*v10];
      v23 = v22 + 1;
      if ((v22 + 1) < 0)
      {
        goto LABEL_41;
      }

      v24 = v12 - v21;
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        v26 = operator new(v25);
      }

      else
      {
        v26 = 0;
      }

      v26[v22] = v11;
      v33 = &v26[v22 + 1];
      memcpy(v26, v21, v22);
      *v10 = v26;
      *(v10 + 1) = v33;
      *(v10 + 2) = &v26[v25];
      if (v21)
      {
        operator delete(v21);
      }

      v9 = a4;
      *(v10 + 1) = v33;
      if (a5 > 0x7F)
      {
LABEL_5:
        if (*v10 == *(v10 + 1))
        {
LABEL_7:
          a3 = v36;
          a2 = v37;
          goto LABEL_8;
        }

LABEL_6:
        std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(v10 + 48, v10);
        goto LABEL_7;
      }
    }

LABEL_12:
    v17 = (2 * a5) | 1;
    v19 = *(v10 + 1);
    v18 = *(v10 + 2);
    if (v19 < v18)
    {
      *v19 = v17;
      v20 = (v19 + 1);
      goto LABEL_39;
    }

    v27 = *v10;
    v28 = &v19[-*v10];
    v29 = v28 + 1;
    if ((v28 + 1) >= 0)
    {
      v35 = v9;
      v30 = v18 - v27;
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        v32 = operator new(v31);
      }

      else
      {
        v32 = 0;
      }

      v32[v28] = v17;
      v20 = &v32[v28 + 1];
      memcpy(v32, v27, v28);
      *v10 = v32;
      *(v10 + 1) = v20;
      *(v10 + 2) = &v32[v31];
      if (v27)
      {
        operator delete(v27);
      }

      v9 = v35;
LABEL_39:
      *(v10 + 1) = v20;
      if (*v10 == *(v10 + 1))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

LABEL_41:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_8:
  v15 = *(a1 + 24);
  v14 = *(a1 + 32);

  return v15(v14, a2, a3, 0);
}

uint64_t llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,mlir::AsmResourceEntryKind,unsigned long long>,true>::growAndEmplaceBack<llvm::StringRef&,mlir::AsmResourceEntryKind&,unsigned long long>(uint64_t a1, __int128 *a2, int *a3, uint64_t *a4)
{
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = &v14;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v14 && v5 + 32 * v4 > &v14)
    {
      v12 = &v14 - v5;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4 + 1, 32);
      a1 = v13;
      v5 = *v13;
      v6 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4 + 1, 32);
      a1 = v11;
      v5 = *v11;
      v6 = &v14;
    }
  }

  v7 = (v5 + 32 * *(a1 + 8));
  v8 = *(v6 + 1);
  *v7 = *v6;
  v7[1] = v8;
  v9 = (*(a1 + 8) + 1);
  *(a1 + 8) = v9;
  return *a1 + 32 * v9 - 32;
}

void sub_1DFACD534()
{
  if (*(v0 + 808))
  {
    llvm::deallocate_buffer(**(v0 + 800), *(*(v0 + 800) + 8));
  }

  *(v0 + 808) = 0;
  v1 = *(v0 + 760);
  if (v1)
  {
    *(v0 + 816) = 0;
    v2 = *(v0 + 752);
    v3 = *v2;
    *(v0 + 736) = *v2;
    *(v0 + 744) = v3 + 4096;
    if (v1 != 1)
    {
      v4 = ((v2 - *(v0 + 752) + 8) >> 10) & 0x1FFFFFF;
      if (v4 >= 0x1E)
      {
        LOBYTE(v4) = 30;
      }

      llvm::deallocate_buffer(v2[1], (4096 << v4));
    }

    *(v0 + 760) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 736);
  llvm::SpecificBumpPtrAllocator<mlir::bytecode::detail::DialectResourceNumbering>::DestroyAll(v0 + 640);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 640);
  if (*(v0 + 616))
  {
    llvm::deallocate_buffer(**(v0 + 608), *(*(v0 + 608) + 8));
  }

  *(v0 + 616) = 0;
  v5 = *(v0 + 568);
  if (v5)
  {
    *(v0 + 624) = 0;
    v6 = *(v0 + 560);
    v7 = *v6;
    *(v0 + 544) = *v6;
    *(v0 + 552) = v7 + 4096;
    if (v5 != 1)
    {
      v8 = ((v6 - *(v0 + 560) + 8) >> 10) & 0x1FFFFFF;
      if (v8 >= 0x1E)
      {
        LOBYTE(v8) = 30;
      }

      llvm::deallocate_buffer(v6[1], (4096 << v8));
    }

    *(v0 + 568) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 544);
  if (*(v0 + 520))
  {
    llvm::deallocate_buffer(**(v0 + 512), *(*(v0 + 512) + 8));
  }

  *(v0 + 520) = 0;
  v9 = *(v0 + 472);
  if (v9)
  {
    *(v0 + 528) = 0;
    v10 = *(v0 + 464);
    v11 = *v10 + 4096;
    *(v0 + 448) = *v10;
    *(v0 + 456) = v11;
    if (v9 != 1)
    {
      v12 = ((v10 + 8 - *(v0 + 464)) >> 10) & 0x1FFFFFF;
      if (v12 >= 0x1E)
      {
        LOBYTE(v12) = 30;
      }

      llvm::deallocate_buffer(*(v10 + 8), (4096 << v12));
    }

    *(v0 + 472) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 448);
  llvm::SpecificBumpPtrAllocator<mlir::bytecode::detail::DialectNumbering>::DestroyAll(v0 + 352);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 352);
  if (*(v0 + 328))
  {
    llvm::deallocate_buffer(**(v0 + 320), *(*(v0 + 320) + 8));
  }

  *(v0 + 328) = 0;
  v13 = *(v0 + 280);
  if (v13)
  {
    *(v0 + 336) = 0;
    v14 = *(v0 + 272);
    v15 = *v14 + 4096;
    *(v0 + 256) = *v14;
    *(v0 + 264) = v15;
    if (v13 != 1)
    {
      v16 = ((v14 + 8 - *(v0 + 272)) >> 10) & 0x1FFFFFF;
      if (v16 >= 0x1E)
      {
        LOBYTE(v16) = 30;
      }

      llvm::deallocate_buffer(*(v14 + 8), (4096 << v16));
    }

    *(v0 + 280) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 256);
  llvm::deallocate_buffer(*(v0 + 232), (32 * *(v0 + 248)));
}

void sub_1DFACD800()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    *(v0 + 216) = v1;
    operator delete(v1);
  }

  v2 = *(v0 + 184);
  if (v2)
  {
    *(v0 + 192) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 160);
  if (v3)
  {
    *(v0 + 168) = v3;
    operator delete(v3);
  }

  v4 = *(v0 + 144);
  if (v4 != (v0 + 160))
  {
    free(v4);
  }

  llvm::deallocate_buffer(*(v0 + 120), (24 * *(v0 + 136)));
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(uint64_t a1)
{
  if (*(a1 + 24))
  {
    llvm::deallocate_buffer(**(a1 + 16), 0x1000);
  }

  v2 = *(a1 + 64);
  if (*(a1 + 72))
  {
    llvm::deallocate_buffer(*v2, *(v2 + 8));
  }

  if (v2 != a1 + 80)
  {
    free(*(a1 + 64));
  }

  v3 = *(a1 + 16);
  if (v3 != (a1 + 32))
  {
    free(v3);
  }

  return a1;
}

void llvm::SpecificBumpPtrAllocator<mlir::bytecode::detail::DialectResourceNumbering>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      for (i = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; i <= v8; i += 32)
      {
        if (*(i - 9) < 0)
        {
          operator delete(*(i - 32));
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a1 + 64);
    v12 = &v11[2 * v10];
    do
    {
      v13 = *v11 + v11[1];
      for (j = ((*v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; j <= v13; j += 32)
      {
        if (*(j - 9) < 0)
        {
          operator delete(*(j - 32));
        }
      }

      v11 += 2;
    }

    while (v11 != v12);
    if (*(a1 + 72))
    {
      llvm::deallocate_buffer(**(a1 + 64), *(*(a1 + 64) + 8));
    }
  }

  *(a1 + 72) = 0;
  v15 = *(a1 + 24);
  if (v15)
  {
    *(a1 + 80) = 0;
    v16 = *(a1 + 16);
    v17 = *v16 + 4096;
    *a1 = *v16;
    *(a1 + 8) = v17;
    if (v15 != 1)
    {
      v18 = ((v16 + 8 - *(a1 + 16)) >> 10) & 0x1FFFFFF;
      if (v18 >= 0x1E)
      {
        LOBYTE(v18) = 30;
      }

      llvm::deallocate_buffer(*(v16 + 8), (4096 << v18));
    }

    *(a1 + 24) = 1;
  }
}

uint64_t llvm::SpecificBumpPtrAllocator<mlir::bytecode::detail::DialectNumbering>::DestroyAll(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 16);
    v3 = &v2[v1];
    do
    {
      v4 = *(result + 16);
      v5 = *v2;
      if (*v2 == *(v4 + 8 * *(result + 24) - 8))
      {
        v7 = *result;
      }

      else
      {
        v6 = ((v2 - v4) >> 10) & 0x1FFFFFF;
        if (v6 >= 0x1E)
        {
          LOBYTE(v6) = 30;
        }

        v7 = v5 + (4096 << v6);
      }

      v8 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
      v9 = (v8 + 120);
      if (v8 + 120 <= v7)
      {
        v10 = *(v8 + 104);
        if (v9 != v10)
        {
          free(v10);
        }

        llvm::deallocate_buffer(*(v9 - 5), (24 * *(v9 - 6)));
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v11 = *(result + 72);
  if (v11)
  {
    v12 = *(result + 64);
    v13 = &v12[2 * v11];
    do
    {
      v14 = (*v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v15 = (v14 + 120);
      if (v14 + 120 <= *v12 + v12[1])
      {
        v16 = *(v14 + 104);
        if (v15 != v16)
        {
          free(v16);
        }

        llvm::deallocate_buffer(*(v15 - 5), (24 * *(v15 - 6)));
      }

      v12 += 2;
    }

    while (v12 != v13);
    if (*(result + 72))
    {
      llvm::deallocate_buffer(**(result + 64), *(*(result + 64) + 8));
    }
  }

  *(result + 72) = 0;
  v17 = *(result + 24);
  if (v17)
  {
    *(result + 80) = 0;
    v18 = *(result + 16);
    v19 = *v18 + 4096;
    *result = *v18;
    *(result + 8) = v19;
    if (v17 != 1)
    {
      v20 = ((v18 + 8 - *(result + 16)) >> 10) & 0x1FFFFFF;
      if (v20 >= 0x1E)
      {
        LOBYTE(v20) = 30;
      }

      llvm::deallocate_buffer(*(v18 + 8), (4096 << v20));
    }

    *(result + 24) = 1;
  }

  return result;
}

void mlir::BytecodeWriterConfig::Impl::~Impl(mlir::BytecodeWriterConfig::Impl *this)
{
  v2 = *(this + 23);
  v3 = *(this + 48);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(this + 23);
  }

  if (v2 != this + 200)
  {
    free(v2);
  }

  v7 = *(this + 15);
  v8 = *(this + 32);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v7 - 8;
    do
    {
      v11 = *&v10[v9];
      *&v10[v9] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v9 -= 8;
    }

    while (v9);
    v7 = *(this + 15);
  }

  if (v7 != this + 136)
  {
    free(v7);
  }

  v12 = *(this + 7);
  v13 = *(this + 16);
  if (v13)
  {
    v14 = 8 * v13;
    v15 = v12 - 8;
    do
    {
      v16 = *&v15[v14];
      *&v15[v14] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v14 -= 8;
    }

    while (v14);
    v12 = *(this + 7);
  }

  if (v12 != this + 72)
  {
    free(v12);
  }

  if (*(this + 7))
  {
    v17 = *(this + 6);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = *(*(this + 2) + v18);
        if (v19 != -8 && v19 != 0)
        {
          v22 = *v19;
          v21 = *(v19 + 1);
          *(v19 + 1) = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          llvm::deallocate_buffer(v19, (v22 + 17));
        }

        v18 += 8;
      }

      while (8 * v17 != v18);
    }
  }

  free(*(this + 2));
}