llvm::raw_ostream *llvm::function_ref<void ()(unsigned int,BOOL)>::callback_fn<anonymous namespace::OperationPrinter::printAffineMapOfSSAIds(mlir::AffineMapAttr,mlir::ValueRange)::$_0>(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 8);
  if (a3)
  {
    v4 = **a1 + a2;
    v5 = *(v3 + 16);
    v6 = *(v5 + 32);
    if (*(v5 + 24) - v6 > 6uLL)
    {
      *(v6 + 3) = 678195042;
      *v6 = 1651341683;
      *(v5 + 32) += 7;
    }

    else
    {
      v7 = a1;
      llvm::raw_ostream::write(*(v3 + 16), "symbol(", 7uLL);
      a1 = v7;
    }

    v12 = mlir::ValueRange::dereference_iterator(*(a1 + 16), v4);
    result = *(v3 + 16);
    v13 = *(result + 4);
    if (v13 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v13 + 1;
      *v13 = 41;
    }
  }

  else
  {
    v8 = mlir::ValueRange::dereference_iterator(*(a1 + 16), a2);
    v9 = *(v3 + 16);
    v10 = (*(v3 + 24) + 280);
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int,BOOL)>::callback_fn<anonymous namespace::OperationPrinter::printAffineExprOfSSAIds(mlir::AffineExpr,mlir::ValueRange,mlir::ValueRange)::$_0>(uint64_t *a1, unsigned int a2, char a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(v4 + 32);
    if (*(v4 + 24) - v5 > 6uLL)
    {
      *(v5 + 3) = 678195042;
      *v5 = 1651341683;
      *(v4 + 32) += 7;
    }

    else
    {
      v6 = a1;
      v7 = a2;
      llvm::raw_ostream::write(*(v3 + 16), "symbol(", 7uLL);
      a1 = v6;
      a2 = v7;
    }

    v12 = mlir::ValueRange::dereference_iterator(a1[2], a2);
    result = *(v3 + 16);
    v13 = *(result + 4);
    if (v13 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v13 + 1;
      *v13 = 41;
    }
  }

  else
  {
    v8 = mlir::ValueRange::dereference_iterator(a1[1], a2);
    v9 = *(v3 + 16);
    v10 = (*(v3 + 24) + 280);
  }

  return result;
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printCustomOrGenericOp(_anonymous_namespace_::DummyAliasOperationPrinter *this, mlir::Operation *a2)
{
  v3 = *(*(this + 2) + 40);
  if (v3)
  {
    v4 = a2;
    a2 = v4;
    v3 = *(*(this + 2) + 40);
  }

  if ((v3 & 4) != 0)
  {
    v7 = *(*this + 216);

    return v7(this, a2, 1);
  }

  else
  {
    v5 = *(**(a2 + 6) + 56);

    return v5();
  }
}

void anonymous namespace::DummyAliasOperationPrinter::~DummyAliasOperationPrinter(_anonymous_namespace_::DummyAliasOperationPrinter *this)
{
  *this = &unk_1F5AF59E8;
  llvm::raw_null_ostream::~raw_null_ostream((this + 32));
}

{
  *this = &unk_1F5AF59E8;
  llvm::raw_null_ostream::~raw_null_ostream((this + 32));

  operator delete(this);
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printAlias(uint64_t a1, void **a2)
{
  return 1;
}

{
  return 1;
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printRegionArgument(void *a1, uint64_t a2)
{
  result = (*(*a1 + 32))(a1, *(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(a1[2] + 40))
  {
    v5 = a1[3];
    v6 = *(a2 + 32);
  }

  return result;
}

void *anonymous namespace::DummyAliasOperationPrinter::printOperand(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  if (a3[3] == v3)
  {
    return llvm::raw_ostream::write(a3, "%", 1uLL);
  }

  *v3 = 37;
  ++a3[4];
  return result;
}

const void **anonymous namespace::DummyAliasOperationPrinter::printOptionalAttrDict(const void **result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a2;
    v7 = result;
    if (a5)
    {
      v13[0] = a4;
      CallableRegion = a4 + 16 * a5;
      llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(&v15, v13, &CallableRegion);
      v8 = 16 * a3;
      while (1)
      {
        CallableRegion = mlir::CallGraphNode::getCallableRegion(v6);
        v13[0] = mlir::OpaqueAttr::getAttrData(&CallableRegion);
        v13[1] = v9;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v15, v13);
        if (result)
        {
          if (v15)
          {
            if (result != &v18)
            {
              goto LABEL_5;
            }
          }

          else if (result != (v16 + 16 * v17))
          {
            goto LABEL_5;
          }
        }

        result = (*(*v7 + 5))(v7, *(v6 + 1));
LABEL_5:
        v6 = (v6 + 16);
        v8 -= 16;
        if (!v8)
        {
          if ((v15 & 1) == 0)
          {
            llvm::deallocate_buffer(v16, (16 * v17));
          }

          return result;
        }
      }
    }

    v10 = 16 * a3;
    v11 = a2 + 1;
    do
    {
      v12 = *v11;
      v11 += 2;
      result = (*(*v7 + 5))(v7, v12);
      v10 -= 16;
    }

    while (v10);
  }

  return result;
}

mlir::Block *anonymous namespace::DummyAliasOperationPrinter::printRegion(mlir::Block *this, mlir::Region *a2, int a3, char a4)
{
  if (*a2 != a2)
  {
    v4 = this;
    if ((*(*(this + 2) + 40) & 8) != 0)
    {
      v10 = *(this + 8);
      if ((*(this + 7) - v10) > 4)
      {
        *(v10 + 4) = 125;
        *v10 = 774778491;
        *(this + 8) += 5;
      }

      else
      {
        v11 = (this + 32);

        return llvm::raw_ostream::write(v11, "{...}", 5uLL);
      }
    }

    else
    {
      v6 = *(a2 + 1);
      if (v6)
      {
        v7 = (v6 - 8);
      }

      else
      {
        v7 = 0;
      }

      for (i = *(*(a2 + 1) + 8); i != a2; i = *(i + 1))
      {
        if (i)
        {
          v9 = (i - 8);
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  return this;
}

uint64_t anonymous namespace::AliasInitializer::visit(_anonymous_namespace_::AliasInitializer *a1, void **a2, int a3)
{
  v62[6] = *MEMORY[0x1E69E9840];
  __src[0] = 0;
  __src[16] = 0;
  *&__src[24] = 0;
  v60 = v62;
  v61 = 0x600000000;
  v45[0] = a2;
  *&v45[1] = *__src;
  *(&v45[2] + 4) = *&__src[12];
  v46 = &v48;
  v47 = 0x600000000;
  v8 = v7;
  if (v46 != &v48)
  {
    free(v46);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  if (v8)
  {
    v42 = v6 - *(a1 + 5);
    v45[0] = &v45[3];
    *&v45[1] = xmmword_1E096E640;
    v10 = *(*a1 + 32);
    v9 = *(*a1 + 40);
    if (v10 != v9)
    {
      do
      {
        while (1)
        {
          v11 = (*(**v10 + 24))(*v10, a2, a1 + 14);
          if (v11)
          {
            break;
          }

          if (++v10 == v9)
          {
            goto LABEL_15;
          }
        }

        v12 = v11;
        llvm::SmallVectorImpl<char>::operator=(v45, a1 + 56);
        ++v10;
      }

      while (v12 != 2 && v10 != v9);
LABEL_15:
      v14 = v45[0];
      if (v45[1])
      {
        *__src = &__src[24];
        *&__src[8] = xmmword_1E0971D80;
        v15 = sanitizeIdentifier(v45[0], v45[1], __src, "$_-", 3uLL, 0);
        v17 = v16;
        if (v16)
        {
          v18 = v15;
          v19 = *(a1 + 1);
          v19[10] = v19[10] + v16;
          v20 = *v19;
          v21 = *v19 + v16;
          if (*v19)
          {
            v22 = v21 > v19[1];
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v40 = v18;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v19, v16, v16, 0);
            v18 = v40;
            v20 = Slow;
          }

          else
          {
            *v19 = v21;
          }

          memmove(v20, v18, v17);
        }

        else
        {
          v20 = 0;
        }

        *(v6 + 8) = v20;
        *(v6 + 16) = v17;
        *(v6 + 24) = 1;
        *(v6 + 32) = 1;
        *(v6 + 48) = 0;
        if (*__src != &__src[24])
        {
          free(*__src);
        }

        v14 = v45[0];
      }

      if (v14 != &v45[3])
      {
        free(v14);
      }
    }

    if (a3)
    {
      v23 = -1073741824;
    }

    else
    {
      v23 = 0x40000000;
    }

    *(v6 + 32) = *(v6 + 32) & 0x3FFFFFFF | v23;
    *__src = &__src[16];
    *&__src[8] = 0x600000000;
    memset(&v45[1], 0, 28);
    v45[0] = &unk_1F5AF5B20;
    v46 = &v48;
    v47 = 0;
    v48 = a1;
    v49 = a3;
    v50 = __src;
    v51 = 0;
    v53 = 0;
    v57 = 0;
    v58 = 1;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v52 = &unk_1F5B3FC80;
    v24 = *a2;
    v25 = **a2;
    if (v25[3] == &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      if (v24[17] == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        v31 = a2;
      }

      else
      {
        v31 = 0;
      }

      v44 = v31;
      if (v31)
      {
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v44);
        (*(v45[0] + 4))(v45, RHS);
        v43[0] = mlir::DenseElementsAttr::getRawStringData(&v44);
        v43[1] = v33;
        if (*(*v43[0] + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || (mlir::ElementsAttr::isSplat(v43) & 1) == 0)
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v44);
          (*(v45[0] + 5))(v45, RawStringData);
        }

        if (mlir::MemRefType::getMemorySpace(&v44))
        {
          MemorySpace = mlir::MemRefType::getMemorySpace(&v44);
          (*(v45[0] + 5))(v45, MemorySpace);
        }
      }

      else
      {
        v43[0] = v45;
        mlir::AbstractAttribute::walkImmediateSubElements(v24);
      }
    }

    else
    {
      (*(*v25 + 7))(**a2, a2, v45);
    }

    v26 = v51;
    v27 = *(a1 + 5) + v42;
    v28 = (v27 + 40);
    if ((v27 + 40) == __src)
    {
LABEL_64:
      if (v26)
      {
        *(v27 + 32) = *(v27 + 32) & 0xC0000000 | (v26 + 1) & 0x3FFFFFFF;
        v45[0] = &unk_1F5AF5B20;
        llvm::raw_null_ostream::~raw_null_ostream(&v52);
        v38 = v46;
        if (v46 == &v48)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v45[0] = &unk_1F5AF5B20;
        llvm::raw_null_ostream::~raw_null_ostream(&v52);
        v38 = v46;
        if (v46 == &v48)
        {
LABEL_67:
          llvm::deallocate_buffer(v45[2], (8 * LODWORD(v45[4])));
        }
      }

      free(v38);
      goto LABEL_67;
    }

    v29 = *__src;
    if (*__src != &__src[16])
    {
      v30 = *(v27 + 40);
      if (v30 != (v27 + 56))
      {
        free(v30);
        v29 = *__src;
      }

      *(v27 + 40) = v29;
      *(v27 + 48) = *&__src[8];
      *__src = &__src[16];
      *&__src[12] = 0;
      goto LABEL_63;
    }

    v36 = *&__src[8];
    v37 = *(v27 + 48);
    if (v37 >= *&__src[8])
    {
      if (*&__src[8])
      {
        memmove(*v28, *__src, 8 * *&__src[8]);
      }

      goto LABEL_62;
    }

    if (*(v27 + 52) >= *&__src[8])
    {
      if (v37)
      {
        memmove(*v28, *__src, 8 * v37);
        goto LABEL_60;
      }
    }

    else
    {
      *(v27 + 48) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 40, v27 + 56, v36, 8);
    }

    v37 = 0;
LABEL_60:
    if (*&__src[8] != v37)
    {
      memcpy(*v28 + 8 * v37, (*__src + 8 * v37), 8 * (*&__src[8] - v37));
    }

LABEL_62:
    *(v27 + 48) = v36;
LABEL_63:
    *&__src[8] = 0;
    goto LABEL_64;
  }

  if ((a3 & 1) == 0)
  {
  }

  return *(v6 + 32) & 0x3FFFFFFF;
}

uint64_t llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>>::insert(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v13 = *a2;
  v14 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(a1, &v13, &v14, &v15);
  if (v16 != 1)
  {
    return *(a1 + 24) + 104 * *(v15 + 8);
  }

  v5 = *(a1 + 32);
  *(v15 + 8) = v5;
  v12 = v4;
  v13 = a2;
  if (v5 >= *(a1 + 36))
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v6 = (*(a1 + 24) + 104 * v5);
    *v6 = *a2;
    v7 = *v4;
    v8 = *(v4 + 12);
    v6[5] = v6 + 7;
    v9 = (v6 + 5);
    *(v9 - 20) = v8;
    *(v9 - 32) = v7;
    *(v9 + 8) = 0x600000000;
    if (*(a2 + 48))
    {
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v9, (a2 + 40));
    }

    v10 = *(a1 + 32) + 1;
    *(a1 + 32) = v10;
  }

  return *(a1 + 24) + 104 * v10 - 104;
}

_anonymous_namespace_::AliasInitializer *anonymous namespace::AliasInitializer::markAliasNonDeferrable(_anonymous_namespace_::AliasInitializer *this, uint64_t a2)
{
  v2 = *(this + 5) + 104 * a2;
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    *(v2 + 32) = v3 & 0x7FFFFFFF;
    v4 = *(v2 + 48);
    if (v4)
    {
      v5 = this;
      v6 = *(v2 + 40);
      v7 = 8 * v4;
      do
      {
        v8 = *v6++;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return this;
}

void anonymous namespace::DummyAliasDialectAsmPrinter::~DummyAliasDialectAsmPrinter(_anonymous_namespace_::DummyAliasDialectAsmPrinter *this)
{
  *this = &unk_1F5AF5B20;
  llvm::raw_null_ostream::~raw_null_ostream((this + 88));
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

{
  *this = &unk_1F5AF5B20;
  llvm::raw_null_ostream::~raw_null_ostream((this + 88));
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

void llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<void const*&&>,std::tuple<anonymous namespace::AliasInitializer::InProgressAliasInfo&&>>(uint64_t a1, void **a2, __int128 **a3)
{
  v25 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 104, &v25);
  v8 = v7;
  v9 = (v7 + 104 * *(a1 + 8));
  v10 = *a3;
  *v9 = **a2;
  v11 = *v10;
  v12 = *(v10 + 12);
  v9[5] = v9 + 7;
  v13 = (v9 + 5);
  *(v13 - 20) = v12;
  *(v13 - 32) = v11;
  *(v13 + 8) = 0x600000000;
  if (*(v10 + 10))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v13, v10 + 4);
  }

  v14 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = &v14[104 * v15];
    v17 = (v8 + 40);
    v18 = v14 + 40;
    do
    {
      v19 = v18 - 40;
      *(v17 - 5) = *(v18 - 5);
      v20 = *(v18 - 2);
      *(v17 - 20) = *(v18 - 20);
      *(v17 - 2) = v20;
      *v17 = v17 + 2;
      v17[1] = 0x600000000;
      if (*(v18 + 2))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v17, v18);
      }

      v17 += 13;
      v18 += 104;
    }

    while (v19 + 104 != v16);
    v14 = *a1;
    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = &v14[104 * v21 - 64];
      v23 = -104 * v21;
      do
      {
        if (v22 + 2 != *v22)
        {
          free(*v22);
        }

        v22 -= 13;
        v23 += 104;
      }

      while (v23);
      v14 = *a1;
    }
  }

  v24 = v25;
  if (v14 != v6)
  {
    free(v14);
  }

  *a1 = v8;
  ++*(a1 + 8);
  *(a1 + 12) = v24;
}

char *sanitizeIdentifier(char *a1, uint64_t a2, void *a3, void *__s, size_t __n, char a6)
{
  v10 = a1;
  v29[0] = a1;
  v29[1] = a2;
  v28[0] = __s;
  v28[1] = __n;
  v26[2] = a3;
  v27 = v28;
  v26[0] = v29;
  v26[1] = &v27;
  v11 = *a1;
  if ((v11 & 0x80000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x400) != 0)
  {
    goto LABEL_36;
  }

  if (v11 - 48 >= 0xA && ((v11 & 0xDF) - 65) >= 0x1Au)
  {
    if (__n)
    {
      v19 = a6;
      v20 = memchr(__s, v11, __n);
      a6 = v19;
      if (v20)
      {
        v21 = v20 - __s == -1;
      }

      else
      {
        v21 = 1;
      }

      v22 = !v21;
      if (v11 == 32 || (v22 & 1) != 0)
      {
        goto LABEL_7;
      }
    }

    else if (v11 == 32)
    {
      goto LABEL_7;
    }

LABEL_36:
    v23 = a3[1];
    if ((v23 + 1) > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, a3 + 3, v23 + 1, 1);
      v23 = a3[1];
    }

    *(*a3 + v23) = 95;
    ++a3[1];
LABEL_39:
    sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(v26);
    return *a3;
  }

LABEL_7:
  if ((a6 & 1) != 0 || (v13 = v10[a2 - 1], v13 < 0) || (*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x400) == 0)
  {
    if (a2)
    {
      v14 = 0;
      while (1)
      {
        v15 = v10[v14];
        if ((v15 - 48) >= 0xA && ((v10[v14] & 0xDF) - 65) >= 0x1Au)
        {
          if (!__n)
          {
            break;
          }

          v17 = memchr(__s, v15, __n);
          if (!v17 || v17 - __s == -1)
          {
            break;
          }
        }

        if (a2 == ++v14)
        {
          return v10;
        }
      }

      goto LABEL_39;
    }
  }

  else
  {
    sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(v26);
    v25 = a3[1];
    if ((v25 + 1) > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, a3 + 3, v25 + 1, 1);
      v25 = a3[1];
    }

    *(*a3 + v25) = 95;
    v10 = *a3;
    ++a3[1];
  }

  return v10;
}

uint64_t llvm::SmallVectorImpl<char>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = (a2 + 24);
    v3 = *a2;
    if (v3 == v4)
    {
      v6 = *(a2 + 8);
      v7 = *(result + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          v9 = result;
          memmove(*result, v3, *(a2 + 8));
          result = v9;
        }

        *(result + 8) = v6;
      }

      else
      {
        if (*(result + 16) >= v6)
        {
          v8 = result;
          if (v7)
          {
            memmove(*result, v3, v7);
          }
        }

        else
        {
          *(result + 8) = 0;
          v8 = result;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(result, (result + 24), v6, 1);
          v7 = 0;
        }

        v10 = *(a2 + 8);
        if (v10 != v7)
        {
          memcpy((*v8 + v7), (*a2 + v7), v10 - v7);
        }

        result = v8;
        v8[1] = v6;
      }
    }

    else
    {
      if (*result != result + 24)
      {
        v5 = result;
        free(*result);
        result = v5;
        v3 = *a2;
      }

      *result = v3;
      *(result + 8) = *(a2 + 8);
      *(a2 + 16) = 0;
      *a2 = v4;
    }

    *(a2 + 8) = 0;
  }

  return result;
}

void sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *(*a1 + 8);
  if (v2)
  {
    v4 = *v1;
    v5 = &(*v1)[v2];
    do
    {
      v8 = *v4;
      v9 = *v4;
      v10 = (v8 - 48) >= 0xA && ((*v4 & 0xDF) - 65) >= 0x1Au;
      if (v10 && ((v11 = **(a1 + 8), (v12 = *(v11 + 8)) == 0) || ((v13 = *v11, (v14 = memchr(*v11, *v4, v12)) != 0) ? (v15 = v14 - v13 == -1) : (v15 = 1), v15)))
      {
        v6 = *(a1 + 16);
        if (v9 != 32)
        {
          if (v9)
          {
            v17 = v8;
            v18 = 16;
            do
            {
              v32[v18--] = llvm::hexdigit(unsigned int,BOOL)::LUT[v17 & 0xF];
              v19 = v17 > 0xF;
              v17 >>= 4;
            }

            while (v19);
            v20 = v18 + 1;
            v21 = 16 - v18;
            if ((16 - v18) >= 0x7FFFFFFFFFFFFFF8)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }
          }

          else
          {
            v32[16] = 48;
            v20 = 16;
            v21 = 1;
          }

          if (v21 > 0x16)
          {
            if ((v21 | 7) == 0x17)
            {
              v23 = 25;
            }

            else
            {
              v23 = (v21 | 7) + 1;
            }

            p_dst = operator new(v23);
            v30 = v21;
            v31 = v23 | 0x8000000000000000;
            __dst = p_dst;
            if (v20 == 17)
            {
              goto LABEL_37;
            }
          }

          else
          {
            HIBYTE(v31) = v21;
            p_dst = &__dst;
            if (v20 == 17)
            {
              goto LABEL_37;
            }
          }

          memcpy(p_dst, &v32[v20], v21);
LABEL_37:
          *(p_dst + v21) = 0;
          v24 = SHIBYTE(v31);
          v25 = __dst;
          if (v31 >= 0)
          {
            v26 = &__dst;
          }

          else
          {
            v26 = __dst;
          }

          if (v31 >= 0)
          {
            v27 = SHIBYTE(v31);
          }

          else
          {
            v27 = v30;
          }

          v28 = v6[1];
          if (v6[2] < v28 + v27)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(v6, v6 + 3, v28 + v27, 1);
            v28 = v6[1];
          }

          if (v27)
          {
            memcpy((*v6 + v28), v26, v27);
            v28 = v6[1];
          }

          v6[1] = v28 + v27;
          if (v24 < 0)
          {
            operator delete(v25);
          }

          goto LABEL_7;
        }

        v16 = v6[1];
        if ((v16 + 1) > v6[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 16), v6 + 3, v16 + 1, 1);
          v16 = v6[1];
        }

        *(*v6 + v16) = 95;
      }

      else
      {
        v6 = *(a1 + 16);
        v7 = v6[1];
        if ((v7 + 1) > v6[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 16), v6 + 3, v7 + 1, 1);
          v7 = v6[1];
        }

        *(*v6 + v7) = v9;
      }

      ++v6[1];
LABEL_7:
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1DFB62684()
{

  operator delete(v0);
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printType(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), v5 + 16, v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAttribute(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), v5 + 16, v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAttributeWithoutType(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), v5 + 16, v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

uint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAlias(uint64_t a1)
{
  (*(*a1 + 40))(a1);
  return 1;
}

{
  (*(*a1 + 32))(a1);
  return 1;
}

uint64_t anonymous namespace::DummyAliasDialectAsmPrinter::pushCyclicPrinting(_anonymous_namespace_::DummyAliasDialectAsmPrinter *this, const void *a2)
{
  v7 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 16, &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(this + 12);
    if (v5 >= *(this + 13))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(this + 40, this + 56, v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(this + 12);
    }

    *(*(this + 5) + 8 * v5) = v4;
    ++*(this + 12);
  }

  return result;
}

int32x2_t *anonymous namespace::DummyAliasDialectAsmPrinter::popCyclicPrinting(int32x2_t *this)
{
  v1 = this[4].i32[0];
  if (v1)
  {
    v2 = this[2];
    v3 = this[6].u32[0];
    v4 = *(*&this[5] + 8 * v3 - 8);
    v5 = v1 - 1;
    v6 = ((v4 >> 4) ^ (v4 >> 9)) & (v1 - 1);
    v7 = *(*&v2 + 8 * v6);
    if (v4 == v7)
    {
LABEL_3:
      *(*&v2 + 8 * v6) = -8192;
      this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & v5;
        v7 = *(*&v2 + 8 * v6);
        if (v4 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    this[6].i32[0] = v3 - 1;
  }

  else
  {
    --this[6].i32[0];
  }

  return this;
}

uint64_t anonymous namespace::AliasInitializer::visit(_anonymous_namespace_::AliasInitializer *a1, void **a2, int a3, char a4)
{
  v98[6] = *MEMORY[0x1E69E9840];
  v95[0] = 0;
  v95[16] = 0;
  *&v95[24] = 0;
  v96 = v98;
  v97 = 0x600000000;
  v81[0] = a2;
  *&v81[1] = *v95;
  *(&v81[2] + 4) = *&v95[12];
  v82 = &v84;
  v83 = 0x600000000;
  v10 = v9;
  if (v82 != &v84)
  {
    free(v82);
  }

  if (v96 != v98)
  {
    free(v96);
  }

  if (v10)
  {
    v72 = v8 - *(a1 + 5);
    v71 = a4;
    v81[0] = &v81[3];
    *&v81[1] = xmmword_1E096E640;
    v12 = *(*a1 + 32);
    v11 = *(*a1 + 40);
    if (v12 != v11)
    {
      do
      {
        while (1)
        {
          v13 = (*(**v12 + 16))(*v12, a2, a1 + 14);
          if (v13)
          {
            break;
          }

          if (++v12 == v11)
          {
            goto LABEL_15;
          }
        }

        v14 = v13;
        llvm::SmallVectorImpl<char>::operator=(v81, a1 + 56);
        ++v12;
      }

      while (v14 != 2 && v12 != v11);
LABEL_15:
      v16 = v81[0];
      if (v81[1])
      {
        *v95 = &v95[24];
        *&v95[8] = xmmword_1E0971D80;
        v17 = sanitizeIdentifier(v81[0], v81[1], v95, "$_-", 3uLL, 0);
        v19 = v18;
        if (v18)
        {
          v20 = v17;
          v21 = *(a1 + 1);
          v21[10] = v21[10] + v18;
          v22 = *v21;
          v23 = *v21 + v18;
          if (*v21)
          {
            v24 = v23 > v21[1];
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            v41 = v20;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v21, v18, v18, 0);
            v20 = v41;
            v22 = Slow;
          }

          else
          {
            *v21 = v23;
          }

          memmove(v22, v20, v19);
        }

        else
        {
          v22 = 0;
        }

        *(v8 + 8) = v22;
        *(v8 + 16) = v19;
        *(v8 + 24) = 1;
        *(v8 + 32) = 1;
        *(v8 + 48) = 0;
        if (*v95 != &v95[24])
        {
          free(*v95);
        }

        v16 = v81[0];
      }

      if (v16 != &v81[3])
      {
        free(v16);
      }
    }

    if (a3)
    {
      v25 = 0x80000000;
    }

    else
    {
      v25 = 0;
    }

    *(v8 + 32) = v25 & 0xC0000000 | *(v8 + 32) & 0x3FFFFFFF;
    *v95 = &v95[16];
    *&v95[8] = 0x600000000;
    memset(&v81[1], 0, 28);
    v81[0] = &unk_1F5AF5B20;
    v82 = &v84;
    v83 = 0;
    v84 = a1;
    v85 = a3;
    v86 = v95;
    v87 = 0;
    v89 = 0;
    v93 = 0;
    v94 = 1;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v88 = &unk_1F5B3FC80;
    v26 = **a2;
    if (v26[3] != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      (*(*v26 + 5))(v26, a2, v81);
      goto LABEL_37;
    }

    v29 = (*a2)[17];
    if (v29 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_54;
    }

    {
      if (v29 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
      {
        v30 = a2;
      }

      else
      {
        v30 = 0;
      }

      v73[0] = v30;
      if (v30)
      {
LABEL_52:
        Value = mlir::AffineMapAttr::getValue(v73);
        goto LABEL_53;
      }
    }

    else
    {
      if (v29 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
      {
        v43 = a2;
      }

      else
      {
        v43 = 0;
      }

      v73[0] = v43;
      if (v43)
      {
        goto LABEL_52;
      }
    }

    v44 = (*a2)[17];
    if (v44 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v45 = a2;
    }

    else
    {
      v45 = 0;
    }

    v80 = v45;
    if (v45)
    {
      v46 = mlir::ArrayAttr::getValue(&v80);
      if (v47)
      {
        v48 = v46;
        v49 = (v46 + 16 * v47);
        do
        {
          CallableRegion = mlir::CallGraphNode::getCallableRegion(v48);
          (*(v81[0] + 5))(v81, CallableRegion);
          (*(v81[0] + 5))(v81, *(v48 + 1));
          v48 = (v48 + 16);
        }

        while (v48 != v49);
      }

      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v51 = a2;
    }

    else
    {
      v51 = 0;
    }

    v79 = v51;
    if (v51)
    {
      v52 = mlir::ArrayAttr::getValue(&v79);
      if (v53)
      {
        v54 = v52;
        v55 = 8 * v53;
        do
        {
          v56 = *v54++;
          (*(v81[0] + 5))(v81, v56);
          v55 -= 8;
        }

        while (v55);
      }

      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v57 = a2;
    }

    else
    {
      v57 = 0;
    }

    v78 = v57;
    if (v57)
    {
      v58 = mlir::AffineMapAttr::getValue(&v78);
      (*(v81[0] + 4))(v81, v58);
      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
    {
      v59 = a2;
    }

    else
    {
      v59 = 0;
    }

    v77 = v59;
    if (v59)
    {
      Value = mlir::AffineBinaryOpExpr::getRHS(&v77);
    }

    else
    {
      if (v44 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
      {
        v60 = a2;
      }

      else
      {
        v60 = 0;
      }

      v76 = v60;
      if (!v60)
      {
        if (v44 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
        {
          v61 = a2;
        }

        else
        {
          v61 = 0;
        }

        v75 = v61;
        if (v61)
        {
          v62 = mlir::AffineMapAttr::getValue(&v75);
          (*(v81[0] + 5))(v81, v62);
          LHS = mlir::AffineBinaryOpExpr::getLHS(&v75);
          (*(v81[0] + 5))(v81, LHS);
        }

        else
        {
          if (v44 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
          {
            v64 = a2;
          }

          else
          {
            v64 = 0;
          }

          v74 = v64;
          if (v64)
          {
            RHS = mlir::AffineBinaryOpExpr::getRHS(&v74);
            if (RHS)
            {
              (*(v81[0] + 5))(v81, RHS);
            }

            v66 = mlir::ArrayAttr::getValue(&v74);
            if (v67)
            {
              v68 = v66;
              v69 = 8 * v67;
              do
              {
                v70 = *v68++;
                (*(v81[0] + 5))(v81, v70);
                v69 -= 8;
              }

              while (v69);
            }
          }
        }

        goto LABEL_37;
      }

      if (*(*mlir::AffineBinaryOpExpr::getLHS(&v76) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
      {
LABEL_37:
        if ((v71 & 1) == 0)
        {
          v73[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
          v73[1] = v27;
          if (v73[0])
          {
            CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v73);
            if (*(*CallableForCallee + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {
              (*(v81[0] + 4))(v81, CallableForCallee);
            }
          }
        }

LABEL_54:
        v32 = v87;
        v33 = *(a1 + 5) + v72;
        v34 = (v33 + 40);
        if ((v33 + 40) == v95)
        {
          goto LABEL_71;
        }

        v35 = *v95;
        if (*v95 != &v95[16])
        {
          v36 = *(v33 + 40);
          if (v36 != (v33 + 56))
          {
            free(v36);
            v35 = *v95;
          }

          *(v33 + 40) = v35;
          *(v33 + 48) = *&v95[8];
          *v95 = &v95[16];
          *&v95[12] = 0;
          goto LABEL_70;
        }

        v37 = *&v95[8];
        v38 = *(v33 + 48);
        if (v38 >= *&v95[8])
        {
          if (*&v95[8])
          {
            memmove(*v34, *v95, 8 * *&v95[8]);
          }

          goto LABEL_69;
        }

        if (*(v33 + 52) >= *&v95[8])
        {
          if (v38)
          {
            memmove(*v34, *v95, 8 * v38);
            goto LABEL_67;
          }
        }

        else
        {
          *(v33 + 48) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v33 + 40, v33 + 56, v37, 8);
        }

        v38 = 0;
LABEL_67:
        v39 = *&v95[8] - v38;
        if (v39)
        {
          memcpy(*v34 + 8 * v38, (*v95 + 8 * v38), 8 * v39);
        }

LABEL_69:
        *(v33 + 48) = v37;
LABEL_70:
        *&v95[8] = 0;
LABEL_71:
        if (v32)
        {
          *(v33 + 32) = *(v33 + 32) & 0xC0000000 | (v32 + 1) & 0x3FFFFFFF;
        }

        v81[0] = &unk_1F5AF5B20;
        llvm::raw_null_ostream::~raw_null_ostream(&v88);
        if (v82 != &v84)
        {
          free(v82);
        }

        llvm::deallocate_buffer(v81[2], (8 * LODWORD(v81[4])));
      }

      Value = mlir::AffineBinaryOpExpr::getLHS(&v76);
    }

LABEL_53:
    (*(v81[0] + 5))(v81, Value);
    goto LABEL_37;
  }

  if ((a3 & 1) == 0)
  {
  }

  return *(v8 + 32) & 0x3FFFFFFF;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplENS1_4TypeEEUlT_E_EEvlS2_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 56))();
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplES2_EUlT_E_EEvlS2_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 64))();
  }

  return result;
}

mlir::Block *anonymous namespace::DummyAliasOperationPrinter::print(_anonymous_namespace_::AliasInitializer **this, mlir::Block *a2, int a3, char a4)
{
  if (a3)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
    while (v7 != v8)
    {
      v9 = *v7;
      (*(*this + 4))(this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(this[2] + 40))
      {
      }

      ++v7;
    }
  }

  v11 = (a2 + 32);
  result = *(a2 + 4);
  if (result == (a2 + 32))
  {
    v13 = *(a2 + 5);
  }

  else
  {
    v12 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, a2);
    {
      v15 = v12;
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
      v12 = v15;
    }

    result = (*(**(v12 + 48) + 32))(*(v12 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    v13 = *(a2 + 5);
    if (result && (a4 & 1) == 0)
    {
      v11 = *v11;
    }
  }

  while (v13 != v11)
  {
    v14 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v13, a2);
    result = (*(*this + 26))(this, v14);
    v13 = v13[1];
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v81[6] = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    return;
  }

  v6 = a1;
  if (a3 != 2)
  {
    v14 = a3;
    if (a3 > 0)
    {
      v16 = a3 >> 1;
      v17 = (a1 + 104 * (a3 >> 1));
      v18 = a3 - (a3 >> 1);
      v19 = a3 >> 1;
      if (v14 > a5)
      {

        return;
      }

      v54 = a4 + 104 * v16;
      v55 = a4 + 104 * v14;
      v56 = v54;
      v57 = a4;
      while (1)
      {
        if (v56 == v55)
        {
          if (v57 != v54)
          {
            v67 = 0;
            do
            {
              v68 = v6 + v67;
              v69 = v57 + v67;
              *v68 = *(v57 + v67);
              v70 = *(v57 + v67 + 8);
              *(v68 + 20) = *(v57 + v67 + 20);
              *(v68 + 8) = v70;
              llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + v67 + 40, (v57 + v67 + 40));
              v67 += 104;
            }

            while (v69 + 104 != v54);
          }

LABEL_132:
          if (a4)
          {
            v75 = (a4 + 56);
            do
            {
              v76 = *(v75 - 2);
              if (v75 != v76)
              {
                free(v76);
              }

              v75 += 13;
              --v14;
            }

            while (v14);
          }

          return;
        }

        v59 = *(v56 + 32);
        v60 = *(v57 + 32);
        if ((v59 & 0x3FFFFFFF) != (v60 & 0x3FFFFFFF))
        {
          if ((v59 & 0x3FFFFFFFu) >= (v60 & 0x3FFFFFFF))
          {
            goto LABEL_101;
          }

          goto LABEL_117;
        }

        v61 = v59 & 0x40000000;
        if (((v60 >> 30) & 1) != v61 >> 30)
        {
          break;
        }

        if (*(v57 + 24) != 1)
        {
          goto LABEL_101;
        }

        if (*(v56 + 24) == 1)
        {
          v62 = *(v56 + 16);
          v63 = *(v57 + 16);
          if (v63 >= v62)
          {
            v64 = *(v56 + 16);
          }

          else
          {
            v64 = *(v57 + 16);
          }

          if (v64 && (v65 = memcmp(*(v56 + 8), *(v57 + 8), v64)) != 0)
          {
            if (v65 < 0)
            {
              goto LABEL_117;
            }
          }

          else if (v62 < v63)
          {
            goto LABEL_117;
          }

LABEL_101:
          *v6 = *v57;
          v58 = *(v57 + 8);
          *(v6 + 20) = *(v57 + 20);
          *(v6 + 8) = v58;
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + 40, (v57 + 40));
          v57 += 104;
          v6 += 104;
          if (v57 == v54)
          {
            goto LABEL_129;
          }
        }

        else
        {
LABEL_117:
          *v6 = *v56;
          v66 = *(v56 + 8);
          *(v6 + 20) = *(v56 + 20);
          *(v6 + 8) = v66;
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + 40, (v56 + 40));
          v56 += 104;
          v6 += 104;
          if (v57 == v54)
          {
LABEL_129:
            if (v56 != v55)
            {
              v71 = 0;
              do
              {
                v72 = v56 + v71;
                v73 = v6 + v71;
                *v73 = *(v56 + v71);
                v74 = *(v56 + v71 + 8);
                *(v73 + 20) = *(v56 + v71 + 20);
                *(v73 + 8) = v74;
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + v71 + 40, (v56 + v71 + 40));
                v71 += 104;
              }

              while (v72 + 104 != v55);
            }

            goto LABEL_132;
          }
        }
      }

      if (!v61)
      {
        goto LABEL_101;
      }

      goto LABEL_117;
    }

    if (a1 == a2)
    {
      return;
    }

    v21 = (a1 + 104);
    if ((a1 + 104) == a2)
    {
      return;
    }

    v22 = 0;
    v23 = a1;
LABEL_26:
    v24 = v23;
    v23 = v21;
    v25 = *(v24 + 34);
    v26 = *(v24 + 8);
    if ((v25 & 0x3FFFFFFF) == (v26 & 0x3FFFFFFF))
    {
      v27 = v25 & 0x40000000;
      if (((v26 >> 30) & 1) == v27 >> 30)
      {
        if (*(v24 + 24) != 1)
        {
          goto LABEL_25;
        }

        if (*(v24 + 128) == 1)
        {
          v28 = v24[15];
          v29 = v24[2];
          if (v29 >= v28)
          {
            v30 = v24[15];
          }

          else
          {
            v30 = v24[2];
          }

          if (v30 && (v31 = memcmp(v24[14], v24[1], v30)) != 0)
          {
            if ((v31 & 0x80000000) == 0)
            {
              goto LABEL_25;
            }
          }

          else if (v28 >= v29)
          {
            goto LABEL_25;
          }
        }
      }

      else if (!v27)
      {
        goto LABEL_25;
      }
    }

    else if ((v25 & 0x3FFFFFFFu) >= (v26 & 0x3FFFFFFF))
    {
      goto LABEL_25;
    }

    v32 = *v23;
    *__s1 = *(v24 + 7);
    *&__s1[12] = *(v24 + 124);
    v77 = v32;
    __src = v81;
    v80 = 0x600000000;
    if (*(v24 + 38))
    {
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&__src, v24 + 18);
    }

    for (i = v22; ; i -= 104)
    {
      v34 = v6 + i;
      *(v34 + 104) = *(v6 + i);
      *(v34 + 112) = *(v6 + i + 8);
      *(v34 + 124) = *(v6 + i + 20);
      v35 = *(v6 + i + 40);
      v36 = v6 + i + 56;
      if (v36 == v35)
      {
        break;
      }

      v37 = *(v34 + 144);
      if ((v34 + 160) != v37)
      {
        free(v37);
        v35 = *(v34 + 40);
      }

      v38 = v6 + i;
      *(v34 + 144) = v35;
      *(v38 + 152) = *(v6 + i + 48);
      *(v34 + 40) = v36;
      *(v38 + 52) = 0;
      *(v24 + 12) = 0;
      if (!i)
      {
LABEL_78:
        v48 = v6;
LABEL_79:
        v49 = __src;
        *v48 = v77;
        v50 = v6 + i;
        *(v50 + 8) = *__s1;
        *(v50 + 20) = *&__s1[12];
        if (v48 == &v77)
        {
          goto LABEL_98;
        }

        if (v49 == v81)
        {
          v52 = v80;
          v53 = *(v48 + 48);
          if (v53 >= v80)
          {
            if (v80)
            {
              memmove(*(v50 + 40), v49, 8 * v80);
            }
          }

          else
          {
            if (*(v48 + 52) < v80)
            {
              *(v48 + 48) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v50 + 40, v48 + 56, v52, 8);
              goto LABEL_93;
            }

            if (v53)
            {
              memmove(*(v50 + 40), v49, 8 * v53);
            }

            else
            {
LABEL_93:
              v53 = 0;
            }

            if (v80 != v53)
            {
              memcpy((*(v50 + 40) + 8 * v53), __src + 8 * v53, 8 * (v80 - v53));
            }
          }

          *(v48 + 48) = v52;
          goto LABEL_97;
        }

        v51 = *(v50 + 40);
        if (v51 != (v48 + 56))
        {
          free(v51);
          v49 = __src;
        }

        *(v50 + 40) = v49;
        *(v48 + 48) = v80;
        __src = v81;
        HIDWORD(v80) = 0;
LABEL_97:
        LODWORD(v80) = 0;
        v49 = __src;
LABEL_98:
        if (v49 != v81)
        {
          free(v49);
        }

LABEL_25:
        v21 = v23 + 13;
        v22 += 104;
        if (v23 + 13 == a2)
        {
          return;
        }

        goto LABEL_26;
      }

LABEL_60:
      v43 = *(v6 + i - 72);
      if ((*&__s1[24] & 0x3FFFFFFF) == (v43 & 0x3FFFFFFF))
      {
        if (((v43 >> 30) & 1) == (*&__s1[24] & 0x40000000u) >> 30)
        {
          if (*(v6 + i - 80) != 1)
          {
            goto LABEL_77;
          }

          if (__s1[16] == 1)
          {
            v44 = *&__s1[8];
            v45 = *(v6 + i - 88);
            if (v45 >= *&__s1[8])
            {
              v46 = *&__s1[8];
            }

            else
            {
              v46 = *(v6 + i - 88);
            }

            if (v46 && (v47 = memcmp(*__s1, *(v6 + i - 96), v46)) != 0)
            {
              if ((v47 & 0x80000000) == 0)
              {
                goto LABEL_77;
              }
            }

            else if (v44 >= v45)
            {
LABEL_77:
              v48 = v6 + i;
              goto LABEL_79;
            }
          }
        }

        else if ((*&__s1[24] & 0x40000000) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((*&__s1[24] & 0x3FFFFFFFu) >= (v43 & 0x3FFFFFFF))
      {
        goto LABEL_77;
      }

      v24 -= 13;
    }

    v40 = (v34 + 48);
    v39 = *(v34 + 48);
    v41 = *(v34 + 152);
    if (v41 >= v39)
    {
      if (v39)
      {
        memmove(*(v34 + 144), v35, 8 * v39);
      }
    }

    else
    {
      if (*(v6 + i + 156) < v39)
      {
        *(v34 + 152) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 144, v6 + i + 160, v39, 8);
        v41 = 0;
        v42 = *v40;
        if (!*v40)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (v41)
      {
        memmove(*(v34 + 144), v35, 8 * v41);
        v42 = *v40 - v41;
        if (!v42)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      v41 = 0;
      v42 = *v40;
      if (*v40)
      {
LABEL_58:
        memcpy((*(v34 + 144) + 8 * v41), (*(v34 + 40) + 8 * v41), 8 * v42);
      }
    }

LABEL_59:
    *(v34 + 152) = v39;
    *v40 = 0;
    if (!i)
    {
      goto LABEL_78;
    }

    goto LABEL_60;
  }

  v7 = *(a2 - 18);
  v8 = *(a1 + 32);
  if ((v7 & 0x3FFFFFFF) == (v8 & 0x3FFFFFFF))
  {
    v9 = v7 & 0x40000000;
    if (((v8 >> 30) & 1) == v9 >> 30)
    {
      if (*(a1 + 24) != 1)
      {
        return;
      }

      if (*(a2 - 80) == 1)
      {
        v10 = *(a2 - 11);
        v11 = *(a1 + 16);
        if (v11 >= v10)
        {
          v12 = *(a2 - 11);
        }

        else
        {
          v12 = *(a1 + 16);
        }

        if (v12 && (v13 = memcmp(*(a2 - 12), *(a1 + 8), v12)) != 0)
        {
          if ((v13 & 0x80000000) == 0)
          {
            return;
          }
        }

        else if (v10 >= v11)
        {
          return;
        }
      }
    }

    else if (!v9)
    {
      return;
    }
  }

  else if ((v7 & 0x3FFFFFFFu) >= (v8 & 0x3FFFFFFF))
  {
    return;
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo> *&,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo> *&>(uint64_t *a1, uint64_t *a2)
{
  v15[7] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = (a2 + 1);
  v12[0] = *(a1 + 1);
  *(v12 + 12) = *(a1 + 20);
  __src = v15;
  v14 = 0x600000000;
  if (*(a1 + 12))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&__src, a1 + 5);
  }

  v6 = *v5;
  *(a1 + 20) = *(v5 + 12);
  *(a1 + 1) = v6;
  llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a1 + 5), a2 + 5);
  *v5 = v12[0];
  *(v5 + 12) = *(v12 + 12);
  v7 = __src;
  if (v12 != v5)
  {
    if (__src != v15)
    {
      v8 = a2[5];
      if (v8 != a2 + 7)
      {
        free(v8);
        v7 = __src;
      }

      a2[5] = v7;
      a2[6] = v14;
      __src = v15;
      HIDWORD(v14) = 0;
      goto LABEL_18;
    }

    v9 = v14;
    v10 = *(a2 + 12);
    if (v10 >= v14)
    {
      if (v14)
      {
        memmove(a2[5], __src, 8 * v14);
      }

      goto LABEL_17;
    }

    if (*(a2 + 13) >= v14)
    {
      if (v10)
      {
        memmove(a2[5], __src, 8 * v10);
        v11 = v14 - v10;
        if (v14 == v10)
        {
LABEL_17:
          *(a2 + 12) = v9;
LABEL_18:
          LODWORD(v14) = 0;
          v7 = __src;
          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
        v11 = v14;
        if (!v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *(a2 + 12) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod((a2 + 5), (a2 + 7), v9, 8);
      v10 = 0;
      v11 = v14;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    memcpy((a2[5] + 8 * v10), __src + 8 * v10, 8 * v11);
    goto LABEL_17;
  }

LABEL_19:
  if (v7 != v15)
  {
    free(v7);
  }
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      *a4 = *result;
      v7 = *(result + 8);
      v8 = *(result + 20);
      *(a4 + 40) = a4 + 56;
      v9 = a4 + 40;
      *(a4 + 20) = v8;
      *(a4 + 8) = v7;
      *(a4 + 48) = 0x600000000;
      if (!*(result + 48))
      {
        return result;
      }

      goto LABEL_87;
    }

    if (a3 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      *a4 = *result;
      v18 = *(result + 8);
      v19 = *(result + 20);
      *(a4 + 40) = a4 + 56;
      result = a4 + 40;
      *(a4 + 20) = v19;
      *(a4 + 8) = v18;
      *(a4 + 48) = 0x600000000;
      if (*(v6 + 12))
      {
        result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(result, v6 + 5);
      }

      v20 = v6 + 13;
      if (v6 + 13 == v5)
      {
        return result;
      }

      v21 = 0;
      v22 = a4;
      v83 = v5;
LABEL_28:
      v24 = v20;
      v26 = *(v6 + 34);
      v27 = *(v22 + 32);
      if ((v26 & 0x3FFFFFFF) == (v27 & 0x3FFFFFFF))
      {
        v28 = v26 & 0x40000000;
        if (((v27 >> 30) & 1) == v28 >> 30)
        {
          if (*(v22 + 24) != 1)
          {
            goto LABEL_78;
          }

          if (*(v6 + 128) == 1)
          {
            v29 = v6[15];
            v30 = *(v22 + 16);
            if (v30 >= v29)
            {
              v31 = v6[15];
            }

            else
            {
              v31 = *(v22 + 16);
            }

            if (v31 && (v32 = memcmp(v6[14], *(v22 + 8), v31)) != 0)
            {
              if ((v32 & 0x80000000) == 0)
              {
                goto LABEL_78;
              }
            }

            else if (v29 >= v30)
            {
LABEL_78:
              *(v22 + 104) = *v24;
              v52 = *(v6 + 7);
              v53 = *(v6 + 124);
              *(v22 + 144) = v22 + 160;
              result = v22 + 144;
              *(v22 + 124) = v53;
              *(v22 + 112) = v52;
              *(v22 + 152) = 0x600000000;
              if (*(v6 + 38))
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }
          }
        }

        else if (!v28)
        {
          goto LABEL_78;
        }
      }

      else if ((v26 & 0x3FFFFFFFu) >= (v27 & 0x3FFFFFFF))
      {
        goto LABEL_78;
      }

      *(v22 + 104) = *v22;
      *(v22 + 112) = *(v22 + 8);
      *(v22 + 124) = *(v22 + 20);
      *(v22 + 144) = v22 + 160;
      *(v22 + 152) = 0x600000000;
      if (*(v22 + 48))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v22 + 144, (v22 + 40));
      }

      v23 = a4;
      if (v22 == a4)
      {
        goto LABEL_25;
      }

      v84 = v24;
      v33 = v21;
      v23 = v22;
      while (1)
      {
        while (1)
        {
          v34 = (a4 + v33 - 96);
          v35 = *(v6 + 34);
          v36 = *(a4 + v33 - 72);
          if ((v35 & 0x3FFFFFFF) == (v36 & 0x3FFFFFFF))
          {
            v37 = v35 & 0x40000000;
            if (((v36 >> 30) & 1) == v37 >> 30)
            {
              if (*(a4 + v33 - 80) != 1)
              {
                goto LABEL_24;
              }

              if (*(v6 + 128) == 1)
              {
                v38 = v6[15];
                v39 = *(a4 + v33 - 88);
                if (v39 >= v38)
                {
                  v40 = v6[15];
                }

                else
                {
                  v40 = *(a4 + v33 - 88);
                }

                if (v40 && (v41 = memcmp(v6[14], *v34, v40)) != 0)
                {
                  if ((v41 & 0x80000000) == 0)
                  {
                    goto LABEL_24;
                  }
                }

                else if (v38 >= v39)
                {
                  v23 = a4 + v33;
LABEL_24:
                  v24 = v84;
LABEL_25:
                  *v23 = *v24;
                  v25 = *(v6 + 7);
                  *(v23 + 20) = *(v6 + 124);
                  *(v23 + 8) = v25;
                  result = v23 + 40;
                  v5 = v83;
LABEL_26:
                  result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(result, v6 + 18);
LABEL_27:
                  v22 += 104;
                  v20 = v24 + 13;
                  v21 += 104;
                  v6 = v24;
                  if (v24 + 13 == v5)
                  {
                    return result;
                  }

                  goto LABEL_28;
                }
              }
            }

            else if (!v37)
            {
              goto LABEL_24;
            }
          }

          else if ((v35 & 0x3FFFFFFFu) >= (v36 & 0x3FFFFFFF))
          {
            goto LABEL_24;
          }

          v42 = a4 + v33;
          *v42 = *(a4 + v33 - 104);
          *(v42 + 8) = *v34;
          *(v42 + 20) = *(a4 + v33 - 84);
          v43 = *(a4 + v33 - 64);
          v44 = a4 + v33 - 48;
          if (v44 == v43)
          {
            break;
          }

          v45 = *(v42 + 40);
          if ((v42 + 56) != v45)
          {
            free(v45);
            v43 = *(v42 - 64);
          }

          v46 = a4 + v33;
          *(v42 + 40) = v43;
          v47 = (v23 - 56);
          *(v46 + 48) = *(a4 + v33 - 56);
          *(v42 - 64) = v44;
          *(v46 - 52) = 0;
          v23 -= 104;
          *v47 = 0;
          v33 -= 104;
          if (!v33)
          {
LABEL_23:
            v23 = a4;
            goto LABEL_24;
          }
        }

        v48 = (v42 - 56);
        v49 = *(v42 - 56);
        v50 = *(v42 + 48);
        if (v50 >= v49)
        {
          if (v49)
          {
            memmove(*(v42 + 40), v43, 8 * v49);
          }

          goto LABEL_44;
        }

        if (*(a4 + v33 + 52) >= v49)
        {
          if (v50)
          {
            memmove(*(v42 + 40), v43, 8 * v50);
            v51 = *v48 - v50;
            if (v51)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v50 = 0;
            v51 = *v48;
            if (*v48)
            {
LABEL_76:
              memcpy((*(v42 + 40) + 8 * v50), (*(v42 - 64) + 8 * v50), 8 * v51);
            }
          }
        }

        else
        {
          *(v42 + 48) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v42 + 40, a4 + v33 + 56, v49, 8);
          v50 = 0;
          v51 = *v48;
          if (*v48)
          {
            goto LABEL_76;
          }
        }

LABEL_44:
        *(v42 + 48) = v49;
        v23 -= 104;
        *v48 = 0;
        v33 -= 104;
        if (!v33)
        {
          goto LABEL_23;
        }
      }
    }

    v59 = a3 >> 1;
    v60 = 104 * (a3 >> 1);
    v61 = result + v60;
    v63 = (a4 + 40);
    v64 = &v6[v60 / 8];
    while (1)
    {
      if (v64 == v5)
      {
        if (v6 != v61)
        {
          v73 = v6 + 5;
          do
          {
            v74 = v73 - 5;
            *(v63 - 5) = *(v73 - 5);
            v75 = *(v73 - 2);
            *(v63 - 20) = *(v73 - 20);
            *(v63 - 2) = v75;
            *v63 = v63 + 2;
            v63[1] = 0x600000000;
            if (*(v73 + 2))
            {
              result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v63, v73);
            }

            v63 += 13;
            v73 += 13;
          }

          while (v74 + 13 != v61);
        }

        return result;
      }

      v65 = *(v64 + 8);
      v66 = *(v6 + 8);
      if ((v65 & 0x3FFFFFFF) != (v66 & 0x3FFFFFFF))
      {
        break;
      }

      v67 = v65 & 0x40000000;
      if (((v66 >> 30) & 1) != v67 >> 30)
      {
        if (!v67)
        {
          goto LABEL_108;
        }

        goto LABEL_103;
      }

      if (*(v6 + 24) != 1)
      {
        goto LABEL_108;
      }

      if (*(v64 + 24) == 1)
      {
        v68 = v64[2];
        v69 = v6[2];
        if (v69 >= v68)
        {
          v70 = v64[2];
        }

        else
        {
          v70 = v6[2];
        }

        if (!v70 || (result = memcmp(v64[1], v6[1], v70), !result))
        {
          if (v68 >= v69)
          {
            goto LABEL_108;
          }

          goto LABEL_103;
        }

        if ((result & 0x80000000) != 0)
        {
          goto LABEL_103;
        }

LABEL_108:
        *(v63 - 5) = *v6;
        v72 = *(v6 + 1);
        *(v63 - 20) = *(v6 + 20);
        *(v63 - 2) = v72;
        *v63 = v63 + 2;
        v63[1] = 0x600000000;
        if (*(v6 + 12))
        {
          result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v63, v6 + 5);
        }

        v6 += 13;
        v63 += 13;
        if (v6 == v61)
        {
LABEL_125:
          if (v64 != v5)
          {
            v80 = v64 + 5;
            do
            {
              v81 = v80 - 5;
              *(v63 - 5) = *(v80 - 5);
              v82 = *(v80 - 2);
              *(v63 - 20) = *(v80 - 20);
              *(v63 - 2) = v82;
              *v63 = v63 + 2;
              v63[1] = 0x600000000;
              if (*(v80 + 2))
              {
                result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v63, v80);
              }

              v63 += 13;
              v80 += 13;
            }

            while (v81 + 13 != v5);
          }

          return result;
        }
      }

      else
      {
LABEL_103:
        *(v63 - 5) = *v64;
        v71 = *(v64 + 1);
        *(v63 - 20) = *(v64 + 20);
        *(v63 - 2) = v71;
        *v63 = v63 + 2;
        v63[1] = 0x600000000;
        if (*(v64 + 12))
        {
          result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v63, v64 + 5);
        }

        v64 += 13;
        v63 += 13;
        if (v6 == v61)
        {
          goto LABEL_125;
        }
      }
    }

    if ((v65 & 0x3FFFFFFFu) >= (v66 & 0x3FFFFFFF))
    {
      goto LABEL_108;
    }

    goto LABEL_103;
  }

  v10 = (a2 - 12);
  v11 = *(a2 - 18);
  v12 = *(result + 32);
  if ((v11 & 0x3FFFFFFF) != (v12 & 0x3FFFFFFF))
  {
    if ((v11 & 0x3FFFFFFFu) < (v12 & 0x3FFFFFFF))
    {
      goto LABEL_84;
    }

    goto LABEL_118;
  }

  v13 = v11 & 0x40000000;
  if (((v12 >> 30) & 1) != v13 >> 30)
  {
    if (v13)
    {
      goto LABEL_84;
    }

    goto LABEL_118;
  }

  if (*(result + 24) != 1)
  {
    goto LABEL_118;
  }

  if (*(a2 - 80) != 1)
  {
    goto LABEL_84;
  }

  v14 = *(a2 - 11);
  v15 = *(result + 16);
  if (v15 >= v14)
  {
    v16 = *(a2 - 11);
  }

  else
  {
    v16 = *(result + 16);
  }

  if (!v16 || (v17 = memcmp(*v10, *(result + 8), v16)) == 0)
  {
    if (v14 < v15)
    {
      goto LABEL_84;
    }

LABEL_118:
    *a4 = *v6;
    v76 = *(v6 + 1);
    v77 = *(v6 + 20);
    *(a4 + 40) = a4 + 56;
    result = a4 + 40;
    *(a4 + 20) = v77;
    *(a4 + 8) = v76;
    *(a4 + 48) = 0x600000000;
    if (*(v6 + 12))
    {
      result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(result, v6 + 5);
    }

    *(a4 + 104) = *(v5 - 13);
    v78 = *v10;
    v79 = *(v5 - 84);
    *(a4 + 144) = a4 + 160;
    v9 = a4 + 144;
    *(v9 - 20) = v79;
    *(v9 - 32) = v78;
    *(v9 + 8) = 0x600000000;
    if (*(v5 - 14))
    {
      v58 = (v5 - 8);
      goto LABEL_122;
    }

    return result;
  }

  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_84:
  *a4 = *(v5 - 13);
  v54 = *v10;
  v55 = *(v5 - 84);
  *(a4 + 40) = a4 + 56;
  result = a4 + 40;
  *(a4 + 20) = v55;
  *(a4 + 8) = v54;
  *(a4 + 48) = 0x600000000;
  if (*(v5 - 14))
  {
    result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(result, v5 - 8);
  }

  *(a4 + 104) = *v6;
  v56 = *(v6 + 1);
  v57 = *(v6 + 20);
  *(a4 + 144) = a4 + 160;
  v9 = a4 + 144;
  *(v9 - 20) = v57;
  *(v9 - 32) = v56;
  *(v9 + 8) = 0x600000000;
  if (*(v6 + 12))
  {
LABEL_87:
    v58 = (v6 + 5);
LABEL_122:

    return llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v9, v58);
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    v11 = *(a2 + 8);
    v12 = v11 & 0x3FFFFFFF;
    v13 = v11 & 0x40000000;
    v14 = (v11 >> 30) & 1;
    v15 = -a4;
    v136 = a5;
    while (1)
    {
      v17 = a1[v10 + 4];
      if (v12 != (v17 & 0x3FFFFFFF))
      {
        if (v12 < (v17 & 0x3FFFFFFF))
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      if (v14 == ((v17 >> 30) & 1))
      {
        break;
      }

      if (v13)
      {
        goto LABEL_22;
      }

LABEL_7:
      v10 += 13;
      v16 = __CFADD__(v15++, 1);
      if (v16)
      {
        return;
      }
    }

    if (LOBYTE(a1[v10 + 3]) != 1)
    {
      goto LABEL_7;
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_22;
    }

    v18 = a2[2];
    v19 = a1[v10 + 2];
    if (v19 >= v18)
    {
      v20 = a2[2];
    }

    else
    {
      v20 = a1[v10 + 2];
    }

    if (v20)
    {
      v21 = memcmp(a2[1], a1[v10 + 1], v20);
      a5 = v136;
      if (v21)
      {
        if (v21 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }
    }

    if (v18 >= v19)
    {
      goto LABEL_7;
    }

LABEL_22:
    v132 = &a1[v10];
    if (-v15 >= a5)
    {
      if (v15 == -1)
      {

        return;
      }

      v43 = -v15 / 2;
      if (a3 == a2)
      {
        v22 = 0;
LABEL_82:
        v23 = &a1[13 * v43 + v10];
        v58 = 0x4EC4EC4EC4EC4EC5 * (v22 >> 3);
        v59 = (a2 + v22);
        v60 = (a2 + v22);
        if (v23 == a2)
        {
          goto LABEL_133;
        }

LABEL_103:
        v60 = v23;
        if (v22)
        {
          v67 = v43;
          v60 = v23 + 13;
          v68 = v22 - 104;
          if (v22 != 104)
          {
            v69 = a2 + 13;
            do
            {
              if (v60 == a2)
              {
                a2 = v69;
              }

              v60 += 13;
              v69 += 13;
              v68 -= 104;
            }

            while (v68);
          }

          if (v60 != a2)
          {
            v70 = v60;
            v71 = a2;
            while (1)
            {
              a2 += 13;
              v72 = v70 + 13 == v71;
              if (a2 == v59)
              {
                if (v70 + 13 == v71)
                {
                  goto LABEL_132;
                }

                a2 = v71 + 13;
                v70 += 26;
                while (1)
                {
                  v72 = v70 == v71;
                  if (a2 != v59)
                  {
                    break;
                  }

                  v73 = v70 == v71;
                  v70 += 13;
                  if (v73)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                v70 += 13;
              }

              if (v72)
              {
                v71 = a2;
              }
            }
          }

          v60 = a2;
LABEL_132:
          a5 = v136;
          v43 = v67;
        }

        goto LABEL_133;
      }

      v44 = 0x4EC4EC4EC4EC4EC5 * (a3 - a2);
      v45 = &a1[13 * v43 + v10];
      v46 = *(v45 + 8);
      v47 = v46 & 0x3FFFFFFF;
      v48 = (v46 >> 30) & 1;
      if (v45[3])
      {
        v22 = 0;
        v49 = v45[2];
        __s1a = v45[1];
        v128 = v49;
        v130 = (v46 >> 30) & 1;
        while (1)
        {
          v50 = v44 >> 1;
          v51 = v22 + 104 * (v44 >> 1);
          v52 = a2 + v51;
          v53 = *(a2 + v51 + 32);
          if ((v53 & 0x3FFFFFFF) == v47)
          {
            v54 = v53 & 0x40000000;
            if (v48 == v54 >> 30)
            {
              if (v52[24] == 1)
              {
                v55 = *(v52 + 2);
                if (v49 >= v55)
                {
                  v56 = *(v52 + 2);
                }

                else
                {
                  v56 = v49;
                }

                if (v56 && (v57 = memcmp(*(v52 + 1), __s1a, v56), v49 = v128, v48 = v130, v43 = -v15 / 2, a5 = v136, v57))
                {
                  if ((v57 & 0x80000000) == 0)
                  {
                    goto LABEL_64;
                  }
                }

                else if (v55 >= v49)
                {
                  goto LABEL_64;
                }
              }
            }

            else if (!v54)
            {
              goto LABEL_64;
            }
          }

          else if ((v53 & 0x3FFFFFFFu) >= v47)
          {
            goto LABEL_64;
          }

          v22 = v51 + 104;
          v50 = v44 + ~v50;
LABEL_64:
          v44 = v50;
          if (!v50)
          {
            goto LABEL_82;
          }
        }
      }

      v22 = 0;
      while (2)
      {
        v74 = v44 >> 1;
        v75 = v22 + 104 * (v44 >> 1);
        v76 = *(a2 + v75 + 32);
        if ((v76 & 0x3FFFFFFF) == v47)
        {
          if ((v76 & 0x40000000) == 0 || ((v76 >> 30) & 1) == v48)
          {
LABEL_124:
            v44 = v74;
            if (!v74)
            {
              goto LABEL_82;
            }

            continue;
          }
        }

        else if ((v76 & 0x3FFFFFFF) >= v47)
        {
          goto LABEL_124;
        }

        break;
      }

      v22 = v75 + 104;
      v74 = v44 + ~v74;
      goto LABEL_124;
    }

    v131 = a5 / 2;
    v22 = 104 * (a5 / 2);
    v23 = &a1[v10];
    if (&a1[v10] != a2)
    {
      v24 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1 - v10 * 8) >> 3);
      v25 = a2 + v22;
      v26 = *(a2 + v22 + 32);
      v27 = v26 & 0x3FFFFFFF;
      v28 = v26 & 0x40000000;
      v29 = (v26 >> 30) & 1;
      if (*(a2 + v22 + 24))
      {
        v30 = *(v25 + 2);
        __s1 = *(v25 + 1);
        v127 = v30;
        v23 = &a1[v10];
        v129 = v29;
        if (!v28)
        {
          while (1)
          {
            v31 = v24 >> 1;
            v32 = &v23[13 * (v24 >> 1)];
            v33 = *(v32 + 8);
            if (v27 == (v33 & 0x3FFFFFFF))
            {
              if (v29 == ((v33 >> 30) & 1) && *(v32 + 24) == 1)
              {
                v34 = v32[2];
                if (v34 >= v30)
                {
                  v35 = v30;
                }

                else
                {
                  v35 = v32[2];
                }

                if (v35 && (v123 = v32[2], v36 = memcmp(__s1, v32[1], v35), v34 = v123, v30 = v127, v29 = v129, a5 = v136, v36))
                {
                  if (v36 < 0)
                  {
                    goto LABEL_28;
                  }
                }

                else if (v30 < v34)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (v27 < (v33 & 0x3FFFFFFF))
            {
              goto LABEL_28;
            }

            v23 = v32 + 13;
            v31 = v24 + ~v31;
LABEL_28:
            v24 = v31;
            if (!v31)
            {
              goto LABEL_102;
            }
          }
        }

        while (1)
        {
          v37 = v24 >> 1;
          v38 = &v23[13 * (v24 >> 1)];
          v39 = *(v38 + 8);
          if (v27 == (v39 & 0x3FFFFFFF))
          {
            if (v29 != ((v39 >> 30) & 1))
            {
              goto LABEL_44;
            }

            if (*(v38 + 24) == 1)
            {
              v40 = v38[2];
              if (v40 >= v30)
              {
                v41 = v30;
              }

              else
              {
                v41 = v38[2];
              }

              if (v41 && (v124 = v38[2], v42 = memcmp(__s1, v38[1], v41), v40 = v124, v30 = v127, v29 = v129, a5 = v136, v42))
              {
                if (v42 < 0)
                {
                  goto LABEL_44;
                }
              }

              else if (v30 < v40)
              {
                goto LABEL_44;
              }
            }
          }

          else if (v27 < (v39 & 0x3FFFFFFF))
          {
            goto LABEL_44;
          }

          v23 = v38 + 13;
          v37 = v24 + ~v37;
LABEL_44:
          v24 = v37;
          if (!v37)
          {
            goto LABEL_102;
          }
        }
      }

      v23 = &a1[v10];
      if (!v28)
      {
        while (1)
        {
          v61 = v24 >> 1;
          v62 = &v23[13 * (v24 >> 1)];
          v63 = *(v62 + 8);
          if (v27 == (v63 & 0x3FFFFFFF))
          {
            if (v29 == ((v63 >> 30) & 1) && (v62[3] & 1) != 0)
            {
              goto LABEL_87;
            }
          }

          else if (v27 < (v63 & 0x3FFFFFFF))
          {
            goto LABEL_87;
          }

          v23 = v62 + 13;
          v61 = v24 + ~v61;
LABEL_87:
          v24 = v61;
          if (!v61)
          {
            goto LABEL_102;
          }
        }
      }

      do
      {
        v64 = v24 >> 1;
        v65 = &v23[13 * (v24 >> 1)];
        v66 = *(v65 + 8);
        if (v27 == (v66 & 0x3FFFFFFF))
        {
          if (v29 != ((v66 >> 30) & 1) || (v65[3] & 1) != 0)
          {
            goto LABEL_95;
          }
        }

        else if (v27 < (v66 & 0x3FFFFFFF))
        {
          goto LABEL_95;
        }

        v23 = v65 + 13;
        v64 = v24 + ~v64;
LABEL_95:
        v24 = v64;
      }

      while (v64);
    }

LABEL_102:
    v43 = 0x4EC4EC4EC4EC4EC5 * ((v23 - a1 - v10 * 8) >> 3);
    v58 = v131;
    v59 = (a2 + v22);
    v60 = (a2 + v22);
    if (v23 != a2)
    {
      goto LABEL_103;
    }

LABEL_133:
    a4 = -(v43 + v15);
    v77 = a5 - v58;
    a1 = v132;
    if (v43 + v58 >= a5 - (v43 + v58) - v15)
    {
      v78 = v43;
      a4 = v78;
      a3 = v60;
      a5 = v58;
      a2 = v23;
      if (!v58)
      {
        return;
      }
    }

    else
    {
      a1 = v60;
      a5 = v77;
      a2 = v59;
      if (!v77)
      {
        return;
      }
    }
  }

  if (a4 > a5)
  {
    if (a2 == a3)
    {
      return;
    }

    v79 = 0;
    v80 = 0;
    v81 = a6;
    do
    {
      v82 = &a2[v79];
      *(a6 + v79 * 8) = a2[v79];
      v83 = *&a2[v79 + 1];
      v84 = *(&a2[v79 + 2] + 4);
      *(a6 + v79 * 8 + 40) = a6 + v79 * 8 + 56;
      v85 = a6 + v79 * 8 + 40;
      *(v85 - 20) = v84;
      *(v85 - 32) = v83;
      *(v85 + 8) = 0x600000000;
      if (LODWORD(a2[v79 + 6]))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v85, v82 + 5);
      }

      ++v80;
      v79 += 13;
    }

    while (v82 + 13 != a3);
    v91 = a3 - 13;
    v92 = a6 + v79 * 8;
    while (1)
    {
      if (a2 == a1)
      {
        while (v92 != v81)
        {
          v103 = *(v92 - 104);
          v92 -= 104;
          *v91 = v103;
          v104 = *(v92 + 8);
          *(v91 + 20) = *(v92 + 20);
          *(v91 + 1) = v104;
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v91 + 5), (v92 + 40));
          v91 -= 13;
        }

        goto LABEL_199;
      }

      v95 = (v92 - 96);
      v96 = *(v92 - 72);
      v97 = *(a2 - 18);
      if ((v96 & 0x3FFFFFFF) == (v97 & 0x3FFFFFFF))
      {
        v98 = v96 & 0x40000000;
        if (((v97 >> 30) & 1) == v98 >> 30)
        {
          if (*(a2 - 80) == 1)
          {
            if (*(v92 - 80) != 1)
            {
              goto LABEL_167;
            }

            v99 = *(v92 - 88);
            v100 = *(a2 - 11);
            if (v100 >= v99)
            {
              v101 = *(v92 - 88);
            }

            else
            {
              v101 = *(a2 - 11);
            }

            if (v101 && (v102 = memcmp(*v95, *(a2 - 12), v101)) != 0)
            {
              v81 = a6;
              if (v102 < 0)
              {
                goto LABEL_167;
              }
            }

            else
            {
              v16 = v99 >= v100;
              v81 = a6;
              if (!v16)
              {
LABEL_167:
                v95 = a2 - 12;
                v93 = a2;
                a2 -= 13;
                goto LABEL_151;
              }
            }
          }
        }

        else if (v98)
        {
          goto LABEL_167;
        }
      }

      else if ((v96 & 0x3FFFFFFFu) < (v97 & 0x3FFFFFFF))
      {
        goto LABEL_167;
      }

      v93 = v92;
      v92 -= 104;
LABEL_151:
      *v91 = *(v93 - 13);
      v94 = *v95;
      *(v91 + 20) = *(v95 + 12);
      *(v91 + 1) = v94;
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v91 + 5), v93 - 8);
      v91 -= 13;
      if (v92 == v81)
      {
        goto LABEL_199;
      }
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v86 = 0;
  v80 = 0;
  v81 = a6;
  do
  {
    v87 = &a1[v86];
    *(a6 + v86 * 8) = a1[v86];
    v88 = *&a1[v86 + 1];
    v89 = *(&a1[v86 + 2] + 4);
    *(a6 + v86 * 8 + 40) = a6 + v86 * 8 + 56;
    v90 = a6 + v86 * 8 + 40;
    *(v90 - 20) = v89;
    *(v90 - 32) = v88;
    *(v90 + 8) = 0x600000000;
    if (LODWORD(a1[v86 + 6]))
    {
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v90, v87 + 5);
    }

    ++v80;
    v86 += 13;
  }

  while (v87 + 13 != a2);
  v105 = a6 + v86 * 8;
  v106 = a6 + v86 * 8 - 104;
  v107 = a6;
  do
  {
    while (1)
    {
      if (a2 == a3)
      {
        v117 = 0;
        do
        {
          v118 = &a1[v117 / 8];
          v119 = v107 + v117;
          *v118 = *(v107 + v117);
          v120 = *(v107 + v117 + 8);
          *(v118 + 20) = *(v107 + v117 + 20);
          *(v118 + 1) = v120;
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&a1[v117 / 8 + 5], (v107 + v117 + 40));
          v117 += 104;
        }

        while (v106 != v119);
        goto LABEL_199;
      }

      v109 = *(a2 + 8);
      v110 = *(v107 + 32);
      if ((v109 & 0x3FFFFFFF) != (v110 & 0x3FFFFFFF))
      {
        break;
      }

      v111 = v109 & 0x40000000;
      if (((v110 >> 30) & 1) != v111 >> 30)
      {
        if (v111)
        {
          goto LABEL_190;
        }

        goto LABEL_174;
      }

      if (*(v107 + 24) != 1)
      {
        goto LABEL_174;
      }

      if (*(a2 + 24) != 1)
      {
        goto LABEL_190;
      }

      v112 = a2[2];
      v113 = *(v107 + 16);
      if (v113 >= v112)
      {
        v114 = a2[2];
      }

      else
      {
        v114 = *(v107 + 16);
      }

      if (!v114 || (v115 = memcmp(a2[1], *(v107 + 8), v114)) == 0)
      {
        if (v112 >= v113)
        {
          goto LABEL_174;
        }

        goto LABEL_190;
      }

      if (v115 < 0)
      {
        goto LABEL_190;
      }

LABEL_174:
      *a1 = *v107;
      v108 = *(v107 + 8);
      *(a1 + 20) = *(v107 + 20);
      *(a1 + 1) = v108;
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a1 + 5), (v107 + 40));
      v107 += 104;
      a1 += 13;
      if (v105 == v107)
      {
        goto LABEL_199;
      }
    }

    if ((v109 & 0x3FFFFFFFu) >= (v110 & 0x3FFFFFFF))
    {
      goto LABEL_174;
    }

LABEL_190:
    *a1 = *a2;
    v116 = *(a2 + 1);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 1) = v116;
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a1 + 5), a2 + 5);
    a2 += 13;
    a1 += 13;
  }

  while (v105 != v107);
LABEL_199:
  if (v81 && v80)
  {
    v121 = (a6 + 56);
    do
    {
      v122 = *(v121 - 2);
      if (v121 != v122)
      {
        free(v122);
      }

      v121 += 13;
      --v80;
    }

    while (v80);
  }
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[2] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

__n128 llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::SymbolAlias>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<void const*&&>,std::tuple<anonymous namespace::SymbolAlias&&>>(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *(a3 + 2);
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = &v12;
  if (v3 >= *(a1 + 12))
  {
    if (v4 <= &v12 && v4 + 32 * v3 > &v12)
    {
      v10 = &v12 - v4;
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 32);
      a1 = v11;
      v4 = *v11;
      v5 = &v10[*v11];
    }

    else
    {
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 32);
      a1 = v9;
      v4 = *v9;
      v5 = &v12;
    }
  }

  v6 = (v4 + 32 * *(a1 + 8));
  result = *v5;
  v8 = *(v5 + 1);
  *v6 = *v5;
  v6[1] = v8;
  ++*(a1 + 8);
  return result;
}

llvm::raw_ostream *anonymous namespace::AliasState::printAliases(llvm::raw_ostream *result, unsigned int a2, llvm::raw_ostream **a3, _DWORD *a4, int a5)
{
  i = result;
  if (a2)
  {
    v9 = 32 * a2;
    for (i = result; a5 != *(i + 6) >> 31; i = (i + 32))
    {
      v9 -= 32;
      if (!v9)
      {
        return result;
      }
    }
  }

  v10 = (result + 32 * a2);
  while (i != v10)
  {
    v11 = *a3;
    if ((*(i + 27) & 0x40) != 0)
    {
      v12 = "!";
    }

    else
    {
      v12 = "#";
    }

    v13 = *(v11 + 4);
    if (*(v11 + 3) == v13)
    {
      v15 = llvm::raw_ostream::write(*a3, v12, 1uLL);
      v14 = v15[4];
      v16 = *(i + 1);
      v17 = *(i + 2);
      if (v17 > v15[3] - v14)
      {
LABEL_14:
        llvm::raw_ostream::write(v15, v16, v17);
        goto LABEL_18;
      }
    }

    else
    {
      *v13 = *v12;
      v14 = (*(v11 + 4) + 1);
      *(v11 + 4) = v14;
      v15 = v11;
      v16 = *(i + 1);
      v17 = *(i + 2);
      if (v17 > *(v11 + 3) - v14)
      {
        goto LABEL_14;
      }
    }

    if (v17)
    {
      v18 = v17;
      memcpy(v14, v16, v17);
      v15[4] += v18;
    }

LABEL_18:
    v19 = *(i + 6);
    if ((v19 & 0x3FFFFFFF) != 0)
    {
      llvm::raw_ostream::operator<<(v11, v19 & 0x3FFFFFFF);
    }

    v20 = *a3;
    v21 = *(*a3 + 4);
    if ((*(*a3 + 3) - v21) > 2)
    {
      *(v21 + 2) = 32;
      *v21 = 15648;
      *(v20 + 4) += 3;
      v22 = *i;
      if ((*(i + 27) & 0x40) == 0)
      {
LABEL_24:
        v23 = *v22;
        {
        }

        v24 = v23 + 9;
        v25 = v23[12];
        if ((v25 & 2) == 0)
        {
          v24 = *v24;
        }

        if ((*(v25 & 0xFFFFFFFFFFFFFFF8))(v24, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          v26 = *a3;
          v28 = v22;
          mlir::Attribute::print(&v28, v26, 0);
        }

        else
        {
          mlir::AsmPrinter::Impl::printAttributeImpl(a3, v22, 0);
        }

        goto LABEL_31;
      }
    }

    else
    {
      llvm::raw_ostream::write(v20, " = ", 3uLL);
      v22 = *i;
      if ((*(i + 27) & 0x40) == 0)
      {
        goto LABEL_24;
      }
    }

    mlir::AsmPrinter::Impl::printTypeImpl(a3, v22);
    *(i + 28) = 1;
LABEL_31:
    result = *a3;
    ++*a4;
    v27 = *(result + 4);
    if (v27 >= *(result + 3))
    {
      result = llvm::raw_ostream::write(result, 10);
    }

    else
    {
      *(result + 4) = v27 + 1;
      *v27 = 10;
    }

    do
    {
      i = (i + 32);
    }

    while (i != v10 && a5 != *(i + 6) >> 31);
  }

  return result;
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJRNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

llvm::raw_ostream *_ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(char **a1)
{
  v2 = a1[2];
  v3 = **a1;
  **a1 = 1;
  if ((v3 & 1) == 0)
  {
    if (*a1[1] != 1)
    {
      goto LABEL_6;
    }

    v4 = *(v2 + 2);
    v5 = *(v4 + 4);
    if (*(v4 + 3) == v5)
    {
      v4 = llvm::raw_ostream::write(v4, ",", 1uLL);
      v6 = *(v4 + 4);
      ++*(v2 + 20);
      if (v6 < *(v4 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      *v5 = 44;
      v6 = (*(v4 + 4) + 1);
      *(v4 + 4) = v6;
      ++*(v2 + 20);
      if (v6 < *(v4 + 3))
      {
LABEL_5:
        *(v4 + 4) = v6 + 1;
        *v6 = 10;
LABEL_6:
        v7 = *(v2 + 2);
        v8 = *(v7 + 4);
        if (*(v7 + 3) - v8 <= 1uLL)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    llvm::raw_ostream::write(v4, 10);
    v7 = *(v2 + 2);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 <= 1uLL)
    {
LABEL_7:
      v7 = llvm::raw_ostream::write(v7, "  ", 2uLL);
      v9 = a1[3];
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v7 + 4);
      if (v11 <= *(v7 + 3) - v12)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    *v8 = 8224;
    v12 = (*(v7 + 4) + 2);
    *(v7 + 4) = v12;
    v23 = a1[3];
    v10 = *v23;
    v11 = *(v23 + 1);
    if (v11 <= *(v7 + 3) - v12)
    {
LABEL_8:
      if (v11)
      {
        v13 = v7;
        v14 = v11;
        memcpy(v12, v10, v11);
        v7 = v13;
        v12 = (*(v13 + 4) + v14);
        *(v13 + 4) = v12;
      }

      if (*(v7 + 3) - v12 <= 0xCuLL)
      {
LABEL_11:
        v7 = llvm::raw_ostream::write(v7, "_resources: {", 0xDuLL);
        v15 = *(v7 + 4);
        ++*(v2 + 20);
        if (v15 >= *(v7 + 3))
        {
LABEL_12:
          llvm::raw_ostream::write(v7, 10);
          goto LABEL_13;
        }

LABEL_22:
        *(v7 + 4) = v15 + 1;
        *v15 = 10;
        v24 = a1[4];
        v25 = *v24;
        *v24 = 1;
        if (v25)
        {
          goto LABEL_14;
        }

LABEL_23:
        if (*a1[5] != 1)
        {
          goto LABEL_27;
        }

        v26 = *(v2 + 2);
        v27 = *(v26 + 4);
        if (*(v26 + 3) == v27)
        {
          v26 = llvm::raw_ostream::write(v26, ",", 1uLL);
          v28 = *(v26 + 4);
          ++*(v2 + 20);
          if (v28 < *(v26 + 3))
          {
            goto LABEL_26;
          }
        }

        else
        {
          *v27 = 44;
          v28 = (*(v26 + 4) + 1);
          *(v26 + 4) = v28;
          ++*(v2 + 20);
          if (v28 < *(v26 + 3))
          {
LABEL_26:
            *(v26 + 4) = v28 + 1;
            *v28 = 10;
LABEL_27:
            result = *(v2 + 2);
            v29 = *(result + 4);
            if (*(result + 3) - v29 <= 3uLL)
            {
              goto LABEL_28;
            }

            goto LABEL_39;
          }
        }

        llvm::raw_ostream::write(v26, 10);
        result = *(v2 + 2);
        v29 = *(result + 4);
        if (*(result + 3) - v29 <= 3uLL)
        {
LABEL_28:
          result = llvm::raw_ostream::write(result, "    ", 4uLL);
          v30 = a1[6];
          v31 = *v30;
          v32 = *(v30 + 1);
          v33 = *(result + 4);
          if (v32 <= *(result + 3) - v33)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }

LABEL_39:
        *v29 = 538976288;
        v33 = (*(result + 4) + 4);
        *(result + 4) = v33;
        v36 = a1[6];
        v31 = *v36;
        v32 = *(v36 + 1);
        if (v32 <= *(result + 3) - v33)
        {
LABEL_29:
          if (v32)
          {
            v34 = result;
            v35 = v32;
            memcpy(v33, v31, v32);
            result = v34;
            v33 = (*(v34 + 4) + v35);
            *(v34 + 4) = v33;
          }

          if (*(result + 3) - v33 <= 2uLL)
          {
            goto LABEL_32;
          }

          goto LABEL_41;
        }

LABEL_40:
        result = llvm::raw_ostream::write(result, v31, v32);
        v33 = *(result + 4);
        if (*(result + 3) - v33 <= 2uLL)
        {
LABEL_32:
          v21 = ": {";
          v22 = 3;
          goto LABEL_33;
        }

LABEL_41:
        v33[2] = 123;
        *v33 = 8250;
        v20 = (*(result + 4) + 3);
LABEL_42:
        *(result + 4) = v20;
        ++*(v2 + 20);
        if (v20 < *(result + 3))
        {
          goto LABEL_43;
        }

        goto LABEL_34;
      }

LABEL_21:
      qmemcpy(v12, "_resources: {", 13);
      v15 = (*(v7 + 4) + 13);
      *(v7 + 4) = v15;
      ++*(v2 + 20);
      if (v15 >= *(v7 + 3))
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_20:
    v7 = llvm::raw_ostream::write(v7, v10, v11);
    v12 = *(v7 + 4);
    if (*(v7 + 3) - v12 <= 0xCuLL)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_13:
  v16 = a1[4];
  v17 = *v16;
  *v16 = 1;
  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  result = *(v2 + 2);
  v19 = *(result + 4);
  if (*(result + 3) != v19)
  {
    *v19 = 44;
    v20 = (*(result + 4) + 1);
    goto LABEL_42;
  }

  v21 = ",";
  v22 = 1;
LABEL_33:
  result = llvm::raw_ostream::write(result, v21, v22);
  v20 = *(result + 4);
  ++*(v2 + 20);
  if (v20 < *(result + 3))
  {
LABEL_43:
    *(result + 4) = v20 + 1;
    *v20 = 10;
    return result;
  }

LABEL_34:

  return llvm::raw_ostream::write(result, 10);
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildBool(_anonymous_namespace_::OperationPrinter::ResourceBuilder *this, StringRef a2, char a3)
{
  v5 = a3;
  v4 = &v5;
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildString(_anonymous_namespace_::OperationPrinter::ResourceBuilder *this, StringRef a2, StringRef a3)
{
  v5 = a3;
  v4 = &v5;
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9[0] = a4;
  v9[1] = a5;
  v8 = a6;
  v7[0] = &v8;
  v7[1] = v9;
}

void *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildBool(llvm::StringRef,BOOL)::{lambda(llvm::raw_ostream &)#1}>(_BYTE **a1, llvm::raw_ostream *this)
{
  if (**a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  if (**a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = *(this + 4);
  if (v4 <= *(this + 3) - v5)
  {
    result = memcpy(v5, v3, v4);
    *(this + 4) += v4;
  }

  else
  {

    return llvm::raw_ostream::write(this, v3, v4);
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildString(llvm::StringRef,llvm::StringRef)::{lambda(llvm::raw_ostream &)#1}>(llvm::raw_ostream ***a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v4 = 34;
    ++*(this + 4);
  }

  result = llvm::printEscapedString(**a1, (*a1)[1], this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v6 = 34;
    ++*(this + 4);
  }

  return result;
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildBlob(llvm::StringRef,llvm::ArrayRef<char>,unsigned int)::{lambda(llvm::raw_ostream &)#1}>(int **a1, llvm::raw_ostream *this)
{
  v2 = this;
  v16 = **a1;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 2)
  {
    *(v4 + 2) = 120;
    *v4 = 12322;
    *(this + 4) += 3;
  }

  else
  {
    v2 = llvm::raw_ostream::write(this, "0x", 3uLL);
  }

  llvm::toHex(&v16, 4, 0, v14);
  if ((v15 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = v14[1];
  }

  v7 = llvm::raw_ostream::write(v2, v5, v6);
  llvm::toHex(*a1[1], *(a1[1] + 1), 0, __p);
  if ((v13 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = llvm::raw_ostream::write(v7, v8, v9);
  v11 = v10[4];
  if (v10[3] != v11)
  {
    *v11 = 34;
    ++v10[4];
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  llvm::raw_ostream::write(v10, "", 1uLL);
  if (v13 < 0)
  {
LABEL_18:
    operator delete(__p[0]);
  }

LABEL_19:
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_18AsmResourcePrinterEJEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_1F5B3FB30;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

llvm::raw_ostream *llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::OperationPrinter::printFileMetadataDictionary(mlir::Operation *)::$_0>(llvm::raw_ostream *result)
{
  v1 = *(result + 1);
  v2 = **result;
  **result = 1;
  if (v2)
  {
    return result;
  }

  result = *(v1 + 16);
  ++*(v1 + 80);
  v3 = *(result + 4);
  if (v3 < *(result + 3))
  {
    *(result + 4) = v3 + 1;
    *v3 = 10;
    v4 = *(result + 4);
    if ((*(result + 3) - v4) > 2)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = llvm::raw_ostream::write(result, "{-#", 3uLL);
    v5 = *(result + 4);
    ++*(v1 + 80);
    if (v5 >= *(result + 3))
    {
      goto LABEL_5;
    }

LABEL_10:
    *(result + 4) = v5 + 1;
    *v5 = 10;
    return result;
  }

  result = llvm::raw_ostream::write(result, 10);
  v4 = *(result + 4);
  if ((*(result + 3) - v4) <= 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  *(v4 + 2) = 35;
  *v4 = 11643;
  v5 = (*(result + 4) + 3);
  *(result + 4) = v5;
  ++*(v1 + 80);
  if (v5 < *(result + 3))
  {
    goto LABEL_10;
  }

LABEL_5:

  return llvm::raw_ostream::write(result, 10);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printOperationID(llvm::raw_ostream *this, mlir::Operation *a2, llvm::raw_ostream *a3, uint64_t a4)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v4 = ((a4 >> 4) ^ (a4 >> 9)) & (a3 - 1);
  v5 = *(a2 + 2 * v4);
  if (v5 != a4)
  {
    v10 = 1;
    while (v5 != -4096)
    {
      v11 = v4 + v10++;
      v4 = v11 & (a3 - 1);
      v5 = *(a2 + 2 * v4);
      if (v5 == a4)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v4 == a3)
  {
LABEL_4:
    v6 = *(this + 4);
    if (*(this + 3) - v6 > 0x14uLL)
    {
      qmemcpy(v6, "<<UNKNOWN OPERATION>>", 21);
      *(this + 4) += 21;
    }

    else
    {

      return llvm::raw_ostream::write(this, "<<UNKNOWN OPERATION>>", 0x15uLL);
    }

    return this;
  }

  v7 = *(this + 4);
  if (v7 >= *(this + 3))
  {
    this = llvm::raw_ostream::write(this, 37);
    v8 = *(a2 + 4 * v4 + 2);
  }

  else
  {
    *(this + 4) = v7 + 1;
    *v7 = 37;
    v8 = *(a2 + 4 * v4 + 2);
  }

  return llvm::raw_ostream::operator<<(this, v8);
}

void anonymous namespace::OperationPrinter::printValueUsers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = *(a1 + 16);
    v4 = v3[4];
    if ((v3[3] - v4) > 5)
    {
      *(v4 + 4) = 25701;
      *v4 = 1937075829;
      v3[4] += 6;
    }

    else
    {
      v5 = a2;
      llvm::raw_ostream::write(v3, "unused", 6uLL);
      a2 = v5;
    }
  }

  v22 = &v26;
  v23 = &v26;
  v24 = 1;
  v25 = 0;
  v6 = *a2;
  if (*a2)
  {
    for (i = 0; ; ++i)
    {
      v8 = v6[2];
      if (v23 != v22)
      {
        goto LABEL_10;
      }

      v10 = HIDWORD(v24);
      if (HIDWORD(v24))
      {
        v11 = 8 * HIDWORD(v24);
        v12 = v22;
        while (*v12 != v8)
        {
          ++v12;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_8;
      }

LABEL_17:
      if (HIDWORD(v24) < v24)
      {
        ++HIDWORD(v24);
        v22[v10] = v8;
        if (!i)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_10:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v22, v6[2]);
        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }

        if (!i)
        {
          goto LABEL_21;
        }
      }

      v13 = *(a1 + 16);
      v14 = v13[4];
      if (v13[3] - v14 > 1uLL)
      {
        *v14 = 8236;
        v13[4] += 2;
        v15 = *(v8 + 36);
        if (v15)
        {
LABEL_24:
          v16 = v8 - 16;
          v17 = *(a1 + 16);
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
          if (v15 != 1)
          {
            for (j = 1; j != v15; ++j)
            {
              v21 = v17[4];
              if (v17[3] - v21 > 1uLL)
              {
                *v21 = 8236;
                v17[4] += 2;
              }

              else
              {
                llvm::raw_ostream::write(v17, ", ", 2uLL);
              }

              v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j);
            }
          }

          goto LABEL_8;
        }

        goto LABEL_7;
      }

      llvm::raw_ostream::write(v13, ", ", 2uLL);
LABEL_21:
      v15 = *(v8 + 36);
      if (v15)
      {
        goto LABEL_24;
      }

LABEL_7:
LABEL_8:
      v6 = *v6;
      if (!v6)
      {
        if (v23 != v22)
        {
          free(v23);
        }

        return;
      }
    }
  }
}

void anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 16);
  v5 = *v4;
  v6 = *(*v4 + 4);
  if (*(*v4 + 3) - v6 > 1uLL)
  {
    *v6 = 8250;
    *(v5 + 4) += 2;
    v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
LABEL_3:
      if ((mlir::AsmPrinter::Impl::printAlias(v4, v7) & 1) == 0)
      {
        mlir::AsmPrinter::Impl::printTypeImpl(v4, v7);
        if ((*(a1 + 72) & 1) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v5, ": ", 2uLL);
    v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v8 = *v4;
  v9 = *(*v4 + 4);
  if (*(*v4 + 3) - v9 <= 0xCuLL)
  {
    llvm::raw_ostream::write(v8, "<<NULL TYPE>>", 0xDuLL);
LABEL_9:
    if ((*(a1 + 72) & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  qmemcpy(v9, "<<NULL TYPE>>", 13);
  *(v8 + 4) += 13;
  if ((*(a1 + 72) & 1) == 0)
  {
    return;
  }

LABEL_10:
  v10 = *(a2 + 32);
  v11 = *v4;
  v12 = *(*v4 + 4);
  if (*(*v4 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, " ", 1uLL);
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v12 = 32;
    ++*(v11 + 4);
    if ((*(a1 + 72) & 2) == 0)
    {
LABEL_12:
      v13 = *v4;
      v14 = *(*v4 + 4);
      if (*(*v4 + 3) - v14 > 3uLL)
      {
        *v14 = 677605228;
        *(v13 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v13, "loc(", 4uLL);
      }

      v16.var0 = v10;
      mlir::AsmPrinter::Impl::printLocationInternal(v4, v16, 0, 1);
      v17 = *v4;
      v18 = *(*v4 + 4);
      if (v18 >= *(*v4 + 3))
      {

        llvm::raw_ostream::write(v17, 41);
      }

      else
      {
        *(v17 + 4) = v18 + 1;
        *v18 = 41;
      }

      return;
    }
  }

  v15.var0 = v10;

  mlir::AsmPrinter::Impl::printLocationInternal(v4, v15, 1, 1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      v90 = *(a2 - 24);
      v89 = (a2 - 24);
      if (v90 >= *v12)
      {
        return result;
      }

      goto LABEL_108;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v100 = v12 + 24;
      v102 = v12 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v12;
          do
          {
            v106 = v100;
            v107 = *(v104 + 24);
            if (v107 < *v104)
            {
              v179 = *(v104 + 28);
              v208 = *(v104 + 44);
              v108 = v103;
              do
              {
                v109 = v12 + v108;
                *(v109 + 24) = *(v12 + v108);
                *(v109 + 40) = *(v12 + v108 + 16);
                if (!v108)
                {
                  v105 = v12;
                  goto LABEL_122;
                }

                v108 -= 24;
              }

              while (v107 < *(v109 - 24));
              v105 = v12 + v108 + 24;
LABEL_122:
              *v105 = v107;
              result = v179;
              *(v105 + 20) = v208;
              *(v105 + 4) = v179;
            }

            v100 = v106 + 24;
            v103 += 24;
            v104 = v106;
          }

          while (v106 + 24 != a2);
        }
      }

      else if (!v102)
      {
        do
        {
          v144 = v100;
          v145 = *(a1 + 24);
          if (v145 < *a1)
          {
            v183 = *(a1 + 28);
            v212 = *(a1 + 44);
            do
            {
              *v100 = *(v100 - 24);
              *(v100 + 16) = *(v100 - 8);
              v146 = *(v100 - 48);
              v100 -= 24;
            }

            while (v145 < v146);
            *v100 = v145;
            result = v183;
            *(v100 + 20) = v212;
            *(v100 + 4) = v183;
          }

          v100 = v144 + 24;
          a1 = v144;
        }

        while (v144 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          if (v110 >= v111)
          {
            v112 = (2 * (v111 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v113 = v12 + 24 * v112;
            v114 = *v113;
            if (2 * v111 + 2 < v14)
            {
              v115 = *(v113 + 24);
              v116 = v114 < v115;
              if (v114 <= v115)
              {
                v114 = *(v113 + 24);
              }

              if (v116)
              {
                v113 += 24;
                v112 = 2 * v111 + 2;
              }
            }

            v117 = v12 + 24 * v111;
            v118 = *v117;
            if (v114 >= *v117)
            {
              v209 = *(v117 + 20);
              v180 = *(v117 + 4);
              while (1)
              {
                v122 = v117;
                v117 = v113;
                v123 = *v113;
                *(v122 + 16) = *(v113 + 16);
                *v122 = v123;
                if (v110 < v112)
                {
                  break;
                }

                v124 = (2 * v112) | 1;
                v113 = v12 + 24 * v124;
                v112 = 2 * v112 + 2;
                v121 = *v113;
                if (v112 < v14)
                {
                  v119 = *(v113 + 24);
                  v120 = v121 < v119;
                  if (v121 <= v119)
                  {
                    v121 = *(v113 + 24);
                  }

                  if (v120)
                  {
                    v113 += 24;
                  }

                  else
                  {
                    v112 = v124;
                  }

                  if (v121 < v118)
                  {
                    break;
                  }
                }

                else
                {
                  v112 = v124;
                  if (v121 < v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              *(v117 + 20) = v209;
              *(v117 + 4) = v180;
            }
          }

          v116 = v111-- <= 0;
        }

        while (!v116);
        v125 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v126 = 0;
          v210 = *(v12 + 16);
          v181 = *v12;
          v127 = v12;
          do
          {
            v132 = v127 + 24 * v126;
            v130 = v132 + 24;
            v133 = (2 * v126) | 1;
            v126 = 2 * v126 + 2;
            if (v126 < v125)
            {
              v129 = *(v132 + 48);
              v128 = v132 + 48;
              if (*(v128 - 24) >= v129)
              {
                v126 = v133;
              }

              else
              {
                v130 = v128;
              }
            }

            else
            {
              v126 = v133;
            }

            v131 = *v130;
            *(v127 + 16) = *(v130 + 16);
            *v127 = v131;
            v127 = v130;
          }

          while (v126 <= ((v125 - 2) >> 1));
          a2 -= 24;
          if (v130 == a2)
          {
            result = v181;
            *(v130 + 16) = v210;
            *v130 = v181;
          }

          else
          {
            v134 = *a2;
            *(v130 + 16) = *(a2 + 16);
            *v130 = v134;
            result = v181;
            *(a2 + 16) = v210;
            *a2 = v181;
            v135 = v130 - v12 + 24;
            if (v135 >= 25)
            {
              v136 = (-2 - 0x5555555555555555 * (v135 >> 3)) >> 1;
              v137 = v12 + 24 * v136;
              v138 = *v130;
              if (*v137 < *v130)
              {
                v157 = *(v130 + 20);
                v154 = *(v130 + 4);
                do
                {
                  v139 = v130;
                  v130 = v137;
                  v140 = *v137;
                  *(v139 + 16) = *(v137 + 16);
                  *v139 = v140;
                  if (!v136)
                  {
                    break;
                  }

                  v136 = (v136 - 1) >> 1;
                  v137 = v12 + 24 * v136;
                }

                while (*v137 < v138);
                *v130 = v138;
                result = v154;
                *(v130 + 20) = v157;
                *(v130 + 4) = v154;
              }
            }
          }

          v116 = v125-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 24 * (v14 >> 1);
    v17 = *v9;
    if (v13 < 0xC01)
    {
      v20 = *v12;
      if (*v12 < *v16)
      {
        if (v17 < v20)
        {
          v188 = *(v16 + 16);
          v159 = *v16;
          v21 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v21;
          goto LABEL_36;
        }

        v195 = *(v16 + 16);
        v166 = *v16;
        v42 = *v12;
        *(v16 + 16) = *(v12 + 16);
        *v16 = v42;
        *(v12 + 16) = v195;
        *v12 = v166;
        if (*v9 < *v12)
        {
          v188 = *(v12 + 16);
          v159 = *v12;
          v43 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v43;
LABEL_36:
          *(a2 - 8) = v188;
          *v9 = v159;
        }

LABEL_37:
        --a3;
        v26 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v17 >= v20)
      {
        goto LABEL_37;
      }

      v191 = *(v12 + 16);
      v162 = *v12;
      v24 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v24;
      *(a2 - 8) = v191;
      *v9 = v162;
      if (*v12 >= *v16)
      {
        goto LABEL_37;
      }

      v192 = *(v16 + 16);
      v163 = *v16;
      v25 = *v12;
      *(v16 + 16) = *(v12 + 16);
      *v16 = v25;
      *(v12 + 16) = v192;
      *v12 = v163;
      --a3;
      v26 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 24) < v26)
      {
        goto LABEL_62;
      }

      v156 = *(v12 + 20);
      v153 = *(v12 + 4);
      if (v26 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v26 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v26 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v26 < v84);
      }

      while (v12 < v83)
      {
        v205 = *(v12 + 16);
        v176 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v205;
        *v83 = v176;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v26 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v26 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v26;
      result = v153;
      *(v12 - 4) = v156;
      *(v12 - 20) = v153;
    }

    else
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v189 = *(v16 + 16);
          v160 = *v16;
          v22 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v189;
          *v9 = v160;
          if (*v16 < *v12)
          {
            v190 = *(v12 + 16);
            v161 = *v12;
            v23 = *v16;
            *(v12 + 16) = *(v16 + 16);
            *v12 = v23;
            *(v16 + 16) = v190;
            *v16 = v161;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v193 = *(v12 + 16);
          v164 = *v12;
          v27 = *v16;
          *(v12 + 16) = *(v16 + 16);
          *v12 = v27;
          *(v16 + 16) = v193;
          *v16 = v164;
          if (*v9 >= *v16)
          {
            goto LABEL_28;
          }

          v187 = *(v16 + 16);
          v158 = *v16;
          v28 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
        }

        else
        {
          v187 = *(v12 + 16);
          v158 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
        }

        *(a2 - 8) = v187;
        *v9 = v158;
      }

LABEL_28:
      v29 = (v12 + 24);
      v30 = v12 + 24 * v15;
      v33 = *(v30 - 24);
      v31 = v30 - 24;
      v32 = v33;
      v34 = *v10;
      if (v33 >= *(v12 + 24))
      {
        if (v34 < v32)
        {
          v194 = *(v31 + 16);
          v165 = *v31;
          v38 = *v10;
          *(v31 + 16) = *(a2 - 32);
          *v31 = v38;
          *(a2 - 32) = v194;
          *v10 = v165;
          if (*v31 < *v29)
          {
            v39 = *v29;
            v40 = *(v12 + 40);
            v41 = *(v31 + 16);
            *v29 = *v31;
            *(v12 + 40) = v41;
            *(v31 + 16) = v40;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v34 >= v32)
        {
          v44 = *v29;
          v45 = *(v12 + 40);
          v46 = *(v31 + 16);
          *v29 = *v31;
          *(v12 + 40) = v46;
          *(v31 + 16) = v45;
          *v31 = v44;
          if (*v10 >= *v31)
          {
            goto LABEL_42;
          }

          v196 = *(v31 + 16);
          v167 = *v31;
          v47 = *v10;
          *(v31 + 16) = *(a2 - 32);
          *v31 = v47;
          v35 = v167;
          *(a2 - 32) = v196;
        }

        else
        {
          v35 = *v29;
          v36 = *(v12 + 40);
          v37 = *(a2 - 32);
          *v29 = *v10;
          *(v12 + 40) = v37;
          *(a2 - 32) = v36;
        }

        *v10 = v35;
      }

LABEL_42:
      v48 = (v12 + 48);
      v49 = v12 + 24 * v15;
      v52 = *(v49 + 24);
      v50 = v49 + 24;
      v51 = v52;
      v53 = *v11;
      if (v52 >= *(v12 + 48))
      {
        if (v53 < v51)
        {
          v197 = *(v50 + 16);
          v168 = *v50;
          v57 = *v11;
          *(v50 + 16) = *(a2 - 56);
          *v50 = v57;
          *(a2 - 56) = v197;
          *v11 = v168;
          if (*v50 < *v48)
          {
            v58 = *v48;
            v59 = *(v12 + 64);
            v60 = *(v50 + 16);
            *v48 = *v50;
            *(v12 + 64) = v60;
            *(v50 + 16) = v59;
            *v50 = v58;
          }
        }
      }

      else
      {
        if (v53 >= v51)
        {
          v61 = *v48;
          v62 = *(v12 + 64);
          v63 = *(v50 + 16);
          *v48 = *v50;
          *(v12 + 64) = v63;
          *(v50 + 16) = v62;
          *v50 = v61;
          if (*v11 >= *v50)
          {
            goto LABEL_51;
          }

          v198 = *(v50 + 16);
          v169 = *v50;
          v64 = *v11;
          *(v50 + 16) = *(a2 - 56);
          *v50 = v64;
          v54 = v169;
          *(a2 - 56) = v198;
        }

        else
        {
          v54 = *v48;
          v55 = *(v12 + 64);
          v56 = *(a2 - 56);
          *v48 = *v11;
          *(v12 + 64) = v56;
          *(a2 - 56) = v55;
        }

        *v11 = v54;
      }

LABEL_51:
      v65 = *v16;
      v66 = *v50;
      if (*v16 >= *v31)
      {
        if (v66 < v65)
        {
          v200 = *(v16 + 16);
          v171 = *v16;
          *v16 = *v50;
          *(v16 + 16) = *(v50 + 16);
          *(v50 + 16) = v200;
          *v50 = v171;
          if (*v16 < *v31)
          {
            v201 = *(v31 + 16);
            v172 = *v31;
            *v31 = *v16;
            *(v31 + 16) = *(v16 + 16);
            *(v16 + 16) = v201;
            *v16 = v172;
          }
        }
      }

      else
      {
        if (v66 >= v65)
        {
          v202 = *(v31 + 16);
          v173 = *v31;
          *v31 = *v16;
          *(v31 + 16) = *(v16 + 16);
          *(v16 + 16) = v202;
          *v16 = v173;
          if (*v50 >= *v16)
          {
            goto LABEL_60;
          }

          v199 = *(v16 + 16);
          v170 = *v16;
          *v16 = *v50;
          *(v16 + 16) = *(v50 + 16);
        }

        else
        {
          v199 = *(v31 + 16);
          v170 = *v31;
          *v31 = *v50;
          *(v31 + 16) = *(v50 + 16);
        }

        *(v50 + 16) = v199;
        *v50 = v170;
      }

LABEL_60:
      v203 = *(v12 + 16);
      v174 = *v12;
      v67 = *v16;
      *(v12 + 16) = *(v16 + 16);
      *v12 = v67;
      *(v16 + 16) = v203;
      *v16 = v174;
      --a3;
      v26 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v68 = 0;
      v155 = *(v12 + 20);
      v152 = *(v12 + 4);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v26);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v26);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v26);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v204 = *(v12 + 16);
          v175 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v204;
          *v74 = v175;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v26);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v26);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v26;
      *(v12 - 4) = v155;
      *(v12 - 20) = v152;
      if (v70 < v71)
      {
        goto LABEL_81;
      }

      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_81:
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v96 = *(v12 + 24);
      v97 = (v12 + 48);
      v98 = *(v12 + 48);
      if (v96 >= *v12)
      {
        if (v98 < v96)
        {
          v143 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
          *(v12 + 64) = v143;
          if (*(v12 + 24) < *v12)
          {
            v211 = *(v12 + 16);
            v182 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result = v182;
            *v91 = v182;
            *(v12 + 40) = v211;
          }
        }
      }

      else
      {
        if (v98 < v96)
        {
          v207 = *(v12 + 16);
          v178 = *v12;
          *v12 = *v97;
          *(v12 + 16) = *(v12 + 64);
          result = v178;
          *v97 = v178;
          v99 = v207;
          goto LABEL_184;
        }

        v214 = *(v12 + 16);
        v185 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        result = v185;
        *v91 = v185;
        *(v12 + 40) = v214;
        if (v98 < *(v12 + 24))
        {
          v99 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
LABEL_184:
          *(v12 + 64) = v99;
        }
      }

      if (*v9 >= v97->n128_u32[0])
      {
        return result;
      }

      result = *v97;
      v149 = *(v12 + 64);
      v150 = *(a2 - 8);
      *v97 = *v9;
      *(v12 + 64) = v150;
      *(a2 - 8) = v149;
      *v9 = result;
      if (v97->n128_u32[0] >= v91->n128_u32[0])
      {
        return result;
      }

      v151 = *(v12 + 40);
      result = *v91;
      *v91 = *v97;
      *(v12 + 40) = *(v12 + 64);
      *v97 = result;
      *(v12 + 64) = v151;
LABEL_188:
      if (*(v12 + 24) < *v12)
      {
        v215 = *(v12 + 16);
        v186 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v186;
        *v91 = v186;
        v91[1].n128_u64[0] = v215;
      }

      return result;
    }

    if (v14 == 5)
    {

      return result;
    }

    goto LABEL_9;
  }

  v91 = (v12 + 24);
  v92 = *(v12 + 24);
  v94 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v94;
  if (v92 >= *v12)
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *v91;
    v141 = *(v12 + 40);
    v142 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v142;
    v89[1].n128_u64[0] = v141;
    *v89 = result;
    goto LABEL_188;
  }

  if (v93 < v92)
  {
LABEL_108:
    v206 = *(v12 + 16);
    v177 = *v12;
    v95 = *v89;
    *(v12 + 16) = v89[1].n128_u64[0];
    *v12 = v95;
    result = v177;
    v89[1].n128_u64[0] = v206;
    *v89 = v177;
    return result;
  }

  v213 = *(v12 + 16);
  v184 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result = v184;
  *v91 = v184;
  *(v12 + 40) = v213;
  if (v89->n128_u32[0] < *(v12 + 24))
  {
    result = *v91;
    v147 = *(v12 + 40);
    v148 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v148;
    v89[1].n128_u64[0] = v147;
    *v89 = result;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = a3->n128_u32[0];
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[0] < a3->n128_u32[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5->n128_u32[0] < a4->n128_u32[0])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u32[0] < a3->n128_u32[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u32[0] < a2->n128_u32[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 24);
      v4 = (a2 - 24);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_u32[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_47:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u32[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_44;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_44;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_44:
    if (v23->n128_u32[0] >= v21->n128_u32[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_47;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u32[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v51 = *v47;
    if (*v47 < v13->n128_u32[0])
    {
      v64 = *(v47 + 4);
      v65 = *(v47 + 20);
      v52 = v48;
      do
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          v50 = a1;
          goto LABEL_34;
        }

        v52 -= 24;
      }

      while (v51 < *(v53 + 24));
      v50 = a1 + v52 + 72;
LABEL_34:
      *v50 = v51;
      *(v50 + 4) = v64;
      *(v50 + 20) = v65;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir15AsmResourceBlobEbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS9_bSF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t *a2)
{
  v2 = a2[6];
  if (v2 >= 8)
  {
    v4 = a2 + 3;
    v5 = *a2;
    v6 = (v2 & 2) != 0 ? v4 : a2[3];
    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v6, v5, a2[1], a2[2]);
    v7 = a2[6];
    if (v7 >= 8)
    {
      if ((v7 & 4) != 0)
      {
        if ((v7 & 2) != 0)
        {
          v8 = v4;
        }

        else
        {
          v8 = *v4;
        }

        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      }

      if ((v7 & 2) == 0)
      {
        v9 = a2[3];
        v10 = a2[4];

        llvm::deallocate_buffer(v9, v10);
      }
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir15AsmResourceBlobEbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS9_bSF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::AsmParser::parseTypeList(llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v7 = v2;
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(v3);
    v2 = v7;
  }

  else
  {
    *(*v3 + 8 * v4) = 0;
    *(v3 + 8) = v4 + 1;
  }

  v5 = *(*v2 + 536);

  return v5();
}

void *llvm::object_creator<anonymous namespace::AsmPrinterOptions>::call()
{
  v0 = operator new(0x848uLL);
  bzero(v0, 0x848uLL);
  *&v5 = "Print DenseElementsAttrs with a hex string that have more elements than the given upper limit (use -1 to disable)";
  *(&v5 + 1) = 113;
  llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<char [44],llvm::cl::desc>(v0, "mlir-print-elementsattrs-with-hex-if-larger", &v5);
  *&v5 = "Elide ElementsAttrs with ... that have more elements than the given upper limit";
  *(&v5 + 1) = 81;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [35],llvm::cl::desc>(v0 + 200, "mlir-elide-elementsattrs-if-larger", &v5);
  *&v5 = "Elide printing value of resources if string is too long in chars.";
  *(&v5 + 1) = 65;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [35],llvm::cl::desc>(v0 + 392, "mlir-elide-resource-strings-if-larger", &v5);
  LOBYTE(v2) = 0;
  v4 = &v2;
  *&v5 = "Print debug info in MLIR output";
  *(&v5 + 1) = 31;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(v0 + 584, "mlir-print-debuginfo", &v4, &v5);
  LOBYTE(v2) = 0;
  v4 = &v2;
  *&v5 = "Print pretty debug info in MLIR output";
  *(&v5 + 1) = 38;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(v0 + 776, "mlir-pretty-debuginfo", &v4, &v5);
  v3 = 0;
  v4 = &v3;
  *&v5 = "Print the generic op form";
  *(&v5 + 1) = 25;
  v2 = 1;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [22],llvm::cl::initializer<BOOL>,llvm::cl::desc,llvm::cl::OptionHidden>(v0 + 968, "mlir-print-op-generic", &v4, &v5, &v2);
  v3 = 0;
  v4 = &v3;
  *&v5 = "Skip op verification when using custom printers";
  *(&v5 + 1) = 47;
  v2 = 1;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [22],llvm::cl::initializer<BOOL>,llvm::cl::desc,llvm::cl::OptionHidden>(v0 + 1160, "mlir-print-assume-verified", &v4, &v5, &v2);
  LOBYTE(v2) = 0;
  v4 = &v2;
  *&v5 = "Print with local scope and inline information (eliding aliases for attributes, types, and locations";
  *(&v5 + 1) = 99;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(v0 + 1352, "mlir-print-local-scope", &v4, &v5);
  LOBYTE(v2) = 0;
  v4 = &v2;
  *&v5 = "Skip regions when printing ops.";
  *(&v5 + 1) = 31;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(v0 + 1544, "mlir-print-skip-regions", &v4, &v5);
  LOBYTE(v2) = 0;
  v4 = &v2;
  *&v5 = "Print users of operation results and block arguments as a comment";
  *(&v5 + 1) = 65;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(v0 + 1736, "mlir-print-value-users", &v4, &v5);
  LOBYTE(v2) = 0;
  v4 = &v2;
  *&v5 = "Print unique SSA ID numbers for values, block arguments and naming conflicts across all regions";
  *(&v5 + 1) = 95;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(v0 + 1928, "mlir-print-unique-ssa-ids", &v4, &v5);
  return v0;
}

void llvm::object_deleter<anonymous namespace::AsmPrinterOptions>::call(char *__p)
{
  if (!__p)
  {
    return;
  }

  *(__p + 241) = &unk_1F5B3E720;
  v2 = __p + 2088;
  v3 = *(__p + 264);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(__p + 241) = &unk_1F5B3E1D8;
    v4 = *(__p + 253);
    if (v4 != *(__p + 252))
    {
LABEL_6:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(__p + 241) = &unk_1F5B3E1D8;
    v4 = *(__p + 253);
    if (v4 != *(__p + 252))
    {
      goto LABEL_6;
    }
  }

  v5 = *(__p + 249);
  if (v5 != __p + 2008)
  {
    free(v5);
  }

  *(__p + 217) = &unk_1F5B3E720;
  v6 = *(__p + 240);
  if (v6 == __p + 1896)
  {
    (*(*v6 + 32))(v6);
    *(__p + 217) = &unk_1F5B3E1D8;
    v7 = *(__p + 229);
    if (v7 != *(__p + 228))
    {
LABEL_13:
      free(v7);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    *(__p + 217) = &unk_1F5B3E1D8;
    v7 = *(__p + 229);
    if (v7 != *(__p + 228))
    {
      goto LABEL_13;
    }
  }

  v8 = *(__p + 225);
  if (v8 != __p + 1816)
  {
    free(v8);
  }

  *(__p + 193) = &unk_1F5B3E720;
  v9 = *(__p + 216);
  if (v9 == __p + 1704)
  {
    (*(*v9 + 32))(v9);
    *(__p + 193) = &unk_1F5B3E1D8;
    v10 = *(__p + 205);
    if (v10 != *(__p + 204))
    {
LABEL_20:
      free(v10);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *(__p + 193) = &unk_1F5B3E1D8;
    v10 = *(__p + 205);
    if (v10 != *(__p + 204))
    {
      goto LABEL_20;
    }
  }

  v11 = *(__p + 201);
  if (v11 != __p + 1624)
  {
    free(v11);
  }

  *(__p + 169) = &unk_1F5B3E720;
  v12 = *(__p + 192);
  if (v12 == __p + 1512)
  {
    (*(*v12 + 32))(v12);
    *(__p + 169) = &unk_1F5B3E1D8;
    v13 = *(__p + 181);
    if (v13 != *(__p + 180))
    {
LABEL_27:
      free(v13);
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    *(__p + 169) = &unk_1F5B3E1D8;
    v13 = *(__p + 181);
    if (v13 != *(__p + 180))
    {
      goto LABEL_27;
    }
  }

  v14 = *(__p + 177);
  if (v14 != __p + 1432)
  {
    free(v14);
  }

  *(__p + 145) = &unk_1F5B3E720;
  v15 = *(__p + 168);
  if (v15 == __p + 1320)
  {
    (*(*v15 + 32))(v15);
    *(__p + 145) = &unk_1F5B3E1D8;
    v16 = *(__p + 157);
    if (v16 != *(__p + 156))
    {
LABEL_34:
      free(v16);
    }
  }

  else
  {
    if (v15)
    {
      (*(*v15 + 40))(v15);
    }

    *(__p + 145) = &unk_1F5B3E1D8;
    v16 = *(__p + 157);
    if (v16 != *(__p + 156))
    {
      goto LABEL_34;
    }
  }

  v17 = *(__p + 153);
  if (v17 != __p + 1240)
  {
    free(v17);
  }

  *(__p + 121) = &unk_1F5B3E720;
  v18 = *(__p + 144);
  if (v18 == __p + 1128)
  {
    (*(*v18 + 32))(v18);
    *(__p + 121) = &unk_1F5B3E1D8;
    v19 = *(__p + 133);
    if (v19 != *(__p + 132))
    {
LABEL_41:
      free(v19);
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))(v18);
    }

    *(__p + 121) = &unk_1F5B3E1D8;
    v19 = *(__p + 133);
    if (v19 != *(__p + 132))
    {
      goto LABEL_41;
    }
  }

  v20 = *(__p + 129);
  if (v20 != __p + 1048)
  {
    free(v20);
  }

  *(__p + 97) = &unk_1F5B3E720;
  v21 = *(__p + 120);
  if (v21 == __p + 936)
  {
    (*(*v21 + 32))(v21);
    *(__p + 97) = &unk_1F5B3E1D8;
    v22 = *(__p + 109);
    if (v22 != *(__p + 108))
    {
LABEL_48:
      free(v22);
    }
  }

  else
  {
    if (v21)
    {
      (*(*v21 + 40))(v21);
    }

    *(__p + 97) = &unk_1F5B3E1D8;
    v22 = *(__p + 109);
    if (v22 != *(__p + 108))
    {
      goto LABEL_48;
    }
  }

  v23 = *(__p + 105);
  if (v23 != __p + 856)
  {
    free(v23);
  }

  *(__p + 73) = &unk_1F5B3E720;
  v24 = *(__p + 96);
  if (v24 == __p + 744)
  {
    (*(*v24 + 32))(v24);
    *(__p + 73) = &unk_1F5B3E1D8;
    v25 = *(__p + 85);
    if (v25 != *(__p + 84))
    {
LABEL_55:
      free(v25);
    }
  }

  else
  {
    if (v24)
    {
      (*(*v24 + 40))(v24);
    }

    *(__p + 73) = &unk_1F5B3E1D8;
    v25 = *(__p + 85);
    if (v25 != *(__p + 84))
    {
      goto LABEL_55;
    }
  }

  v26 = *(__p + 81);
  if (v26 != __p + 664)
  {
    free(v26);
  }

  *(__p + 49) = &unk_1F5B3E5A8;
  v27 = *(__p + 72);
  if (v27 == __p + 552)
  {
    (*(*v27 + 32))(v27);
    *(__p + 49) = &unk_1F5B3E1D8;
    v28 = *(__p + 61);
    if (v28 != *(__p + 60))
    {
LABEL_62:
      free(v28);
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    *(__p + 49) = &unk_1F5B3E1D8;
    v28 = *(__p + 61);
    if (v28 != *(__p + 60))
    {
      goto LABEL_62;
    }
  }

  v29 = *(__p + 57);
  if (v29 != __p + 472)
  {
    free(v29);
  }

  *(__p + 25) = &unk_1F5B3E5A8;
  v30 = *(__p + 48);
  if (v30 == __p + 360)
  {
    (*(*v30 + 32))(v30);
    *(__p + 25) = &unk_1F5B3E1D8;
    v31 = *(__p + 37);
    if (v31 != *(__p + 36))
    {
LABEL_69:
      free(v31);
    }
  }

  else
  {
    if (v30)
    {
      (*(*v30 + 40))(v30);
    }

    *(__p + 25) = &unk_1F5B3E1D8;
    v31 = *(__p + 37);
    if (v31 != *(__p + 36))
    {
      goto LABEL_69;
    }
  }

  v32 = *(__p + 33);
  if (v32 != __p + 280)
  {
    free(v32);
  }

  *__p = &unk_1F5B0CC50;
  v33 = *(__p + 24);
  if (v33 == __p + 168)
  {
    (*(*v33 + 32))(v33);
    *__p = &unk_1F5B3E1D8;
    v34 = *(__p + 12);
    if (v34 == *(__p + 11))
    {
      goto LABEL_77;
    }
  }

  else
  {
    if (v33)
    {
      (*(*v33 + 40))(v33);
    }

    *__p = &unk_1F5B3E1D8;
    v34 = *(__p + 12);
    if (v34 == *(__p + 11))
    {
      goto LABEL_77;
    }
  }

  free(v34);
LABEL_77:
  v35 = *(__p + 8);
  if (v35 != __p + 80)
  {
    free(v35);
  }

  operator delete(__p);
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<char [44],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v12 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v12;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_1F5B0CCB8;
  *a1 = &unk_1F5B0CC50;
  *(a1 + 160) = &unk_1F5B3E3E0;
  *(a1 + 168) = &unk_1F5B0CCD8;
  *(a1 + 192) = a1 + 168;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<long long>::parse(a1 + 160, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 192);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::~opt(void *a1)
{
  *a1 = &unk_1F5B0CC50;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::~opt(char *__p)
{
  *__p = &unk_1F5B0CC50;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 152) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v6 = *(a1 + 144);
    v8 = *(a1 + 152);
    v7[0] = &unk_1F5B0CCB8;
    v7[1] = v6;
    llvm::cl::parser<long long>::printOptionDiff((a1 + 160), a1, v5, v7, a2);
  }
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::setDefault(uint64_t result)
{
  if (*(result + 152) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

void *std::__function::__func<llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::{lambda(long long const&)#1},std::allocator<llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::{lambda(long long const&)#1}>,void ()(long long const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0CCD8;
  return result;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [35],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v12 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v12;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFEFE8;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E5A8;
  *(a1 + 152) = &unk_1F5B3E440;
  *(a1 + 160) = &unk_1F5AFF008;
  *(a1 + 184) = a1 + 160;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v15 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v15;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  v13 = *a3;
  *(a1 + 128) = **a3;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v13;
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [22],llvm::cl::initializer<BOOL>,llvm::cl::desc,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4, _WORD *a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v17 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v17;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  v14 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v14);
  v15 = *a3;
  *(a1 + 128) = **a3;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v15;
  *(a1 + 32) = *a4;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned int>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4, _DWORD *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[2] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[32 * v7];
    v9 = v5;
    do
    {
      v10 = *v6;
      *(v9 + 16) = *(v6 + 2);
      *v9 = v10;
      *v6 = 0;
      *(v6 + 1) = 0;
      v11 = *(v6 + 3);
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v9 + 24) = v11;
      v9 += 32;
      v6 += 32;
    }

    while (v6 != v8);
    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = 32 * v12;
      v14 = &v6[v13 - 9];
      v15 = -v13;
      do
      {
        v16 = *(v14 + 1);
        *(v14 + 1) = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        if (*v14 < 0)
        {
          operator delete(*(v14 - 23));
        }

        v14 -= 32;
        v15 += 32;
      }

      while (v15);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

uint64_t mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::~Printer(uint64_t result)
{
  *result = &unk_1F5AF56B0;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::~Printer(void **a1)
{
  *a1 = &unk_1F5AF56B0;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(a1[1]);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,mlir::AsmResourceBlob>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v34);
  v8 = v7;
  v9 = (v7 + 96 * *(a1 + 8));
  v11 = *a2;
  v10 = *(a2 + 8);
  v36 = *a3;
  v12 = *(a3 + 6);
  v37 = *(a3 + 2);
  v40 = v12;
  if (v12 >= 8)
  {
    if ((v12 & 2) != 0 && (v12 & 4) != 0)
    {
      (*((v12 & 0xFFFFFFFFFFFFFFF8) + 8))(&v38, a3 + 24);
      (*((v40 & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 24);
    }

    else
    {
      v38 = *(a3 + 24);
      v39 = *(a3 + 5);
    }

    *(a3 + 6) = 0;
  }

  v41 = *(a3 + 56);
  v42 = 0;
  if (!v11)
  {
    v14 = 0;
    *(v9 + 24) = 0;
    v15 = v9 + 6;
    v9[22] = -1;
    v16 = v9 + 22;
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    goto LABEL_20;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v10 | 7) + 1;
    }

    v13 = operator new(v17);
    *(v9 + 1) = v10;
    *(v9 + 2) = v17 | 0x8000000000000000;
    *v9 = v13;
  }

  else
  {
    *(v9 + 23) = v10;
    v13 = v9;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  memmove(v13, v11, v10);
LABEL_18:
  *(v13 + v10) = 0;
  v14 = v42;
  v9[22] = -1;
  v18 = v9 + 22;
  *(v18 - 64) = 0;
  v15 = v18 - 16;
  if (v14 == -1)
  {
    goto LABEL_22;
  }

  v16 = v18;
LABEL_20:
  v35 = v15;
  (off_1F5AF5C68[v14])(&v35, &v36);
  *v16 = v14;
  if (v42 != -1)
  {
    (off_1F5AF5C00[v42])(&v35, &v36);
  }

LABEL_22:
  v42 = -1;
  v19 = *a1;
  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = &v19[96 * v20];
    v22 = (v8 + 88);
    v23 = v19 + 24;
    do
    {
      v25 = *(v23 - 24);
      *(v22 - 9) = *(v23 - 1);
      *(v22 - 22) = v25;
      *(v23 - 2) = 0;
      *(v23 - 1) = 0;
      *(v23 - 3) = 0;
      *(v22 - 64) = 0;
      *v22 = -1;
      v26 = *(v23 + 16);
      if (v26 != -1)
      {
        v35 = v22 - 16;
        (off_1F5AF5C68[v26])(&v35, v23);
        *v22 = v26;
      }

      v24 = v23 - 24;
      v22 += 24;
      v23 += 96;
    }

    while (v24 + 96 != v21);
    v19 = *a1;
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = &v19[96 * v27 - 8];
      v29 = -96 * v27;
      do
      {
        v30 = *v28;
        if (v30 != -1)
        {
          (off_1F5AF5C00[v30])(&v35, v28 - 64);
        }

        *v28 = -1;
        if (*(v28 - 65) < 0)
        {
          operator delete(*(v28 - 11));
        }

        v28 -= 96;
        v29 += 96;
      }

      while (v29);
      v19 = *a1;
    }
  }

  v31 = v34;
  if (v19 != v6)
  {
    free(v19);
  }

  *a1 = v8;
  v32 = *(a1 + 8) + 1;
  *(a1 + 8) = v32;
  *(a1 + 12) = v31;
  return v8 + 96 * v32 - 96;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::AsmResourceBlob,BOOL,std::string> &&>(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(v2 + 48) = 0;
  v4 = *(a2 + 6);
  *(v2 + 48) = v4;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      v6 = a2;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(v2 + 24, a2 + 24);
      result = (*((*(v2 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(v6 + 24);
      a2 = v6;
    }

    else
    {
      v5 = *(a2 + 24);
      *(v2 + 40) = *(a2 + 5);
      *(v2 + 24) = v5;
    }

    *(a2 + 6) = 0;
  }

  *(v2 + 56) = *(a2 + 56);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::AsmResourceBlob,BOOL,std::string> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,BOOL &>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v33);
  v8 = v7;
  v9 = (v7 + 96 * *(a1 + 8));
  v11 = *a2;
  v10 = *(a2 + 8);
  v35[0] = *a3;
  v36 = 1;
  if (!v11)
  {
    *(v9 + 24) = 0;
    v13 = v9 + 6;
    v9[22] = -1;
    v14 = v9 + 22;
    *v9 = 0;
    *(v9 + 1) = 0;
    v15 = 1;
    *(v9 + 2) = 0;
    goto LABEL_14;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v10 | 7) + 1;
    }

    v12 = operator new(v16);
    *(v9 + 1) = v10;
    *(v9 + 2) = v16 | 0x8000000000000000;
    *v9 = v12;
  }

  else
  {
    *(v9 + 23) = v10;
    v12 = v9;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  memmove(v12, v11, v10);
LABEL_12:
  *(v12 + v10) = 0;
  v15 = v36;
  v9[22] = -1;
  v17 = v9 + 22;
  *(v17 - 64) = 0;
  v13 = v17 - 16;
  if (v15 == -1)
  {
    goto LABEL_16;
  }

  v14 = v17;
LABEL_14:
  v34 = v13;
  (off_1F5AF5C68[v15])(&v34, v35);
  *v14 = v15;
  if (v36 != -1)
  {
    (off_1F5AF5C00[v36])(&v34, v35);
  }

LABEL_16:
  v36 = -1;
  v18 = *a1;
  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = &v18[96 * v19];
    v21 = (v8 + 88);
    v22 = v18 + 24;
    do
    {
      v24 = *(v22 - 24);
      *(v21 - 9) = *(v22 - 1);
      *(v21 - 22) = v24;
      *(v22 - 2) = 0;
      *(v22 - 1) = 0;
      *(v22 - 3) = 0;
      *(v21 - 64) = 0;
      *v21 = -1;
      v25 = *(v22 + 16);
      if (v25 != -1)
      {
        v34 = v21 - 16;
        (off_1F5AF5C68[v25])(&v34, v22);
        *v21 = v25;
      }

      v23 = v22 - 24;
      v21 += 24;
      v22 += 96;
    }

    while (v23 + 96 != v20);
    v18 = *a1;
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = &v18[96 * v26 - 8];
      v28 = -96 * v26;
      do
      {
        v29 = *v27;
        if (v29 != -1)
        {
          (off_1F5AF5C00[v29])(&v34, v27 - 64);
        }

        *v27 = -1;
        if (*(v27 - 65) < 0)
        {
          operator delete(*(v27 - 11));
        }

        v27 -= 96;
        v28 += 96;
      }

      while (v28);
      v18 = *a1;
    }
  }

  v30 = v33;
  if (v18 != v6)
  {
    free(v18);
  }

  *a1 = v8;
  v31 = *(a1 + 8) + 1;
  *(a1 + 8) = v31;
  *(a1 + 12) = v30;
  return v8 + 96 * v31 - 96;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,std::string>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v33);
  v8 = v7;
  v9 = (v7 + 96 * *(a1 + 8));
  v11 = *a2;
  v10 = *(a2 + 8);
  v35 = *a3;
  v36 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v37 = 2;
  if (!v11)
  {
    *(v9 + 24) = 0;
    v13 = v9 + 6;
    v9[22] = -1;
    v14 = v9 + 22;
    *v9 = 0;
    *(v9 + 1) = 0;
    v15 = 2;
    *(v9 + 2) = 0;
    goto LABEL_14;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v10 | 7) + 1;
    }

    v12 = operator new(v16);
    *(v9 + 1) = v10;
    *(v9 + 2) = v16 | 0x8000000000000000;
    *v9 = v12;
  }

  else
  {
    *(v9 + 23) = v10;
    v12 = v9;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  memmove(v12, v11, v10);
LABEL_12:
  *(v12 + v10) = 0;
  v15 = v37;
  v9[22] = -1;
  v17 = v9 + 22;
  *(v17 - 64) = 0;
  v13 = v17 - 16;
  if (v15 == -1)
  {
    goto LABEL_16;
  }

  v14 = v17;
LABEL_14:
  v34 = v13;
  (off_1F5AF5C68[v15])(&v34, &v35);
  *v14 = v15;
  if (v37 != -1)
  {
    (off_1F5AF5C00[v37])(&v34, &v35);
  }

LABEL_16:
  v37 = -1;
  v18 = *a1;
  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = &v18[96 * v19];
    v21 = (v8 + 88);
    v22 = v18 + 24;
    do
    {
      v24 = *(v22 - 24);
      *(v21 - 9) = *(v22 - 1);
      *(v21 - 22) = v24;
      *(v22 - 2) = 0;
      *(v22 - 1) = 0;
      *(v22 - 3) = 0;
      *(v21 - 64) = 0;
      *v21 = -1;
      v25 = *(v22 + 16);
      if (v25 != -1)
      {
        v34 = v21 - 16;
        (off_1F5AF5C68[v25])(&v34, v22);
        *v21 = v25;
      }

      v23 = v22 - 24;
      v21 += 24;
      v22 += 96;
    }

    while (v23 + 96 != v20);
    v18 = *a1;
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = &v18[96 * v26 - 8];
      v28 = -96 * v26;
      do
      {
        v29 = *v27;
        if (v29 != -1)
        {
          (off_1F5AF5C00[v29])(&v34, v27 - 64);
        }

        *v27 = -1;
        if (*(v27 - 65) < 0)
        {
          operator delete(*(v27 - 11));
        }

        v27 -= 96;
        v28 += 96;
      }

      while (v28);
      v18 = *a1;
    }
  }

  v30 = v33;
  if (v18 != v6)
  {
    free(v18);
  }

  *a1 = v8;
  v31 = *(a1 + 8) + 1;
  *(a1 + 8) = v31;
  *(a1 + 12) = v30;
  return v8 + 96 * v31 - 96;
}

uint64_t mlir::detail::AsmStateImpl::AsmStateImpl(uint64_t a1, unsigned int *a2, _OWORD *a3, uint64_t a4)
{
  v240 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((a2 + 6));
  mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(a1, Context);
  *(a1 + 184) = 0u;
  *(a1 + 56) = a1 + 72;
  *(a1 + 64) = 0x600000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x400000000;
  *(a1 + 248) = a1 + 264;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  v8 = (a1 + 280);
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  *(a1 + 296) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = a1 + 464;
  *(a1 + 456) = 0x400000000;
  *(a1 + 496) = a1 + 512;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  v9 = *a3;
  v10 = a3[1];
  v207 = a3;
  *(a1 + 576) = a3[2];
  *(a1 + 560) = v10;
  *(a1 + 544) = v9;
  v226 = 0;
  v227 = 0;
  v228 = v230;
  v229 = 0x400000000;
  v231 = &v232 + 8;
  v233 = 1;
  v232 = xmmword_1E0971D90;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(&v226, 24, 24, 3);
  v12 = a2;
  v13 = *(a1 + 424);
  *Slow = a1 + 400;
  Slow[1] = v13;
  v210 = a1 + 184;
  *(a1 + 424) = Slow;
  Slow[2] = 0;
  v206 = a1 + 400;
  v223 = v225;
  v224 = 0x800000000;
  v14 = a2[11];
  v208 = a1;
  if ((v14 & 0x7FFFFF) != 0)
  {
    v15 = 0;
    v16 = ((&a2[4 * ((v14 >> 23) & 1) + 17] + ((v14 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
    v17 = 24 * (v14 & 0x7FFFFF);
    do
    {
      *&v234 = v16;
      *(&v234 + 1) = *(a1 + 528);
      LODWORD(v235) = *(a1 + 536);
      v236 = Slow;
      v18 = v223;
      if (v15 >= HIDWORD(v224))
      {
        v22 = Slow;
        v23 = v12;
        if (v223 <= &v234 && v223 + 32 * v15 > &v234)
        {
          v24 = &v234 - v223;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v223, v225, v15 + 1, 32);
          v18 = v223;
          v19 = (v223 + v24);
          a1 = v208;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v223, v225, v15 + 1, 32);
          v19 = &v234;
          v18 = v223;
        }

        v12 = v23;
        Slow = v22;
      }

      else
      {
        v19 = &v234;
      }

      v20 = &v18[32 * v224];
      v21 = v19[1];
      *v20 = *v19;
      *(v20 + 1) = v21;
      v15 = v224 + 1;
      LODWORD(v224) = v224 + 1;
      v16 += 24;
      v17 -= 24;
    }

    while (v17);
  }

  v25 = v224;
  if (v224)
  {
    v213 = v8;
    do
    {
      v26 = v223 + 32 * v25;
      v209 = *(v26 - 4);
      if ((*(v207 + 40) & 0x84) != 0)
      {
        v27 = *(v26 - 1);
        LODWORD(v224) = v25 - 1;
        v28 = *(v210 + 240);
        if (v28 != v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v29 = *(v26 - 4);
        v27 = *(v26 - 1);
        *(a1 + 528) = *(v26 - 3);
        *(a1 + 536) = v29;
        LODWORD(v224) = v25 - 1;
        v28 = *(v210 + 240);
        if (v28 != v27)
        {
LABEL_21:
          while (1)
          {
            *(*v28 + 24) = v28[1];
            v30 = v28[2];
            if (v30)
            {
              break;
            }

            v28 = *(v210 + 240);
            if (v28 == v27)
            {
              goto LABEL_104;
            }
          }

          v36 = *v28;
          v37 = **v28;
          v38 = *(*v28 + 16);
          if (*(v30 + 8))
          {
            if (v38)
            {
              HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v30 + 16), *(v30 + 24));
              v39 = v38 - 1;
              v41 = *(v30 + 16);
              v40 = *(v30 + 24);
              if (v40)
              {
                if (v41 == -2)
                {
                  for (i = 1; ; ++i)
                  {
                    v31 = HashValue & v39;
                    v32 = (v37 + 24 * (HashValue & v39));
                    v33 = *v32;
                    if (*v32 == -2)
                    {
                      break;
                    }

                    if (v33 == -1)
                    {
                      goto LABEL_62;
                    }

                    if (v40 == v32[1] && !memcmp(0xFFFFFFFFFFFFFFFELL, v33, v40))
                    {
                      break;
                    }

                    HashValue = i + v31;
                  }

LABEL_48:
                  v32[2] = *(v30 + 8);
LABEL_49:
                  v28[2] = *v30;
                  llvm::deallocate_buffer(v30, 0x28);
                }

                v61 = 0;
                v62 = 1;
                v63 = HashValue & v39;
                v32 = (v37 + 24 * (HashValue & v39));
                v64 = *v32;
                if (*v32 == -2)
                {
                  goto LABEL_74;
                }

                while (v64 != -1)
                {
                  if (v40 == v32[1])
                  {
                    v203 = v63;
                    v204 = v62;
                    v65 = memcmp(v41, v64, v40);
                    v63 = v203;
                    v62 = v204;
                    if (!v65)
                    {
                      goto LABEL_48;
                    }
                  }

                  do
                  {
LABEL_74:
                    if (v61)
                    {
                      v66 = 0;
                    }

                    else
                    {
                      v66 = v64 + 2 == 0;
                    }

                    if (v66)
                    {
                      v61 = v32;
                    }

                    v67 = v62 + v63;
                    ++v62;
                    v63 = v67 & v39;
                    v32 = (v37 + 24 * (v67 & v39));
                    v64 = *v32;
                  }

                  while (*v32 == -2);
                }
              }

              else if (v41 == -2)
              {
                v53 = 1;
                v54 = HashValue & v39;
                v32 = (v37 + 24 * (HashValue & v39));
                v55 = *v32;
                if (*v32 == -2)
                {
                  goto LABEL_48;
                }

                while (v55 != -1)
                {
                  if (v32[1])
                  {
                    v56 = v53 + v54;
                    ++v53;
                    v54 = v56 & v39;
                    v32 = (v37 + 24 * (v56 & v39));
                    v55 = *v32;
                    if (*v32 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_48;
                }

LABEL_62:
                v61 = 0;
              }

              else
              {
                v61 = 0;
                v72 = 1;
                v73 = HashValue & v39;
                v32 = (v37 + 24 * (HashValue & v39));
                v74 = *v32;
                if (*v32 == -2)
                {
                  goto LABEL_90;
                }

                while (v74 != -1)
                {
                  if (!v32[1])
                  {
                    goto LABEL_48;
                  }

                  do
                  {
LABEL_90:
                    if (v61)
                    {
                      v75 = 0;
                    }

                    else
                    {
                      v75 = v74 + 2 == 0;
                    }

                    if (v75)
                    {
                      v61 = v32;
                    }

                    v76 = v72 + v73;
                    ++v72;
                    v73 = v76 & v39;
                    v32 = (v37 + 24 * (v76 & v39));
                    v74 = *v32;
                  }

                  while (*v32 == -2);
                }
              }

              if (v41 == -1)
              {
                goto LABEL_48;
              }

              if (v61)
              {
                v32 = v61;
              }

              v51 = *(v36 + 16);
            }

            else
            {
              v51 = 0;
              v32 = 0;
            }

            *&v234 = v32;
            v52 = *(v36 + 8);
            if (4 * v52 + 4 >= 3 * v51)
            {
              v51 *= 2;
            }

            else if (v51 + ~v52 - *(v36 + 12) > v51 >> 3)
            {
              *(v36 + 8) = v52 + 1;
              if (*v32 != -1)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(v36, v51);
            llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(v36, v30 + 16, &v234);
            v32 = v234;
            ++*(v36 + 8);
            if (*v32 != -1)
            {
LABEL_46:
              --*(v36 + 12);
            }

LABEL_47:
            *v32 = *(v30 + 16);
            v32[2] = 0;
            goto LABEL_48;
          }

          if (!v38)
          {
            goto LABEL_49;
          }

          v42 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v30 + 16), *(v30 + 24));
          v43 = v38 - 1;
          v45 = *(v30 + 16);
          v44 = *(v30 + 24);
          if (v44)
          {
            if (v45 != -2)
            {
              v68 = 1;
              v69 = v42 & v43;
              v48 = v37 + 24 * (v42 & v43);
              v70 = *v48;
              if (*v48 == -2)
              {
                goto LABEL_85;
              }

              while (v70 != -1)
              {
                if (v44 == *(v48 + 8) && !memcmp(v45, v70, v44))
                {
                  goto LABEL_103;
                }

                do
                {
LABEL_85:
                  v71 = v68 + v69;
                  ++v68;
                  v69 = v71 & v43;
                  v48 = v37 + 24 * (v71 & v43);
                  v70 = *v48;
                }

                while (*v48 == -2);
              }

              goto LABEL_102;
            }

            v46 = 1;
            v47 = v42 & v43;
            v48 = v37 + 24 * (v42 & v43);
            v49 = *v48;
            if (*v48 != -2)
            {
              while (v49 != -1)
              {
                if (v44 != *(v48 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v49, v44))
                {
                  v50 = v46 + v47;
                  ++v46;
                  v47 = v50 & v43;
                  v48 = v37 + 24 * (v50 & v43);
                  v49 = *v48;
                  if (*v48 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_103;
              }

LABEL_102:
              if (v45 != -1)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
            v57 = 1;
            if (v45 == -2)
            {
              v58 = v42 & v43;
              v48 = v37 + 24 * (v42 & v43);
              v59 = *v48;
              if (*v48 != -2)
              {
                while (v59 != -1)
                {
                  if (*(v48 + 8))
                  {
                    v60 = v57 + v58;
                    ++v57;
                    v58 = v60 & v43;
                    v48 = v37 + 24 * (v60 & v43);
                    v59 = *v48;
                    if (*v48 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_103;
                }

                goto LABEL_102;
              }
            }

            else
            {
              while (1)
              {
                v48 = v37 + 24 * (v42 & v43);
                if (*v48 != -2)
                {
                  if (*v48 == -1)
                  {
                    goto LABEL_102;
                  }

                  if (!*(v48 + 8))
                  {
                    break;
                  }
                }

                v42 = v57 + (v42 & v43);
                ++v57;
              }
            }
          }

LABEL_103:
          *v48 = xmmword_1E0971DA0;
          *(v36 + 8) = vadd_s32(*(v36 + 8), 0x1FFFFFFFFLL);
          goto LABEL_49;
        }
      }

LABEL_104:
      *(&v232 + 1) += 24;
      if (v226 && (v77 = ((v226 + 7) & 0xFFFFFFFFFFFFFFF8), (v77 + 3) <= v227))
      {
        v226 = v77 + 3;
      }

      else
      {
        v77 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(&v226, 24, 24, 3);
        v28 = *(v210 + 240);
      }

      a1 = v208;
      *v77 = v206;
      v77[1] = v28;
      *(v208 + 424) = v77;
      v77[2] = 0;
      *&v214 = v8;
      if ((*(v208 + 584) & 4) == 0)
      {
        v78 = *(v209 + 2);
        if (v78)
        {
          if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(*(v209 + 2)))
          {
            InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v78);
          }
        }
      }

      v80 = *(v209 + 1);
      if (v80 != v209)
      {
        v81 = 0;
        while (2)
        {
          if (v80)
          {
            v82 = (v80 - 8);
          }

          else
          {
            v82 = 0;
          }

          v83 = *(a1 + 392);
          if (!v83)
          {
            goto LABEL_186;
          }

          v84 = *(a1 + 376);
          v85 = ((v82 >> 4) ^ (v82 >> 9)) & (v83 - 1);
          v86 = v84 + 32 * v85;
          v87 = *v86;
          if (*v86 == v82)
          {
            goto LABEL_147;
          }

          v88 = 0;
          v89 = 1;
          while (v87 != -4096)
          {
            if (v88)
            {
              v90 = 0;
            }

            else
            {
              v90 = v87 == -8192;
            }

            if (v90)
            {
              v88 = v86;
            }

            v91 = v85 + v89++;
            v85 = v91 & (v83 - 1);
            v86 = v84 + 32 * v85;
            v87 = *v86;
            if (*v86 == v82)
            {
              goto LABEL_147;
            }
          }

          if (v88)
          {
            v86 = v88;
          }

          v126 = *(a1 + 384);
          if (4 * v126 + 4 >= 3 * v83)
          {
LABEL_186:
            v83 *= 2;
LABEL_187:
            v127 = *(a1 + 392);
            if (v127)
            {
              v128 = *(a1 + 376);
              v129 = v127 - 1;
              v130 = v129 & ((v82 >> 4) ^ (v82 >> 9));
              v86 = v128 + 32 * v130;
              v131 = *v86;
              if (*v86 != v82)
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
                    v132 = v86;
                  }

                  v135 = v130 + v133++;
                  v130 = v135 & v129;
                  v86 = v128 + 32 * v130;
                  v131 = *v86;
                  a1 = v208;
                  v8 = v213;
                  if (*v86 == v82)
                  {
                    goto LABEL_200;
                  }
                }

                if (v132)
                {
                  v86 = v132;
                }

                a1 = v208;
                v8 = v213;
              }
            }

            else
            {
              v86 = 0;
            }

LABEL_200:
            ++*(a1 + 384);
            if (*v86 == -4096)
            {
              goto LABEL_132;
            }

LABEL_131:
            --*(a1 + 388);
            goto LABEL_132;
          }

          if (v83 + ~v126 - *(a1 + 388) <= v83 >> 3)
          {
            goto LABEL_187;
          }

          *(a1 + 384) = v126 + 1;
          if (*v86 != -4096)
          {
            goto LABEL_131;
          }

LABEL_132:
          *v86 = v82;
          *(v86 + 8) = -1;
          *(v86 + 16) = "";
          *(v86 + 24) = 0;
          __p[0] = 0;
          __p[1] = 0;
          v217 = 0;
          DWORD2(v234) = 0;
          LOBYTE(v238) = 0;
          HIDWORD(v238) = 1;
          v236 = 0;
          v237 = 0;
          v235 = 0;
          *&v234 = &unk_1F5B3FB30;
          v239 = __p;
          llvm::raw_ostream::SetBufferAndMode(&v234, 0, 0, 0);
          v92 = v237;
          if (v236 - v237 > 2)
          {
            *(v237 + 2) = 98;
            *v92 = 25182;
            v237 += 3;
          }

          else
          {
            llvm::raw_ostream::write(&v234, "^bb", 3uLL);
          }

          llvm::raw_ostream::operator<<(&v234, v81);
          llvm::raw_ostream::~raw_ostream(&v234);
          if (v217 >= 0)
          {
            v93 = __p;
          }

          else
          {
            v93 = __p[0];
          }

          if (v217 >= 0)
          {
            v94 = SHIBYTE(v217);
          }

          else
          {
            v94 = __p[1];
          }

          if (v94)
          {
            *(a1 + 512) += v94;
            v95 = *(a1 + 432);
            if (v95 && &v95[v94] <= *(a1 + 440))
            {
              *(v210 + 248) = &v95[v94];
            }

            else
            {
              v136 = v93;
              v137 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v210 + 248, v94, v94, 0);
              v93 = v136;
              a1 = v208;
              v95 = v137;
            }

            memmove(v95, v93, v94);
            *(v86 + 16) = v95;
            *(v86 + 24) = v94;
            if (SHIBYTE(v217) < 0)
            {
LABEL_146:
              operator delete(__p[0]);
            }
          }

          else
          {
            *(v86 + 16) = 0;
            *(v86 + 24) = 0;
            if (SHIBYTE(v217) < 0)
            {
              goto LABEL_146;
            }
          }

LABEL_147:
          *(v86 + 8) = v81;
          isEntryBlock = mlir::Block::isEntryBlock(v82);
          v97 = isEntryBlock;
          v98 = 3;
          if (!isEntryBlock)
          {
            v98 = 0;
          }

          *&v234 = &v236;
          v235 = 32;
          if (isEntryBlock)
          {
            qmemcpy(&v236, "arg", 3);
          }

          *(&v234 + 1) = v98;
          LODWORD(__p[1]) = 2;
          v220 = 0;
          v221 = 1;
          v218 = 0;
          v219 = 0;
          v217 = 0;
          __p[0] = &unk_1F5B3FBC0;
          v222 = &v234;
          llvm::raw_ostream::SetBufferAndMode(__p, 0, 0, 0);
          v100 = *(v82 + 6);
          v101 = *(v82 + 7);
          if (v100 != v101)
          {
            if (v97)
            {
              while (1)
              {
                v112 = *v100;
                v113 = *(a1 + 296);
                if (!v113)
                {
                  goto LABEL_172;
                }

                v114 = *(a1 + 280);
                v115 = 0x9DDFEA08EB382D69 * ((8 * *v100 - 0xAE502812AA7333) ^ HIDWORD(*v100));
                v116 = 0x9DDFEA08EB382D69 * (HIDWORD(v112) ^ (v115 >> 47) ^ v115);
                v117 = v113 - 1;
                v118 = (-348639895 * ((v116 >> 47) ^ v116)) & v117;
                v119 = *(v114 + 16 * v118);
                if (v119 != v112)
                {
                  break;
                }

LABEL_165:
                if (++v100 == v101)
                {
                  goto LABEL_177;
                }
              }

              v120 = 1;
              while (v119 != -4096)
              {
                v121 = v118 + v120++;
                v118 = v121 & v117;
                v119 = *(v114 + 16 * v118);
                if (v119 == v112)
                {
                  goto LABEL_165;
                }
              }

LABEL_172:
              v122 = *(&v234 + 1);
              if (*(&v234 + 1) != 3)
              {
                if (*(&v234 + 1) <= 3uLL)
                {
                  if (v235 > 2 || (llvm::SmallVectorBase<unsigned long long>::grow_pod(&v234, &v236, 3uLL, 1), v122 = *(&v234 + 1), *(&v234 + 1) != 3))
                  {
                    bzero((v234 + v122), 3 - v122);
                  }
                }

                *(&v234 + 1) = 3;
              }

              v111 = *(a1 + 532);
              *(a1 + 532) = v111 + 1;
              llvm::raw_ostream::operator<<(__p, v111);
              goto LABEL_165;
            }

            while (2)
            {
              v99 = *v100;
              v102 = *(a1 + 296);
              if (v102)
              {
                v103 = *(a1 + 280);
                v104 = 0x9DDFEA08EB382D69 * ((8 * *v100 - 0xAE502812AA7333) ^ HIDWORD(*v100));
                v105 = 0x9DDFEA08EB382D69 * (HIDWORD(v99) ^ (v104 >> 47) ^ v104);
                v106 = v102 - 1;
                v107 = (-348639895 * ((v105 >> 47) ^ v105)) & v106;
                v108 = *(v103 + 16 * v107);
                if (v108 != v99)
                {
                  v109 = 1;
                  while (v108 != -4096)
                  {
                    v110 = v107 + v109++;
                    v107 = v110 & v106;
                    v108 = *(v103 + 16 * v107);
                    if (v108 == v99)
                    {
                      goto LABEL_155;
                    }
                  }

                  goto LABEL_154;
                }
              }

              else
              {
LABEL_154:
              }

LABEL_155:
              if (++v100 == v101)
              {
                break;
              }

              continue;
            }
          }

LABEL_177:
          v123 = (v82 + 32);
          for (j = *(v82 + 5); j != v123; j = j[1])
          {
            v125 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v99);
          }

          llvm::raw_ostream::~raw_ostream(__p);
          if (v234 != &v236)
          {
            free(v234);
          }

          ++v81;
          v80 = *(v80 + 1);
          a1 = v208;
          if (v80 == v209)
          {
            break;
          }

          continue;
        }
      }

      mlir::Region::OpIterator::OpIterator(__p, v209, 0);
      mlir::Region::OpIterator::OpIterator(&v236, v209, 1);
      v139 = v217;
      v235 = v217;
      v234 = *__p;
      v214 = *__p;
      v215 = v217;
      v140 = v238;
      while (v139 != v140)
      {
        v141 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v139, v138);
        v142 = *(v141 + 44);
        v143 = v142 & 0x7FFFFF;
        if ((v142 & 0x7FFFFF) != 0)
        {
          v144 = (v141 + 16 * ((v142 >> 23) & 1) + ((v142 >> 21) & 0x7F8) + 32 * *(v141 + 40) + 64);
          v145 = v224;
          v146 = 24 * v143;
          do
          {
            __p[0] = v144;
            __p[1] = *(a1 + 528);
            LODWORD(v217) = *(a1 + 536);
            v218 = v77;
            v147 = v223;
            if (v145 >= HIDWORD(v224))
            {
              if (v223 <= __p && v223 + 32 * v145 > __p)
              {
                v151 = __p - v223;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v223, v225, v145 + 1, 32);
                v147 = v223;
                v148 = (v223 + v151);
                a1 = v208;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v223, v225, v145 + 1, 32);
                v148 = __p;
                v147 = v223;
              }
            }

            else
            {
              v148 = __p;
            }

            v149 = &v147[32 * v224];
            v150 = *(v148 + 1);
            *v149 = *v148;
            *(v149 + 1) = v150;
            v145 = v224 + 1;
            LODWORD(v224) = v224 + 1;
            v144 += 24;
            v146 -= 24;
          }

          while (v146);
        }

        mlir::Region::OpIterator::operator++(&v214);
        v139 = v215;
      }

      v25 = v224;
    }

    while (v224);
  }

  v152 = *(v210 + 240);
  if (v152)
  {
    while (1)
    {
      *(*v152 + 24) = v152[1];
      v158 = v152[2];
      if (v158)
      {
        break;
      }

      v152 = *(v210 + 240);
      if (!v152)
      {
        goto LABEL_306;
      }
    }

    v159 = *v152;
    v160 = **v152;
    v161 = *(*v152 + 16);
    if (*(v158 + 8))
    {
      if (v161)
      {
        v156 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v158 + 16), *(v158 + 24));
        v162 = v161 - 1;
        v164 = *(v158 + 16);
        v163 = *(v158 + 24);
        if (v163)
        {
          if (v164 == -2)
          {
            for (k = 1; ; ++k)
            {
              v153 = v156 & v162;
              v154 = (v160 + 24 * (v156 & v162));
              v155 = *v154;
              if (*v154 == -2)
              {
                break;
              }

              if (v155 == -1)
              {
                goto LABEL_264;
              }

              if (v163 == v154[1] && !memcmp(0xFFFFFFFFFFFFFFFELL, v155, v163))
              {
                break;
              }

              v156 = k + v153;
            }

            goto LABEL_250;
          }

          v184 = 0;
          v185 = 1;
          v186 = v156 & v162;
          v154 = (v160 + 24 * (v156 & v162));
          v187 = *v154;
          if (*v154 == -2)
          {
            goto LABEL_276;
          }

          while (v187 != -1)
          {
            if (v163 == v154[1])
            {
              v212 = v185;
              v211 = v186;
              v188 = memcmp(v164, v187, v163);
              v186 = v211;
              v185 = v212;
              if (!v188)
              {
                goto LABEL_250;
              }
            }

            do
            {
LABEL_276:
              if (v184)
              {
                v189 = 0;
              }

              else
              {
                v189 = v187 + 2 == 0;
              }

              if (v189)
              {
                v184 = v154;
              }

              v190 = v185 + v186;
              ++v185;
              v186 = v190 & v162;
              v154 = (v160 + 24 * (v190 & v162));
              v187 = *v154;
            }

            while (*v154 == -2);
          }
        }

        else if (v164 == -2)
        {
          v176 = 1;
          v177 = v156 & v162;
          v154 = (v160 + 24 * (v156 & v162));
          v178 = *v154;
          if (*v154 == -2)
          {
            goto LABEL_250;
          }

          while (v178 != -1)
          {
            if (v154[1])
            {
              v179 = v176 + v177;
              ++v176;
              v177 = v179 & v162;
              v154 = (v160 + 24 * (v179 & v162));
              v178 = *v154;
              if (*v154 != -2)
              {
                continue;
              }
            }

            goto LABEL_250;
          }

LABEL_264:
          v184 = 0;
        }

        else
        {
          v184 = 0;
          v195 = 1;
          v196 = v156 & v162;
          v154 = (v160 + 24 * (v156 & v162));
          v197 = *v154;
          if (*v154 == -2)
          {
            goto LABEL_292;
          }

          while (v197 != -1)
          {
            if (!v154[1])
            {
              goto LABEL_250;
            }

            do
            {
LABEL_292:
              if (v184)
              {
                v198 = 0;
              }

              else
              {
                v198 = v197 + 2 == 0;
              }

              if (v198)
              {
                v184 = v154;
              }

              v199 = v195 + v196;
              ++v195;
              v196 = v199 & v162;
              v154 = (v160 + 24 * (v199 & v162));
              v197 = *v154;
            }

            while (*v154 == -2);
          }
        }

        if (v164 == -1)
        {
          goto LABEL_250;
        }

        if (v184)
        {
          v154 = v184;
        }

        v174 = *(v159 + 16);
      }

      else
      {
        v174 = 0;
        v154 = 0;
      }

      *&v234 = v154;
      v175 = *(v159 + 8);
      if (4 * v175 + 4 >= 3 * v174)
      {
        v174 *= 2;
      }

      else if (v174 + ~v175 - *(v159 + 12) > v174 >> 3)
      {
        *(v159 + 8) = v175 + 1;
        if (*v154 == -1)
        {
LABEL_249:
          *v154 = *(v158 + 16);
          v154[2] = 0;
LABEL_250:
          v154[2] = *(v158 + 8);
          goto LABEL_251;
        }

LABEL_248:
        --*(v159 + 12);
        goto LABEL_249;
      }

      llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(v159, v174);
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(v159, v158 + 16, &v234);
      v154 = v234;
      ++*(v159 + 8);
      if (*v154 == -1)
      {
        goto LABEL_249;
      }

      goto LABEL_248;
    }

    if (!v161)
    {
      goto LABEL_251;
    }

    v165 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v158 + 16), *(v158 + 24));
    v166 = v161 - 1;
    v168 = *(v158 + 16);
    v167 = *(v158 + 24);
    if (v167)
    {
      if (v168 == -2)
      {
        v169 = 1;
        v170 = v165 & v166;
        v171 = v160 + 24 * (v165 & v166);
        v172 = *v171;
        if (*v171 != -2)
        {
          while (v172 != -1)
          {
            if (v167 != *(v171 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v172, v167))
            {
              v173 = v169 + v170;
              ++v169;
              v170 = v173 & v166;
              v171 = v160 + 24 * (v173 & v166);
              v172 = *v171;
              if (*v171 != -2)
              {
                continue;
              }
            }

            goto LABEL_305;
          }

          goto LABEL_304;
        }

        goto LABEL_305;
      }

      v191 = 1;
      v192 = v165 & v166;
      v171 = v160 + 24 * (v165 & v166);
      v193 = *v171;
      if (*v171 == -2)
      {
        goto LABEL_287;
      }

      while (v193 != -1)
      {
        if (v167 == *(v171 + 8) && !memcmp(v168, v193, v167))
        {
          goto LABEL_305;
        }

        do
        {
LABEL_287:
          v194 = v191 + v192;
          ++v191;
          v192 = v194 & v166;
          v171 = v160 + 24 * (v194 & v166);
          v193 = *v171;
        }

        while (*v171 == -2);
      }
    }

    else
    {
      v180 = 1;
      if (v168 != -2)
      {
        while (1)
        {
          v171 = v160 + 24 * (v165 & v166);
          if (*v171 != -2)
          {
            if (*v171 == -1)
            {
              goto LABEL_304;
            }

            if (!*(v171 + 8))
            {
              goto LABEL_305;
            }
          }

          v165 = v180 + (v165 & v166);
          ++v180;
        }
      }

      v181 = v165 & v166;
      v171 = v160 + 24 * (v165 & v166);
      v182 = *v171;
      if (*v171 == -2)
      {
LABEL_305:
        *v171 = xmmword_1E0971DA0;
        *(v159 + 8) = vadd_s32(*(v159 + 8), 0x1FFFFFFFFLL);
LABEL_251:
        v152[2] = *v158;
        llvm::deallocate_buffer(v158, 0x28);
      }

      while (v182 != -1)
      {
        if (*(v171 + 8))
        {
          v183 = v180 + v181;
          ++v180;
          v181 = v183 & v166;
          v171 = v160 + 24 * (v183 & v166);
          v182 = *v171;
          if (*v171 != -2)
          {
            continue;
          }
        }

        goto LABEL_305;
      }
    }

LABEL_304:
    if (v168 != -1)
    {
      goto LABEL_251;
    }

    goto LABEL_305;
  }

LABEL_306:
  if (v223 != v225)
  {
    free(v223);
  }

  if (v229)
  {
    llvm::deallocate_buffer(*v228, 0x1000);
  }

  if (v232)
  {
    llvm::deallocate_buffer(*v231, *(v231 + 1));
  }

  if (v231 != &v232 + 8)
  {
    free(v231);
  }

  if (v228 != v230)
  {
    free(v228);
  }

  *(v208 + 536) = 0;
  *(v208 + 528) = 0;
  *(v208 + 592) = 0;
  *(v208 + 616) = 0;
  *(v208 + 600) = 0u;
  v200 = *v207;
  v201 = v207[2];
  *(v208 + 640) = v207[1];
  *(v208 + 656) = v201;
  *(v208 + 624) = v200;
  *(v208 + 672) = a4;
  *(v208 + 680) = 0u;
  *(v208 + 696) = 0;
  *(v208 + 704) = v208 + 720;
  *(v208 + 712) = 0;
  return v208;
}