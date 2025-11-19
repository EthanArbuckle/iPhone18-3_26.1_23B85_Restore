uint64_t mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  {
    mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id;
  v6[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6[1] = 77;
  llvm::StringRef::find(v6, "DesiredTypeName = ", 0x12uLL, 0);
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_1F5AF5C90;
  return result;
}

void sub_1DFB6C3A4(void *__p)
{

  operator delete(__p);
}

void anonymous namespace::SSANameState::numberValuesInOp(_anonymous_namespace_::SSANameState *this, mlir::Operation *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v23[1] = &__base;
  __base = &v26;
  v26 = 0;
  __nel = 0x200000001;
  v22 = this;
  v23[0] = this;
  if ((*(this + 304) & 4) == 0)
  {
    if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v5 = InterfaceFor;
      if (a2)
      {
      }
    }
  }

  if (*(a2 + 9))
  {
    v19 = (a2 - 16);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>(this, &v19, this + 62, v20);
    if (v21 == 1)
    {
      ++*(this + 62);
    }

    if (__nel)
    {
      if (__nel == 1)
      {
        goto LABEL_28;
      }

      qsort(__base, __nel, 4uLL, llvm::array_pod_sort_comparator<int>);
    }

    v8 = *(this + 9);
    v7 = this + 72;
    v6 = v8;
    v20[0] = a2;
    v9 = *(v7 + 4);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = v10 & ((a2 >> 4) ^ (a2 >> 9));
      v12 = (v6 + 32 * v11);
      v13 = *v12;
      if (*v12 == a2)
      {
        goto LABEL_28;
      }

      v14 = 0;
      v15 = 1;
      while (v13 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v13 == -8192;
        }

        if (v16)
        {
          v14 = v12;
        }

        v17 = v11 + v15++;
        v11 = v17 & v10;
        v12 = (v6 + 32 * v11);
        v13 = *v12;
        if (*v12 == a2)
        {
          goto LABEL_28;
        }
      }

      if (v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v12;
      }
    }

    else
    {
      v18 = 0;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::InsertIntoBucket<mlir::Operation *,llvm::SmallVector<int,2u>>(v7, v18, v20, &__base);
  }

  else if ((*(this + 304) & 0x40) != 0)
  {
    v19 = a2;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(this + 48, &v19, this + 62, v20);
    if (v21 == 1)
    {
      ++*(this + 62);
    }
  }

LABEL_28:
  if (__base != &v26)
  {
    free(__base);
  }
}

void llvm::function_ref<void ()(mlir::Block *,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInOp(mlir::Operation &)::$_0>(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v29 = v31;
  v30 = xmmword_1E0971DB0;
  v31[0] = 94;
  v6 = sanitizeIdentifier(a3, a4, &v29, "$._-", 4uLL, 1);
  v7 = v6;
  v9 = v8;
  v10 = v29;
  if (v29 == v6)
  {
    v10 = v6;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = v30;
    if (*(&v30 + 1) < v30 + v9)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v29, v31, v30 + v9, 1);
      v10 = v29;
      v11 = v30;
    }

    if (v9)
    {
      memcpy(&v10[v11], v7, v9);
      v10 = v29;
      v11 = v30;
    }

    v9 += v11;
    *&v30 = v9;
    if (v9)
    {
LABEL_7:
      *(v5 + 232) += v9;
      v12 = *(v5 + 152);
      v13 = &v12[v9];
      if (v12)
      {
        v14 = v13 > *(v5 + 160);
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v26 = v10;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v5 + 152, v9, v9, 0);
        v10 = v26;
        v12 = Slow;
      }

      else
      {
        *(v5 + 152) = v13;
      }

      memmove(v12, v10, v9);
      v15 = v5 + 96;
      v16 = *(v5 + 96);
      v17 = *(v5 + 112);
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_25:
      v19 = 0;
      goto LABEL_26;
    }
  }

  v12 = 0;
  v15 = v5 + 96;
  v16 = *(v5 + 96);
  v17 = *(v5 + 112);
  if (!v17)
  {
    goto LABEL_25;
  }

LABEL_13:
  v18 = (v17 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v19 = (v16 + 32 * v18);
  v20 = *v19;
  if (*v19 == a2)
  {
    goto LABEL_31;
  }

  v21 = 0;
  v22 = 1;
  while (v20 != -4096)
  {
    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20 == -8192;
    }

    if (v23)
    {
      v21 = v19;
    }

    v24 = v18 + v22++;
    v18 = v24 & (v17 - 1);
    v19 = (v16 + 32 * v18);
    v20 = *v19;
    if (*v19 == a2)
    {
      goto LABEL_31;
    }
  }

  if (v21)
  {
    v19 = v21;
  }

LABEL_26:
  v28 = v19;
  v25 = *(v5 + 104);
  if (4 * v25 + 4 >= 3 * v17)
  {
    v17 *= 2;
LABEL_39:
    v19 = v28;
    ++*(v5 + 104);
    if (*v19 == -4096)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v17 + ~v25 - *(v5 + 108) <= v17 >> 3)
  {
    goto LABEL_39;
  }

  *(v5 + 104) = v25 + 1;
  if (*v19 != -4096)
  {
LABEL_29:
    --*(v5 + 108);
  }

LABEL_30:
  *v19 = a2;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0;
LABEL_31:
  *(v19 + 2) = -1;
  v19[2] = v12;
  v19[3] = v9;
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (result + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
LABEL_3:
      *a4 = v5;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      while (v6 != -4096)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v6 == -8192;
        }

        if (v9)
        {
          v7 = v5;
        }

        v10 = v4 + v8++;
        v4 = v10 & (a2 - 1);
        v5 = (result + 32 * v4);
        v6 = *v5;
        if (*v5 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v7)
      {
        v5 = v7;
      }

      *a4 = v5;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::grow(uint64_t a1, int a2)
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
        *v13 = -4096;
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
          v22 = *a1 + 32 * v26;
          v27 = *v22;
          if (*v22 != v24)
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
              v22 = *a1 + 32 * v26;
              v27 = *v22;
              if (*v22 == v24)
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
          *v22 = v24;
          v23 = *(v16 + 8);
          *(v22 + 24) = *(v16 + 3);
          *(v22 + 8) = v23;
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
      *v19 = -4096;
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
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Value,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInOp(mlir::Operation &)::$_1>(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  if (a2 && (*(a2 + 8) & 7) == 6)
  {
    v7 = *(a2 + 16);
    v8 = v7 + 6;
    if (v7 == -6)
    {
      return;
    }
  }

  else
  {
    v8 = v6 & 7;
    if ((v6 & 7) == 0)
    {
      return;
    }
  }

  v9 = a1[1];
  v10 = *(v9 + 8);
  if (v10 >= *(v9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v9 + 16, v10 + 1, 4);
    LODWORD(v10) = *(v9 + 8);
  }

  *(*v9 + 4 * v10) = v8;
  ++*(v9 + 8);
}

uint64_t anonymous namespace::SSANameState::setValueName(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v41 = a2;
  if (!a4)
  {
    v11 = *(a1 + 248);
    *(a1 + 248) = v11 + 1;
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1, &v41);
    *result = v11;
    return result;
  }

  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1, &v41) = -1;
  v49 = v51;
  v50 = xmmword_1E0971D80;
  __src[0] = sanitizeIdentifier(a3, a4, &v49, "$._-", 4uLL, 1);
  __src[1] = v7;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((a1 + 120), __src))
  {
    v13 = __src[1];
    if (__src[1])
    {
      *(a1 + 232) += __src[1];
      Slow = *(a1 + 152);
      if (Slow && &Slow[v13] <= *(a1 + 160))
      {
        *(a1 + 152) = &Slow[v13];
LABEL_11:
        memmove(Slow, __src[0], v13);
        v15 = __src[1];
LABEL_61:
        __src[0] = Slow;
        __src[1] = v15;
        goto LABEL_62;
      }

      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 152, v13, v13, 0);
      v13 = __src[1];
      if (__src[1])
      {
        goto LABEL_11;
      }
    }

    else
    {
      Slow = 0;
    }

    v15 = 0;
    goto LABEL_61;
  }

  v9 = __src[0];
  v8 = __src[1];
  v46 = v48;
  v47 = xmmword_1E0970870;
  if (__src[1] >= 0x41)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v46, v48, __src[1], 1);
    v10 = v47;
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = 0;
  if (__src[1])
  {
LABEL_13:
    memcpy(v46 + v10, v9, v8);
    v10 = v47;
  }

LABEL_14:
  v16 = &v8[v10];
  *&v47 = v16;
  if ((v16 + 1) > *(&v47 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v46, v48, (v16 + 1), 1);
    v16 = v47;
  }

  v16[v46] = 95;
  v17 = (v47 + 1);
  *&v47 = v47 + 1;
  while (1)
  {
    v18 = *(a1 + 256);
    *(a1 + 256) = v18 + 1;
    if (v18)
    {
      v19 = 20;
      do
      {
        v51[v19-- + 19] = (v18 % 0xA) | 0x30;
        v20 = v18 > 9;
        v18 /= 0xAuLL;
      }

      while (v20);
      v21 = v19 + 1;
      v22 = 20 - v19;
      if ((20 - v19) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }
    }

    else
    {
      v51[39] = 48;
      v21 = 20;
      v22 = 1;
    }

    if (v22 > 0x16)
    {
      if ((v22 | 7) == 0x17)
      {
        v24 = 25;
      }

      else
      {
        v24 = (v22 | 7) + 1;
      }

      p_dst = operator new(v24);
      v43 = v22;
      v44 = v24 | 0x8000000000000000;
      __dst = p_dst;
      if (v21 != 21)
      {
LABEL_31:
        memcpy(p_dst, &v51[v21 + 19], v22);
      }
    }

    else
    {
      HIBYTE(v44) = v22;
      p_dst = &__dst;
      if (v21 != 21)
      {
        goto LABEL_31;
      }
    }

    *(p_dst + v22) = 0;
    v25 = SHIBYTE(v44);
    v26 = __dst;
    if (v44 >= 0)
    {
      v27 = &__dst;
    }

    else
    {
      v27 = __dst;
    }

    if (v44 >= 0)
    {
      v28 = SHIBYTE(v44);
    }

    else
    {
      v28 = v43;
    }

    if (*(&v47 + 1) < &v17[v28])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v46, v48, &v17[v28], 1);
      v17 = v47;
    }

    if (v28)
    {
      memcpy(&v17[v46], v27, v28);
      v17 = v47;
    }

    v29 = &v17[v28];
    *&v47 = &v17[v28];
    if (v25 < 0)
    {
      operator delete(v26);
      v29 = v47;
    }

    __dst = v46;
    v43 = v29;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((a1 + 120), &__dst))
    {
      break;
    }

    v17 = __src[1] + 1;
    v30 = v47;
    if (v47 != __src[1] + 1)
    {
      if (v47 <= __src[1] + 1)
      {
        if (*(&v47 + 1) < v17)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v46, v48, __src[1] + 1, 1);
          v30 = v47;
        }

        if (v17 != v30)
        {
          bzero(&v30[v46], v17 - v30);
        }
      }

      *&v47 = v17;
    }
  }

  v31 = v46;
  v32 = v47;
  if (!v47)
  {
    __src[0] = 0;
    __src[1] = 0;
    if (v46 == v48)
    {
      goto LABEL_62;
    }

    goto LABEL_58;
  }

  *(a1 + 232) += v47;
  v33 = *(a1 + 152);
  if (v33 && &v33[v32] <= *(a1 + 160))
  {
    *(a1 + 152) = &v33[v32];
  }

  else
  {
    v33 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 152, v32, v32, 0);
  }

  memmove(v33, v31, v32);
  v31 = v46;
  __src[0] = v33;
  __src[1] = v32;
  if (v46 != v48)
  {
LABEL_58:
    free(v31);
  }

LABEL_62:
  v34 = *(a1 + 144);
  v35 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[](a1 + 120, __src);
  v36 = *(v34 + 16);
  v37 = *v35;
  buffer = llvm::allocate_buffer(0x28uLL, 8uLL);
  buffer[1] = *__src;
  *(buffer + 32) = 0;
  *buffer = v36;
  *(buffer + 1) = v37;
  *v35 = buffer;
  *(v34 + 16) = buffer;
  v39 = __src[0];
  v40 = __src[1];
  if (v49 != v51)
  {
    free(v49);
  }

  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[](a1 + 24, &v41);
  *result = v39;
  *(result + 8) = v40;
  return result;
}

char **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[](uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = 0;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(uint64_t a1, int a2)
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
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v28);
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

uint64_t llvm::array_pod_sort_comparator<int>(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::InsertIntoBucket<mlir::Operation *,llvm::SmallVector<int,2u>>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v12 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v8 = a3;
    v9 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      *(a1 + 2) = v5 + 1;
      if (*v4 == -4096)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = a3;
    v9 = a4;
  }

  v10 = a1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v10, v8, &v12);
  a1 = v10;
  a3 = v8;
  v11 = *(v10 + 2);
  v4 = v12;
  a4 = v9;
  *(a1 + 2) = v11 + 1;
  if (*v4 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v4 = *a3;
  v4[1] = v4 + 3;
  v4[2] = 0x100000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<int>::operator=((v4 + 1), a4);
  }

  return v4;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::grow(uint64_t a1, int a2)
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
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0xFFFFFFFFFFFFFFELL;
      v11 = &v7[4 * v10];
      v12 = v7 + 4;
      v13 = v10;
      do
      {
        *(v12 - 4) = -4096;
        *v12 = -4096;
        v12 += 8;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[4 * v6];
    do
    {
      *v11 = -4096;
      v11 += 4;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + 32 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -8192;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = (*a1 + 32 * v17);
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        *v18 = v15;
        v18[1] = v18 + 3;
        v18[2] = 0x100000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<int>::operator=((v18 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v20 = v4[1];
        if (v20 != v4 + 3)
        {
          free(v20);
        }
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

void mlir::detail::AsmStateImpl::~AsmStateImpl(mlir::detail::AsmStateImpl *this)
{
  v2 = *(this + 88);
  if (v2 != this + 720)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 85), (8 * *(this + 174)));
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 6 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 48 * v11 - 48;
    if (v12 < 0x30)
    {
      v13 = result;
LABEL_14:
      v17 = &result[6 * v11];
      do
      {
        *v13 = -4096;
        v13 += 6;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x30 + 1;
    v13 = &result[6 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[6] = -4096;
      v15 += 12;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  v4 = result;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = 48 * v5 - 48;
    if (v7 < 0x30)
    {
      v8 = *result;
LABEL_7:
      v12 = &v6[6 * v5];
      do
      {
        *v8 = -4096;
        v8 += 6;
      }

      while (v8 != v12);
      goto LABEL_9;
    }

    v9 = v7 / 0x30 + 1;
    v8 = &v6[6 * (v9 & 0xFFFFFFFFFFFFFFELL)];
    v10 = *result;
    v11 = v9 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v10 = -4096;
      v10[6] = -4096;
      v10 += 12;
      v11 -= 2;
    }

    while (v11);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v13 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v14 = *(result + 16) - 1;
        v15 = v14 & ((v13 >> 4) ^ (v13 >> 9));
        v16 = *result + 48 * v15;
        v17 = *v16;
        if (v13 != *v16)
        {
          v22 = 0;
          v23 = 1;
          while (v17 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v17 == -8192;
            }

            if (v24)
            {
              v22 = v16;
            }

            v25 = v15 + v23++;
            v15 = v25 & v14;
            v16 = *v4 + 48 * v15;
            v17 = *v16;
            if (v13 == *v16)
            {
              goto LABEL_15;
            }
          }

          if (v22)
          {
            v16 = v22;
          }
        }

LABEL_15:
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = v13;
        *(v16 + 24) = 0;
        *(v16 + 8) = v3[1];
        v3[1] = 0;
        *(v16 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v18 = *(v16 + 20);
        *(v16 + 20) = *(v3 + 5);
        *(v3 + 5) = v18;
        v19 = *(v16 + 24);
        *(v16 + 24) = *(v3 + 6);
        *(v3 + 6) = v19;
        *(v16 + 32) = v16 + 48;
        *(v16 + 40) = 0;
        v20 = v16 + 32;
        if (*(v3 + 10))
        {
          llvm::SmallVectorImpl<mlir::AsmDialectResourceHandle>::operator=(v20, v3 + 4);
        }

        ++*(v4 + 8);
        v21 = v3[4];
        if (v21 != v3 + 6)
        {
          free(v21);
        }

        llvm::deallocate_buffer(v3[1], (24 * *(v3 + 6)));
      }

      v3 += 6;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::AsmDialectResourceHandle>::operator=(uint64_t result, const void **a2)
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
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 24 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 24 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 24);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 24 * v8), *a2 + 24 * v8, 24 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t llvm::interleaveComma<llvm::ArrayRef<mlir::Attribute>,mlir::AsmPrinter::Impl::printAttributeImpl(mlir::Attribute,mlir::AsmPrinter::Impl::AttrTypeElision)::$_1,llvm::raw_ostream,mlir::Attribute const>(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
    return result;
  }

  v6 = *result;
  v7 = **result;
  if (!v7)
  {
    result = *a3;
    v8 = *(*a3 + 32);
    if ((*(*a3 + 24) - v8) > 0x11)
    {
      *(v8 + 16) = 15934;
      *v8 = *"<<NULL ATTRIBUTE>>";
      *(result + 32) += 18;
      if (v3 == 1)
      {
        return result;
      }

LABEL_11:
      v9 = v6 + 1;
      v10 = 8 * v3 - 8;
      while (1)
      {
        v11 = a2[4];
        if (a2[3] - v11 > 1uLL)
        {
          *v11 = 8236;
          a2[4] += 2;
          v12 = *v9;
          if (*v9)
          {
LABEL_19:
            if ((result & 1) == 0)
            {
              result = mlir::AsmPrinter::Impl::printAttributeImpl(a3, v12, 1);
            }

            goto LABEL_13;
          }
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
          v12 = *v9;
          if (*v9)
          {
            goto LABEL_19;
          }
        }

        result = *a3;
        v13 = *(*a3 + 32);
        if ((*(*a3 + 24) - v13) > 0x11)
        {
          *(v13 + 16) = 15934;
          *v13 = *"<<NULL ATTRIBUTE>>";
          *(result + 32) += 18;
        }

        else
        {
          result = llvm::raw_ostream::write(result, "<<NULL ATTRIBUTE>>", 0x12uLL);
        }

LABEL_13:
        ++v9;
        v10 -= 8;
        if (!v10)
        {
          return result;
        }
      }
    }

    result = llvm::raw_ostream::write(result, "<<NULL ATTRIBUTE>>", 0x12uLL);
LABEL_8:
    if (v3 == 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (result)
  {
    goto LABEL_8;
  }

  result = mlir::AsmPrinter::Impl::printAttributeImpl(a3, v7, 1);
  if (v3 != 1)
  {
    goto LABEL_11;
  }

  return result;
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_0>(void *a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = *(*a1 + 16);
  *__p = **a1;
  v13 = *(&v4 + 1);
  v12 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(__p, &v14);
  v5 = *v3;
  v6 = *(*v3 + 4);
  if (*(*v3 + 3) == v6)
  {
    llvm::raw_ostream::write(v5, "(", 1uLL);
    LODWORD(__p[1]) = v15;
    if (v15 <= 0x40)
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::APInt::initSlowCase(__p, &v14);
    goto LABEL_6;
  }

  *v6 = 40;
  ++*(v5 + 4);
  LODWORD(__p[1]) = v15;
  if (v15 > 0x40)
  {
    goto LABEL_5;
  }

LABEL_3:
  __p[0] = v14;
LABEL_6:
  printDenseIntElement(__p, *v3, *a1[2]);
  if (LODWORD(__p[1]) >= 0x41 && __p[0])
  {
    operator delete[](__p[0]);
  }

  v7 = *v3;
  v8 = *(*v3 + 4);
  if (*(*v3 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
    LODWORD(__p[1]) = v17;
    if (v17 <= 0x40)
    {
      goto LABEL_11;
    }

LABEL_13:
    llvm::APInt::initSlowCase(__p, &v16);
    goto LABEL_14;
  }

  *v8 = 44;
  ++*(v7 + 4);
  LODWORD(__p[1]) = v17;
  if (v17 > 0x40)
  {
    goto LABEL_13;
  }

LABEL_11:
  __p[0] = v16;
LABEL_14:
  printDenseIntElement(__p, *v3, *a1[2]);
  if (LODWORD(__p[1]) >= 0x41 && __p[0])
  {
    operator delete[](__p[0]);
  }

  v9 = *v3;
  v10 = *(*v3 + 4);
  if (*(*v3 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ")", 1uLL);
    if (v17 < 0x41)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v10 = 41;
    ++*(v9 + 4);
    if (v17 < 0x41)
    {
      goto LABEL_23;
    }
  }

  if (v16)
  {
    operator delete[](v16);
  }

LABEL_23:
  if (v15 >= 0x41)
  {
    if (v14)
    {
      operator delete[](v14);
    }
  }
}

void printDenseIntElement(llvm::APInt *a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v12 = a3;
  if (mlir::Type::isInteger(&v12, 1))
  {
    v5 = *(a1 + 2);
    if (v5 > 0x40)
    {
      v6 = llvm::APInt::countLeadingZerosSlowCase(a1) == v5;
    }

    else
    {
      v6 = *a1 == 0;
    }

    v8 = v6;
    if (v8)
    {
      v9 = "false";
    }

    else
    {
      v9 = "true";
    }

    if (v8)
    {
      v10 = 5;
    }

    else
    {
      v10 = 4;
    }

    v11 = *(a2 + 4);
    if (v10 <= *(a2 + 3) - v11)
    {
      memcpy(v11, v9, v10);
      *(a2 + 4) += v10;
    }

    else
    {
      llvm::raw_ostream::write(a2, v9, v10);
    }
  }

  else
  {
    isUnsignedInteger = mlir::Type::isUnsignedInteger(&v12);
    llvm::APInt::print(a1, a2, !isUnsignedInteger);
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_1>(__int128 **a1, unsigned int a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v17 = **a1;
  v19 = *(&v4 + 1);
  v20 = v3;
  v18 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v17, &v13);
  mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v17, &v13, v21);
  if (v16 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  v5 = *v2;
  v6 = *(*v2 + 4);
  if (*(*v2 + 3) == v6)
  {
    v5 = llvm::raw_ostream::write(v5, "(", 1uLL);
  }

  else
  {
    *v6 = 40;
    ++*(v5 + 4);
  }

  v7 = v22[0];
  v8 = llvm::APFloatBase::PPCDoubleDouble(v5);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v17 + 1, v22);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((&v17 + 8), v22);
  }

  printFloatValue(&v17, *v2, 0);
  if (v8 == *(&v17 + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v17 + 8));
    v9 = *v2;
    v10 = *(*v2 + 4);
    if (*(*v2 + 3) != v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v17 + 8));
    v9 = *v2;
    v10 = *(*v2 + 4);
    if (*(*v2 + 3) != v10)
    {
LABEL_15:
      *v10 = 44;
      ++*(v9 + 4);
      goto LABEL_18;
    }
  }

  llvm::raw_ostream::write(v9, ",", 1uLL);
LABEL_18:
  if (v8 == v23[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v17 + 1, v23);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((&v17 + 8), v23);
  }

  printFloatValue(&v17, *v2, 0);
  if (v8 == *(&v17 + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v17 + 8));
    v11 = *v2;
    v12 = *(*v2 + 4);
    if (*(*v2 + 3) != v12)
    {
LABEL_23:
      *v12 = 41;
      ++*(v11 + 4);
      if (v8 != v23[0])
      {
        goto LABEL_24;
      }

LABEL_29:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v23);
      if (v8 != v22[0])
      {
        goto LABEL_25;
      }

LABEL_30:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v17 + 8));
    v11 = *v2;
    v12 = *(*v2 + 4);
    if (*(*v2 + 3) != v12)
    {
      goto LABEL_23;
    }
  }

  llvm::raw_ostream::write(v11, ")", 1uLL);
  if (v8 == v23[0])
  {
    goto LABEL_29;
  }

LABEL_24:
  llvm::detail::IEEEFloat::~IEEEFloat(v23);
  if (v8 == v22[0])
  {
    goto LABEL_30;
  }

LABEL_25:
  llvm::detail::IEEEFloat::~IEEEFloat(v22);
}

void mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(llvm::APFloatBase *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4);
  v16 = *(a2 + 8);
  if (v16 > 0x40)
  {
    inited = llvm::APInt::initSlowCase(&v15, a2);
    v7 = llvm::APFloatBase::PPCDoubleDouble(inited);
    if (v7 != v6)
    {
LABEL_3:
      llvm::detail::IEEEFloat::IEEEFloat(v18, v6, &v15);
      v8 = *(a1 + 4);
      v14 = *(a2 + 24);
      if (v14 <= 0x40)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v15 = *a2;
    v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
    if (v7 != v6)
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v18, v6, &v15);
  v8 = *(a1 + 4);
  v14 = *(a2 + 24);
  if (v14 <= 0x40)
  {
LABEL_4:
    __p = *(a2 + 16);
    v9 = v8;
    if (v7 != v8)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  llvm::APInt::initSlowCase(&__p, (a2 + 16));
  v9 = v8;
  if (v7 != v8)
  {
LABEL_5:
    llvm::detail::IEEEFloat::IEEEFloat(v17, v9, &__p);
    v10 = (a3 + 8);
    if (v7 != v18[0])
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v17, v9, &__p);
  v10 = (a3 + 8);
  if (v7 != v18[0])
  {
LABEL_6:
    llvm::detail::IEEEFloat::IEEEFloat(v10, v18);
    v11 = (a3 + 40);
    if (v7 != v17[0])
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, v18);
  v11 = (a3 + 40);
  if (v7 != v17[0])
  {
LABEL_7:
    llvm::detail::IEEEFloat::IEEEFloat(v11, v17);
    if (v7 != v17[0])
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v17);
  if (v7 != v17[0])
  {
LABEL_8:
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
    if (v14 < 0x41)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  if (v14 < 0x41)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (__p)
  {
    operator delete[](__p);
  }

LABEL_19:
  if (v7 == v18[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
    if (v16 < 0x41)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v18);
    if (v16 < 0x41)
    {
      return;
    }
  }

  if (v15)
  {
    operator delete[](v15);
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_2>(__int128 **a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = (*a1)[1];
  v5 = **a1;
  v7 = *(&v4 + 1);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v5, &__p);
  printDenseIntElement(&__p, *v3, *a1[2]);
  if (v9 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_3>(__int128 **a1, unsigned int a2)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v8 = **a1;
  v10 = *(&v4 + 1);
  v11 = v3;
  v9 = v4 + a2;
  v5 = mlir::DenseElementsAttr::IntElementIterator::operator*(&v8, &__p);
  v6 = v11;
  v7 = llvm::APFloatBase::PPCDoubleDouble(v5);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v15, v6, &__p);
    if (v13 < 0x41)
    {
      goto LABEL_7;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v15, v6, &__p);
    if (v13 < 0x41)
    {
      goto LABEL_7;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_7:
  printFloatValue(v14, *v2, 0);
  if (v7 == v15[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
  }
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>(llvm::raw_ostream ***a1, unsigned int a2)
{
  v2 = *a1;
  v3 = *a1[1] + 16 * a2;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = **a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(v4, v5, *v2);
  result = *v2;
  v9 = *(*v2 + 4);
  if (*(*v2 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(uint64_t a1, int a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = **a1;
  v10 = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, 0, 0);
    if (!**a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = 0;
  if (v5)
  {
LABEL_5:
    llvm::LoadIntFromMemory(&__p, (**(a1 + 8) + (**(a1 + 16) * a2)), **(a1 + 16));
  }

LABEL_6:
  if (mlir::Type::isIntOrIndex(*(a1 + 24)))
  {
    printDenseIntElement(&__p, *v4, **(a1 + 24));
    if (v10 < 0x41)
    {
      return;
    }
  }

  else
  {
    v8 = **(a1 + 24);
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v8);
    v7 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
    if (v7 == FloatSemantics)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, FloatSemantics, &__p);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v12, FloatSemantics, &__p);
    }

    printFloatValue(v11, *v4, 0);
    if (v7 == v12[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v12);
      if (v10 < 0x41)
      {
        return;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v12);
      if (v10 < 0x41)
      {
        return;
      }
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }
}

unint64_t *llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(unint64_t *result, unint64_t *a2, llvm::raw_ostream *this, llvm::raw_ostream *a4, uint64_t a5)
{
  if (result != a2)
  {
    v9 = result;
    if (*result == 0x8000000000000000)
    {
      v10 = *(this + 4);
      if (*(this + 3) == v10)
      {
        result = llvm::raw_ostream::write(this, "?", 1uLL);
        v11 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      else
      {
        *v10 = 63;
        ++*(this + 4);
        v11 = result + 1;
        if (result + 1 == a2)
        {
          return result;
        }
      }
    }

    else
    {
      result = llvm::raw_ostream::operator<<(this, *result);
      v11 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }

    do
    {
      v12 = *a5;
      v13 = *(a5 + 8);
      result = *(a4 + 4);
      if (v13 <= *(a4 + 3) - result)
      {
        if (v13)
        {
          v14 = *(a5 + 8);
          result = memcpy(result, v12, v13);
          *(a4 + 4) += v14;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(a4, v12, v13);
      }

      if (*v11 == 0x8000000000000000)
      {
        v15 = *(this + 4);
        if (*(this + 3) == v15)
        {
          result = llvm::raw_ostream::write(this, "?", 1uLL);
        }

        else
        {
          *v15 = 63;
          ++*(this + 4);
        }
      }

      else
      {
        result = llvm::raw_ostream::operator<<(this, *v11);
      }

      ++v11;
    }

    while (v11 != a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_3@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_4@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 3;
  return result;
}

void *mlir::NamedAttribute::NamedAttribute(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t mlir::NamedAttribute::operator<(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v13 = *a1;
  v14 = v2;
  if (v13 == v2)
  {
    return 0;
  }

  AttrData = mlir::OpaqueAttr::getAttrData(&v13);
  v5 = v4;
  v6 = mlir::OpaqueAttr::getAttrData(&v14);
  v8 = v7;
  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = memcmp(AttrData, v6, v9);
    if (v10)
    {
      return ((v10 >> 31) | 1u) >> 31;
    }
  }

  if (v5 < v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v5 == v8)
  {
    v12 = 0;
  }

  return v12 >> 31;
}

uint64_t mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v18 = a2;
  v19 = a4;
  LODWORD(v20) = 1;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>(a1 + 48, &v18, &v20, &v16);
  if ((v17 & 1) == 0)
  {
    return *(v16 + 16);
  }

  if (a4 == 1 && (v23 = 1, v24 = 1, v20 = &v23, v21 = a1, v22 = &v24, mlir::AbstractAttribute::walkImmediateSubElements(*a2), !v23))
  {
LABEL_9:
    v13 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](a1 + 48, &v18);
    result = 0;
    *v13 = 0;
  }

  else
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    while (v9 != v8)
    {
      v20 = a2;
      v11 = *(v9 - 8);
      if (!v11)
      {
        v15 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::AttrTypeWalker::walkImpl(v15);
      }

      v12 = (*(*v11 + 48))(v11, &v20);
      if (v12 == 2)
      {
        return 1;
      }

      v9 -= 32;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    if (a4)
    {
      return 1;
    }

    v23 = 1;
    v24 = 0;
    v20 = &v23;
    v21 = a1;
    v22 = &v24;
    mlir::AbstractAttribute::walkImmediateSubElements(*a2);
    return v23 != 0;
  }

  return result;
}

uint64_t mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v18 = a2;
  v19 = a4;
  LODWORD(v20) = 1;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>(a1 + 48, &v18, &v20, &v16);
  if ((v17 & 1) == 0)
  {
    return *(v16 + 16);
  }

  if (a4 == 1 && (v23 = 1, v24 = 1, v20 = &v23, v21 = a1, v22 = &v24, mlir::AbstractAttribute::walkImmediateSubElements(*a2), !v23))
  {
LABEL_9:
    v13 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](a1 + 48, &v18);
    result = 0;
    *v13 = 0;
  }

  else
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    while (v9 != v8)
    {
      v20 = a2;
      v11 = *(v9 - 8);
      if (!v11)
      {
        v15 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(v15);
      }

      v12 = (*(*v11 + 48))(v11, &v20);
      if (v12 == 2)
      {
        return 1;
      }

      v9 -= 32;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    if (a4)
    {
      return 1;
    }

    v23 = 1;
    v24 = 0;
    v20 = &v23;
    v21 = a1;
    v22 = &v24;
    mlir::AbstractAttribute::walkImmediateSubElements(*a2);
    return v23 != 0;
  }

  return result;
}

void mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a3)
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v120 = AttrDictionary;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v120, &v120, v118);
    if (v119)
    {
      v10 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a1, AttrDictionary);
      *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](a1 + 48, &v120) = v10;
      if (v10)
      {
        v11 = v10 == AttrDictionary;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
LABEL_13:
        mlir::Operation::setAttrs(a2, v10);
      }
    }

    else
    {
      v10 = *(v118[0] + 8);
      if (v10)
      {
        v12 = v10 == AttrDictionary;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        goto LABEL_13;
      }
    }
  }

  if ((a4 & 1) == 0 && !a5)
  {
    return;
  }

  if (a4)
  {
    v13 = *(a2 + 24);
    v120 = v13;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v120, &v120, v118);
    if (v119)
    {
      v14 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a1, v13);
      *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](a1 + 48, &v120) = v14;
      if (v14)
      {
        v15 = v14 == v13;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
LABEL_28:
        *(a2 + 24) = v14;
      }
    }

    else
    {
      v14 = *(v118[0] + 8);
      if (v14)
      {
        v16 = v14 == v13;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  if (a5)
  {
    v17 = *(a2 + 36);
    v18 = v17 ? a2 - 16 : 0;
    if (v17)
    {
      for (i = 0; v17 != i; ++i)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, i);
        v21 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
        v120 = v21;
        llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v120, &v120, v118);
        if (v119)
        {
          v22 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a1, v21);
          *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](a1 + 48, &v120) = v22;
          if (v22)
          {
            v23 = v22 == v21;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            continue;
          }
        }

        else
        {
          v22 = *(v118[0] + 8);
          if (v22)
          {
            v24 = v22 == v21;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            continue;
          }
        }

        *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | v22;
      }
    }
  }

  v25 = *(a2 + 44);
  if ((v25 & 0x7FFFFF) != 0)
  {
    v26 = ((a2 + 16 * ((v25 >> 23) & 1) + ((v25 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v27 = v26 + 24 * (v25 & 0x7FFFFF);
    do
    {
      for (j = *(v26 + 8); j != v26; j = *(j + 8))
      {
        v29 = j - 8;
        if (!j)
        {
          v29 = 0;
        }

        v30 = *(v29 + 48);
        v31 = *(v29 + 56);
        while (v30 != v31)
        {
          if (!a4)
          {
            goto LABEL_87;
          }

          v32 = *(*v30 + 32);
          v33 = *(a1 + 64);
          if (!v33)
          {
            goto LABEL_137;
          }

          v34 = *(a1 + 48);
          v35 = ((v32 >> 4) ^ (v32 >> 9)) & (v33 - 1);
          v36 = (v34 + 16 * v35);
          v37 = *v36;
          if (v32 == *v36)
          {
LABEL_62:
            v38 = *(v34 + 16 * v35 + 8);
            if (v38)
            {
              goto LABEL_85;
            }

            goto LABEL_87;
          }

          v66 = 0;
          v67 = 1;
          while (v37 != -4096)
          {
            if (v66)
            {
              v68 = 0;
            }

            else
            {
              v68 = v37 == -8192;
            }

            if (v68)
            {
              v66 = v36;
            }

            v69 = v35 + v67++;
            v35 = v69 & (v33 - 1);
            v36 = (v34 + 16 * v35);
            v37 = *v36;
            if (v32 == *v36)
            {
              goto LABEL_62;
            }
          }

          v74 = v66 ? v66 : v36;
          v75 = *(a1 + 56);
          if (4 * v75 + 4 >= 3 * v33)
          {
LABEL_137:
            v33 *= 2;
LABEL_138:
            llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(a1 + 48, v33);
            v76 = *(a1 + 64);
            if (v76)
            {
              v77 = *(a1 + 48);
              v78 = v76 - 1;
              v79 = (v76 - 1) & ((v32 >> 4) ^ (v32 >> 9));
              v74 = (v77 + 16 * v79);
              v80 = *v74;
              if (v32 != *v74)
              {
                v81 = 0;
                v82 = 1;
                while (v80 != -4096)
                {
                  if (v81)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    v83 = v80 == -8192;
                  }

                  if (v83)
                  {
                    v81 = v74;
                  }

                  v84 = v79 + v82++;
                  v79 = v84 & v78;
                  v74 = (v77 + 16 * (v84 & v78));
                  v80 = *v74;
                  if (v32 == *v74)
                  {
                    goto LABEL_166;
                  }
                }

                if (v81)
                {
                  v74 = v81;
                }
              }
            }

            else
            {
              v74 = 0;
            }

LABEL_166:
            ++*(a1 + 56);
            if (*v74 == -4096)
            {
              goto LABEL_68;
            }

LABEL_67:
            --*(a1 + 60);
            goto LABEL_68;
          }

          if (v33 + ~v75 - *(a1 + 60) <= v33 >> 3)
          {
            goto LABEL_138;
          }

          *(a1 + 56) = v75 + 1;
          if (*v74 != -4096)
          {
            goto LABEL_67;
          }

LABEL_68:
          *v74 = v32;
          v74[1] = v32;
          v38 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a1, v32);
          v39 = *(a1 + 64);
          if (!v39)
          {
            goto LABEL_174;
          }

          v40 = *(a1 + 48);
          v41 = v39 - 1;
          v42 = (v39 - 1) & ((v32 >> 4) ^ (v32 >> 9));
          v43 = (v40 + 16 * v42);
          v44 = *v43;
          if (v32 == *v43)
          {
            goto LABEL_84;
          }

          v45 = 0;
          v46 = 1;
          while (v44 != -4096)
          {
            if (v45)
            {
              v47 = 0;
            }

            else
            {
              v47 = v44 == -8192;
            }

            if (v47)
            {
              v45 = v43;
            }

            v48 = v42 + v46++;
            v42 = v48 & v41;
            v43 = (v40 + 16 * (v48 & v41));
            v44 = *v43;
            if (v32 == *v43)
            {
              goto LABEL_84;
            }
          }

          if (v45)
          {
            v43 = v45;
          }

          v96 = *(a1 + 56);
          if (4 * v96 + 4 >= 3 * v39)
          {
LABEL_174:
            v97 = v38;
            llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(a1 + 48, 2 * v39);
            v98 = *(a1 + 64);
            if (v98)
            {
              goto LABEL_175;
            }

LABEL_200:
            v43 = 0;
            goto LABEL_201;
          }

          if (v39 + ~v96 - *(a1 + 60) <= v39 >> 3)
          {
            v97 = v38;
            llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(a1 + 48, v39);
            v98 = *(a1 + 64);
            if (!v98)
            {
              goto LABEL_200;
            }

LABEL_175:
            v99 = *(a1 + 48);
            v100 = v98 - 1;
            v101 = (v98 - 1) & ((v32 >> 4) ^ (v32 >> 9));
            v43 = (v99 + 16 * v101);
            v102 = *v43;
            if (v32 == *v43)
            {
LABEL_201:
              v38 = v97;
            }

            else
            {
              v103 = 0;
              v104 = 1;
              v38 = v97;
              while (v102 != -4096)
              {
                if (v103)
                {
                  v105 = 0;
                }

                else
                {
                  v105 = v102 == -8192;
                }

                if (v105)
                {
                  v103 = v43;
                }

                v106 = v101 + v104++;
                v101 = v106 & v100;
                v43 = (v99 + 16 * (v106 & v100));
                v102 = *v43;
                if (v32 == *v43)
                {
                  goto LABEL_202;
                }
              }

              if (v103)
              {
                v43 = v103;
              }
            }

LABEL_202:
            ++*(a1 + 56);
            if (*v43 == -4096)
            {
              goto LABEL_83;
            }

LABEL_82:
            --*(a1 + 60);
            goto LABEL_83;
          }

          *(a1 + 56) = v96 + 1;
          if (*v43 != -4096)
          {
            goto LABEL_82;
          }

LABEL_83:
          *v43 = v32;
          v43[1] = 0;
LABEL_84:
          v43[1] = v38;
          if (v38)
          {
LABEL_85:
            if (v38 != v32)
            {
              *(*v30 + 32) = v38;
            }
          }

LABEL_87:
          if (!a5)
          {
            goto LABEL_57;
          }

          v49 = (*(*v30 + 8) & 0xFFFFFFFFFFFFFFF8);
          v50 = *(a1 + 64);
          if (!v50)
          {
            goto LABEL_153;
          }

          v51 = *(a1 + 48);
          v52 = ((v49 >> 4) ^ (v49 >> 9)) & (v50 - 1);
          v53 = (v51 + 16 * v52);
          v54 = *v53;
          if (*v53 == v49)
          {
LABEL_90:
            v55 = *(v51 + 16 * v52 + 8);
            if (!v55)
            {
              goto LABEL_57;
            }

            goto LABEL_113;
          }

          v70 = 0;
          v71 = 1;
          while (v54 != -4096)
          {
            if (v70)
            {
              v72 = 0;
            }

            else
            {
              v72 = v54 == -8192;
            }

            if (v72)
            {
              v70 = v53;
            }

            v73 = v52 + v71++;
            v52 = v73 & (v50 - 1);
            v53 = (v51 + 16 * v52);
            v54 = *v53;
            if (*v53 == v49)
            {
              goto LABEL_90;
            }
          }

          v85 = v70 ? v70 : v53;
          v86 = *(a1 + 56);
          if (4 * v86 + 4 >= 3 * v50)
          {
LABEL_153:
            v50 *= 2;
LABEL_154:
            llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(a1 + 48, v50);
            v87 = *(a1 + 64);
            if (v87)
            {
              v88 = *(a1 + 48);
              v89 = v87 - 1;
              v90 = (v87 - 1) & ((v49 >> 4) ^ (v49 >> 9));
              v85 = (v88 + 16 * v90);
              v91 = *v85;
              if (*v85 != v49)
              {
                v92 = 0;
                v93 = 1;
                while (v91 != -4096)
                {
                  if (v92)
                  {
                    v94 = 0;
                  }

                  else
                  {
                    v94 = v91 == -8192;
                  }

                  if (v94)
                  {
                    v92 = v85;
                  }

                  v95 = v90 + v93++;
                  v90 = v95 & v89;
                  v85 = (v88 + 16 * (v95 & v89));
                  v91 = *v85;
                  if (*v85 == v49)
                  {
                    goto LABEL_169;
                  }
                }

                if (v92)
                {
                  v85 = v92;
                }
              }
            }

            else
            {
              v85 = 0;
            }

LABEL_169:
            ++*(a1 + 56);
            if (*v85 == -4096)
            {
              goto LABEL_96;
            }

LABEL_95:
            --*(a1 + 60);
            goto LABEL_96;
          }

          if (v50 + ~v86 - *(a1 + 60) <= v50 >> 3)
          {
            goto LABEL_154;
          }

          *(a1 + 56) = v86 + 1;
          if (*v85 != -4096)
          {
            goto LABEL_95;
          }

LABEL_96:
          *v85 = v49;
          v85[1] = v49;
          v55 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a1, v49);
          v56 = *(a1 + 64);
          if (!v56)
          {
            goto LABEL_188;
          }

          v57 = *(a1 + 48);
          v58 = v56 - 1;
          v59 = (v56 - 1) & ((v49 >> 4) ^ (v49 >> 9));
          v60 = (v57 + 16 * v59);
          v61 = *v60;
          if (*v60 == v49)
          {
            goto LABEL_112;
          }

          v62 = 0;
          v63 = 1;
          while (v61 != -4096)
          {
            if (v62)
            {
              v64 = 0;
            }

            else
            {
              v64 = v61 == -8192;
            }

            if (v64)
            {
              v62 = v60;
            }

            v65 = v59 + v63++;
            v59 = v65 & v58;
            v60 = (v57 + 16 * (v65 & v58));
            v61 = *v60;
            if (*v60 == v49)
            {
              goto LABEL_112;
            }
          }

          if (v62)
          {
            v60 = v62;
          }

          v107 = *(a1 + 56);
          if (4 * v107 + 4 >= 3 * v56)
          {
LABEL_188:
            v108 = v55;
            llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(a1 + 48, 2 * v56);
            v109 = *(a1 + 64);
            if (v109)
            {
              goto LABEL_189;
            }

LABEL_205:
            v60 = 0;
            goto LABEL_206;
          }

          if (v56 + ~v107 - *(a1 + 60) <= v56 >> 3)
          {
            v108 = v55;
            llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(a1 + 48, v56);
            v109 = *(a1 + 64);
            if (!v109)
            {
              goto LABEL_205;
            }

LABEL_189:
            v110 = *(a1 + 48);
            v111 = v109 - 1;
            v112 = (v109 - 1) & ((v49 >> 4) ^ (v49 >> 9));
            v60 = (v110 + 16 * v112);
            v113 = *v60;
            if (*v60 == v49)
            {
LABEL_206:
              v55 = v108;
            }

            else
            {
              v114 = 0;
              v115 = 1;
              v55 = v108;
              while (v113 != -4096)
              {
                if (v114)
                {
                  v116 = 0;
                }

                else
                {
                  v116 = v113 == -8192;
                }

                if (v116)
                {
                  v114 = v60;
                }

                v117 = v112 + v115++;
                v112 = v117 & v111;
                v60 = (v110 + 16 * (v117 & v111));
                v113 = *v60;
                if (*v60 == v49)
                {
                  goto LABEL_207;
                }
              }

              if (v114)
              {
                v60 = v114;
              }
            }

LABEL_207:
            ++*(a1 + 56);
            if (*v60 == -4096)
            {
              goto LABEL_111;
            }

LABEL_110:
            --*(a1 + 60);
            goto LABEL_111;
          }

          *(a1 + 56) = v107 + 1;
          if (*v60 != -4096)
          {
            goto LABEL_110;
          }

LABEL_111:
          *v60 = v49;
          v60[1] = 0;
LABEL_112:
          v60[1] = v55;
          if (!v55)
          {
            goto LABEL_57;
          }

LABEL_113:
          if (v55 != v49)
          {
            *(*v30 + 8) = *(*v30 + 8) & 7 | v55;
          }

LABEL_57:
          v30 += 8;
        }
      }

      v26 += 24;
    }

    while (v26 != v27);
  }
}

uint64_t mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(uint64_t a1, mlir::ForwardIterator *a2, char a3, char a4, char a5)
{
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6[0] = a1;
  v6[1] = &v9;
  v6[2] = &v8;
  v6[3] = &v7;
  return mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(mlir::Operation *,BOOL,BOOL,BOOL)::{lambda(mlir::Operation *)#1}>, v6, 1);
}

uint64_t mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        *(v3 + 24) = v3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
      }

      else
      {
        *(v3 + 24) = v4;
        *(a2 + 24) = 0;
      }

      result = v3 + 32;
      *(a1 + 8) = v3 + 32;
    }

    else
    {
      *(v3 + 24) = 0;
      result = v3 + 32;
      *(a1 + 8) = v3 + 32;
    }
  }

  return result;
}

uint64_t *mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(uint64_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
LABEL_5:
    if (!a2)
    {
      return a2;
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 - 8);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v5 + 48))(&v8);
      if (v10[0])
      {
        break;
      }

      v4 -= 32;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    a2 = v8;
    if (v9)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    if (v9 == 2)
    {
      return a2;
    }
  }

  v8 = v10;
  v9 = 0x1000000000;
  mlir::AbstractAttribute::walkImmediateSubElements(*a2);
  if (v8 != v10)
  {
    free(v8);
  }

  return a2;
}

uint64_t *mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == v3)
  {
LABEL_5:
    if (!a2)
    {
      return a2;
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 - 8);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v5 + 48))(&v8);
      if (v10[0])
      {
        break;
      }

      v4 -= 32;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    a2 = v8;
    if (v9)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    if (v9 == 2)
    {
      return a2;
    }
  }

  v8 = v10;
  v9 = 0x1000000000;
  mlir::AbstractAttribute::walkImmediateSubElements(*a2);
  if (v8 != v10)
  {
    free(v8);
  }

  return a2;
}

uint64_t *mlir::AttrTypeReplacer::replace(uint64_t a1, uint64_t *a2)
{
  v9 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v9, &v9, &v7);
  if ((v8 & 1) == 0)
  {
    return *(v7 + 8);
  }

  v4 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a1, a2);
  v5 = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](a1 + 48, &v9);
  result = v4;
  *v5 = v4;
  return result;
}

uint64_t mlir::AttrTypeImmediateSubElementWalker::walk(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*result)(*(result + 8));
  }

  return result;
}

{
  if (a2)
  {
    return (*(result + 16))(*(result + 24));
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = *result;
  v6 = *(a2 + 8);
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v8 = v4 - 1;
  v9 = (v4 - 1) & ((v7 >> 31) ^ v7);
  v10 = *result + 24 * v9;
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*a2 != *v10 || v6 != v12)
  {
    v16 = 0;
    v17 = 1;
    while (v11 != -4096 || v12 != 0x7FFFFFFF)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12 == 0x80000000;
      }

      if (v18 && v11 == -8192)
      {
        v16 = v10;
      }

      v20 = v9 + v17++;
      v9 = v20 & v8;
      v10 = v5 + 24 * (v20 & v8);
      v11 = *v10;
      v12 = *(v10 + 8);
      if (*a2 == *v10 && v6 == v12)
      {
        goto LABEL_7;
      }
    }

    if (v16)
    {
      v10 = v16;
    }

LABEL_9:
    v26 = v10;
    v15 = *(result + 8);
    if (4 * v15 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v15 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v15 + 1;
      if (*v10 != -4096)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v22 = result;
    v23 = a2;
    v24 = a4;
    v25 = a3;
    llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(v22, v23, &v26);
    a2 = v23;
    a3 = v25;
    result = v22;
    a4 = v24;
    v10 = v26;
    ++*(v22 + 8);
    if (*v10 != -4096)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (*(v10 + 8) == 0x7FFFFFFF)
    {
LABEL_14:
      *v10 = *a2;
      *(v10 + 8) = *(a2 + 8);
      *(v10 + 16) = *a3;
      v5 = *result;
      v4 = *(result + 16);
      v14 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 12);
    goto LABEL_14;
  }

LABEL_7:
  v14 = 0;
LABEL_15:
  *a4 = v10;
  *(a4 + 8) = v5 + 24 * v4;
  *(a4 + 16) = v14;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = 0xBF58476D1CE4E5B9 * ((37 * v3) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v5 = v2 - 1;
    v6 = (v2 - 1) & ((v4 >> 31) ^ v4);
    v7 = *a1 + 24 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*a2 == *v7 && v3 == v9)
    {
      return v7 + 16;
    }

    v13 = 0;
    v14 = 1;
    while (v8 != -4096 || v9 != 0x7FFFFFFF)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == 0x80000000;
      }

      if (v15 && v8 == -8192)
      {
        v13 = v7;
      }

      v17 = v6 + v14++;
      v6 = v17 & v5;
      v7 = *a1 + 24 * (v17 & v5);
      v8 = *v7;
      v9 = *(v7 + 8);
      if (*a2 == *v7 && v3 == v9)
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
    llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(v20, v19, &v21);
    a1 = v20;
    a2 = v19;
    v7 = v21;
    ++*(v20 + 8);
    if (*v7 != -4096)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(a1 + 8) = v12 + 1;
  if (*v7 != -4096)
  {
LABEL_13:
    --*(a1 + 12);
    goto LABEL_14;
  }

LABEL_12:
  if (*(v7 + 8) != 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

LABEL_14:
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = 1;
  return v7 + 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *(a2 + 8);
    v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v7 = (v6 >> 31) ^ v6;
    v8 = v3 - 1;
    v9 = (v3 - 1) & v7;
    v10 = *a1 + 24 * v9;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*a2 == *v10 && v5 == v12)
    {
      result = 1;
      *a3 = v10;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      result = 1;
      while (v11 != -4096 || v12 != 0x7FFFFFFF)
      {
        if (v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = v12 == 0x80000000;
        }

        if (v17 && v11 == -8192)
        {
          v14 = v10;
        }

        v19 = v9 + v15++;
        v9 = v19 & v8;
        v10 = v4 + 24 * (v19 & v8);
        v11 = *v10;
        v12 = *(v10 + 8);
        if (*a2 == *v10 && v5 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v14)
      {
        v10 = v14;
      }

      *a3 = v10;
    }
  }

  else
  {
    v10 = 0;
    result = 0;
LABEL_9:
    *a3 = v10;
  }

  return result;
}

char *llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    v13 = result;
    if (v12 < 0x18)
    {
      goto LABEL_13;
    }

    v14 = v12 / 0x18 + 1;
    v13 = &result[24 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
    v15 = result + 24;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v15 - 3) = -4096;
      *v15 = -4096;
      *(v15 - 4) = 0x7FFFFFFF;
      *(v15 + 2) = 0x7FFFFFFF;
      v15 += 48;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_13:
      v17 = &result[24 * v11];
      do
      {
        *v13 = -4096;
        *(v13 + 2) = 0x7FFFFFFF;
        v13 += 24;
      }

      while (v13 != v17);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::moveFromOldBuckets(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  result[1] = 0;
  v3 = *(result + 4);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    v6 = *result;
    if (v5 < 0x18)
    {
      goto LABEL_6;
    }

    v7 = v5 / 0x18 + 1;
    v6 = v4 + 24 * (v7 & 0x1FFFFFFFFFFFFFFELL);
    v8 = v4 + 24;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v8 - 24) = -4096;
      *v8 = -4096;
      *(v8 - 16) = 0x7FFFFFFF;
      *(v8 + 8) = 0x7FFFFFFF;
      v8 += 48;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_6:
      v10 = v4 + 24 * v3;
      do
      {
        *v6 = -4096;
        *(v6 + 8) = 0x7FFFFFFF;
        v6 += 24;
      }

      while (v6 != v10);
    }
  }

  for (; a2 != a3; a2 += 3)
  {
    v21 = *a2;
    v22 = *(a2 + 2);
    if ((*a2 != -4096 || v22 != 0x7FFFFFFF) && (v21 != -8192 || v22 != 0x80000000))
    {
      v25 = 0xBF58476D1CE4E5B9 * ((37 * v22) | (((v21 >> 4) ^ (v21 >> 9)) << 32));
      v26 = (v25 >> 31) ^ v25;
      v27 = *(result + 4) - 1;
      v16 = v27 & v26;
      v17 = *result + 24 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v21 != *v17 || v22 != v19)
      {
        v13 = 0;
        v15 = 1;
        while (v18 != -4096 || v19 != 0x7FFFFFFF)
        {
          if (v13)
          {
            v11 = 0;
          }

          else
          {
            v11 = v19 == 0x80000000;
          }

          if (v11 && v18 == -8192)
          {
            v13 = v17;
          }

          v14 = v16 + v15++;
          v16 = v14 & v27;
          v17 = *result + 24 * (v14 & v27);
          v18 = *v17;
          v19 = *(v17 + 8);
          if (v21 == *v17 && v22 == v19)
          {
            goto LABEL_27;
          }
        }

        if (v13)
        {
          v17 = v13;
        }
      }

LABEL_27:
      *v17 = v21;
      *(v17 + 8) = v22;
      *(v17 + 16) = *(a2 + 4);
      ++*(result + 2);
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*(result + 8));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(*(result + 8), a2, (*(result + 8) + 24), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*(result + 8));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(*(result + 8));
      **v2 = result;
    }
  }

  return result;
}

uint64_t std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 4 > v5)
  {
    v5 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  if (!v9)
  {
    v10 = 0;
    v11 = 32 * v4;
    v12 = *(a2 + 24);
    if (v12)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v11 + 24) = 0;
    v13 = &v10[32 * v9];
    v14 = v11 + 32;
    v15 = v11 - 32 * v4;
    if (v2 == v3)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  if (v9 >> 59)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v10 = operator new(32 * v9);
  v11 = &v10[32 * v4];
  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (v12 == a2)
  {
    *(v11 + 24) = v11;
    (*(*v12 + 24))(v12, v11);
    v2 = *a1;
    v3 = *(a1 + 8);
    v13 = &v10[32 * v9];
    v14 = v11 + 32;
    v15 = v11 - 32 * ((v3 - *a1) >> 5);
    if (*a1 == v3)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(v11 + 24) = v12;
    *(a2 + 24) = 0;
    v13 = &v10[32 * v9];
    v14 = v11 + 32;
    v15 = v11 - 32 * v4;
    if (v2 == v3)
    {
      goto LABEL_31;
    }
  }

LABEL_17:
  v16 = v2;
  v17 = v15;
  do
  {
    v18 = v16[3];
    if (v18)
    {
      if (v16 == v18)
      {
        *(v17 + 24) = v17;
        (*(*v16[3] + 24))(v16[3], v17);
      }

      else
      {
        *(v17 + 24) = v18;
        v16[3] = 0;
      }
    }

    else
    {
      *(v17 + 24) = 0;
    }

    v16 += 4;
    v17 += 32;
  }

  while (v16 != v3);
  v19 = v2;
  do
  {
    v20 = v2[3];
    if (v2 == v20)
    {
      (*(*v20 + 32))(v20);
    }

    else if (v20)
    {
      (*(*v20 + 40))(v20);
    }

    v2 += 4;
    v19 += 4;
  }

  while (v2 != v3);
  v2 = *a1;
LABEL_31:
  *a1 = v15;
  *(a1 + 8) = v14;
  *(a1 + 16) = v13;
  if (v2)
  {
    operator delete(v2);
  }

  return v14;
}

void updateSubElementImpl<mlir::Attribute,mlir::AttrTypeReplacer>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) != 1)
  {
    return;
  }

  v18[7] = v4;
  v18[8] = v5;
  if (a1)
  {
    v8 = a3;
    v18[0] = a1;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a2 + 48, v18, v18, &v16);
    if (v17)
    {
      v10 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a2, a1);
      *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](a2 + 48, v18) = v10;
      v11 = a4;
      if (v10)
      {
LABEL_5:
        v12 = v8;
        v13 = *(v8 + 8);
        if (v13 >= *(v8 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 16, v13 + 1, 8);
          v11 = a4;
          v12 = v8;
          LODWORD(v13) = *(v8 + 8);
        }

        *(*v12 + 8 * v13) = v10;
        ++*(v12 + 8);
        if (v10 != a1)
        {
          *v11 = 257;
        }

        return;
      }
    }

    else
    {
      v10 = *(v16 + 8);
      v11 = a4;
      if (v10)
      {
        goto LABEL_5;
      }
    }

    *v11 = 0;
    return;
  }

  v14 = *(a3 + 8);
  if (v14 >= *(a3 + 12))
  {
    v15 = a3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v14 + 1, 8);
    a3 = v15;
    LODWORD(v14) = *(v15 + 8);
  }

  *(*a3 + 8 * v14) = 0;
  ++*(a3 + 8);
}

void updateSubElementImpl<mlir::Type,mlir::AttrTypeReplacer>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) != 1)
  {
    return;
  }

  v18[7] = v4;
  v18[8] = v5;
  if (a1)
  {
    v8 = a3;
    v18[0] = a1;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a2 + 48, v18, v18, &v16);
    if (v17)
    {
      v10 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a2, a1);
      *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](a2 + 48, v18) = v10;
      v11 = a4;
      if (v10)
      {
LABEL_5:
        v12 = v8;
        v13 = *(v8 + 8);
        if (v13 >= *(v8 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 16, v13 + 1, 8);
          v11 = a4;
          v12 = v8;
          LODWORD(v13) = *(v8 + 8);
        }

        *(*v12 + 8 * v13) = v10;
        ++*(v12 + 8);
        if (v10 != a1)
        {
          *v11 = 257;
        }

        return;
      }
    }

    else
    {
      v10 = *(v16 + 8);
      v11 = a4;
      if (v10)
      {
        goto LABEL_5;
      }
    }

    *v11 = 0;
    return;
  }

  v14 = *(a3 + 8);
  if (v14 >= *(a3 + 12))
  {
    v15 = a3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v14 + 1, 8);
    a3 = v15;
    LODWORD(v14) = *(v15 + 8);
  }

  *(*a3 + 8 * v14) = 0;
  ++*(a3 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 16 * (v16 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](uint64_t a1, void *a2)
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
    llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(a1, v2);
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

uint64_t **std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (!v20)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v20 + 24) == 1)
      {
LABEL_62:
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      else
      {
        v19 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      v21[2] = v14;
    }

    v22 = v14[2];
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
  }

  else
  {
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v26 = *v25;
    v7[1] = *v25;
    if (v26)
    {
      *(v26 + 16) = v7;
    }

    v27 = v7[2];
    v25[2] = v27;
    v27[*v27 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  v34[2] = v35;
  return result;
}

void mlir::Block::~Block(void ***this, uint64_t a2)
{
  mlir::Block::clear(this, a2);
  v4 = this[6];
  v5 = this[7];
  if (v4 == v5)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  do
  {
    if (*v4)
    {
      operator delete(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  v4 = this[6];
  if (v4)
  {
LABEL_3:
    this[7] = v4;
    operator delete(v4);
  }

LABEL_4:
  v6 = this[5];
  if (v6 != (this + 4))
  {
    do
    {
      v7 = *(v6 + 1);
      v8 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v6, v3);
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList((this + 4), v8);
      v10 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v8, v9);
      v11 = *v10;
      v12 = v10[1];
      *v12 = *v10;
      *(v11 + 8) = v12;
      *v10 = 0;
      v10[1] = 0;
      mlir::Operation::destroy(v8);
      v6 = v7;
    }

    while (v7 != (this + 4));
  }
}

uint64_t mlir::Block::clear(mlir::Block *this, uint64_t a2)
{
  v2 = (this + 32);
  v3 = *(this + 5);
  if (v3 != (this + 32))
  {
    do
    {
      v4 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v3, a2);
      mlir::Operation::dropAllReferences(v4);
      v3 = v3[1];
    }

    while (v3 != v2);
  }

  while (1)
  {
    result = *v2;
    if (*v2 == v2)
    {
      break;
    }

    v5 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, a2);
    llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v2, v5);
    v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v5, v6);
    v8 = *v7;
    v9 = v7[1];
    *v9 = *v7;
    *(v8 + 8) = v9;
    *v7 = 0;
    v7[1] = 0;
    mlir::Operation::destroy(v5);
  }

  return result;
}

uint64_t mlir::Block::getParentOp(mlir::Block *this)
{
  if ((*(this + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    return *((*(this + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::Block::isEntryBlock(mlir::Block *this)
{
  v1 = *((*(this + 3) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v1)
  {
    v2 = (v1 - 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 == this;
}

uint64_t mlir::Block::moveBefore(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = (result + 8);
  v4 = *(result + 16);
  if ((result + 8) != a3 && v4 != a3 && v4 != a3)
  {
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(a2, *(result + 24) & 0xFFFFFFFFFFFFFFF8, v3, v4);
    if (v4 != v3)
    {
      v8 = *v4;
      v9 = *v3;
      *(v9 + 8) = v4;
      *v4 = v9;
      v10 = *a3;
      *(v8 + 8) = a3;
      *v3 = v10;
      *(v10 + 8) = v3;
      *a3 = v8;
    }
  }

  return result;
}

void mlir::Block::erase(mlir::Block *this)
{
  v1 = this + 8;
  if (!this)
  {
    v1 = 0;
  }

  v2 = (v1 - 8);
  if (this)
  {
    v3 = (v1 - 8);
  }

  else
  {
    v3 = 0;
  }

  llvm::ilist_traits<mlir::Block>::removeNodeFromList(*(this + 3) & 0xFFFFFFFFFFFFFFF8, v3);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *v5 = v4;
  *(v4 + 8) = v5;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  mlir::Block::~Block(v2, v6);

  operator delete(v7);
}

Operation *mlir::Block::findAncestorOpInBlock(mlir::Block *this, Operation *a2)
{
  while (1)
  {
    v2 = *(a2 + 2);
    if (v2 == this)
    {
      return a2;
    }

    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 3) & 0xFFFFFFFFFFFFFFF8;
    if (!v3)
    {
      break;
    }

    a2 = *(v3 + 16);
    if (!a2)
    {
      return a2;
    }
  }

  return 0;
}

void mlir::Block::dropAllReferences(mlir::Block *this, uint64_t a2)
{
  v2 = this + 32;
  v3 = *(this + 5);
  if (v3 != this + 32)
  {
    do
    {
      v4 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v3, a2);
      mlir::Operation::dropAllReferences(v4);
      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

void *mlir::Block::dropAllDefinedValueUses(void *this, uint64_t a2)
{
  v2 = this;
  v3 = this[6];
  v4 = this[7];
  while (v3 != v4)
  {
    v5 = *v3;
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;
        *v7 = *v6;
        if (v8)
        {
          *(v8 + 8) = v7;
        }
      }

      *v6 = 0;
      v6[1] = 0;
      v6[3] = 0;
    }

    ++v3;
  }

  v9 = this + 4;
  v10 = this[5];
  if (v10 != this + 4)
  {
    do
    {
      v11 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v10, a2);
      this = mlir::Operation::dropAllDefinedValueUses(v11);
      v10 = v10[1];
    }

    while (v10 != v9);
  }

  while (1)
  {
    v12 = *v2;
    if (!*v2)
    {
      break;
    }

    v13 = v12[1];
    if (v13)
    {
      v14 = *v12;
      *v13 = *v12;
      if (v14)
      {
        *(v14 + 8) = v13;
      }
    }

    *v12 = 0;
    v12[1] = 0;
    v12[3] = 0;
  }

  return this;
}

uint64_t mlir::Block::recomputeOpOrder(uint64_t this, uint64_t a2)
{
  *(this + 24) |= 4uLL;
  v2 = this + 32;
  v3 = *(this + 40);
  if (v3 != this + 32)
  {
    v4 = 5;
    do
    {
      this = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v3, a2);
      *(this + 32) = v4;
      v3 = *(v3 + 8);
      v4 += 5;
    }

    while (v3 != v2);
  }

  return this;
}

void *mlir::Block::addArgument(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[6];
  v7 = a1[7];
  v8 = v7 - v6;
  v9 = (v7 - v6) >> 3;
  v10 = operator new(0x28uLL);
  v11 = v10;
  *v10 = 0;
  v10[1] = a2 | 7;
  v10[2] = a1;
  v10[3] = v9;
  v10[4] = a3;
  v12 = a1[8];
  if (v7 >= v12)
  {
    v14 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v15 = v12 - v6;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v17 = operator new(8 * v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = &v17[8 * v9];
    *v18 = v11;
    v13 = v18 + 8;
    memcpy(v17, v6, v8);
    a1[6] = v17;
    a1[7] = v13;
    a1[8] = &v17[8 * v16];
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v7 = v10;
    v13 = v7 + 8;
  }

  a1[7] = v13;
  return v11;
}

int64_t mlir::Block::addArguments(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = a1[6];
  v11 = a1[7] - v10;
  v12 = (v11 >> 3) + a3;
  if (v12 > (a1[8] - v10) >> 3)
  {
    if (v12 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v13 = 8 * v12;
    v14 = operator new(8 * v12);
    v15 = &v14[v11];
    v16 = &v14[v13];
    v17 = &v14[v11 + -8 * (v11 >> 3)];
    memcpy(v17, v10, v11);
    a1[6] = v17;
    a1[7] = v15;
    a1[8] = v16;
    v5 = a5;
    if (v10)
    {
      operator delete(v10);
    }
  }

  if (a3 && v5)
  {
    v18 = 0;
    v19 = 8 * v5 - 8;
    v20 = a3 - 1;
    do
    {
      v21 = mlir::TypeRange::dereference_iterator(a2, v18);
      mlir::Block::addArgument(a1, v21, *(a4 + 8 * v18));
      if (v20 == v18)
      {
        break;
      }

      ++v18;
      v22 = v19;
      v19 -= 8;
    }

    while (v22);
  }

  return a1[6] + v11;
}

void mlir::Block::eraseArgument(mlir::Block *this, unsigned int a2)
{
  v2 = a2;
  v4 = a2;
  v5 = *(this + 6);
  v6 = *(v5 + 8 * a2);
  if (v6)
  {
    operator delete(v6);
    v5 = *(this + 6);
  }

  v7 = 8 * v4;
  v8 = v5 + 8 * v4;
  v9 = *(this + 7);
  v10 = v9 - (v8 + 8);
  if (v9 != v8 + 8)
  {
    memmove(v8, (v8 + 8), v9 - (v8 + 8));
    v5 = *(this + 6);
  }

  *(this + 7) = v8 + v10;
  v11 = (v7 + v5);
  if ((v8 + v10) != v11)
  {
    do
    {
      v12 = *v11++;
      v13 = v2++;
      *(v12 + 24) = v13;
    }

    while (v11 != (v8 + v10));
  }
}

void mlir::Block::eraseArguments(uint64_t a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v6 != v7)
  {
    while ((a2(a3, *v6) & 1) == 0)
    {
      if (++v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(a1 + 56);
  }

  if (v6 != v7)
  {
    v8 = v6 + 1;
    v9 = *(*v6 + 3);
    operator delete(*v6);
    v10 = *(a1 + 56);
    if (v10 == v6 + 1)
    {
      if (v6 == v10)
      {
        return;
      }

LABEL_16:
      *(a1 + 56) = v6;
      return;
    }

    do
    {
      if (a2(a3, *v8))
      {
        if (*v8)
        {
          operator delete(*v8);
        }
      }

      else
      {
        *(*v8 + 3) = v9;
        *v6++ = *v8;
        LODWORD(v9) = v9 + 1;
      }

      ++v8;
    }

    while (v8 != v10);
    if (v6 != *(a1 + 56))
    {
      goto LABEL_16;
    }
  }
}

uint64_t mlir::Block::mightHaveTerminator(mlir::Block *this, uint64_t a2)
{
  v3 = this + 32;
  v2 = *(this + 4);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v2, a2);
  {
    v8 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v5 = *(v8 + 48);
    if (v5[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_4;
    }

    return 1;
  }

  v5 = *(v4 + 48);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_4:
  v6 = *(*v5 + 4);

  return v6();
}

uint64_t mlir::Block::getSinglePredecessor(mlir::Block *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*v1)
  {
    return 0;
  }

  return *(v1[2] + 16);
}

uint64_t mlir::Block::getUniquePredecessor(mlir::Block *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  result = *(v1[2] + 16);
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (*(v1[2] + 16) != result)
    {
      return 0;
    }
  }

  return result;
}

char *mlir::Block::splitBlock(char *a1, uint64_t *a2)
{
  v4 = operator new(0x48uLL);
  v5 = (v4 + 32);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = v4 + 32;
  *(v4 + 5) = v4 + 32;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  v6 = a1 + 8;
  if (!a1)
  {
    v6 = 0;
  }

  v7 = v6[1];
  llvm::ilist_traits<mlir::Block>::addNodeToList(*(a1 + 3) & 0xFFFFFFFFFFFFFFF8, v4);
  v8 = *v7;
  *(v4 + 2) = v7;
  *(v4 + 1) = v8;
  *(v8 + 8) = v4 + 8;
  *v7 = (v4 + 8);
  v9 = (a1 + 32);
  if (a1 + 32 != a2 && v4 != a1)
  {
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v5, (a1 + 32), a2, (a1 + 32));
    v10 = *v9;
    v11 = *a2;
    *(v11 + 8) = v9;
    *v9 = v11;
    v12 = *v5;
    *(v10 + 8) = v5;
    *a2 = v12;
    *(v12 + 8) = a2;
    *v5 = v10;
  }

  return v4;
}

void *mlir::SuccessorRange::SuccessorRange(void *this, mlir::Block *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 4);
  if (v2 != (a2 + 32))
  {
    v3 = *(a2 + 3) & 0xFFFFFFFFFFFFFFF8;
    v4 = *(v3 + 8);
    if (v4 == v3 || *(v4 + 8) != v3)
    {
      v5 = this;
      v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v2, a2);
      this = v5;
      v7 = *(v6 + 40);
      v5[1] = v7;
      if (v7)
      {
        *v5 = v6 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 64;
      }
    }
  }

  return this;
}

unint64_t *mlir::SuccessorRange::SuccessorRange(unint64_t *this, Operation *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 10);
  this[1] = v2;
  if (v2)
  {
    *this = (a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
  }

  return this;
}

uint64_t *mlir::BlockRange::BlockRange(uint64_t *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = a3;
  if (a3)
  {
    *result = a2 | 4;
  }

  return result;
}

unint64_t *mlir::BlockRange::BlockRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFFBLL;
  result[1] = a3;
  return result;
}

uint64_t mlir::BlockRange::dereference_iterator(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) == 0)
  {
    v2 = 0;
  }

  v3 = v2 + 8 * a2;
  if (!(((a1 & 4) >> 2) | ((a1 & 0xFFFFFFFFFFFFFFF8) == 0)))
  {
    v3 = (a1 & 0xFFFFFFFFFFFFFFF8) + 32 * a2 + 24;
  }

  return *v3;
}

uint64_t mlir::Builder::getIntegerType(uint64_t **this, int a2, int a3)
{
  v3 = *this;
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return mlir::IntegerType::get(v3, a2, v4);
}

uint64_t mlir::Builder::getNamedAttr(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 261;
  v7[0] = a2;
  v7[1] = a3;
  v5 = mlir::StringAttr::get(*a1, v7);
  mlir::NamedAttribute::NamedAttribute(&v9, v5, a4);
  return v9;
}

uint64_t mlir::Builder::getIndexAttr(mlir::IndexType **this, mlir::MLIRContext *a2)
{
  v3 = mlir::IndexType::get(*this, a2);
  v7 = 64;
  __p = a2;
  result = mlir::IntegerAttr::get(v3, &__p);
  if (v7 >= 0x41)
  {
    if (__p)
    {
      v5 = result;
      operator delete[](__p);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getI64IntegerAttr(uint64_t **this, void *a2)
{
  v3 = mlir::IntegerType::get(*this, 64, 0);
  v7 = 64;
  __p = a2;
  result = mlir::IntegerAttr::get(v3, &__p);
  if (v7 >= 0x41)
  {
    if (__p)
    {
      v5 = result;
      operator delete[](__p);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getI32VectorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = mlir::IntegerType::get(*a1, 32, 0);
  v6 = mlir::VectorType::get(&v21, 1uLL, v5, 0, 0);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *v6;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = v7;
    v20 = v6;
    mlir::arith::ExtUIOp::fold();
    v6 = v20;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v19 + 8);
    v10 = *(v19 + 16);
    if (!v10)
    {
      goto LABEL_14;
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
    v17 = v11[1];
    return mlir::DenseElementsAttr::getFromRawBuffer(v6, v17, a2, 4 * a3, 4, 1, 1);
  }

LABEL_14:
  v17 = 0;
  return mlir::DenseElementsAttr::getFromRawBuffer(v6, v17, a2, 4 * a3, 4, 1, 1);
}

uint64_t mlir::Builder::getI32TensorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v5 = mlir::IntegerType::get(*a1, 32, 0);
  v10 = mlir::RankedTensorType::get(&v9, 1, v5, 0);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v10);
  return mlir::DenseElementsAttr::getFromRawBuffer(v6, v7, a2, 4 * a3, 4, 1, 1);
}

uint64_t mlir::Builder::getI32IntegerAttr(uint64_t **this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 0);
  v7 = 32;
  __p = a2;
  result = mlir::IntegerAttr::get(v3, &__p);
  if (v7 >= 0x41)
  {
    if (__p)
    {
      v5 = result;
      operator delete[](__p);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getSI32IntegerAttr(uint64_t **this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 1u);
  v7 = 32;
  __p = a2;
  result = mlir::IntegerAttr::get(v3, &__p);
  if (v7 >= 0x41)
  {
    if (__p)
    {
      v5 = result;
      operator delete[](__p);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getUI32IntegerAttr(uint64_t **this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 2u);
  v7 = 32;
  __p = a2;
  result = mlir::IntegerAttr::get(v3, &__p);
  if (v7 >= 0x41)
  {
    if (__p)
    {
      v5 = result;
      operator delete[](__p);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getIntegerAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  isIndex = mlir::Type::isIndex(&v13);
  v5 = v13;
  if (isIndex)
  {
    v12 = 64;
    __p = a3;
    result = mlir::IntegerAttr::get(v13, &__p);
    if (v12 < 0x41)
    {
      return result;
    }

    goto LABEL_10;
  }

  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v13);
  isSignedInteger = mlir::Type::isSignedInteger(&v13);
  v12 = IntOrFloatBitWidth;
  if (IntOrFloatBitWidth > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a3, isSignedInteger);
    result = mlir::IntegerAttr::get(v5, &__p);
    if (v12 < 0x41)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
  if (!IntOrFloatBitWidth)
  {
    v9 = 0;
  }

  __p = (v9 & a3);
  result = mlir::IntegerAttr::get(v5, &__p);
  if (v12 >= 0x41)
  {
LABEL_10:
    if (__p)
    {
      v10 = result;
      operator delete[](__p);
      return v10;
    }
  }

  return result;
}

llvm::APFloatBase *mlir::Builder::getF32FloatAttr(mlir::Float32Type **this, float a2, mlir::MLIRContext *a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = mlir::Float32Type::get(*this, a3);
  v5 = llvm::detail::IEEEFloat::IEEEFloat(v10, a2);
  v6 = llvm::APFloatBase::IEEEsingle(v5);
  llvm::APFloat::Storage::Storage(v12, v10, v6);
  llvm::detail::IEEEFloat::~IEEEFloat(v10);
  v7 = mlir::FloatAttr::get(v4, v11);
  v8 = v12[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v7) == v8)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v12);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v12);
  }

  return v7;
}

llvm::APFloatBase *mlir::Builder::getF16FloatAttr(mlir::Float16Type **this, float a2, mlir::MLIRContext *a3)
{
  v4 = mlir::Float16Type::get(*this, a3);

  return mlir::FloatAttr::get(v4, a2);
}

uint64_t mlir::Builder::getI64ArrayAttr(uint64_t **a1, void **a2, unint64_t a3)
{
  v22[8] = *MEMORY[0x1E69E9840];
  v20 = v22;
  v21 = 0x800000000;
  if (a3 < 9)
  {
    if (!a3)
    {
      v14 = 0;
      v15 = v22;
      goto LABEL_11;
    }

    v6 = 0;
    v7 = v22;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, a3, 8);
    v6 = v21;
    v7 = v20;
  }

  v8 = 8 * a3;
  v9 = &v7[v6];
  do
  {
    v10 = *a2;
    v11 = mlir::IntegerType::get(*a1, 64, 0);
    v19 = 64;
    __p = v10;
    v12 = mlir::IntegerAttr::get(v11, &__p);
    if (v19 >= 0x41 && __p)
    {
      v13 = v12;
      operator delete[](__p);
      v12 = v13;
    }

    *v9++ = v12;
    ++a2;
    v8 -= 8;
  }

  while (v8);
  v14 = v21;
  v15 = v20;
LABEL_11:
  LODWORD(v21) = v14 + a3;
  result = mlir::ArrayAttr::get(*a1, v15, (v14 + a3));
  if (v20 != v22)
  {
    v17 = result;
    free(v20);
    return v17;
  }

  return result;
}

uint64_t mlir::Builder::getStrArrayAttr(mlir::MLIRContext **a1, uint64_t *a2, unint64_t a3)
{
  v21[8] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x800000000;
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, a3, 8);
    v6 = v20;
    v7 = v19;
    goto LABEL_5;
  }

  if (a3)
  {
    v6 = 0;
    v7 = v21;
LABEL_5:
    v8 = &a2[2 * a3];
    v9 = &v7[v6];
    do
    {
      v10 = *a2;
      v11 = a2[1];
      a2 += 2;
      v12 = *a1;
      v18 = 261;
      v17[0] = v10;
      v17[1] = v11;
      *v9++ = mlir::StringAttr::get(v12, v17);
    }

    while (a2 != v8);
    v13 = v20;
    v14 = v19;
    goto LABEL_8;
  }

  v13 = 0;
  v14 = v21;
LABEL_8:
  LODWORD(v20) = v13 + a3;
  result = mlir::ArrayAttr::get(*a1, v14, (v13 + a3));
  if (v19 != v21)
  {
    v16 = result;
    free(v19);
    return v16;
  }

  return result;
}

void *mlir::Builder::getZeroAttr(mlir::IndexType **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    result = mlir::FloatAttr::get(a2, 0.0);
    if (!result)
    {
      return result;
    }

    v21 = *result;
    {
      v22 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if (!v24)
      {
        return result;
      }
    }

    else
    {
      v68 = result;
      mlir::Builder::getZeroAttr();
      result = v68;
      v22 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if (!v24)
      {
        return result;
      }
    }

    v25 = v23;
    v26 = v24;
    do
    {
      v27 = v26 >> 1;
      v28 = &v25[2 * (v26 >> 1)];
      v30 = *v28;
      v29 = v28 + 2;
      v26 += ~(v26 >> 1);
      if (v30 < v22)
      {
        v25 = v29;
      }

      else
      {
        v26 = v27;
      }
    }

    while (v26);
  }

  else
  {
    if (v3 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      if (a2 && v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v31 = a2;
        v74[0] = a2;
        LODWORD(v76) = mlir::IntegerType::getWidth(v74);
        if (v76 > 0x40)
        {
          llvm::APInt::initSlowCase(&v75, 0, 0);
        }

        else
        {
          v75 = 0;
        }

        result = mlir::IntegerAttr::get(v31, &v75);
        if (!result)
        {
          goto LABEL_107;
        }

        v53 = *result;
        {
          v54 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v55 = *(v53 + 8);
          v56 = *(v53 + 16);
          if (v56)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v70 = result;
          mlir::Builder::getZeroAttr();
          result = v70;
          v54 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v55 = *(v53 + 8);
          v56 = *(v53 + 16);
          if (v56)
          {
LABEL_92:
            v57 = v55;
            v58 = v56;
            do
            {
              v59 = v58 >> 1;
              v60 = &v57[2 * (v58 >> 1)];
              v62 = *v60;
              v61 = v60 + 2;
              v58 += ~(v58 >> 1);
              if (v62 < v54)
              {
                v57 = v61;
              }

              else
              {
                v58 = v59;
              }
            }

            while (v58);
LABEL_105:
            if (v57 != &v55[2 * v56] && *v57 == v54)
            {
              if (v76 < 0x41)
              {
                return result;
              }

              goto LABEL_108;
            }

LABEL_107:
            if (v76 < 0x41)
            {
              return result;
            }

LABEL_108:
            if (v75)
            {
              v71 = result;
              operator delete[](v75);
              return v71;
            }

            return result;
          }
        }

        v56 = 0;
        v57 = v55;
        goto LABEL_105;
      }

      if (v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        return 0;
      }

      {
        v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v45 = *(v2 + 8);
        v46 = *(v2 + 16);
        if (v46)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v67 = a1;
        v72 = a2;
        getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
        a1 = v67;
        a2 = v72;
        v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v45 = *(v2 + 8);
        v46 = *(v2 + 16);
        if (v46)
        {
LABEL_82:
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
LABEL_114:
          if (v47 != &v45[2 * v46] && *v47 == v44)
          {
            v63 = a1;
            v64 = v47[1];
          }

          else
          {
            v63 = a1;
            v64 = 0;
          }

          v75 = a2;
          v76 = v64;
          isSplat = mlir::ElementsAttr::isSplat(&v75);
          result = mlir::Builder::getZeroAttr(v63, isSplat);
          v74[0] = result;
          v74[1] = v66;
          if (result)
          {
            v73 = mlir::DenseElementsAttr::get(v75, v76, v74, 1uLL);
            return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v73);
          }

          return result;
        }
      }

      v46 = 0;
      v47 = v45;
      goto LABEL_114;
    }

    v32 = mlir::IndexType::get(*a1, a2);
    LODWORD(v76) = 64;
    v75 = 0;
    result = mlir::IntegerAttr::get(v32, &v75);
    if (v76 >= 0x41 && v75)
    {
      v33 = result;
      operator delete[](v75);
      result = v33;
    }

    if (result)
    {
      v34 = *result;
      {
        v35 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        if (!v37)
        {
          return result;
        }
      }

      else
      {
        v69 = result;
        mlir::Builder::getZeroAttr();
        result = v69;
        v35 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        if (!v37)
        {
          return result;
        }
      }

      v38 = v36;
      v39 = v37;
      do
      {
        v40 = v39 >> 1;
        v41 = &v38[2 * (v39 >> 1)];
        v43 = *v41;
        v42 = v41 + 2;
        v39 += ~(v39 >> 1);
        if (v43 < v35)
        {
          v38 = v42;
        }

        else
        {
          v39 = v40;
        }
      }

      while (v39);
    }
  }

  return result;
}

uint64_t mlir::Builder::getConstantAffineMap(mlir::MLIRContext **this, mlir *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(a2, *this, a3);

  return mlir::AffineMap::get(0, 0, AffineConstantExpr);
}

uint64_t mlir::Builder::getSymbolIdentityMap(mlir::MLIRContext **this, uint64_t a2, mlir::MLIRContext *a3)
{
  AffineSymbolExpr = mlir::getAffineSymbolExpr(0, *this, a3);

  return mlir::AffineMap::get(0, 1, AffineSymbolExpr);
}

mlir::Operation *mlir::OpBuilder::insert(mlir::OpBuilder *this, mlir::Operation *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 3);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v3 + 32, a2);
    v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v6);
    v8 = *v4;
    *v7 = *v4;
    v7[1] = v4;
    *(v8 + 8) = v7;
    *v4 = v7;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v9);
    v10 = *(this + 1);
    if (v10)
    {
      (*(*v10 + 16))(v10, a2, 0, 0);
    }
  }

  return a2;
}

_OWORD *mlir::OpBuilder::createBlock(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  v14 = operator new(0x48uLL);
  *v14 = 0u;
  v14[1] = 0u;
  *(v14 + 4) = v14 + 2;
  *(v14 + 5) = v14 + 2;
  *(v14 + 7) = 0;
  *(v14 + 8) = 0;
  *(v14 + 6) = 0;
  mlir::Block::addArguments(v14, a4, a5, a6, a7);
  llvm::ilist_traits<mlir::Block>::addNodeToList(a2, v14);
  v15 = *v13;
  *(v14 + 1) = *v13;
  *(v14 + 2) = v13;
  *(v15 + 8) = v14 + 8;
  *v13 = v14 + 8;
  a1[2] = v14;
  a1[3] = v14 + 2;
  v16 = a1[1];
  if (v16)
  {
    (*(*v16 + 24))(v16, v14, 0, 0);
  }

  return v14;
}

_OWORD *mlir::OpBuilder::createBlock(void *a1, mlir::Block *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Parent = mlir::Block::getParent(this);
  v13 = Parent;
  if (this)
  {
    v14 = (this + 8);
  }

  else
  {
    v14 = Parent;
  }

  v15 = operator new(0x48uLL);
  *v15 = 0u;
  v15[1] = 0u;
  *(v15 + 4) = v15 + 2;
  *(v15 + 5) = v15 + 2;
  *(v15 + 7) = 0;
  *(v15 + 8) = 0;
  *(v15 + 6) = 0;
  mlir::Block::addArguments(v15, a3, a4, a5, a6);
  llvm::ilist_traits<mlir::Block>::addNodeToList(v13, v15);
  v16 = *v14;
  *(v15 + 1) = *v14;
  *(v15 + 2) = v14;
  *(v16 + 8) = v15 + 8;
  *v14 = v15 + 8;
  a1[2] = v15;
  a1[3] = v15 + 2;
  v17 = a1[1];
  if (v17)
  {
    (*(*v17 + 24))(v17, v15, 0, 0);
  }

  return v15;
}

uint64_t mlir::OpBuilder::create(mlir::OpBuilder *this, const mlir::OperationState *a2)
{
  v3 = mlir::Operation::create(a2, a2);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 3);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v4 + 32, v3);
    v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v3, v6);
    v8 = *v5;
    *v7 = *v5;
    v7[1] = v5;
    *(v8 + 8) = v7;
    *v5 = v7;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v3, v9);
    v10 = *(this + 1);
    if (v10)
    {
      (*(*v10 + 16))(v10, v3, 0, 0);
    }
  }

  return v3;
}

uint64_t mlir::OpBuilder::create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = a3;
  AttrData = mlir::OpaqueAttr::getAttrData(&v32);
  mlir::OperationState::OperationState(v33, a2, AttrData, v21, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14);
  v23 = mlir::Operation::create(v33, v22);
  v24 = a1[2];
  if (v24)
  {
    v25 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v24 + 32, v23);
    v27 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v23, v26);
    v28 = *v25;
    *v27 = *v25;
    v27[1] = v25;
    *(v28 + 8) = v27;
    *v25 = v27;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v23, v29);
    v30 = a1[1];
    if (v30)
    {
      (*(*v30 + 16))(v30, v23, 0, 0);
    }
  }

  mlir::OperationState::~OperationState(v33);
  return v23;
}

uint64_t mlir::OpBuilder::tryFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v5;
  if (*(a3 + 12) < v5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v5, 8);
  }

  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v7 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    v11 = v13;
    v12 = 0x400000000;
    if (mlir::Operation::fold(a2))
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *(a3 + 8) = 0;
    }

    if (v11 != v13)
    {
      free(v11);
    }
  }

  return v7;
}

uint64_t mlir::OpBuilder::clone(uint64_t **this, mlir::Operation *a2, mlir::IRMapping *a3)
{
  v6 = mlir::Operation::CloneOptions::all(this);
  v8 = mlir::Operation::clone(a2, a3, v6);
  v9 = this[2];
  if (v9)
  {
    v10 = this[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList((v9 + 4), v8);
    v12 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v8, v11);
    v13 = *v10;
    *v12 = *v10;
    v12[1] = v10;
    *(v13 + 8) = v12;
    *v10 = v12;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v8, v14);
    v15 = this[1];
    if (v15)
    {
      (*(*v15 + 16))(v15, v8, 0, 0);
    }
  }

  v16 = this[1];
  if (v16)
  {
    v17 = *(v8 + 44);
    if ((v17 & 0x7FFFFF) != 0)
    {
      v18 = ((v8 + 64 + 16 * ((v17 >> 23) & 1) + ((v17 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
      v19 = v18 + 24 * (v17 & 0x7FFFFF);
      i = *(v18 + 8);
      if (i != v18)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v18 += 24;
        if (v18 == v19)
        {
          break;
        }

        for (i = *(v18 + 8); i != v18; i = *(i + 8))
        {
LABEL_9:
          if (i)
          {
            v21 = i - 8;
          }

          else
          {
            v21 = 0;
          }

          (*(*v16 + 24))(v16, v21, 0, 0);
        }
      }

      v22 = *(v8 + 44);
      v32 = this;
      if ((v22 & 0x7FFFFF) != 0)
      {
        v23 = ((v8 + 64 + 16 * ((v22 >> 23) & 1) + ((v22 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
        v24 = v23 + 24 * (v22 & 0x7FFFFF);
        do
        {
          for (j = *(v23 + 8); j != v23; j = *(j + 8))
          {
            v26 = j - 8;
            if (!j)
            {
              v26 = 0;
            }

            v27 = *(v26 + 40);
            v28 = v26 + 32;
            if (v27 != v26 + 32)
            {
              do
              {
                v29 = *(v27 + 8);
                v30 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v27, v7);
                mlir::detail::walk<mlir::ForwardIterator>(v30, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>, &v32, 0);
                v27 = v29;
              }

              while (v29 != v28);
            }
          }

          v23 += 24;
        }

        while (v23 != v24);
      }
    }
  }

  return v8;
}

void mlir::OpBuilder::clone(uint64_t **this, mlir::Operation *a2)
{
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  mlir::OpBuilder::clone(this, a2, v2);
  llvm::deallocate_buffer(v7, (16 * v9));
}

void mlir::OpBuilder::cloneRegionBefore(uint64_t a1, mlir::Operation::CloneOptions *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  mlir::Region::cloneInto(a2, a3, a4, a5);
  if (!*(a1 + 8))
  {
    return;
  }

  v9 = *(a2 + 1);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a5 + 40);
  if (v11)
  {
    v12 = *(a5 + 24);
    v13 = ((v10 >> 4) ^ (v10 >> 9)) & (v11 - 1);
    v14 = *(v12 + 16 * v13);
    if (v14 == v10)
    {
LABEL_7:
      if (v13 != v11)
      {
        v15 = *(v12 + 16 * v13 + 8) + 8;
        if (v15 == a4)
        {
          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v22 = 1;
      while (v14 != -4096)
      {
        v23 = v13 + v22++;
        v13 = v23 & (v11 - 1);
        v14 = *(v12 + 16 * v13);
        if (v14 == v10)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v15 = 8;
  if (a4 == 8)
  {
    return;
  }

  do
  {
LABEL_13:
    if (v15)
    {
      v16 = v15 - 8;
    }

    else
    {
      v16 = 0;
    }

    (*(**(a1 + 8) + 24))(*(a1 + 8), v16, 0, 0);
    v24 = a1;
    v18 = *(v16 + 40);
    v19 = v16 + 32;
    if (v18 != v19)
    {
      do
      {
        v20 = *(v18 + 8);
        v21 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, v17);
        mlir::detail::walk<mlir::ForwardIterator>(v21, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>, &v24, 0);
        v18 = v20;
      }

      while (v20 != v19);
    }

    v15 = *(v15 + 8);
  }

  while (v15 != a4);
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = *(v3 + 8);
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v8 = v7 + 24 * (v5 & 0x7FFFFF);
    i = *(v7 + 8);
    if (i != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 += 24;
      if (v7 == v8)
      {
        break;
      }

      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
LABEL_5:
        if (i)
        {
          v10 = i - 8;
        }

        else
        {
          v10 = 0;
        }

        result = (*(*v6 + 24))(v6, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = *(v3 + 8);
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v8 = v7 + 24 * (v5 & 0x7FFFFF);
    i = *(v7 + 8);
    if (i != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 += 24;
      if (v7 == v8)
      {
        break;
      }

      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
LABEL_5:
        if (i)
        {
          v10 = i - 8;
        }

        else
        {
          v10 = 0;
        }

        result = (*(*v6 + 24))(v6, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t mlir::ElementsAttr::getElementType(uint64_t a1, uint64_t a2)
{
  v4[0] = (*(a2 + 16))(a2, a1);
  v4[1] = v2;
  return mlir::ElementsAttr::isSplat(v4);
}

uint64_t mlir::ElementsAttr::getNumElements(uint64_t a1, uint64_t a2)
{
  v6[0] = (*(a2 + 16))(a2, a1);
  v6[1] = v2;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v6);
  return mlir::ShapedType::getNumElements(ArgAttrsAttr, v4);
}

uint64_t mlir::ElementsAttr::isValidIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12[0] = a1;
  v12[1] = a2;
  mlir::CallableOpInterface::getArgAttrsAttr(v12);
  if (!v6 && a4 == 1 && !*a3)
  {
    return 1;
  }

  if (v6 == a4)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v12);
    if (a4 << 32)
    {
      v8 = 0;
      v9 = a4;
      while (1)
      {
        v10 = *(a3 + (v8 >> 29));
        if (v10 < 0 || v10 >= *(ArgAttrsAttr + 8 * (v8 >> 32)))
        {
          break;
        }

        v8 += 0x100000000;
        if (!--v9)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

{
  v13[0] = (*(a2 + 16))(a2, a1);
  v13[1] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(v13);
  if (!v7 && a4 == 1 && !*a3)
  {
    return 1;
  }

  if (v7 == a4)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v13);
    if (a4 << 32)
    {
      v9 = 0;
      v10 = a4;
      while (1)
      {
        v11 = *(a3 + (v9 >> 29));
        if (v11 < 0 || v11 >= *(ArgAttrsAttr + 8 * (v9 >> 32)))
        {
          break;
        }

        v9 += 0x100000000;
        if (!--v10)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t mlir::ElementsAttr::getFlattenedIndex(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  {
    v21 = a1;
    mlir::TensorType::operator mlir::ShapedType();
    a1 = v21;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
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
  v22[0] = a1;
  v22[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v22);
  v15 = v14;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v22);
  v17 = 0;
  if (v15 - 1 >= 0)
  {
    v18 = 8 * (v15 - 1);
    v19 = 1;
    do
    {
      v17 += *(a2 + v18) * v19;
      v19 *= *(ArgAttrsAttr + v18);
      v18 -= 8;
    }

    while (v18 != -8);
  }

  return v17;
}

uint64_t mlir::detail::verifyAffineMapAsLayout(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v41 = a1;
  if (a3 == mlir::AffineMap::getNumDims(&v41))
  {
    return 1;
  }

  a4(v45, a5);
  if (v45[0])
  {
    v42 = 3;
    v43 = "memref layout mismatch between rank and affine map: ";
    v44 = 52;
    v9 = &v42;
    v10 = v46;
    if (v47 >= v48)
    {
      if (v46 <= &v42 && v46 + 24 * v47 > &v42)
      {
        v37 = &v42 - v46;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v10 = v46;
        v9 = (v46 + v37);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v9 = &v42;
        v10 = v46;
      }
    }

    v11 = &v10[24 * v47];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    v13 = ++v47;
    if (v45[0])
    {
      v42 = 5;
      v43 = a3;
      v14 = &v42;
      v15 = v46;
      if (v13 >= v48)
      {
        if (v46 <= &v42 && v46 + 24 * v13 > &v42)
        {
          v39 = &v42 - v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v13 + 1, 24);
          v15 = v46;
          v14 = (v46 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v13 + 1, 24);
          v14 = &v42;
          v15 = v46;
        }
      }

      v16 = &v15[24 * v47];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      v18 = ++v47;
      if (v45[0])
      {
        v42 = 3;
        v43 = " != ";
        v44 = 4;
        v19 = &v42;
        v20 = v46;
        if (v18 >= v48)
        {
          if (v46 <= &v42 && v46 + 24 * v18 > &v42)
          {
            v40 = &v42 - v46;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v18 + 1, 24);
            v20 = v46;
            v19 = (v46 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v18 + 1, 24);
            v19 = &v42;
            v20 = v46;
          }
        }

        v21 = &v20[24 * v47];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v47;
      }
    }
  }

  NumDims = mlir::AffineMap::getNumDims(&v41);
  if (v45[0])
  {
    v42 = 5;
    v43 = NumDims;
    v24 = &v42;
    v25 = v46;
    if (v47 >= v48)
    {
      if (v46 <= &v42 && v46 + 24 * v47 > &v42)
      {
        v38 = &v42 - v46;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v25 = v46;
        v24 = (v46 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v24 = &v42;
        v25 = v46;
      }
    }

    v26 = &v25[24 * v47];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    ++v47;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
  if (v45[0])
  {
    mlir::InFlightDiagnostic::report(v45);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v53;
      v30 = __p;
      if (v53 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v53 = v28;
      operator delete(v30);
    }

    v31 = v50;
    if (v50)
    {
      v32 = v51;
      v33 = v50;
      if (v51 != v50)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            operator delete[](v34);
          }
        }

        while (v32 != v31);
        v33 = v50;
      }

      v51 = v31;
      operator delete(v33);
    }

    if (v46 != v49)
    {
      free(v46);
    }
  }

  return v8;
}

uint64_t mlir::AffineMapAttr::get(unint64_t a1)
{
  v8 = a1;
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(LHS);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v9[1] = LHS;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = v8;
  v3 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v4 = (0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::ArrayAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::DenseArrayAttr::get(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v15 = a1;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v16[1] = Context;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v20[1] = v16;
  v19[0] = v15;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v9 = (v15 >> 4) ^ (v15 >> 9);
  v10 = llvm::hashing::detail::hash_combine_range_impl<char const>(a3, a3 + a4);
  v11 = __ROR8__(a2 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v9 - 0x9AE16A3B2F90404FLL * v10 + 24;
  v12 = (__ROR8__(0xB492B66FBE98F273 * v9 - a2, 43) - 0x3C5A37A36834CED9 * a2 + __ROR8__((0x9AE16A3B2F90404FLL * v10) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v11;
  v13 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * v12) >> 47) ^ (0x9DDFEA08EB382D69 * v12));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::DenseStringElementsAttr::get(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  Context = mlir::Attribute::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v13[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v18[1] = v13;
  mlir::detail::DenseStringElementsAttrStorage::getKey(v11, v12, a3, a4, a4 == 1, v16);
  v8 = __ROR8__(v17 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v16[0] >> 4) ^ (v16[0] >> 9));
  v14[0] = v16;
  v14[1] = v18;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

__n128 mlir::DenseResourceElementsAttr::getRawHandle@<Q0>(mlir::DenseResourceElementsAttr *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *this;
  result = *(*this + 24);
  *a2 = result;
  a2[1].n128_u64[0] = *(v2 + 40);
  return result;
}

uint64_t mlir::FloatAttr::get(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  Context = mlir::Attribute::getContext(&v6);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v7[1] = Context;
  return mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v7, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v6, a2);
}

llvm::APFloatBase *mlir::FloatAttr::get(uint64_t a1, double a2)
{
  v38[3] = *MEMORY[0x1E69E9840];
  v34 = a1;
  if (!mlir::Type::isF64(&v34))
  {
    v10 = *(*v34 + 136);
    v11 = v10 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v12 = v11 || v10 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v13 = v12 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v14 = v13 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v15 = v14 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v16 = v15 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v17 = v16 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v18 = v17 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v19 = v18 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v20 = v19 || v10 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v21 = v20 || v10 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v22 = v21 || v10 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v23 = v22 || v10 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    v24 = v23 || v10 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
    v25 = v24 || v10 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
    if (v25 || v10 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v33 = 0;
      v27 = llvm::detail::IEEEFloat::IEEEFloat(&v35, a2);
      v28 = llvm::APFloatBase::IEEEdouble(v27);
      llvm::APFloat::Storage::Storage(v38, &v35, v28);
      llvm::detail::IEEEFloat::~IEEEFloat(&v35);
      v35 = v34;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v35);
      llvm::APFloat::convert(v37, FloatSemantics, 1, &v33);
      Context = mlir::Attribute::getContext(&v34);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v35 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
      v36 = Context;
      v7 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v35, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v34, v37);
      v32 = v38[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v7) != v32)
      {
        goto LABEL_3;
      }

LABEL_56:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
      return v7;
    }
  }

  v3 = mlir::Attribute::getContext(&v34);
  v4 = llvm::detail::IEEEFloat::IEEEFloat(&v35, a2);
  v5 = llvm::APFloatBase::IEEEdouble(v4);
  llvm::APFloat::Storage::Storage(v38, &v35, v5);
  llvm::detail::IEEEFloat::~IEEEFloat(&v35);
  v6 = mlir::MLIRContext::getAttributeUniquer(v3);
  v35 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v36 = v3;
  v7 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(v6, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeENS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_, &v35, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v34, v37);
  v8 = v38[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v7) == v8)
  {
    goto LABEL_56;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v38);
  return v7;
}

void *mlir::FloatAttr::getValue@<X0>(mlir::FloatAttr *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*this + 24);
  v4 = *v3;
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v4)
  {

    return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v3);
  }

  else
  {

    return llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v3);
  }
}

uint64_t mlir::IntegerAttr::get(uint64_t a1, llvm::APInt *a2)
{
  v13 = a1;
  isSignlessInteger = mlir::Type::isSignlessInteger(&v13, 1);
  Context = mlir::Attribute::getContext(&v13);
  if (isSignlessInteger)
  {
    v5 = *(a2 + 2);
    if (v5 > 0x40)
    {
      v10 = Context;
      v11 = llvm::APInt::countLeadingZerosSlowCase(a2);
      Context = v10;
      v6 = v11 == v5;
    }

    else
    {
      v6 = *a2 == 0;
    }

    v12 = v6;
    return mlir::BoolAttr::get(Context, (v12 ^ 1u));
  }

  else
  {
    v7 = Context;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v14[1] = v7;
    return mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERKNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v14, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v13, a2);
  }
}

uint64_t mlir::IntegerAttr::get(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  if (mlir::Type::isIndex(&v13))
  {
    v12 = 64;
    __p = a2;
  }

  else
  {
    v10 = v13;
    Width = mlir::IntegerType::getWidth(&v10);
    isSignedInteger = mlir::Type::isSignedInteger(&v10);
    v12 = Width;
    if (Width > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, a2, isSignedInteger);
    }

    else
    {
      v5 = 0xFFFFFFFFFFFFFFFFLL >> -Width;
      if (!Width)
      {
        v5 = 0;
      }

      __p = (v5 & a2);
    }
  }

  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v14[1] = Context;
  result = mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v14, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v13, &__p);
  if (v12 >= 0x41)
  {
    if (__p)
    {
      v9 = result;
      operator delete[](__p);
      return v9;
    }
  }

  return result;
}

uint64_t *mlir::IntegerAttr::getValue@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(*this + 24);
  *(a2 + 8) = v3;
  if (v3 > 0x40)
  {
    return llvm::APInt::initSlowCase(a2, (v2 + 16));
  }

  *a2 = *(v2 + 16);
  return this;
}

uint64_t mlir::IntegerSetAttr::get(unint64_t a1)
{
  v8 = a1;
  Context = mlir::IntegerSet::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = v8;
  v3 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v4 = (0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::OpaqueAttr::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, const char *a5, uint64_t a6)
{
  v13 = a3;
  Context = mlir::Attribute::getContext(&v13);
  return mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::StringAttr,llvm::StringRef,mlir::Type>(a1, a2, Context, v13, a4, a5, a6);
}

uint64_t mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::StringAttr,llvm::StringRef,mlir::Type>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, void *a5, const char *a6, uint64_t a7)
{
  if ((mlir::OpaqueAttr::verify(a1, a2, a4, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  v21[1] = a3;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10OpaqueAttrEJRNS1_10StringAttrERNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v25[1] = v21;
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v13 = (a4 >> 4) ^ (a4 >> 9);
  v14 = llvm::hash_value(a5, a6);
  v15 = 0x9AE16A3B2F90404FLL * ((a7 >> 4) ^ (a7 >> 9));
  v16 = __ROR8__(v15 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v14;
  v17 = 0xB492B66FBE98F273 * v13 - 0xAE502812AA7333 - v15 + __ROR8__(v14 ^ 0xC949D7C7509E6557, 20) + 24;
  v18 = (v16 + __ROR8__(0xB492B66FBE98F273 * v13 - v14, 43)) ^ v17;
  v19 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * v18) >> 47) ^ (0x9DDFEA08EB382D69 * v18));
  v22[0] = v24;
  v22[1] = v25;
  v23 = v24;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, -348639895 * ((v19 >> 47) ^ v19), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v22);
}

uint64_t mlir::OpaqueAttr::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, const char *a5, uint64_t a6)
{
  v81 = *MEMORY[0x1E69E9840];
  v64 = a3;
  if (mlir::Dialect::isValidNamespace(*(a3 + 16), *(a3 + 24)))
  {
    Context = mlir::Attribute::getContext(&v64);
    if ((mlir::MLIRContext::allowsUnregisteredDialects(Context) & 1) != 0 || mlir::MLIRContext::getLoadedDialect(Context, *(v64 + 16), *(v64 + 24)))
    {
      return 1;
    }

    a1(&v69, a2);
    if (v69)
    {
      LODWORD(v65) = 3;
      v66 = "#";
      v67 = 1;
      v29 = &v65;
      v30 = v71;
      if (v72 >= v73)
      {
        if (v71 <= &v65 && v71 + 24 * v72 > &v65)
        {
          v59 = &v65 - v71;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
          v30 = v71;
          v29 = v71 + v59;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
          v29 = &v65;
          v30 = v71;
        }
      }

      v31 = &v30[24 * v72];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      ++v72;
      if (v69)
      {
        mlir::Diagnostic::operator<<(v70, v64);
        if (v69)
        {
          LODWORD(v65) = 3;
          v66 = "<";
          v67 = 2;
          v33 = &v65;
          v34 = v71;
          if (v72 >= v73)
          {
            if (v71 <= &v65 && v71 + 24 * v72 > &v65)
            {
              v60 = &v65 - v71;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
              v34 = v71;
              v33 = v71 + v60;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
              v33 = &v65;
              v34 = v71;
            }
          }

          v35 = &v34[24 * v72];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          ++v72;
          if (v69)
          {
            v68 = 261;
            v65 = a4;
            v66 = a5;
            mlir::Diagnostic::operator<<(v70, &v65);
            if (v69)
            {
              LODWORD(v65) = 3;
              v66 = "> : ";
              v67 = 5;
              v37 = &v65;
              v38 = v71;
              if (v72 >= v73)
              {
                if (v71 <= &v65 && v71 + 24 * v72 > &v65)
                {
                  v61 = &v65 - v71;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                  v38 = v71;
                  v37 = v71 + v61;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                  v37 = &v65;
                  v38 = v71;
                }
              }

              v39 = &v38[24 * v72];
              v40 = *v37;
              *(v39 + 2) = *(v37 + 2);
              *v39 = v40;
              ++v72;
              if (v69)
              {
                v41 = &v65;
                mlir::DiagnosticArgument::DiagnosticArgument(&v65, a6);
                v42 = v71;
                if (v72 >= v73)
                {
                  if (v71 <= &v65 && v71 + 24 * v72 > &v65)
                  {
                    v62 = &v65 - v71;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                    v42 = v71;
                    v41 = v71 + v62;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                    v41 = &v65;
                    v42 = v71;
                  }
                }

                v43 = &v42[24 * v72];
                v44 = *v41;
                *(v43 + 2) = *(v41 + 2);
                *v43 = v44;
                v45 = ++v72;
                if (v69)
                {
                  LODWORD(v65) = 3;
                  v66 = " attribute created with unregistered dialect. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR opt tool used";
                  v67 = 189;
                  v46 = &v65;
                  v47 = v71;
                  if (v45 >= v73)
                  {
                    if (v71 <= &v65 && v71 + 24 * v45 > &v65)
                    {
                      v63 = &v65 - v71;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v45 + 1, 24);
                      v47 = v71;
                      v46 = v71 + v63;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v45 + 1, 24);
                      v46 = &v65;
                      v47 = v71;
                    }
                  }

                  v48 = &v47[24 * v72];
                  v49 = *v46;
                  *(v48 + 2) = *(v46 + 2);
                  *v48 = v49;
                  ++v72;
                }
              }
            }
          }
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v69);
    if (v69)
    {
      mlir::InFlightDiagnostic::report(&v69);
    }

    if (v80 == 1)
    {
      if (v79 != &v80)
      {
        free(v79);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v78;
        v52 = __p;
        if (v78 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v78 = v50;
        operator delete(v52);
      }

      v24 = v75;
      if (!v75)
      {
        goto LABEL_58;
      }

      v53 = v76;
      v26 = v75;
      if (v76 == v75)
      {
LABEL_57:
        v76 = v24;
        operator delete(v26);
LABEL_58:
        if (v71 != v74)
        {
          free(v71);
        }

        return v12;
      }

      do
      {
        v55 = *--v53;
        v54 = v55;
        *v53 = 0;
        if (v55)
        {
          operator delete[](v54);
        }
      }

      while (v53 != v24);
LABEL_56:
      v26 = v75;
      goto LABEL_57;
    }
  }

  else
  {
    a1(&v69, a2);
    if (v69)
    {
      LODWORD(v65) = 3;
      v66 = "invalid dialect namespace '";
      v67 = 27;
      v13 = &v65;
      v14 = v71;
      if (v72 >= v73)
      {
        if (v71 <= &v65 && v71 + 24 * v72 > &v65)
        {
          v57 = &v65 - v71;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
          v14 = v71;
          v13 = v71 + v57;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
          v13 = &v65;
          v14 = v71;
        }
      }

      v15 = &v14[24 * v72];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v72;
      if (v69)
      {
        mlir::Diagnostic::operator<<(v70, v64);
        if (v69)
        {
          LODWORD(v65) = 3;
          v66 = "'";
          v67 = 1;
          v17 = &v65;
          v18 = v71;
          if (v72 >= v73)
          {
            if (v71 <= &v65 && v71 + 24 * v72 > &v65)
            {
              v58 = &v65 - v71;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
              v18 = v71;
              v17 = v71 + v58;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
              v17 = &v65;
              v18 = v71;
            }
          }

          v19 = &v18[24 * v72];
          v20 = *v17;
          *(v19 + 2) = *(v17 + 2);
          *v19 = v20;
          ++v72;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v69);
    if (v69)
    {
      mlir::InFlightDiagnostic::report(&v69);
    }

    if (v80 == 1)
    {
      if (v79 != &v80)
      {
        free(v79);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v78;
        v23 = __p;
        if (v78 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v78 = v21;
        operator delete(v23);
      }

      v24 = v75;
      if (!v75)
      {
        goto LABEL_58;
      }

      v25 = v76;
      v26 = v75;
      if (v76 == v75)
      {
        goto LABEL_57;
      }

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
      goto LABEL_56;
    }
  }

  return v12;
}

uint64_t mlir::SparseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v16[1] = Context;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v22[1] = v16;
  v19 = v15;
  v20 = a3;
  v21 = a4;
  v8 = (a3 >> 4) ^ (a3 >> 9);
  v9 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v10 = __ROR8__(0xB492B66FBE98F273 * ((v15 >> 4) ^ (v15 >> 9)) - v8, 43);
  v11 = __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v8;
  v12 = __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v9 - 0x4B6D499041670D8DLL * ((v15 >> 4) ^ (v15 >> 9)) + 24;
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)));
  v17[0] = &v19;
  v17[1] = v22;
  v18 = &v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::SparseElementsAttr::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a4;
  Context = mlir::Attribute::getContext(&v12);
  return mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(a1, a2, Context, v12, v13, a5, a6);
}

uint64_t mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((mlir::SparseElementsAttr::verify(a1, a2, a4, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v20[1] = a3;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeERNS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v24[1] = v20;
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v13 = (a6 >> 4) ^ (a6 >> 9);
  v14 = 0x9AE16A3B2F90404FLL * ((a7 >> 4) ^ (a7 >> 9));
  v15 = __ROR8__(0xB492B66FBE98F273 * ((a4 >> 4) ^ (a4 >> 9)) - v13, 43);
  v16 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v13;
  v17 = __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v14 - 0x4B6D499041670D8DLL * ((a4 >> 4) ^ (a4 >> 9)) + 24;
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * ((v16 + v15) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v16 + v15) ^ v17)));
  v21[0] = v23;
  v21[1] = v24;
  v22 = v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t mlir::SparseElementsAttr::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = *MEMORY[0x1E69E9840];
  v83[0] = a1;
  v83[1] = a2;
  v81 = a3;
  v82 = a4;
  v80 = a5;
  v79 = *(a6 + 8);
  mlir::CallableOpInterface::getArgAttrsAttr(&v79);
  if (v9 != 1)
  {
    a1(&v87, a2);
    if (v87)
    {
      LODWORD(v84) = 3;
      v85 = "expected 1-d tensor for sparse element values";
      v86[0] = 45;
      v22 = &v84;
      v23 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v84 && v90 + 24 * v91 > &v84)
        {
          v75 = &v84 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v23 = v90;
          v22 = (v90 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v22 = &v84;
          v23 = v90;
        }
      }

      v24 = &v23[24 * v91];
      v25 = *v22;
      *(v24 + 2) = v22[2];
      *v24 = v25;
      ++v91;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v99 != 1)
    {
      return v13;
    }

    if (v98 != &v99)
    {
      free(v98);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v97;
      v28 = __p;
      if (v97 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v97 = v26;
      operator delete(v28);
    }

    v17 = v94;
    if (!v94)
    {
      goto LABEL_86;
    }

    v29 = v95;
    v19 = v94;
    if (v95 == v94)
    {
      goto LABEL_85;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        operator delete[](v30);
      }
    }

    while (v29 != v17);
    goto LABEL_84;
  }

  v78 = *(a5 + 8);
  v77[0] = v83;
  v77[1] = &v81;
  v77[2] = &v78;
  v77[3] = &v79;
  mlir::CallableOpInterface::getArgAttrsAttr(&v81);
  v11 = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(&v78);
  if (v12 != 2)
  {
    if (v12 != 1 || v11 != 1)
    {
      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v87, v77);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (v99 != 1)
      {
        return v13;
      }

      if (v98 != &v99)
      {
        free(v98);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v97;
        v46 = __p;
        if (v97 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v97 = v44;
        operator delete(v46);
      }

      v17 = v94;
      if (!v94)
      {
        goto LABEL_86;
      }

      v47 = v95;
      v19 = v94;
      if (v95 == v94)
      {
        goto LABEL_85;
      }

      do
      {
        v49 = *--v47;
        v48 = v49;
        *v47 = 0;
        if (v49)
        {
          operator delete[](v48);
        }
      }

      while (v47 != v17);
      goto LABEL_84;
    }

LABEL_41:
    v32 = *mlir::CallableOpInterface::getArgAttrsAttr(&v78);
    if (v32 != *mlir::CallableOpInterface::getArgAttrsAttr(&v79))
    {
      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v87, v77);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (v99 != 1)
      {
        return v13;
      }

      if (v98 != &v99)
      {
        free(v98);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v97;
        v52 = __p;
        if (v97 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v97 = v50;
        operator delete(v52);
      }

      v17 = v94;
      if (!v94)
      {
        goto LABEL_86;
      }

      v53 = v95;
      v19 = v94;
      if (v95 == v94)
      {
        goto LABEL_85;
      }

      do
      {
        v55 = *--v53;
        v54 = v55;
        *v53 = 0;
        if (v55)
        {
          operator delete[](v54);
        }
      }

      while (v53 != v17);
      goto LABEL_84;
    }

    v76[0] = v83;
    v76[1] = &v81;
    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v80, &v87);
    v33 = v87;
    v34 = v88[0];
    v35 = v89;
    if ((*(v80 + 24) & 1) == 0)
    {
      if (!v32)
      {
        return 1;
      }

      v58 = 0;
      while (1)
      {
        v59 = (v34 & 1) != 0 ? 0 : v35;
        v60 = (v33 + 8 * v59);
        if ((mlir::ElementsAttr::isValidIndex(v81, v82, v60, v11) & 1) == 0)
        {
          break;
        }

        ++v58;
        v35 += v11;
        if (v32 == v58)
        {
          return 1;
        }
      }

      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&v87, v76, v58, v60, v11);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (v99)
      {
        if (v98 != &v99)
        {
          free(v98);
        }

        v65 = __p;
        if (__p)
        {
          v66 = v97;
          v67 = __p;
          if (v97 != __p)
          {
            do
            {
              v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
            }

            while (v66 != v65);
            v67 = __p;
          }

          v97 = v65;
          operator delete(v67);
        }

        v68 = v94;
        if (v94)
        {
          v69 = v95;
          v70 = v94;
          if (v95 != v94)
          {
            do
            {
              v72 = *--v69;
              v71 = v72;
              *v69 = 0;
              if (v72)
              {
                operator delete[](v71);
              }
            }

            while (v69 != v68);
            v70 = v94;
          }

          v95 = v68;
          operator delete(v70);
        }

        v56 = v90;
        if (v90 != v93)
        {
          goto LABEL_87;
        }
      }

      return v13;
    }

    if (v88[0])
    {
      v36 = 0;
    }

    else
    {
      v36 = v89;
    }

    v84 = v86;
    HIDWORD(v85) = 6;
    v37 = *(v87 + 8 * v36);
    if (v11 >= 7)
    {
      LODWORD(v85) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v11, 8);
      v38 = v84;
      v39 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v40 = v11 & 3;
      v41 = vdupq_n_s64(v37);
      v42 = v84 + 2;
      v43 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v42 - 1) = v41;
        *v42 = v41;
        v42 += 4;
        v43 -= 4;
      }

      while (v43);
      if (v11 != (v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        do
        {
          v38[v39++] = v37;
          --v40;
        }

        while (v40);
      }

LABEL_131:
      LODWORD(v85) = v11;
      if (mlir::ElementsAttr::isValidIndex(v81, v82, v38, v11))
      {
        v13 = 1;
      }

      else
      {
        mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&v87, v76, 0, v84, v85);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
        if (v87)
        {
          mlir::InFlightDiagnostic::report(&v87);
        }

        if (v99 == 1)
        {
          mlir::Diagnostic::~Diagnostic(v88);
        }
      }

      v56 = v84;
      if (v84 != v86)
      {
        goto LABEL_87;
      }

      return v13;
    }

    if (!v11)
    {
      goto LABEL_130;
    }

    v61 = vdupq_n_s64(v11 - 1);
    v62 = v11 + 1;
    v63 = vmovn_s64(vcgeq_u64(v61, xmmword_1E09700F0));
    if (v63.i8[0])
    {
      v86[0] = v37;
      v64 = v62 & 0xE;
      if ((v63.i8[4] & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v64 = v62 & 0xE;
      if ((v63.i8[4] & 1) == 0)
      {
LABEL_100:
        if (v64 == 2)
        {
          goto LABEL_130;
        }

LABEL_120:
        v73 = vmovn_s64(vcgtq_u64(v61, xmmword_1E0970220));
        if (v73.i8[0])
        {
          v86[2] = v37;
          if ((v73.i8[4] & 1) == 0)
          {
            goto LABEL_122;
          }
        }

        else if ((v73.i8[4] & 1) == 0)
        {
LABEL_122:
          if (v64 == 4)
          {
            goto LABEL_130;
          }

LABEL_126:
          v74 = vmovn_s64(vcgtq_u64(v61, xmmword_1E0970230));
          if (v74.i8[0])
          {
            v86[4] = v37;
          }

          if (v74.i8[4])
          {
            v86[5] = v37;
          }

          goto LABEL_130;
        }

        v86[3] = v37;
        if (v64 != 4)
        {
          goto LABEL_126;
        }

LABEL_130:
        v38 = v86;
        goto LABEL_131;
      }
    }

    v86[1] = v37;
    if (v64 == 2)
    {
      goto LABEL_130;
    }

    goto LABEL_120;
  }

  if (*(mlir::CallableOpInterface::getArgAttrsAttr(&v78) + 8) == v11)
  {
    goto LABEL_41;
  }

  mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v87, v77);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
  if (v87)
  {
    mlir::InFlightDiagnostic::report(&v87);
  }

  if (v99 != 1)
  {
    return v13;
  }

  if (v98 != &v99)
  {
    free(v98);
  }

  v14 = __p;
  if (__p)
  {
    v15 = v97;
    v16 = __p;
    if (v97 != __p)
    {
      do
      {
        v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v97 = v14;
    operator delete(v16);
  }

  v17 = v94;
  if (!v94)
  {
    goto LABEL_86;
  }

  v18 = v95;
  v19 = v94;
  if (v95 != v94)
  {
    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        operator delete[](v20);
      }
    }

    while (v18 != v17);
LABEL_84:
    v19 = v94;
  }

LABEL_85:
  v95 = v17;
  operator delete(v19);
LABEL_86:
  v56 = v90;
  if (v90 != v93)
  {
LABEL_87:
    free(v56);
  }

  return v13;
}

uint64_t mlir::StridedLayoutAttr::get(mlir::MLIRContext *a1, uint64_t a2, void *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v13[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a3, &a3[a4]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ a2 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ a2 ^ 0xFF51AFD7ED558CCDLL)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::StridedLayoutAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v5 = 8 * a5;
    for (i = a4; *i; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return 1;
      }
    }
  }

  else
  {
    i = a4;
  }

  if (i == &a4[a5])
  {
    return 1;
  }

  a1(v25, a2);
  if (v25[0])
  {
    v22 = 3;
    v23 = "strides must not be zero";
    v24 = 24;
    v7 = &v22;
    v8 = v26;
    if (v27 >= v28)
    {
      if (v26 <= &v22 && v26 + 24 * v27 > &v22)
      {
        v21 = &v22 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v8 = v26;
        v7 = (v26 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v7 = &v22;
        v8 = v26;
      }
    }

    v9 = &v8[24 * v27];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v27;
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
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

  return v11;
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v12 = a1;
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = a2;
  v16[2] = a3;
  v7 = (v12 >> 4) ^ (v12 >> 9);
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a2, &a2[2 * a3]);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v10 >> 47) ^ v10)) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::TypeAttr::get(uint64_t a1)
{
  v5 = a1;
  Context = mlir::Attribute::getContext(&v5);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v6[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v6[1] = Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v10[1] = v6;
  v9 = v5;
  v3 = 0x9DDFEA08EB382D69 * ((8 * ((v5 >> 4) ^ (v5 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v7[0] = &v9;
  v7[1] = v10;
  v8 = &v9;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v3 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t *mlir::BuiltinDialect::registerAttributes(mlir::BuiltinDialect *this)
{
  mlir::Dialect::addAttributes<mlir::AffineMapAttr,mlir::ArrayAttr,mlir::DenseArrayAttr,mlir::DenseIntOrFPElementsAttr,mlir::DenseStringElementsAttr,mlir::DenseResourceElementsAttr,mlir::DictionaryAttr,mlir::FloatAttr,mlir::IntegerAttr,mlir::IntegerSetAttr,mlir::OpaqueAttr,mlir::SparseElementsAttr,mlir::StridedLayoutAttr,mlir::StringAttr,mlir::SymbolRefAttr,mlir::TypeAttr,mlir::UnitAttr>(this);

  return mlir::Dialect::addAttribute<mlir::DistinctAttr>(this);
}

uint64_t mlir::Dialect::addAttributes<mlir::AffineMapAttr,mlir::ArrayAttr,mlir::DenseArrayAttr,mlir::DenseIntOrFPElementsAttr,mlir::DenseStringElementsAttr,mlir::DenseResourceElementsAttr,mlir::DictionaryAttr,mlir::FloatAttr,mlir::IntegerAttr,mlir::IntegerSetAttr,mlir::OpaqueAttr,mlir::SparseElementsAttr,mlir::StridedLayoutAttr,mlir::StringAttr,mlir::SymbolRefAttr,mlir::TypeAttr,mlir::UnitAttr>(uint64_t a1)
{
  mlir::Dialect::addAttribute<mlir::AffineMapAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ArrayAttr>(a1);
  mlir::Dialect::addAttribute<mlir::DenseArrayAttr>(a1);
  mlir::Dialect::addAttribute<mlir::DenseIntOrFPElementsAttr>(a1);
  mlir::Dialect::addAttribute<mlir::DenseStringElementsAttr>(a1);
  mlir::Dialect::addAttribute<mlir::DenseResourceElementsAttr>(a1);
  mlir::Dialect::addAttribute<mlir::DictionaryAttr>(a1);
  mlir::Dialect::addAttribute<mlir::FloatAttr>(a1);
  mlir::Dialect::addAttribute<mlir::IntegerAttr>(a1);
  mlir::Dialect::addAttribute<mlir::IntegerSetAttr>(a1);
  mlir::Dialect::addAttribute<mlir::OpaqueAttr>(a1);
  mlir::Dialect::addAttribute<mlir::SparseElementsAttr>(a1);
  mlir::Dialect::addAttribute<mlir::StridedLayoutAttr>(a1);
  mlir::Dialect::addAttribute<mlir::StringAttr>(a1);
  mlir::Dialect::addAttribute<mlir::SymbolRefAttr>(a1);
  mlir::Dialect::addAttribute<mlir::TypeAttr>(a1);

  return mlir::Dialect::addAttribute<mlir::UnitAttr>(a1);
}

uint64_t dictionaryAttrSort<false>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v7 = mlir::NamedAttribute::operator<(a1, a1 + 2);
    if (v7)
    {
      v20 = *a1;
      v21 = *(a1 + 1);
      *(a3 + 8) = 0;
      if (*(a3 + 12) > 1u)
      {
LABEL_9:
        v8 = 0;
LABEL_14:
        v13 = (*a3 + 16 * v8);
        *v13 = v20;
        v13[1] = v21;
        *(a3 + 8) += 2;
        return v7 ^ 1u;
      }
    }

    else
    {
      v20 = *(a1 + 1);
      v21 = *a1;
      *(a3 + 8) = 0;
      if (*(a3 + 12) > 1u)
      {
        goto LABEL_9;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, 2uLL, 16);
    v8 = *(a3 + 8);
    goto LABEL_14;
  }

  if (a2 == 1)
  {
    v19 = *a1;
    *(a3 + 8) = 0;
    if (*(a3 + 12))
    {
      v5 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, 1uLL, 16);
      v5 = *(a3 + 8);
    }

    result = 0;
    *(*a3 + 16 * v5) = v19;
    ++*(a3 + 8);
  }

  else if (a2)
  {
    v9 = 16 * a2;
    *(a3 + 8) = 0;
    v10 = (16 * a2) >> 4;
    if (v10 <= *(a3 + 12))
    {
      v12 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v10, 16);
      v12 = *(a3 + 8);
    }

    memcpy((*a3 + 16 * v12), a1, v9);
    v14 = a1;
    *(a3 + 8) += v9 >> 4;
    v15 = v9 - 16;
    do
    {
      if (!v15)
      {
        return 0;
      }

      v16 = v14 + 2;
      v17 = mlir::NamedAttribute::operator<(v14 + 2, v14);
      v15 -= 16;
      v14 = v16;
    }

    while (!v17);
    v18 = *(a3 + 8);
    if (v18 >= 2)
    {
      qsort(*a3, v18, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t mlir::DictionaryAttr::sortInPlace(uint64_t **a1)
{
  v1 = *(a1 + 2);
  if (v1 < 2)
  {
    return 0;
  }

  v4 = *a1;
  if (v1 != 2)
  {
    for (i = 16 * v1 - 16; i; i -= 16)
    {
      v9 = v4 + 2;
      v10 = mlir::NamedAttribute::operator<(v4 + 2, v4);
      v4 = v9;
      if (v10)
      {
        v11 = *(a1 + 2);
        if (v11 >= 2)
        {
          qsort(*a1, v11, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
        }

        return 1;
      }
    }

    return 0;
  }

  v5 = mlir::NamedAttribute::operator<(*a1, v4 + 2);
  if ((v5 & 1) == 0)
  {
    v6 = *a1;
    v7 = **a1;
    *v6 = *(*a1 + 1);
    *(v6 + 1) = v7;
  }

  return v5 ^ 1u;
}

void mlir::DictionaryAttr::findDuplicate(uint64_t **a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 2);
    if (v5 >= 2)
    {
      v10 = *a1;
      if (v5 == 2)
      {
        if ((mlir::NamedAttribute::operator<(*a1, v10 + 2) & 1) == 0)
        {
          v11 = *a1;
          v12 = **a1;
          *v11 = *(*a1 + 1);
          *(v11 + 1) = v12;
        }
      }

      else
      {
        v17 = 16 * v5 - 16;
        while (v17)
        {
          v18 = v10 + 2;
          v19 = mlir::NamedAttribute::operator<(v10 + 2, v10);
          v17 -= 16;
          v10 = v18;
          if (v19)
          {
            v20 = *(a1 + 2);
            if (v20 >= 2)
            {
              qsort(*a1, v20, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
            }

            break;
          }
        }
      }
    }
  }

  v6 = *(a1 + 2);
  if (v6 <= 1)
  {
    goto LABEL_4;
  }

  v7 = *a1;
  if (v6 != 2)
  {
    v13 = 16 * v6 + 16;
    while (v13 != 32)
    {
      v14 = v7 + 2;
      v15 = *v7;
      v21 = *(v7 + 1);
      v22 = v15;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(&v22);
      v13 -= 16;
      v7 += 2;
      if (CallableRegion == mlir::CallGraphNode::getCallableRegion(&v21))
      {
        if (!v13)
        {
          goto LABEL_4;
        }

        v9 = *(v14 - 1);
        goto LABEL_17;
      }
    }

    goto LABEL_4;
  }

  v8 = mlir::CallGraphNode::getCallableRegion(v7);
  if (v8 != mlir::CallGraphNode::getCallableRegion((v7 + 2)))
  {
LABEL_4:
    *a3 = 0;
    a3[16] = 0;
    return;
  }

  v9 = *v7;
LABEL_17:
  *a3 = v9;
  a3[16] = 1;
}

uint64_t mlir::DictionaryAttr::get(mlir::DictionaryAttr *this, uint64_t *a2, uint64_t a3)
{
  v22[16] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v20 = v22;
    v21 = 0x800000000;
    v6 = dictionaryAttrSort<false>(a2, a3, &v20);
    if (v6)
    {
      v7 = v20;
    }

    else
    {
      v7 = a2;
    }

    if (v6)
    {
      v8 = v21;
    }

    else
    {
      v8 = a3;
    }

    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
    v15[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v15[1] = this;
    v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
    v19[1] = v15;
    v18[0] = v7;
    v18[1] = v8;
    v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(v7, &v7[4 * v8]);
    v11 = HIDWORD(v10) ^ 0xFF51AFD7ED558CCDLL;
    v12 = 0x9DDFEA08EB382D69 * ((8 * v10 + 8) ^ v11);
    v16[0] = v18;
    v16[1] = v19;
    v17 = v18;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
    if (v20 != v22)
    {
      v14 = result;
      free(v20);
      return v14;
    }
  }

  else
  {

    return mlir::DictionaryAttr::getEmpty(this, a2);
  }

  return result;
}

uint64_t mlir::DictionaryAttr::getWithSorted(mlir::MLIRContext *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  if (a3)
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v12[1] = a1;
    v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
    v16[1] = v12;
    v15[0] = a2;
    v15[1] = a3;
    v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(a2, a2 + 4 * a3);
    v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
    v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
    v13[0] = v15;
    v13[1] = v16;
    v14 = v15;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  }

  else
  {

    return mlir::DictionaryAttr::getEmpty(a1, a2);
  }
}

uint64_t mlir::DictionaryAttr::get(mlir::DictionaryAttr *this, StringRef a2)
{
  v2 = (16 * *(*this + 16)) >> 4;
  if (v2 < 1)
  {
    return 0;
  }

  var1 = a2.var1;
  var0 = a2.var0;
  v5 = *(*this + 8);
  while (1)
  {
    v6 = v2 >> 1;
    v7 = &v5[2 * (v2 >> 1)];
    CallableRegion = mlir::CallGraphNode::getCallableRegion(v7);
    v9 = *(CallableRegion + 24);
    if (var1 >= v9)
    {
      v10 = *(CallableRegion + 24);
    }

    else
    {
      v10 = var1;
    }

    if (v10)
    {
      v11 = memcmp(*(CallableRegion + 16), var0, v10);
      if (v11)
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v9 == var1)
    {
      return *(v7 + 1);
    }

    if (v9 >= var1)
    {
      goto LABEL_4;
    }

LABEL_3:
    v5 = (v7 + 16);
    v6 = v2 + ~v6;
LABEL_4:
    v2 = v6;
    if (v6 <= 0)
    {
      return 0;
    }
  }
}

uint64_t mlir::DictionaryAttr::get(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = (16 * v3) >> 4;
  if (v5 >= 17)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    while (1)
    {
      v8 = v5 >> 1;
      i = &v4[2 * (v5 >> 1)];
      CallableRegion = mlir::CallGraphNode::getCallableRegion(i);
      v11 = *(CallableRegion + 24);
      v12 = v7 >= v11 ? *(CallableRegion + 24) : v7;
      if (v12)
      {
        v13 = memcmp(*(CallableRegion + 16), v6, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return *(i + 1);
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v5 = v8;
      if (v8 <= 0)
      {
        return 0;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v4 = (i + 16);
    v8 = v5 + ~v8;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v14 = 16 * v3;
  for (i = *(*a1 + 8); mlir::CallGraphNode::getCallableRegion(i) != a2; i = (i + 16))
  {
    v14 -= 16;
    if (!v14)
    {
      return 0;
    }
  }

  return *(i + 1);
}

uint64_t mlir::DictionaryAttr::getNamed@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*result + 8);
  v5 = *(*result + 16);
  v7 = (16 * v5) >> 4;
  if (v7 >= 17)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    while (1)
    {
      v10 = v7 >> 1;
      v11 = &v6[16 * (v7 >> 1)];
      result = mlir::CallGraphNode::getCallableRegion(v11);
      v12 = *(result + 24);
      v13 = v9 >= v12 ? *(result + 24) : v9;
      if (v13)
      {
        result = memcmp(*(result + 16), v8, v13);
        if (result)
        {
          break;
        }
      }

      if (v12 == v9)
      {
        goto LABEL_20;
      }

      if (v12 < v9)
      {
        goto LABEL_3;
      }

LABEL_4:
      v7 = v10;
      if (v10 <= 0)
      {
        goto LABEL_19;
      }
    }

    if ((result & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 = v11 + 16;
    v10 = v7 + ~v10;
    goto LABEL_4;
  }

  if (v5)
  {
    v14 = 16 * v5;
    v11 = *(*result + 8);
    while (1)
    {
      result = mlir::CallGraphNode::getCallableRegion(v11);
      if (result == a2)
      {
        break;
      }

      v11 = (v11 + 16);
      v14 -= 16;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    *a3 = *v11;
    v15 = 1;
  }

  else
  {
LABEL_19:
    v15 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v15;
  return result;
}

uint64_t mlir::DictionaryAttr::contains(mlir::DictionaryAttr *this, StringRef a2)
{
  v2 = (16 * *(*this + 16)) >> 4;
  if (v2 < 1)
  {
    return 0;
  }

  var1 = a2.var1;
  var0 = a2.var0;
  v5 = *(*this + 8);
  while (1)
  {
    v6 = v2 >> 1;
    CallableRegion = mlir::CallGraphNode::getCallableRegion((v5 + 16 * (v2 >> 1)));
    v8 = *(CallableRegion + 24);
    if (var1 >= v8)
    {
      v9 = *(CallableRegion + 24);
    }

    else
    {
      v9 = var1;
    }

    if (v9)
    {
      v10 = memcmp(*(CallableRegion + 16), var0, v9);
      if (v10)
      {
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v8 == var1)
    {
      return 1;
    }

    if (v8 >= var1)
    {
      goto LABEL_4;
    }

LABEL_3:
    v5 += 16 * (v2 >> 1) + 16;
    v6 = v2 + ~v6;
LABEL_4:
    v2 = v6;
    if (v6 <= 0)
    {
      return 0;
    }
  }
}

uint64_t mlir::DictionaryAttr::contains(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = (16 * v3) >> 4;
  if (v5 >= 17)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    while (1)
    {
      v8 = v5 >> 1;
      CallableRegion = mlir::CallGraphNode::getCallableRegion((v4 + 16 * (v5 >> 1)));
      v10 = *(CallableRegion + 24);
      v11 = v7 >= v10 ? *(CallableRegion + 24) : v7;
      if (v11)
      {
        v12 = memcmp(*(CallableRegion + 16), v6, v11);
        if (v12)
        {
          break;
        }
      }

      if (v10 == v7)
      {
        return 1;
      }

      if (v10 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v5 = v8;
      if (v8 <= 0)
      {
        return 0;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v4 = (v4 + 16 * (v5 >> 1) + 16);
    v8 = v5 + ~v8;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v13 = 16 * v3 - 16;
  do
  {
    v14 = mlir::CallGraphNode::getCallableRegion(v4) == a2;
    result = v14;
    if (v14)
    {
      break;
    }

    v16 = v13;
    v13 -= 16;
    v4 = (v4 + 16);
  }

  while (v16);
  return result;
}

uint64_t mlir::DictionaryAttr::getEmptyUnchecked(mlir::DictionaryAttr *this, mlir::MLIRContext *a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v8[1] = this;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v12[1] = v8;
  v11[0] = 0;
  v11[1] = 0;
  v4 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(0, 0);
  v5 = HIDWORD(v4) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v4 + 8) ^ v5);
  v9[0] = v11;
  v9[1] = v12;
  v10 = v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

void *mlir::StridedLayoutAttr::print(void *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 8)
  {
    *(v4 + 8) = 91;
    *v4 = *"strided<[";
    *(a2 + 4) += 9;
    v5 = *this;
    v6 = *(*this + 24);
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  this = llvm::raw_ostream::write(a2, "strided<[", 9uLL);
  v5 = *v3;
  v6 = *(*v3 + 24);
  if (v6)
  {
LABEL_5:
    v7 = *(v5 + 16);
    if (*v7 == 0x8000000000000000)
    {
      v8 = *(a2 + 4);
      if (*(a2 + 3) == v8)
      {
        this = llvm::raw_ostream::write(a2, "?", 1uLL);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v8 = 63;
        ++*(a2 + 4);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      this = llvm::raw_ostream::operator<<(a2, *v7);
      if (v6 == 1)
      {
        goto LABEL_12;
      }
    }

    v13 = v7 + 1;
    for (i = 8 * v6 - 8; i; i -= 8)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) - v15 > 1uLL)
      {
        *v15 = 8236;
        *(a2 + 4) += 2;
        v16 = *v13;
        if (*v13 == 0x8000000000000000)
        {
LABEL_27:
          v17 = *(a2 + 4);
          if (*(a2 + 3) == v17)
          {
            this = llvm::raw_ostream::write(a2, "?", 1uLL);
          }

          else
          {
            *v17 = 63;
            ++*(a2 + 4);
          }

          goto LABEL_22;
        }
      }

      else
      {
        this = llvm::raw_ostream::write(a2, ", ", 2uLL);
        v16 = *v13;
        if (*v13 == 0x8000000000000000)
        {
          goto LABEL_27;
        }
      }

      this = llvm::raw_ostream::operator<<(a2, v16);
LABEL_22:
      ++v13;
    }
  }

LABEL_12:
  v9 = *(a2 + 4);
  if (*(a2 + 3) == v9)
  {
    this = llvm::raw_ostream::write(a2, "]", 1uLL);
    if (!*(*v3 + 8))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v9 = 93;
    ++*(a2 + 4);
    if (!*(*v3 + 8))
    {
LABEL_33:
      v12 = *(a2 + 4);
      if (*(a2 + 3) != v12)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }

  v10 = *(a2 + 4);
  if ((*(a2 + 3) - v10) <= 9)
  {
    this = llvm::raw_ostream::write(a2, ", offset: ", 0xAuLL);
    v11 = *(*v3 + 8);
    if (v11 != 0x8000000000000000)
    {
      goto LABEL_18;
    }

LABEL_31:
    v18 = *(a2 + 4);
    if (*(a2 + 3) == v18)
    {
      this = llvm::raw_ostream::write(a2, "?", 1uLL);
      v12 = *(a2 + 4);
      if (*(a2 + 3) != v12)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    *v18 = 63;
    ++*(a2 + 4);
    goto LABEL_33;
  }

  *(v10 + 8) = 8250;
  *v10 = *", offset: ";
  *(a2 + 4) += 10;
  v11 = *(*v3 + 8);
  if (v11 == 0x8000000000000000)
  {
    goto LABEL_31;
  }

LABEL_18:
  this = llvm::raw_ostream::operator<<(a2, v11);
  v12 = *(a2 + 4);
  if (*(a2 + 3) != v12)
  {
LABEL_34:
    *v12 = 62;
    ++*(a2 + 4);
    return this;
  }

LABEL_36:

  return llvm::raw_ostream::write(a2, ">", 1uLL);
}