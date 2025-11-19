BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 32;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v11;
    *(Slow + 24) = v3;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 32;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v11;
    *(Slow + 24) = v3;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::silc::detail::TensorAxisRefAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "coreml", 6uLL);
  v8 = 0;
  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>(v2, &v8, 0))
  {
    return 0;
  }

  v4 = v8;
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v5 + 16, v6 + 1, 8);
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  return 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML13ParamDeclAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML13ParamDeclAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t *a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::interleave<mlir::ODIE::Compiler::CoreML::ParamDeclAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},llvm::raw_ostream,mlir::ODIE::Compiler::CoreML::ParamDeclAttr const>(mlir::ODIE::Compiler::CoreML::ParamDeclAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(uint64_t result, uint64_t *a2, mlir::AsmPrinter *a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v23[9] = v5;
    v23[10] = v6;
    v11 = result;
    v12 = *result;
    v23[0] = v12;
    result = (*(*a3 + 56))(a3, v12);
    if ((result & 1) == 0)
    {
      v13 = (*(*a3 + 16))(a3);
      v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
      mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(v23, a3);
      result = (*(*v13 + 80))(v13);
      if (v14 == result + v13[4] - v13[2])
      {
        result = (*(*a3 + 40))(a3, v12);
      }
    }

    for (i = (v11 + 8); i != a2; ++i)
    {
      v16 = *a5;
      v17 = *(a5 + 8);
      v18 = a4[4];
      if (v17 <= a4[3] - v18)
      {
        if (v17)
        {
          v19 = *(a5 + 8);
          memcpy(v18, v16, v17);
          a4[4] += v19;
        }
      }

      else
      {
        llvm::raw_ostream::write(a4, v16, v17);
      }

      v20 = *i;
      v23[0] = v20;
      result = (*(*a3 + 56))(a3, v20);
      if ((result & 1) == 0)
      {
        v21 = (*(*a3 + 16))(a3);
        v22 = (*(*v21 + 80))(v21) + v21[4] - v21[2];
        mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(v23, a3);
        result = (*(*v21 + 80))(v21);
        if (v22 == result + v21[4] - v21[2])
        {
          result = (*(*a3 + 40))(a3, v20);
        }
      }
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v22 = a2;
  v14 = llvm::hash_value(*a5, *(a5 + 8));
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v22, a3, a4, v14);
  v23 = v22;
  v16 = llvm::hash_value(*a6, *(a6 + 8));
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v23, v15, a4, v16);
  v24 = v23;
  v18 = llvm::hash_value(*a7, *(a7 + 8));
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v24, v17, a4, v18);
  v25 = v24;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v25, v19, a4, (*a8 >> 4) ^ (*a8 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v25, v20, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!v2 || !memcmp(*(a1 + 8), *a2, v2))
  {
    v5 = *(a1 + 32);
    if (v5 == *(a2 + 24) && (!v5 || !memcmp(*(a1 + 24), *(a2 + 16), v5)))
    {
      v6 = *(a1 + 48);
      if (v6 == *(a2 + 40) && (!v6 || !memcmp(*(a1 + 40), *(a2 + 32), v6)))
      {
        return *(a1 + 56) == *(a2 + 48);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  if (v3)
  {
    v8 = *a2;
    v9 = v3 + 1;
    a1[10] += v3 + 1;
    Slow = *a1;
    if (*a1 && v9 + Slow <= a1[1])
    {
      *a1 = v9 + Slow;
      if (v3 >= 8)
      {
LABEL_5:
        v11 = Slow;
        v12 = v8;
        if ((Slow - v8) < 0x20)
        {
          goto LABEL_22;
        }

        if (v3 >= 0x20)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFFE0;
          v16 = (v8 + 16);
          v17 = (Slow + 16);
          v18 = v3 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 32;
          }

          while (v18);
          if (v3 == v13)
          {
LABEL_23:
            *(Slow + v3) = 0;
            if (v4)
            {
              goto LABEL_24;
            }

LABEL_9:
            v14 = 0;
            if (v6)
            {
              goto LABEL_43;
            }

LABEL_10:
            v15 = 0;
            goto LABEL_64;
          }

          if ((v3 & 0x18) == 0)
          {
            v12 = (v8 + v13);
            v11 = (Slow + v13);
            goto LABEL_22;
          }
        }

        else
        {
          v13 = 0;
        }

        v11 = (Slow + (v3 & 0xFFFFFFFFFFFFFFF8));
        v12 = (v8 + (v3 & 0xFFFFFFFFFFFFFFF8));
        v20 = (v8 + v13);
        v21 = (Slow + v13);
        v22 = v13 - (v3 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v23 = *v20++;
          *v21++ = v23;
          v22 += 8;
        }

        while (v22);
        if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_23;
        }

        do
        {
LABEL_22:
          v25 = *v12++;
          *v11++ = v25;
        }

        while (v12 != (v8 + v3));
        goto LABEL_23;
      }
    }

    else
    {
      v24 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v9, v3 + 1, 0);
      a1 = v24;
      if (v3 >= 8)
      {
        goto LABEL_5;
      }
    }

    v11 = Slow;
    v12 = v8;
    goto LABEL_22;
  }

  Slow = 0;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_24:
  v26 = v4 + 1;
  a1[10] += v4 + 1;
  v14 = *a1;
  if (*a1 && v26 + v14 <= a1[1])
  {
    *a1 = v26 + v14;
    if (v4 >= 8)
    {
      goto LABEL_27;
    }

LABEL_40:
    v27 = v14;
    v28 = v2;
    goto LABEL_41;
  }

  v38 = a1;
  v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v26, v4 + 1, 0);
  a1 = v38;
  if (v4 < 8)
  {
    goto LABEL_40;
  }

LABEL_27:
  v27 = v14;
  v28 = v2;
  if ((v14 - v2) < 0x20)
  {
    goto LABEL_41;
  }

  if (v4 < 0x20)
  {
    v29 = 0;
LABEL_34:
    v27 = (v14 + (v4 & 0xFFFFFFFFFFFFFFF8));
    v28 = (v2 + (v4 & 0xFFFFFFFFFFFFFFF8));
    v34 = (v2 + v29);
    v35 = (v14 + v29);
    v36 = v29 - (v4 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v37 = *v34++;
      *v35++ = v37;
      v36 += 8;
    }

    while (v36);
    if (v4 == (v4 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      v39 = *v28++;
      *v27++ = v39;
    }

    while (v28 != (v2 + v4));
    goto LABEL_42;
  }

  v29 = v4 & 0xFFFFFFFFFFFFFFE0;
  v30 = (v2 + 16);
  v31 = (v14 + 16);
  v32 = v4 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v33 = *v30;
    *(v31 - 1) = *(v30 - 1);
    *v31 = v33;
    v30 += 2;
    v31 += 2;
    v32 -= 32;
  }

  while (v32);
  if (v4 != v29)
  {
    if ((v4 & 0x18) == 0)
    {
      v28 = (v2 + v29);
      v27 = (v14 + v29);
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_42:
  *(v14 + v4) = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_43:
  a1[10] += v6 + 1;
  v15 = *a1;
  v40 = v6 + 1 + *a1;
  if (*a1)
  {
    v41 = v40 > a1[1];
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    *a1 = v40;
    if (v6 >= 8)
    {
      goto LABEL_48;
    }

LABEL_61:
    v42 = v15;
    v43 = v5;
    goto LABEL_62;
  }

  v53 = a1;
  v15 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v6 + 1, v6 + 1, 0);
  a1 = v53;
  if (v6 < 8)
  {
    goto LABEL_61;
  }

LABEL_48:
  v42 = v15;
  v43 = v5;
  if ((v15 - v5) >= 0x20)
  {
    if (v6 < 0x20)
    {
      v44 = 0;
      goto LABEL_55;
    }

    v44 = v6 & 0xFFFFFFFFFFFFFFE0;
    v45 = (v5 + 16);
    v46 = (v15 + 16);
    v47 = v6 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v48 = *v45;
      *(v46 - 1) = *(v45 - 1);
      *v46 = v48;
      v45 += 2;
      v46 += 2;
      v47 -= 32;
    }

    while (v47);
    if (v6 == v44)
    {
      goto LABEL_63;
    }

    if ((v6 & 0x18) != 0)
    {
LABEL_55:
      v42 = (v15 + (v6 & 0xFFFFFFFFFFFFFFF8));
      v43 = (v5 + (v6 & 0xFFFFFFFFFFFFFFF8));
      v49 = (v5 + v44);
      v50 = (v15 + v44);
      v51 = v44 - (v6 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v52 = *v49++;
        *v50++ = v52;
        v51 += 8;
      }

      while (v51);
      if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v43 = (v5 + v44);
    v42 = (v15 + v44);
  }

  do
  {
LABEL_62:
    v54 = *v43++;
    *v42++ = v54;
  }

  while (v43 != (v5 + v6));
LABEL_63:
  *(v15 + v6) = 0;
LABEL_64:
  a1[10] += 64;
  v55 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v56 = v55 + 8;
  if (*a1)
  {
    v57 = v56 > a1[1];
  }

  else
  {
    v57 = 1;
  }

  if (v57)
  {
    v55 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 64, 64, 3);
  }

  else
  {
    *a1 = v56;
  }

  *v55 = 0;
  v55[1] = Slow;
  v55[2] = v3;
  v55[3] = v14;
  v55[4] = v4;
  v55[5] = v15;
  v55[6] = v6;
  v55[7] = v7;
  return v55;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    *(Slow + 8) = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    *Slow = 0;
    *(Slow + 8) = v12;
    *(Slow + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJNS1_9TypedAttrESF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    *Slow = 0;
    *(Slow + 8) = v12;
    *(Slow + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJRNS1_9TypedAttrESG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17HandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_10HandleTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21AsyncValueTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14AsyncValueTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::getCoreMLTensorEncoding(uint64_t a1)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  if (!a1)
  {
    return 0;
  }

  v1 = *(*a1 + 136);
  v2 = v1 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v3 = v1 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a1 : 0;
  v19 = v3;
  if (!v2)
  {
    return 0;
  }

  result = mlir::SparseElementsAttr::getValues(&v19);
  if (!result || *(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
  {
    mlir::ArrayAttr::getValue(&v19);
    v21 = v23;
    v22 = 0xC00000000;
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = v5;
    if (v5 < 0xD)
    {
      v7 = 0;
      v8 = v5;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v5, 4);
      v7 = v22;
      v8 = v6 - v22;
      if (v6 == v22)
      {
LABEL_16:
        LODWORD(v22) = v6;
        if (v6 >= 1)
        {
          v9 = v21;
          v10 = v6 & 0x7FFFFFFF;
          if (v10 > 7)
          {
            v11 = v10 - (v6 & 7);
            v12 = xmmword_1E0970050;
            v13 = (v21 + 16);
            v14.i64[0] = 0x400000004;
            v14.i64[1] = 0x400000004;
            v15.i64[0] = 0x800000008;
            v15.i64[1] = 0x800000008;
            v16 = v11;
            do
            {
              v13[-1] = v12;
              *v13 = vaddq_s32(v12, v14);
              v12 = vaddq_s32(v12, v15);
              v13 += 2;
              v16 -= 8;
            }

            while (v16);
            if ((v6 & 7) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v11 = 0;
          }

          do
          {
            v9[v11] = v11;
            ++v11;
          }

          while (v10 != v11);
        }

LABEL_23:
        Context = mlir::Attribute::getContext(&v20);
        result = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(Context, v21, v22);
        if (v21 != v23)
        {
          v18 = result;
          free(v21);
          return v18;
        }

        return result;
      }
    }

    bzero(v21 + 4 * v7, 4 * v8);
    goto LABEL_16;
  }

  return result;
}

void *llvm::SmallVector<int,12u>::SmallVector(void *result, unint64_t a2)
{
  *result = result + 2;
  result[1] = 0xC00000000;
  if (a2)
  {
    if (a2 < 0xD)
    {
      v4 = 0;
      v5 = a2;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 2), a2, 4);
      result = v3;
      v4 = *(v3 + 2);
      v5 = a2 - v4;
      if (a2 == v4)
      {
        goto LABEL_7;
      }
    }

    v6 = result;
    bzero((*result + 4 * v4), 4 * v5);
    result = v6;
LABEL_7:
    *(result + 2) = a2;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(uint64_t *a1, mlir *a2, Location a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v35[0] = a4;
  v35[1] = a5;
  if (a5 == 2)
  {
    v12 = (*(mlir::ValueRange::dereference_iterator(v35, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v12)
    {
      v13 = *v12;
      {
        v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      v17 = v15;
      v18 = v16;
      do
      {
        v19 = v18 >> 1;
        v20 = &v17[2 * (v18 >> 1)];
        v22 = *v20;
        v21 = v20 + 2;
        v18 += ~(v18 >> 1);
        if (v22 < v14)
        {
          v17 = v21;
        }

        else
        {
          v18 = v19;
        }
      }

      while (v18);
      if (v17 != &v15[2 * v16] && *v17 == v14)
      {
        v26 = v17[1];
        goto LABEL_19;
      }
    }

LABEL_18:
    v26 = 0;
LABEL_19:
    v34[0] = v12;
    v34[1] = v26;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v34);
    v29 = v28;
    v30 = mlir::IntegerType::get(a1, 1, 0);
    v31 = mlir::RankedTensorType::get(ArgAttrsAttr, v29, v30, 0);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      v33 = v31;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v32 + 1, 8);
      v31 = v33;
      LODWORD(v32) = *(a11 + 8);
    }

    *(*a11 + 8 * v32) = v31;
    ++*(a11 + 8);
    return 1;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "expected exactly 2 operands");
}

unint64_t mlir::ODIE::Compiler::CoreML::EqualOp::fold(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 != *(v1 + 56))
  {
    return 0;
  }

  v18 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::TensorType::hasRank(&v18))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v18);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  v20 = 40;
  v21[0] = 1;
  v18 = v21;
  v19 = 1;
  v16 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = mlir::ArrayAttr::getValue(&v16);
  v9 = v8;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v11 = mlir::IntegerType::get(Context, 1, 0);
  v17 = mlir::RankedTensorType::get(v7, v9, v11, 0);
  v12 = mlir::TensorType::operator mlir::ShapedType(&v17);
  result = mlir::DenseElementsAttr::get(v12, v13, v18, v19) & 0xFFFFFFFFFFFFFFFBLL;
  if (v18 != v21)
  {
    v15 = result;
    free(v18);
    return v15;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReshapeOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = v2;
  if (mlir::TensorType::hasRank(&v12))
  {
    Value = mlir::ArrayAttr::getValue(&v12);
    if (v4)
    {
      v5 = 8 * v4;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v11))
      {
        v6 = mlir::ArrayAttr::getValue(&v11);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v9 = *(*(*a1 + 72) + 24);
          if ((*(v9 + 8) ^ *(*a1 - 8)) <= 7)
          {
            return v9 | 4;
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verify(mlir::Block ***this)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v51 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  v50 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(&v51))
  {
    Value = mlir::ArrayAttr::getValue(&v51);
    if (v4)
    {
      v5 = 8 * v4;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v50))
      {
        v6 = mlir::ArrayAttr::getValue(&v50);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v9 = mlir::ArrayAttr::getValue(&v51);
          v11 = v10;
          v12 = mlir::ArrayAttr::getValue(&v50);
          if (v11)
          {
            v14 = v12;
            v15 = 8 * v13;
            v16 = 8 * v11;
            result = 1;
            while (v15)
            {
              if (*v9 > *v14)
              {
                v49 = 257;
                mlir::OpState::emitError(this, v48, v55);
                if (v55[0])
                {
                  v52 = 3;
                  v53 = "broadcast_in_dims op is decreasing number of elements. Input type ";
                  v54 = 66;
                  v18 = &v52;
                  v19 = v56;
                  if (v57 >= v58)
                  {
                    if (v56 <= &v52 && v56 + 24 * v57 > &v52)
                    {
                      v44 = &v52 - v56;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                      v19 = v56;
                      v18 = (v56 + v44);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                      v18 = &v52;
                      v19 = v56;
                    }
                  }

                  v20 = &v19[24 * v57];
                  v21 = *v18;
                  *(v20 + 2) = *(v18 + 2);
                  *v20 = v21;
                  ++v57;
                  if (v55[0])
                  {
                    v22 = &v52;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v52, v51);
                    v23 = v56;
                    if (v57 >= v58)
                    {
                      if (v56 <= &v52 && v56 + 24 * v57 > &v52)
                      {
                        v45 = &v52 - v56;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                        v23 = v56;
                        v22 = (v56 + v45);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                        v22 = &v52;
                        v23 = v56;
                      }
                    }

                    v24 = &v23[24 * v57];
                    v25 = *v22;
                    *(v24 + 2) = *(v22 + 2);
                    *v24 = v25;
                    v26 = ++v57;
                    if (v55[0])
                    {
                      v52 = 3;
                      v53 = " output type ";
                      v54 = 13;
                      v27 = &v52;
                      v28 = v56;
                      if (v26 >= v58)
                      {
                        if (v56 <= &v52 && v56 + 24 * v26 > &v52)
                        {
                          v46 = &v52 - v56;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v26 + 1, 24);
                          v28 = v56;
                          v27 = (v56 + v46);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v26 + 1, 24);
                          v27 = &v52;
                          v28 = v56;
                        }
                      }

                      v29 = &v28[24 * v57];
                      v30 = *v27;
                      *(v29 + 2) = *(v27 + 2);
                      *v29 = v30;
                      ++v57;
                      if (v55[0])
                      {
                        v31 = &v52;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v52, v50);
                        v32 = v56;
                        if (v57 >= v58)
                        {
                          if (v56 <= &v52 && v56 + 24 * v57 > &v52)
                          {
                            v47 = &v52 - v56;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                            v32 = v56;
                            v31 = (v56 + v47);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                            v31 = &v52;
                            v32 = v56;
                          }
                        }

                        v33 = &v32[24 * v57];
                        v34 = *v31;
                        *(v33 + 2) = *(v31 + 2);
                        *v33 = v34;
                        ++v57;
                      }
                    }
                  }
                }

                result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
                v35 = result;
                if (v55[0])
                {
                  mlir::InFlightDiagnostic::report(v55);
                  result = v35;
                }

                if (v65)
                {
                  if (v64 != &v65)
                  {
                    free(v64);
                    result = v35;
                  }

                  v36 = __p;
                  if (__p)
                  {
                    v37 = v63;
                    v38 = __p;
                    if (v63 != __p)
                    {
                      do
                      {
                        v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
                      }

                      while (v37 != v36);
                      v38 = __p;
                    }

                    v63 = v36;
                    operator delete(v38);
                    result = v35;
                  }

                  v39 = v60;
                  if (v60)
                  {
                    v40 = v61;
                    v41 = v60;
                    if (v61 != v60)
                    {
                      do
                      {
                        v43 = *--v40;
                        v42 = v43;
                        *v40 = 0;
                        if (v43)
                        {
                          operator delete[](v42);
                        }
                      }

                      while (v40 != v39);
                      v41 = v60;
                    }

                    v61 = v39;
                    operator delete(v41);
                    result = v35;
                  }

                  if (v56 != v59)
                  {
                    free(v56);
                    return v35;
                  }
                }

                return result;
              }

              ++v9;
              ++v14;
              v15 -= 8;
              v16 -= 8;
              if (!v16)
              {
                return result;
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v46 = (v3[1] & 0xFFFFFFFFFFFFFFF8);
  if (!*mlir::ArrayAttr::getValue(&v46))
  {
    return v4 | 4;
  }

  v46 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (!*mlir::ArrayAttr::getValue(&v46) || v3 == v4)
  {
    return v3 | 4;
  }

  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v46, v3);
  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v42, v4);
  if (v49 != 1 || v45 != 1)
  {
    result = 0;
    goto LABEL_17;
  }

  v39 = v41;
  v40 = 0x600000000;
  BroadcastedShape = mlir::OpTrait::util::getBroadcastedShape(v46, v47, v42, v43, &v39);
  v6 = v39;
  if (BroadcastedShape)
  {
    if (v40)
    {
      v7 = 0;
      while (*(v39 + v7) != 0x8000000000000000)
      {
        v7 += 8;
        if (8 * v40 == v7)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_24;
    }

LABEL_11:
    llvm::SmallVector<int,12u>::SmallVector(&v36, v40);
    v8 = v40;
    if (v40)
    {
      v9 = v39;
      v10 = v36;
      v11 = (v40 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v11 <= 6)
      {
        v12 = 0;
        v13 = v39;
LABEL_29:
        v25 = &v9[8 * v8];
        v26 = &v10[4 * v12];
        do
        {
          v27 = *v13;
          v13 += 8;
          *v26 = v27;
          v26 += 4;
        }

        while (v13 != v25);
        goto LABEL_31;
      }

      v17 = v11 + 1;
      v12 = (v11 + 1) & 0x3FFFFFFFFFFFFFF8;
      v13 = v39 + 8 * v12;
      v18 = (v36 + 16);
      v19 = (v39 + 32);
      v20 = v12;
      do
      {
        v22 = v19[-2];
        v21 = v19[-1];
        v24 = *v19;
        v23 = v19[1];
        v19 += 4;
        v18[-1] = vuzp1q_s32(v22, v21);
        *v18 = vuzp1q_s32(v24, v23);
        v18 += 2;
        v20 -= 8;
      }

      while (v20);
      if (v17 != v12)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v35 = v37;
    Context = mlir::Attribute::getContext((*a1 + 24));
    v29 = mlir::IntegerType::get(Context, 32, 1u);
    v34 = mlir::RankedTensorType::get(&v35, 1, v29, 0);
    v30 = mlir::TensorType::operator mlir::ShapedType(&v34);
    result = mlir::DenseElementsAttr::getFromRawBuffer(v30, v31, v36, 4 * v37, 4, 1, 1) & 0xFFFFFFFFFFFFFFFBLL;
    if (v36 != &v38)
    {
      v32 = result;
      free(v36);
      result = v32;
    }

    v6 = v39;
    if (v39 == v41)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_24:
  result = 0;
  if (v39 != v41)
  {
LABEL_34:
    v33 = result;
    free(v6);
    result = v33;
  }

LABEL_17:
  if (v45 == 1 && v42 != &v44)
  {
    v15 = result;
    free(v42);
    result = v15;
  }

  if (v49 == 1 && v46 != &v48)
  {
    v16 = result;
    free(v46);
    return v16;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  v60[6] = *MEMORY[0x1E69E9840];
  __dst = 0;
  v52 = a2;
  p_dst = &__dst;
  __src = a2;
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&p_dst, DefiningOp))
  {
    v7 = mlir::Value::getDefiningOp(&v52);
    if (!v7 || *(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
    {
      *a1 = 0;
      *(a1 + 64) = 0;
      return;
    }

    v3 = (*(*(*(v7 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v3)
    {
      goto LABEL_59;
    }

    v2 = *v3;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      if (!v10)
      {
        goto LABEL_59;
      }

      goto LABEL_13;
    }

LABEL_56:
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v2 + 8);
    v10 = *(v2 + 16);
    if (!v10)
    {
      goto LABEL_59;
    }

LABEL_13:
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
      v42 = v11[1];
LABEL_60:
      __dst = v3;
      v59 = v42;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__dst);
      v45 = v43;
      __src = v56;
      v55 = 0x600000000;
      if (v43 < 7)
      {
        if (!v43)
        {
          v48 = 0;
          v41 = v56;
          goto LABEL_65;
        }

        v46 = 0;
        v47 = v56;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v56, v43, 8);
        v46 = v55;
        v47 = __src;
      }

      memcpy(&v47[8 * v46], ArgAttrsAttr, 8 * v45);
      v48 = v55;
      v41 = __src;
LABEL_65:
      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
      v49 = (v48 + v45);
      LODWORD(v55) = v49;
      if (v49 && &__src != a1)
      {
        if (v41 == v56)
        {
          v51 = v49;
          if (v49 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v49, 8), v51 = v55, v41 = __src, v55))
          {
            memcpy(*a1, v41, 8 * v51);
            v41 = __src;
          }

          *(a1 + 8) = v49;
        }

        else
        {
          *a1 = v41;
          v50 = HIDWORD(v55);
          *(a1 + 8) = v49;
          *(a1 + 12) = v50;
          __src = v56;
          HIDWORD(v55) = 0;
          v41 = v56;
        }

        LODWORD(v55) = 0;
      }

      *(a1 + 64) = 1;
      if (v41 != v56)
      {
        goto LABEL_53;
      }

      return;
    }

LABEL_59:
    v42 = 0;
    goto LABEL_60;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &__src);
  if ((v57 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_56;
  }

  __dst = v60;
  v59 = 0xC00000000;
  v6 = v55;
  if (v55)
  {
    if (__src == v56)
    {
      v17 = v55;
      if (v55 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v60, v55, 4), (v17 = v55) != 0))
      {
        memcpy(__dst, __src, 4 * v17);
      }

      LODWORD(v59) = v6;
      LODWORD(v55) = 0;
      if ((v57 & 1) == 0)
      {
        __src = v56;
        v55 = 0x600000000;
        v18 = v6;
        if (v6 >= 7)
        {
          goto LABEL_28;
        }

LABEL_32:
        v19 = 0;
        v20 = v56;
        v21 = v18;
        if (!v18)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __dst = __src;
      v59 = v55;
      __src = v56;
      v55 = 0;
    }
  }

  if (__src != v56)
  {
    free(__src);
    v6 = v59;
  }

  __src = v56;
  v55 = 0x600000000;
  if (!v6)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    v20 = v56;
    goto LABEL_50;
  }

  v18 = v6;
  if (v6 < 7)
  {
    goto LABEL_32;
  }

LABEL_28:
  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v56, v18, 8);
  v19 = v55;
  v20 = __src;
  v21 = v18 - v55;
  if (v18 != v55)
  {
LABEL_33:
    bzero(&v20[8 * v19], 8 * v21);
  }

LABEL_34:
  LODWORD(v55) = v6;
  v22 = v59;
  if (!v59)
  {
    goto LABEL_42;
  }

  v23 = __dst;
  v24 = (v59 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v24 <= 6)
  {
    v25 = 0;
    v26 = __dst;
LABEL_40:
    v36 = &v23[4 * v22];
    v37 = &v20[8 * v25];
    do
    {
      v38 = *v26++;
      *v37++ = v38;
    }

    while (v26 != v36);
    goto LABEL_42;
  }

  v27 = v24 + 1;
  v25 = (v24 + 1) & 0x7FFFFFFFFFFFFFF8;
  v26 = (__dst + 4 * v25);
  v28 = v20 + 32;
  v29 = __dst + 16;
  v30 = v25;
  do
  {
    v31 = *(v29 - 1);
    *&v32 = v31;
    *(&v32 + 1) = SDWORD1(v31);
    v33 = v32;
    *&v32 = SDWORD2(v31);
    *(&v32 + 1) = SHIDWORD(v31);
    v34 = v32;
    *&v32 = *v29;
    *(&v32 + 1) = HIDWORD(*v29);
    v35 = v32;
    *&v32 = *(v29 + 1);
    *(&v32 + 1) = HIDWORD(*v29);
    *(v28 - 2) = v33;
    *(v28 - 1) = v34;
    *v28 = v35;
    v28[1] = v32;
    v28 += 4;
    v29 += 32;
    v30 -= 8;
  }

  while (v30);
  if (v27 != v25)
  {
    goto LABEL_40;
  }

LABEL_42:
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (&__src != a1)
  {
    if (v20 == v56)
    {
      v40 = v6;
      if (v6 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v18, 8), v40 = v55, v20 = __src, v55))
      {
        memcpy(*a1, v20, 8 * v40);
        v20 = __src;
      }

      *(a1 + 8) = v6;
    }

    else
    {
      *a1 = v20;
      v39 = HIDWORD(v55);
      *(a1 + 8) = v6;
      *(a1 + 12) = v39;
      __src = v56;
      HIDWORD(v55) = 0;
      v20 = v56;
    }

    LODWORD(v55) = 0;
  }

LABEL_50:
  *(a1 + 64) = 1;
  if (v20 != v56)
  {
    free(v20);
  }

  v41 = __dst;
  if (__dst != v60)
  {
LABEL_53:
    free(v41);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 == *(v1 + 56))
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

unint64_t *mlir::ODIE::Compiler::CoreML::IfOp::getEntrySuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v21[0] = v6;
  v7 = *(a4 + 8);
  if (v7 >= *(a4 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v21);
  }

  else
  {
    v8 = (*a4 + 24 * v7);
    *v8 = v6;
    mlir::ValueRange::ValueRange(v8 + 1, 0, 0);
    ++*(a4 + 8);
  }

  v9 = *a1;
  v10 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v12 = *(v10 + 24);
  v11 = v10 + 24;
  if (v12 == v11)
  {
    v16 = *(v9 + 36);
    v17 = v9 - 16;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v21[0] = v18;
    v21[1] = v16;
    v19 = *(a4 + 8);
    if (v19 < *(a4 + 12))
    {
      v20 = (*a4 + 24 * v19);
      *v20 = 0;
      result = mlir::ValueRange::ValueRange(v20 + 1, v18, v16);
      goto LABEL_11;
    }

    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a4, v21);
  }

  else
  {
    v21[0] = v11;
    v13 = *(a4 + 8);
    if (v13 < *(a4 + 12))
    {
      v14 = (*a4 + 24 * v13);
      *v14 = v11;
      result = mlir::ValueRange::ValueRange(v14 + 1, 0, 0);
LABEL_11:
      ++*(a4 + 8);
      return result;
    }

    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v21);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents(uint64_t a1, mlir *a2, Location a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a4[1] == 1)
  {
    v9 = (*(mlir::ValueRange::dereference_iterator(a4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v10 = *v9;
      {
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      else
      {
        mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v14 = v12;
      v15 = v13;
      do
      {
        v16 = v15 >> 1;
        v17 = &v14[2 * (v15 >> 1)];
        v19 = *v17;
        v18 = v17 + 2;
        v15 += ~(v15 >> 1);
        if (v19 < v11)
        {
          v14 = v18;
        }

        else
        {
          v15 = v16;
        }
      }

      while (v15);
      if (v14 != &v12[2 * v13] && *v14 == v11)
      {
        v23 = v14[1];
LABEL_19:
        v36[0] = v9;
        v36[1] = v23;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v36);
        v26 = v24;
        v37 = v39;
        v38 = 0x300000000;
        v27 = (8 * v24) >> 3;
        if (v27 < 4)
        {
          v28 = 0;
          v29 = 8 * v24;
          if (!v24)
          {
LABEL_24:
            LODWORD(v38) = v28 + (v29 >> 3);
            v39[3] = 0;
            v39[4] = 0;
            v40 = 1;
            v30 = *(a9 + 8);
            v31 = *a9;
            v32 = &v37;
            if (v30 >= *(a9 + 12))
            {
              if (v31 <= &v37 && v31 + (v30 << 6) > &v37)
              {
                v35 = &v37 - v31;
                llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow(a9, v30 + 1);
                v31 = *a9;
                v32 = &v35[*a9];
              }

              else
              {
                llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow(a9, v30 + 1);
                v31 = *a9;
                v32 = &v37;
              }
            }

            v33 = v31 + (*(a9 + 8) << 6);
            *v33 = v33 + 16;
            *(v33 + 8) = 0x300000000;
            if (*(v32 + 2))
            {
              llvm::SmallVectorImpl<unsigned long long>::operator=(v33, v32);
            }

            v34 = *(v32 + 5);
            *(v33 + 56) = *(v32 + 56);
            *(v33 + 40) = v34;
            ++*(a9 + 8);
            if (v37 != v39)
            {
              free(v37);
            }

            return 1;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v27, 8);
          v28 = v38;
          v29 = 8 * v26;
          if (!v26)
          {
            goto LABEL_24;
          }
        }

        memcpy(v37 + 8 * v28, ArgAttrsAttr, v29);
        v28 = v38;
        goto LABEL_24;
      }
    }

LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "expected exactly 1 operand");
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::fold(uint64_t *a1)
{
  v6 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v6);
  if (DefiningOp)
  {
    v3 = *a1;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
    {
      v4 = *(*(DefiningOp + 72) + 24);
      if ((*(v3 - 8) ^ *(v4 + 8)) <= 7)
      {
        return v4 | 4;
      }
    }
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(*(v3 + 72) + 24);
  if ((*(v3 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::CastOp *this, mlir::OpBuilder *a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 1;
  }

  v5 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *v5;
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_6:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_16;
  }

  v16 = v10[1];
LABEL_17:
  v46[0] = v5;
  v46[1] = v16;
  *&v47 = mlir::ElementsAttr::isSplat(v46);
  Value = mlir::AffineMapAttr::getValue(&v47);
  PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
  v45 = v18;
  v19 = (*(PartsOfComplex - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = *v19;
  {
    v41 = v19;
    v30 = v20;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v19 = v41;
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = *(v30 + 8);
    v23 = *(v30 + 16);
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_31:
    v31 = 0;
    goto LABEL_32;
  }

  v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  if (!v23)
  {
    goto LABEL_31;
  }

LABEL_20:
  v24 = v22;
  v25 = v23;
  do
  {
    v26 = v25 >> 1;
    v27 = &v24[2 * (v25 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v25 += ~(v25 >> 1);
    if (v29 < v21)
    {
      v24 = v28;
    }

    else
    {
      v25 = v26;
    }
  }

  while (v25);
  if (v24 == &v22[2 * v23] || *v24 != v21)
  {
    goto LABEL_31;
  }

  v31 = v24[1];
LABEL_32:
  v43[0] = v19;
  v43[1] = v31;
  LOBYTE(v47) = 0;
  v48 = 0;
  *&v47 = mlir::ShapedType::cloneWith(v43, &v47, Value);
  *(&v47 + 1) = v32;
  v43[0] = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v47, &PartsOfComplex);
  v42 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v47, &v45);
  v33 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(a2, *(*this + 24), v46, v43, &v42);
  v34 = *this;
  if (*(v33 + 36))
  {
    v35 = v33 - 16;
  }

  else
  {
    v35 = 0;
  }

  for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0); ; *i = v37)
  {
    v37 = *(v34 - 16);
    if (!v37)
    {
      break;
    }

    v38 = v37[1];
    if (v38)
    {
      v39 = *v37;
      *v38 = *v37;
      if (v39)
      {
        *(v39 + 8) = v38;
      }
    }

    v37[3] = i;
    v37[1] = i;
    v40 = *i;
    *v37 = *i;
    if (v40)
    {
      *(v40 + 8) = v37;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::getPartsOfComplex(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *v5;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = v6;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v21 + 8);
    v9 = *(v21 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v16 = v10[1];
    goto LABEL_15;
  }

LABEL_14:
  v16 = 0;
LABEL_15:
  v22[0] = v5;
  v22[1] = v16;
  *&v24 = mlir::ElementsAttr::isSplat(v22);
  Value = mlir::AffineMapAttr::getValue(&v24);
  LOBYTE(v24) = 0;
  v25 = 0;
  *&v24 = mlir::ShapedType::cloneWith(v22, &v24, Value);
  *(&v24 + 1) = v18;
  v19 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(a1, a3, &v24, &v23);
  mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(a1, a3, &v24, &v23);
  return v19;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::Type &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4 - 16;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v26[28] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

unint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::fold(uint64_t a1)
{
  v38[6] = *MEMORY[0x1E69E9840];
  v34 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v34))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v34);
  if (v3)
  {
    v4 = 8 * v3;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v6 = mlir::ArrayAttr::getValue(&v34);
  v7 = v5;
  v36 = v38;
  v37 = 0xC00000000;
  v8 = (8 * v5) >> 3;
  if (v8 < 0xD)
  {
    v9 = 0;
    v10 = 0;
    v11 = 8 * v5;
    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    v13 = (v36 + 4 * v9);
    v14 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v14 >= 7)
    {
      v17 = v14 + 1;
      v18 = (v14 + 1) & 0x3FFFFFFFFFFFFFF8;
      v15 = &v13->i8[4 * v18];
      v16 = (v6 + 8 * v18);
      v19 = (v6 + 32);
      v20 = v13 + 1;
      v21 = v18;
      do
      {
        v23 = v19[-2];
        v22 = v19[-1];
        v25 = *v19;
        v24 = v19[1];
        v19 += 4;
        v20[-1] = vuzp1q_s32(v23, v22);
        *v20 = vuzp1q_s32(v25, v24);
        v20 += 2;
        v21 -= 8;
      }

      while (v21);
      if (v17 == v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = v13;
      v16 = v6;
    }

    do
    {
      v26 = *v16++;
      *v15 = v26;
      v15 += 4;
    }

    while (v16 != (v6 + v11));
LABEL_17:
    v10 = v37;
    goto LABEL_18;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v8, 4);
  v9 = v37;
  v10 = v37;
  v11 = 8 * v7;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_18:
  LODWORD(v37) = v10 + (v11 >> 3);
  mlir::ArrayAttr::getValue(&v34);
  v35 = v27;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v29 = mlir::IntegerType::get(Context, 32, 1u);
  v33 = mlir::RankedTensorType::get(&v35, 1, v29, 0);
  v30 = mlir::TensorType::operator mlir::ShapedType(&v33);
  result = mlir::DenseElementsAttr::getFromRawBuffer(v30, v31, v36, 4 * v37, 4, 1, 1) & 0xFFFFFFFFFFFFFFFBLL;
  if (v36 != v38)
  {
    v32 = result;
    free(v36);
    return v32;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(uint64_t *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[2] = *MEMORY[0x1E69E9840];
  if (a5 == 1)
  {
    v27 = a6;
    v28[0] = 0;
    v29 = 0;
    v30 = a9;
    v31 = a10;
    if (a6)
    {
      v14 = a4;
      Context = mlir::Attribute::getContext(&v27);
      if (v29 == 1)
      {
        v29 = 0;
      }

      mlir::OperationName::OperationName(v28, "coreml.get_shape", 16, Context);
      v29 = 1;
      a4 = v14;
    }

    v32 = a4;
    v33 = 1;
    v34[0] = a4;
    v34[1] = 0;
    v16 = *(mlir::ValueRange::dereference_iterator(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = 0;
    }

    v34[0] = v16;
    if (v16)
    {
      mlir::ArrayAttr::getValue(v34);
      v26 = v17;
      v18 = mlir::IntegerType::get(a1, 32, 1u);
      v19 = mlir::RankedTensorType::get(&v26, 1, v18, 0);
      v20 = *(a11 + 8);
      if (v20 >= *(a11 + 12))
      {
        v25 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v20 + 1, 8);
        v19 = v25;
        LODWORD(v20) = *(a11 + 8);
      }

      *(*a11 + 8 * v20) = v19;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      v24.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v24, "expected operand to be ranked tensor");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "expected exactly 1 operand");
  }
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v3 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::printNamedRegionOp(v3, InterfaceFor, 0, 0, a2);
}

void mlir::ODIE::Compiler::CoreML::printNamedRegionOp(mlir::Operation *a1, mlir::Operation *a2, const void *a3, unint64_t a4, uint64_t a5)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v24[0] = a1;
  v24[1] = a2;
  v8 = (*(*a5 + 16))(a5);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, " ", 1uLL);
  }

  else
  {
    *v9 = 32;
    ++v8[4];
  }

  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v24);
  AttrData = mlir::OpaqueAttr::getAttrData(&CallableForCallee);
  (*(*a5 + 88))(a5, AttrData, v11);
  CallableForCallee = v28;
  v27 = 0x300000000;
  if (a4 < 4)
  {
    if (!a4)
    {
      LODWORD(v27) = 0;
      v14 = v24[0];
      if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v24[0]))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v12 = 0;
    v13 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&CallableForCallee, v28, a4, 16);
    v12 = v27;
    v13 = CallableForCallee;
  }

  memcpy(&v13[2 * v12], a3, 16 * a4);
  LODWORD(v27) = v27 + a4;
  v14 = v24[0];
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v24[0]))
  {
    goto LABEL_10;
  }

LABEL_9:
  if (!v14)
  {
LABEL_10:
    v16 = v27;
    goto LABEL_16;
  }

  InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v14);
  (*(InterfaceFor + 32))(InterfaceFor, v14, a5);
  v17 = v27;
  if (v27 >= HIDWORD(v27))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&CallableForCallee, v28, v27 + 1, 16);
    v17 = v27;
  }

  v18 = CallableForCallee + 16 * v17;
  *v18 = "param_decls";
  v18[1] = 11;
  v16 = v27 + 1;
  LODWORD(v27) = v27 + 1;
LABEL_16:
  if (v16 >= HIDWORD(v27))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&CallableForCallee, v28, v16 + 1, 16);
    v16 = v27;
  }

  v19 = CallableForCallee + 16 * v16;
  *v19 = "sym_name";
  v19[1] = 8;
  LODWORD(v27) = v27 + 1;
  AttrDictionary = mlir::Operation::getAttrDictionary(v24[0]);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a5 + 200))(a5, Value, v21, CallableForCallee, v27);
  v22 = (*(*a5 + 16))(a5);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, " ", 1uLL);
  }

  else
  {
    *v23 = 32;
    ++v22[4];
  }

  (*(*a5 + 224))(a5, ((v24[0] + 16 * ((*(v24[0] + 11) >> 23) & 1) + ((*(v24[0] + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v24[0] + 10), 0, 0, 0);
  if (CallableForCallee != v28)
  {
    free(CallableForCallee);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::parseNamedRegionOp(mlir::AsmParser *a1, mlir::OperationState *this, uint64_t (*a3)(uint64_t, mlir::AsmParser *, mlir::OperationState *), uint64_t a4)
{
  v35[9] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v8 = mlir::OperationState::addRegion(this);
  v34[0] = v35;
  v34[1] = 0x400000000;
  v35[8] = 4;
  if (!mlir::AsmParser::parseSymbolName(a1, &v30))
  {
    goto LABEL_26;
  }

  {
    mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v9 = *(this + 1);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  if (v11)
  {
    v12 = *(v9 + 32);
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != (v10 + 16 * v11) && *v12 == mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id && v12[1] && (a3(a4, a1, this) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (((*(*a1 + 496))(a1, v34) & 1) == 0 || ((*(*a1 + 776))(a1, v8, 0, 0, 0) & 1) == 0)
  {
LABEL_26:
    v27 = 0;
    v28 = v34[0];
    if (v34[0] == v35)
    {
      return v27;
    }

LABEL_27:
    free(v28);
    return v27;
  }

  if (*v8 == v8)
  {
    v18 = operator new(0x48uLL);
    *v18 = 0u;
    v18[1] = 0u;
    *(v18 + 4) = v18 + 2;
    *(v18 + 5) = v18 + 2;
    *(v18 + 7) = 0;
    *(v18 + 8) = 0;
    *(v18 + 6) = 0;
    llvm::ilist_traits<mlir::Block>::addNodeToList(v8, v18);
    v19 = *v8;
    *(v18 + 2) = v8;
    *(v18 + 1) = v19;
    v18 = (v18 + 8);
    v19[1] = v18;
    *v8 = v18;
  }

  v20 = v30;
  Context = mlir::Attribute::getContext(this);
  v32 = 261;
  v31[0] = "sym_name";
  v31[1] = 8;
  v22 = mlir::StringAttr::get(Context, v31);
  mlir::NamedAttribute::NamedAttribute(v33, v22, v20);
  mlir::NamedAttrList::push_back(this + 112, v33[0], v33[1]);
  Attrs = mlir::NamedAttrList::getAttrs(v34);
  v25 = v23;
  *(this + 24) = 0;
  v26 = *(this + 30);
  if (v23 + v26 > *(this + 31))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(this + 112, this + 128, v23 + v26, 16);
    LODWORD(v26) = *(this + 30);
  }

  if (v25)
  {
    memcpy((*(this + 14) + 16 * v26), Attrs, 16 * v25);
    LODWORD(v26) = *(this + 30);
  }

  *(this + 30) = v26 + v25;
  v27 = 1;
  v28 = v34[0];
  if (v34[0] != v35)
  {
    goto LABEL_27;
  }

  return v27;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::ModuleOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x600000000;
  v11 = a1;
  v12 = &v15;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v15, v16);
    Context = mlir::Attribute::getContext(a2);
    v13 = 261;
    v11 = "param_decls";
    v12 = 11;
    v7 = mlir::StringAttr::get(Context, &v11);
    mlir::NamedAttribute::NamedAttribute(v14, v7, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v14[0], v14[1]);
    v8 = 1;
    v9 = v15;
    if (v15 == v17)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = v15;
  if (v15 != v17)
  {
LABEL_5:
    free(v9);
  }

  return v8;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::specialize(uint64_t *a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
    mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v5, InterfaceFor, a2, a3);
  }

  mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(0, 0, a2, a3);
}

void mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ForwardIterator *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v11[0] = a1;
  v11[1] = a2;
  v10 = 0;
  v8 = 0u;
  *v9 = 0u;
  *v6 = 0u;
  *__p = 0u;
  v12 = &unk_1F5B3CF70;
  v13 = a3;
  v15 = &v12;
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(v6, &v12);
  if (v15 == &v12)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  v12 = v11;
  v13 = v6;
  v14 = a4;
  mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1>, &v12, 0);
  llvm::deallocate_buffer(v9[0], (16 * v10));
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::readProperties(uint64_t a1, mlir::Attribute *a2)
{
  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, &v8);
  v4 = *(a2 + 32);
  if (v4)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    Context = mlir::Attribute::getContext(a2);
    *v4 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, 0, 0);
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v4 + 1) & 1;
  }

  v6 = operator new(0x10uLL);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + 32) = v6;
  *(a2 + 34) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 35) = &v10;
  *(a2 + 36) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 37) = &v10;
  {
    mlir::ODIE::Compiler::CoreML::ModuleOp::readProperties();
  }

  *(a2 + 33) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v4 = *(a2 + 32);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v4) & 1) == 0)
  {
    return 0;
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v4 + 1) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr]";
  v38 = 98;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
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
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::print(mlir::ODIE::Compiler::CoreML::ImportOp *this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 40))(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80));
  v18 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  result = mlir::AffineMapAttr::getValue(&v18);
  v7 = *this;
  v8 = (*(*this + 44) >> 23) & 1;
  if (result != *(*this + 16 * v8 + 72))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = v9[4];
    if (v9[3] - v10 > 3uLL)
    {
      *v10 = 544432416;
      v9[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v9, " as ", 4uLL);
    }

    v18 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    AttrData = mlir::OpaqueAttr::getAttrData(&v18);
    result = (*(*a2 + 88))(a2, AttrData, v12);
    v7 = *this;
    v8 = (*(*this + 44) >> 23) & 1;
  }

  v18 = *(v7 + 16 * v8 + 64);
  if (v18)
  {
    v13 = mlir::OpaqueAttr::getAttrData(&v18);
    v15 = v14;
    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if ((v16[3] - v17) > 5)
    {
      *(v17 + 4) = 8301;
      *v17 = 1869768224;
      v16[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v16, " from ", 6uLL);
    }

    return (*(*a2 + 80))(a2, v13, v15);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::parse(mlir::AsmParser *a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    v13 = 0;
    if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v13, 0))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v9;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v9;
    {
      mlir::ODIE::Compiler::CoreML::ImportOp::parse();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    v13 = 0;
    if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v13, 0))
    {
      return 0;
    }
  }

  v3[2] = v13;
  if ((*(*a1 + 408))(a1, "as", 2))
  {
    v9[0] = 0;
    if (mlir::AsmParser::parseSymbolName(a1, v9))
    {
      v3[1] = v9[0];
      goto LABEL_11;
    }

    return 0;
  }

  v3[1] = mlir::AffineMapAttr::getValue(&v13);
LABEL_11:
  if (((*(*a1 + 408))(a1, "from", 4) & 1) == 0)
  {
    return 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v6 = mlir::AsmParser::parseString(a1, __p);
  if (v6)
  {
    v7 = (*(*a1 + 32))(a1);
    v10 = 260;
    v9[0] = __p;
    *v3 = mlir::Builder::getStringAttr(v7, v9);
    if (SHIBYTE(v12) < 0)
    {
      goto LABEL_14;
    }

    return (v6 & 1) != 0;
  }

  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    return (v6 & 1) != 0;
  }

LABEL_14:
  operator delete(__p[0]);
  return (v6 & 1) != 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::ClassOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x600000000;
  v11 = a1;
  v12 = &v15;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v15, v16);
    Context = mlir::Attribute::getContext(a2);
    v13 = 261;
    v11 = "param_decls";
    v12 = 11;
    v7 = mlir::StringAttr::get(Context, &v11);
    mlir::NamedAttribute::NamedAttribute(v14, v7, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v14[0], v14[1]);
    v8 = 1;
    v9 = v15;
    if (v15 == v17)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = v15;
  if (v15 != v17)
  {
LABEL_5:
    free(v9);
  }

  return v8;
}

void *mlir::ODIE::Compiler::CoreML::MemberOp::print(mlir::ODIE::Compiler::CoreML::MemberOp *this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  v15 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  AttrData = mlir::OpaqueAttr::getAttrData(&v15);
  (*(*a2 + 88))(a2, AttrData, v7);
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 14880;
    v8[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, " : ", 3uLL);
  }

  v15 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  Value = mlir::AffineMapAttr::getValue(&v15);
  (*(*a2 + 32))(a2, Value);
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (result)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::TypedAttr,llvm::CastInfo<mlir::TypedAttr,mlir::TypedAttr,void>>::doCastIfPossible(result);
    if (result)
    {
      v12 = result;
      v13 = (*(*a2 + 16))(a2);
      v14 = v13[4];
      if ((v13[3] - v14) > 2)
      {
        *(v14 + 2) = 32;
        *v14 = 15648;
        v13[4] += 3;
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          return (*(*a2 + 48))(a2, v12);
        }
      }

      else
      {
        llvm::raw_ostream::write(v13, " = ", 3uLL);
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          return (*(*a2 + 48))(a2, v12);
        }
      }

      return mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v12);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (mlir::AsmParser::parseSymbolName(a1, &v9) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v8) & 1) != 0)
  {
    mlir::NamedAttribute::NamedAttribute(&v10, **(*(a2 + 8) + 96), v9);
    mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
    v4 = *(*(*(a2 + 8) + 96) + 8);
    v5 = mlir::TypeAttr::get(v8);
    mlir::NamedAttribute::NamedAttribute(&v10, v4, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
    if (((*(*a1 + 144))(a1) & 1) == 0)
    {
      return 1;
    }

    v7[0] = 0;
    v7[1] = 0;
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, v7))
    {
      mlir::NamedAttribute::NamedAttribute(&v10, *(*(*(a2 + 8) + 96) + 16), v7[0]);
      mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
      return 1;
    }
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verify(mlir::Block ***this)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  if (!v2)
  {
    return 1;
  }

  v3 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::TypedAttr,llvm::CastInfo<mlir::TypedAttr,mlir::TypedAttr,void>>::doCastIfPossible(v2);
  if (!v3)
  {
    return 1;
  }

  v22[0] = v3;
  v22[1] = v4;
  v23 = 1;
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v22);
  v27[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  if (CallableForCallee == mlir::AffineMapAttr::getValue(v27))
  {
    return 1;
  }

  v21[16] = 257;
  mlir::OpState::emitError(this, v21, v27);
  if (v27[0])
  {
    v24 = 3;
    v25 = "default value type and member type must match";
    v26 = 45;
    v8 = &v24;
    v9 = v28;
    if (v29 >= v30)
    {
      if (v28 <= &v24 && v28 + 24 * v29 > &v24)
      {
        v20 = &v24 - v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
        v9 = v28;
        v8 = (v28 + v20);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
        v8 = &v24;
        v9 = v28;
      }
    }

    v10 = &v9[24 * v29];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
    ++v29;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v35;
      v14 = __p;
      if (v35 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v35 = v12;
      operator delete(v14);
    }

    v15 = v32;
    if (v32)
    {
      v16 = v33;
      v17 = v32;
      if (v33 != v32)
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
        v17 = v32;
      }

      v33 = v15;
      operator delete(v17);
    }

    if (v28 != v31)
    {
      free(v28);
    }
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *this;
  v5 = (*(*this + 11) >> 23) & 1;
  AttrData = *(*this + 2 * v5 + 9);
  LOBYTE(v17) = AttrData != 0;
  if (AttrData)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = v6[4];
    if (v6[3] == v7)
    {
      llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++v6[4];
    }

    v8 = (*(*a2 + 16))(a2);
    v9 = v8[4];
    if ((v8[3] - v9) > 5)
    {
      *(v9 + 4) = 28274;
      *v9 = 1702131813;
      v8[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v8, "extern", 6uLL);
    }

    mlir::ODIE::Compiler::CoreML::ExternAttr::print(&AttrData, a2);
    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v4 + 2 * v5 + 11))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10[4];
    if ((v10[3] - v11) > 8)
    {
      *(v11 + 8) = 101;
      *v11 = *" noinline";
      v10[4] += 9;
    }

    else
    {
      llvm::raw_ostream::write(v10, " noinline", 9uLL);
    }
  }

  v12 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  v15 = *(*(*(*this + 6) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v15);
  v17 = v14;
  mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(v12, InterfaceFor, &AttrData, 1uLL, a2);
}

void mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(mlir::Operation *a1, uint64_t a2, const void *a3, unint64_t a4, uint64_t a5)
{
  v42[6] = *MEMORY[0x1E69E9840];
  v37 = a1;
  v38 = a2;
  v40 = v42;
  v41 = 0x300000000;
  if (a4 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, a4, 16);
    v8 = v41;
    v9 = v40;
LABEL_5:
    memcpy(&v9[2 * v8], a3, 16 * a4);
    v10 = v41;
    goto LABEL_6;
  }

  if (a4)
  {
    v8 = 0;
    v9 = v42;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:
  LODWORD(v41) = v10 + a4;
  v11 = (*(*a5 + 16))(a5);
  v12 = v11[4];
  if (v11[3] == v12)
  {
    llvm::raw_ostream::write(v11, " ", 1uLL);
  }

  else
  {
    *v12 = 32;
    ++v11[4];
  }

  NameAttr = mlir::FunctionOpInterface::getNameAttr(&v37);
  AttrData = mlir::OpaqueAttr::getAttrData(&NameAttr);
  (*(*a5 + 88))(a5, AttrData, v14);
  v15 = v41;
  if (v41 >= HIDWORD(v41))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v41 + 1, 16);
    v15 = v41;
  }

  v16 = v40 + 16 * v15;
  *v16 = "sym_name";
  v16[1] = 8;
  LODWORD(v41) = v41 + 1;
  v17 = v37;
  if (mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v37) && v17)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v17);
    (*(InterfaceFor + 32))(InterfaceFor, v17, a5);
    v19 = v41;
    if (v41 >= HIDWORD(v41))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v41 + 1, 16);
      v19 = v41;
    }

    v20 = v40 + 16 * v19;
    *v20 = "param_decls";
    v20[1] = 11;
    LODWORD(v41) = v41 + 1;
  }

  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v37);
  v21 = v37;
  v22 = v38;
  Inputs = mlir::FunctionType::getInputs(&CallableForCallee);
  v25 = v24;
  Results = mlir::FunctionType::getResults(&CallableForCallee);
  mlir::function_interface_impl::printFunctionSignature(a5, v21, v22, Inputs, v25, 0, Results, v27);
  v28 = v41;
  v29 = v41 + 3;
  if (v29 > HIDWORD(v41))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v29, 16);
    v28 = v41;
  }

  v30 = v40 + 16 * v28;
  *v30 = xmmword_1E86D3AC0;
  v30[1] = *&off_1E86D3AD0;
  v30[2] = xmmword_1E86D3AE0;
  LODWORD(v41) = v41 + 3;
  NameAttr = mlir::Operation::getAttrDictionary(v37);
  Value = mlir::ArrayAttr::getValue(&NameAttr);
  (*(*a5 + 200))(a5, Value, v32, v40, v41);
  v33 = (*(*a5 + 16))(a5);
  v34 = v33[4];
  if (v33[3] == v34)
  {
    llvm::raw_ostream::write(v33, " ", 1uLL);
  }

  else
  {
    *v34 = 32;
    ++v33[4];
  }

  v35 = (((v37 + 16 * ((*(v37 + 11) >> 23) & 1) + ((*(v37 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v37 + 10));
  if (*v35 != v35)
  {
    (*(*a5 + 224))(a5);
  }

  if (v40 != v42)
  {
    free(v40);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  if ((*(*a1 + 408))(a1, "extern", 6))
  {
    result = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(a1);
    if (!result)
    {
      return result;
    }

    mlir::NamedAttribute::NamedAttribute(&v9, *(*(*(a2 + 8) + 96) + 8), result);
    mlir::NamedAttrList::push_back(a2 + 112, v9, v10);
  }

  if ((*(*a1 + 408))(a1, "noinline", 8))
  {
    v5 = *(*(*(a2 + 8) + 96) + 24);
    v6 = (*(*a1 + 32))(a1);
    UnitAttr = mlir::Builder::getUnitAttr(v6, v7);
    mlir::NamedAttribute::NamedAttribute(&v9, v5, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v9, v10);
  }

  return mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(a1, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList);
}

BOOL mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(mlir::AsmParser *a1, uint64_t x1_0, uint64_t (*a3)(uint64_t, mlir::AsmParser *, uint64_t), uint64_t a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v112 = 0;
  v8 = (*(*a1 + 40))(a1);
  if (!mlir::AsmParser::parseSymbolName(a1, &v112))
  {
    v119 = 257;
    (*(*a1 + 24))(&v133, a1, v8, &v116);
    if (v133)
    {
      LODWORD(v130) = 3;
      v131 = "expected valid symbol name.";
      v132[0] = 27;
      v21 = &v130;
      v22 = v135;
      if (v136 >= v137)
      {
        if (v135 <= &v130 && v135 + 24 * v136 > &v130)
        {
          v103 = &v130 - v135;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
          v22 = v135;
          v21 = (v135 + v103);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
          v21 = &v130;
          v22 = v135;
        }
      }

      v23 = &v22[24 * v136];
      v24 = *v21;
      *(v23 + 2) = v21[2];
      *v23 = v24;
      ++v136;
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
    if (v133)
    {
      mlir::InFlightDiagnostic::report(&v133);
    }

    if (v144 == 1)
    {
      if (v143 != &v144)
      {
        free(v143);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v142;
        v28 = __p;
        if (v142 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v142 = v26;
        operator delete(v28);
      }

      v29 = v139;
      if (v139)
      {
        v30 = v140;
        v31 = v139;
        if (v140 != v139)
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
          v31 = v139;
        }

        v140 = v29;
        operator delete(v31);
      }

      v76 = v135;
      if (v135 != v138)
      {
        goto LABEL_136;
      }
    }

    return v25;
  }

  v9 = v112;
  Context = mlir::Attribute::getContext(x1_0);
  LOWORD(v136) = 261;
  v133 = "sym_name";
  v134 = 8;
  v11 = mlir::StringAttr::get(Context, &v133);
  mlir::NamedAttribute::NamedAttribute(&v116, v11, v9);
  mlir::NamedAttrList::push_back(x1_0 + 112, v116, v117);
  {
    mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v12 = *(x1_0 + 8);
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  if (v14)
  {
    v15 = *(v12 + 32);
    v16 = v14;
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[2 * (v16 >> 1)];
      v20 = *v18;
      v19 = v18 + 2;
      v16 += ~(v16 >> 1);
      if (v20 < mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id)
      {
        v15 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    while (v16);
    if (v15 != (v13 + 16 * v14) && *v15 == mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id && v15[1] && (a3(a4, a1, x1_0) & 1) == 0)
    {
      return 0;
    }
  }

  v130 = v132;
  v131 = 0x100000000;
  v111 = 0;
  v127 = v129;
  v128 = 0x600000000;
  v124 = v126;
  v125 = 0x600000000;
  v34 = (*(*a1 + 40))(a1);
  if (mlir::function_interface_impl::parseFunctionSignature(a1, 0, &v130, &v111, &v127, &v124))
  {
    v35 = (*(*a1 + 32))(a1);
    v36 = v130;
    v37 = v131;
    v38 = v124;
    v39 = v125;
    v40 = mlir::AsmParser::getContext(a1);
    LOWORD(v136) = 262;
    v133 = "arg_attrs";
    v134 = 9;
    v41 = mlir::StringAttr::get(v40, &v133);
    v42 = mlir::AsmParser::getContext(a1);
    v119 = 262;
    v116 = "res_attrs";
    v117 = 9;
    v43 = mlir::StringAttr::get(v42, &v116);
    mlir::function_interface_impl::addArgAndResultAttrs(v35, x1_0, v36, v37, v38, v39, v41, v43);
    v121 = v123;
    v122 = 0x600000000;
    v44 = v131;
    if (v131 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v131, 8);
      v44 = v131;
    }

    if (v44)
    {
      v45 = v122;
      v46 = (v130 + 32);
      v47 = v44 << 6;
      do
      {
        v48 = *v46;
        if (v45 >= HIDWORD(v122))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v45 + 1, 8);
          v45 = v122;
        }

        *(v121 + v45) = v48;
        v45 = v122 + 1;
        LODWORD(v122) = v122 + 1;
        v46 += 8;
        v47 -= 64;
      }

      while (v47);
    }

    v61 = (*(*a1 + 32))(a1);
    mlir::ValueRange::ValueRange(&v133, v121, v122);
    mlir::ValueRange::ValueRange(&v116, v127, v128);
    FunctionType = mlir::Builder::getFunctionType(v61, v133, v134, v116, v117);
    if (FunctionType)
    {
      v63 = mlir::TypeAttr::get(FunctionType);
      v64 = mlir::Attribute::getContext(x1_0);
      LOWORD(v136) = 261;
      v133 = "function_type";
      v134 = 13;
      v65 = mlir::StringAttr::get(v64, &v133);
      mlir::NamedAttribute::NamedAttribute(&v116, v65, v63);
      mlir::NamedAttrList::push_back(x1_0 + 112, v116, v117);
      v116 = v118;
      v117 = 0x400000000;
      v120 = 4;
      v66 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 496))(a1, &v116))
      {
        Attrs = mlir::NamedAttrList::getAttrs(&v116);
        v69 = v67;
        *(x1_0 + 192) = 0;
        v70 = *(x1_0 + 120);
        if (v67 + v70 > *(x1_0 + 124))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(x1_0 + 112, x1_0 + 128, v67 + v70, 16);
          LODWORD(v70) = *(x1_0 + 120);
        }

        if (v69)
        {
          memcpy((*(x1_0 + 112) + 16 * v70), Attrs, 16 * v69);
          LODWORD(v70) = *(x1_0 + 120);
        }

        *(x1_0 + 120) = v70 + v69;
        v71 = mlir::OperationState::addRegion(x1_0);
        v72 = (*(*a1 + 40))(a1);
        v73 = (*(*a1 + 784))(a1, v71, v130, v131, 0);
        v25 = 1;
        if ((v73 & 0x100) != 0 && (v73 & 1) == 0)
        {
          v74 = (*(*a1 + 48))(a1, v72);
          mlir::emitError(v74, v146, &v133);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v133, "failed to parse the body region");
          v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v75);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v133);
        }
      }

      else
      {
        v110 = 257;
        (*(*a1 + 24))(&v133, a1, v66, &v107);
        if (v133)
        {
          v113 = 3;
          v114 = "failed to parse the attribute dictionary";
          v115 = 40;
          v89 = &v113;
          v90 = v135;
          if (v136 >= v137)
          {
            if (v135 <= &v113 && v135 + 24 * v136 > &v113)
            {
              v106 = &v113 - v135;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
              v90 = v135;
              v89 = (v135 + v106);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
              v89 = &v113;
              v90 = v135;
            }
          }

          v91 = &v90[24 * v136];
          v92 = *v89;
          *(v91 + 2) = *(v89 + 2);
          *v91 = v92;
          ++v136;
        }

        v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
        if (v133)
        {
          mlir::InFlightDiagnostic::report(&v133);
        }

        if (v144 == 1)
        {
          if (v143 != &v144)
          {
            free(v143);
          }

          v93 = __p;
          if (__p)
          {
            v94 = v142;
            v95 = __p;
            if (v142 != __p)
            {
              do
              {
                v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
              }

              while (v94 != v93);
              v95 = __p;
            }

            v142 = v93;
            operator delete(v95);
          }

          v96 = v139;
          if (v139)
          {
            v97 = v140;
            v98 = v139;
            if (v140 != v139)
            {
              do
              {
                v100 = *--v97;
                v99 = v100;
                *v97 = 0;
                if (v100)
                {
                  operator delete[](v99);
                }
              }

              while (v97 != v96);
              v98 = v139;
            }

            v140 = v96;
            operator delete(v98);
          }

          if (v135 != v138)
          {
            free(v135);
          }
        }
      }

      if (v116 != v118)
      {
        free(v116);
      }
    }

    else
    {
      v119 = 257;
      (*(*a1 + 24))(&v133, a1, v34, &v116);
      if (v133)
      {
        v107 = 3;
        v108 = "failed to construct function type";
        v109 = 33;
        v77 = &v107;
        v78 = v135;
        if (v136 >= v137)
        {
          if (v135 <= &v107 && v135 + 24 * v136 > &v107)
          {
            v105 = &v107 - v135;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
            v78 = v135;
            v77 = (v135 + v105);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
            v77 = &v107;
            v78 = v135;
          }
        }

        v79 = &v78[24 * v136];
        v80 = *v77;
        *(v79 + 2) = *(v77 + 2);
        *v79 = v80;
        ++v136;
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
      if (v133)
      {
        mlir::InFlightDiagnostic::report(&v133);
      }

      if (v144 == 1)
      {
        if (v143 != &v144)
        {
          free(v143);
        }

        v81 = __p;
        if (__p)
        {
          v82 = v142;
          v83 = __p;
          if (v142 != __p)
          {
            do
            {
              v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
            }

            while (v82 != v81);
            v83 = __p;
          }

          v142 = v81;
          operator delete(v83);
        }

        v84 = v139;
        if (v139)
        {
          v85 = v140;
          v86 = v139;
          if (v140 != v139)
          {
            do
            {
              v88 = *--v85;
              v87 = v88;
              *v85 = 0;
              if (v88)
              {
                operator delete[](v87);
              }
            }

            while (v85 != v84);
            v86 = v139;
          }

          v140 = v84;
          operator delete(v86);
        }

        if (v135 != v138)
        {
          free(v135);
        }
      }
    }

    v101 = v121;
    if (v121 != v123)
    {
LABEL_130:
      free(v101);
    }
  }

  else
  {
    v119 = 257;
    (*(*a1 + 24))(&v133, a1, v34, &v116);
    if (v133)
    {
      LODWORD(v121) = 3;
      v122 = "failed to parse the function signature";
      v123[0] = 38;
      v49 = &v121;
      v50 = v135;
      if (v136 >= v137)
      {
        if (v135 <= &v121 && v135 + 24 * v136 > &v121)
        {
          v104 = &v121 - v135;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
          v50 = v135;
          v49 = (v135 + v104);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v138, v136 + 1, 24);
          v49 = &v121;
          v50 = v135;
        }
      }

      v51 = &v50[24 * v136];
      v52 = *v49;
      *(v51 + 2) = v49[2];
      *v51 = v52;
      ++v136;
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
    if (v133)
    {
      mlir::InFlightDiagnostic::report(&v133);
    }

    if (v144 == 1)
    {
      if (v143 != &v144)
      {
        free(v143);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v142;
        v55 = __p;
        if (v142 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v142 = v53;
        operator delete(v55);
      }

      v56 = v139;
      if (v139)
      {
        v57 = v140;
        v58 = v139;
        if (v140 != v139)
        {
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
          v58 = v139;
        }

        v140 = v56;
        operator delete(v58);
      }

      v101 = v135;
      if (v135 != v138)
      {
        goto LABEL_130;
      }
    }
  }

  if (v124 != v126)
  {
    free(v124);
  }

  if (v127 != v129)
  {
    free(v127);
  }

  v76 = v130;
  if (v130 != v132)
  {
LABEL_136:
    free(v76);
  }

  return v25;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x600000000;
  v11 = a1;
  v12 = &v15;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v15, v16);
    Context = mlir::Attribute::getContext(a2);
    v13 = 261;
    v11 = "param_decls";
    v12 = 11;
    v7 = mlir::StringAttr::get(Context, &v11);
    mlir::NamedAttribute::NamedAttribute(v14, v7, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v14[0], v14[1]);
    v8 = 1;
    v9 = v15;
    if (v15 == v17)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = v15;
  if (v15 != v17)
  {
LABEL_5:
    free(v9);
  }

  return v8;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::specialize(uint64_t *a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
    mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v5, InterfaceFor, a2, a3);
  }

  mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(0, 0, a2, a3);
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::canDiscardOnUseEmpty(mlir::ODIE::Compiler::CoreML::FuncOp *this)
{
  v1 = *(*this + 44);
  v2 = *this + 64 + 16 * ((v1 >> 23) & 1);
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  return *v3 != v3 && *(v2 + 8) == 0;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v18[8] = *MEMORY[0x1E69E9840];
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 13))
  {
LABEL_4:
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] - v5 <= 7uLL)
  {
    llvm::raw_ostream::write(v4, " private", 8uLL);
    goto LABEL_4;
  }

  *v5 = 0x6574617669727020;
  v4[4] += 8;
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 0xB)
  {
    *(v7 + 8) = 1702521196;
    *v7 = *" externalize";
    v6[4] += 12;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  llvm::raw_ostream::write(v6, " externalize", 0xCuLL);
LABEL_9:
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11))
  {
    goto LABEL_15;
  }

LABEL_12:
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 8)
  {
    *(v9 + 8) = 101;
    *v9 = *" noinline";
    v8[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v8, " noinline", 9uLL);
  }

LABEL_15:
  v10 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  v17 = *(*(*(*this + 6) + 96) + 40);
  v18[0] = mlir::OpaqueAttr::getAttrData(&v17);
  v18[1] = v12;
  v16 = *(*(*(*this + 6) + 96) + 8);
  v18[2] = mlir::OpaqueAttr::getAttrData(&v16);
  v18[3] = v13;
  v15 = *(*(*(*this + 6) + 96) + 24);
  v18[4] = mlir::OpaqueAttr::getAttrData(&v15);
  v18[5] = v14;
  v18[6] = "sym_visibility";
  v18[7] = 14;
  mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(v10, InterfaceFor, v18, 4uLL, a2);
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  v15 = xmmword_1E86D3A90;
  v16 = *&off_1E86D3AA0;
  for (i = xmmword_1E86D3AB0; ((*(*a1 + 424))(a1, &v13, &v15, 3) & 1) != 0; i = xmmword_1E86D3AB0)
  {
    v8 = *(*(a2 + 8) + 96);
    if (v14 == 11)
    {
      if (*v13 == 0x6C616E7265747865 && *(v13 + 3) == 0x657A696C616E7265)
      {
        v10 = v8 + 1;
        goto LABEL_22;
      }
    }

    else if (v14 == 8)
    {
      if (*v13 == 0x656E696C6E696F6ELL)
      {
        v10 = v8 + 3;
        goto LABEL_22;
      }
    }

    else if (v14 == 7 && *v13 == 1986622064 && *(v13 + 3) == 1702125942)
    {
      v10 = v8 + 5;
LABEL_22:
      v4 = *v10;
      goto LABEL_5;
    }

    v4 = 0;
LABEL_5:
    v5 = (*(*a1 + 32))(a1);
    UnitAttr = mlir::Builder::getUnitAttr(v5, v6);
    mlir::NamedAttribute::NamedAttribute(&v15, v4, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v15, *(&v15 + 1));
    v15 = xmmword_1E86D3A90;
    v16 = *&off_1E86D3AA0;
  }

  return mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(a1, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x600000000;
  v11 = a1;
  v12 = &v15;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v15, v16);
    Context = mlir::Attribute::getContext(a2);
    v13 = 261;
    v11 = "param_decls";
    v12 = 11;
    v7 = mlir::StringAttr::get(Context, &v11);
    mlir::NamedAttribute::NamedAttribute(v14, v7, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v14[0], v14[1]);
    v8 = 1;
    v9 = v15;
    if (v15 == v17)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = v15;
  if (v15 != v17)
  {
LABEL_5:
    free(v9);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setVisibility(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    llvm::report_fatal_error("GraphOp has no concept of 'nested' visibility", 1);
  }

  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (a2 == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    result = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 104) = result;
  }

  else
  {
    *(v2 + 104) = 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPrivate(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getUnitAttr(&Context, v2);
  *(v1 + 104) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verify(mlir::Block ***this)
{
  v225 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*(*this + 47) && (v226.var0 = "sym_visibility", v226.var1 = 14, InherentAttr = mlir::Operation::getInherentAttr(*this, v226), (v4 & 1) != 0))
  {
    if (InherentAttr)
    {
LABEL_4:
      LOWORD(v196) = 257;
      mlir::OpState::emitError(this, &v194, &Value);
      if (Value)
      {
        LODWORD(v210) = 3;
        v211 = "graphs do not allow the default symbol visibility attr";
        v212[0] = 54;
        v5 = &v210;
        v6 = v215;
        if (v216 >= v217)
        {
          if (v215 <= &v210 && v215 + 24 * v216 > &v210)
          {
            v176 = &v210 - v215;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
            v6 = v215;
            v5 = (v215 + v176);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
            v5 = &v210;
            v6 = v215;
          }
        }

        v7 = &v6[24 * v216];
        v8 = *v5;
        *(v7 + 2) = v5[2];
        *v7 = v8;
        ++v216;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v224 != 1)
      {
        return Results;
      }

      if (v223 != &v224)
      {
        free(v223);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v222;
        v12 = __p;
        if (v222 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v222 = v10;
        operator delete(v12);
      }

      v13 = v219;
      if (!v219)
      {
        goto LABEL_93;
      }

      v14 = v220;
      v15 = v219;
      if (v220 == v219)
      {
        goto LABEL_92;
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
      goto LABEL_91;
    }
  }

  else
  {
    v227.var0 = "sym_visibility";
    v227.var1 = 14;
    if (mlir::DictionaryAttr::contains((v2 + 7), v227))
    {
      goto LABEL_4;
    }
  }

  v18 = *this;
  v19 = *(*this + 11);
  v20 = &(*this)[2 * ((v19 >> 23) & 1) + 8];
  if (*(v20 + 40))
  {
    if (*(v20 + 8))
    {
      LOWORD(v196) = 257;
      mlir::OpState::emitError(this, &v194, &Value);
      if (Value)
      {
        LODWORD(v210) = 3;
        v211 = "graphs marked 'externalize' must not be private";
        v212[0] = 47;
        v21 = &v210;
        v22 = v215;
        if (v216 >= v217)
        {
          if (v215 <= &v210 && v215 + 24 * v216 > &v210)
          {
            v177 = &v210 - v215;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
            v22 = v215;
            v21 = (v215 + v177);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
            v21 = &v210;
            v22 = v215;
          }
        }

        v23 = &v22[24 * v216];
        v24 = *v21;
        *(v23 + 2) = v21[2];
        *v23 = v24;
        ++v216;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v224 != 1)
      {
        return Results;
      }

      if (v223 != &v224)
      {
        free(v223);
      }

      v25 = __p;
      if (__p)
      {
        v26 = v222;
        v27 = __p;
        if (v222 != __p)
        {
          do
          {
            v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v222 = v25;
        operator delete(v27);
      }

      v13 = v219;
      if (!v219)
      {
        goto LABEL_93;
      }

      v28 = v220;
      v15 = v219;
      if (v220 == v219)
      {
        goto LABEL_92;
      }

      do
      {
        v30 = *--v28;
        v29 = v30;
        *v28 = 0;
        if (v30)
        {
          operator delete[](v29);
        }
      }

      while (v28 != v13);
      goto LABEL_91;
    }

    v31 = (v19 >> 21) & 0x7F8;
    v32 = 32 * *(v18 + 10);
LABEL_66:
    v43 = (((v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + v32);
    if (*v43 == v43)
    {
      return 1;
    }

    v44 = v43[1];
    if (v44)
    {
      v45 = (v44 - 8);
    }

    else
    {
      v45 = 0;
    }

    if (!mlir::Block::mightHaveTerminator(v45, v4) || *(*(mlir::Block::getTerminator(v45, v46) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
    {
      LOWORD(v196) = 257;
      mlir::OpState::emitError(this, &v194, &Value);
      if (Value)
      {
        LODWORD(v210) = 3;
        v211 = "expected the 'coreml.output' terminator";
        v212[0] = 39;
        v48 = &v210;
        v49 = v215;
        if (v216 >= v217)
        {
          if (v215 <= &v210 && v215 + 24 * v216 > &v210)
          {
            v178 = &v210 - v215;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
            v49 = v215;
            v48 = (v215 + v178);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
            v48 = &v210;
            v49 = v215;
          }
        }

        v50 = &v49[24 * v216];
        v51 = *v48;
        *(v50 + 2) = v48[2];
        *v50 = v51;
        ++v216;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v224 != 1)
      {
        return Results;
      }

      if (v223 != &v224)
      {
        free(v223);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v222;
        v54 = __p;
        if (v222 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v222 = v52;
        operator delete(v54);
      }

      v13 = v219;
      if (!v219)
      {
        goto LABEL_93;
      }

      v55 = v220;
      v15 = v219;
      if (v220 == v219)
      {
        goto LABEL_92;
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

      while (v55 != v13);
      goto LABEL_91;
    }

    Terminator = mlir::Block::getTerminator(v45, v47);
    v61 = Terminator;
    if ((*(Terminator + 46) & 0x80) != 0)
    {
      v62 = *(Terminator + 72);
      v63 = *(Terminator + 68);
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    *&v194 = v62;
    *(&v194 + 1) = v63;
    mlir::OperandRange::getTypes(&v194, &Value);
    v210 = v212;
    v211 = 0x600000000;
    v64 = Value;
    v65 = v214;
    v66 = v215;
    v67 = v215 - v214;
    if (v215 - v214 < 7)
    {
      v68 = 0;
      v69 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v210, v212, v215 - v214, 8);
      v68 = v211;
      v69 = v211;
    }

    if (v66 != v65)
    {
      v70 = &v210[v68];
      v71 = (v64 + 32 * v65 + 24);
      v72 = v67;
      do
      {
        v73 = *v71;
        v71 += 4;
        *v70++ = *(v73 + 8) & 0xFFFFFFFFFFFFFFF8;
        --v72;
      }

      while (v72);
      v69 = v211;
    }

    LODWORD(v211) = v69 + v67;
    Value = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
    Value = mlir::AffineMapAttr::getValue(&Value);
    Results = mlir::FunctionType::getResults(&Value);
    v75 = v74;
    v207 = v209;
    v208 = 0x600000000;
    v76 = (8 * v74) >> 3;
    if (v76 < 7)
    {
      v77 = 0;
      v78 = v209;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v207, v209, v76, 8);
      v77 = v208;
      v78 = v207;
    }

    if (v75)
    {
      memcpy(&v78[v77], Results, 8 * v75);
      v77 = v208;
      v78 = v207;
    }

    v79 = (v77 + v75);
    LODWORD(v208) = v79;
    v80 = v211;
    if (v211 == v79)
    {
      if (v79)
      {
        v81 = v210;
        v82 = &v210[v211];
        do
        {
          v193[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*v81);
          v193[1] = v83;
          v84 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*v78);
          v192[0] = v84;
          v192[1] = v85;
          if (v193[0])
          {
            v86 = v84 == 0;
          }

          else
          {
            v86 = 1;
          }

          if (!v86 && *(*v193[0] + 136) == *(*v84 + 136))
          {
            mlir::CallableOpInterface::getArgAttrsAttr(v193);
            v88 = v87;
            mlir::CallableOpInterface::getArgAttrsAttr(v192);
            if (v88 != v89)
            {
              goto LABEL_158;
            }

            Results = mlir::CallableOpInterface::getArgAttrsAttr(v193);
            v91 = v90;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v192);
            if (v91)
            {
              v93 = 8 * v91;
              while (*ArgAttrsAttr == 0x8000000000000000 || *ArgAttrsAttr == *Results)
              {
                Results += 8;
                ++ArgAttrsAttr;
                v93 -= 8;
                if (!v93)
                {
                  goto LABEL_120;
                }
              }

LABEL_158:
              LOWORD(v196) = 257;
              mlir::OpState::emitError(this, &v194, &Value);
              if (Value)
              {
                LODWORD(v194) = 3;
                *(&v194 + 1) = "expected ";
                *&v195 = 9;
                v121 = &v194;
                v122 = v215;
                if (v216 >= v217)
                {
                  if (v215 <= &v194 && v215 + 24 * v216 > &v194)
                  {
                    v183 = &v194 - v215;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                    v122 = v215;
                    v121 = v215 + v183;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                    v121 = &v194;
                    v122 = v215;
                  }
                }

                v123 = &v122[24 * v216];
                v124 = *v121;
                *(v123 + 2) = *(v121 + 2);
                *v123 = v124;
                ++v216;
                if (Value)
                {
                  v125 = &v194;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v194, v192[0]);
                  v126 = v215;
                  if (v216 >= v217)
                  {
                    if (v215 <= &v194 && v215 + 24 * v216 > &v194)
                    {
                      v185 = &v194 - v215;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                      v126 = v215;
                      v125 = v215 + v185;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                      v125 = &v194;
                      v126 = v215;
                    }
                  }

                  v127 = &v126[24 * v216];
                  v128 = *v125;
                  *(v127 + 2) = *(v125 + 2);
                  *v127 = v128;
                  v129 = ++v216;
                  if (Value)
                  {
                    LODWORD(v194) = 3;
                    *(&v194 + 1) = ", got ";
                    *&v195 = 6;
                    v130 = &v194;
                    v131 = v215;
                    if (v129 >= v217)
                    {
                      if (v215 <= &v194 && v215 + 24 * v129 > &v194)
                      {
                        v187 = &v194 - v215;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v129 + 1, 24);
                        v131 = v215;
                        v130 = v215 + v187;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v129 + 1, 24);
                        v130 = &v194;
                        v131 = v215;
                      }
                    }

                    v132 = &v131[24 * v216];
                    v133 = *v130;
                    *(v132 + 2) = *(v130 + 2);
                    *v132 = v133;
                    ++v216;
                    if (Value)
                    {
                      v134 = &v194;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v194, v193[0]);
                      v135 = v215;
                      if (v216 >= v217)
                      {
                        if (v215 <= &v194 && v215 + 24 * v216 > &v194)
                        {
                          v189 = &v194 - v215;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                          v135 = v215;
                          v134 = v215 + v189;
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                          v134 = &v194;
                          v135 = v215;
                        }
                      }

                      v136 = &v135[24 * v216];
                      v137 = *v134;
                      *(v136 + 2) = *(v134 + 2);
                      *v136 = v137;
                      ++v216;
                    }
                  }
                }
              }

              Results = &Value;
              mlir::InFlightDiagnostic::InFlightDiagnostic(&v194, &Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v224 != 1)
              {
                goto LABEL_212;
              }

              if (v223 != &v224)
              {
                free(v223);
              }

              v138 = __p;
              if (__p)
              {
                v139 = v222;
                v140 = __p;
                if (v222 != __p)
                {
                  do
                  {
                    v139 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v139 - 1);
                  }

                  while (v139 != v138);
                  v140 = __p;
                }

                v222 = v138;
                operator delete(v140);
              }

              Results = v219;
              if (!v219)
              {
                goto LABEL_210;
              }

              v141 = v220;
              v118 = v219;
              if (v220 == v219)
              {
                goto LABEL_209;
              }

              do
              {
                v143 = *--v141;
                v142 = v143;
                *v141 = 0;
                if (v143)
                {
                  operator delete[](v142);
                }
              }

              while (v141 != Results);
LABEL_208:
              v118 = v219;
              goto LABEL_209;
            }
          }

          else if (*v81 != *v78)
          {
            LOWORD(v196) = 257;
            mlir::OpState::emitError(this, &v194, &Value);
            if (Value)
            {
              LODWORD(v194) = 3;
              *(&v194 + 1) = "expected type ";
              *&v195 = 14;
              v144 = &v194;
              v145 = v215;
              if (v216 >= v217)
              {
                if (v215 <= &v194 && v215 + 24 * v216 > &v194)
                {
                  v186 = &v194 - v215;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                  v145 = v215;
                  v144 = v215 + v186;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                  v144 = &v194;
                  v145 = v215;
                }
              }

              v146 = &v145[24 * v216];
              v147 = *v144;
              *(v146 + 2) = *(v144 + 2);
              *v146 = v147;
              ++v216;
              if (Value)
              {
                v148 = &v194;
                mlir::DiagnosticArgument::DiagnosticArgument(&v194, *v78);
                v149 = v215;
                if (v216 >= v217)
                {
                  if (v215 <= &v194 && v215 + 24 * v216 > &v194)
                  {
                    v188 = &v194 - v215;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                    v149 = v215;
                    v148 = v215 + v188;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                    v148 = &v194;
                    v149 = v215;
                  }
                }

                v150 = &v149[24 * v216];
                v151 = *v148;
                *(v150 + 2) = *(v148 + 2);
                *v150 = v151;
                v152 = ++v216;
                if (Value)
                {
                  LODWORD(v194) = 3;
                  *(&v194 + 1) = ", got ";
                  *&v195 = 6;
                  v153 = &v194;
                  v154 = v215;
                  if (v152 >= v217)
                  {
                    if (v215 <= &v194 && v215 + 24 * v152 > &v194)
                    {
                      v190 = &v194 - v215;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v152 + 1, 24);
                      v154 = v215;
                      v153 = v215 + v190;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v152 + 1, 24);
                      v153 = &v194;
                      v154 = v215;
                    }
                  }

                  v155 = &v154[24 * v216];
                  v156 = *v153;
                  *(v155 + 2) = *(v153 + 2);
                  *v155 = v156;
                  ++v216;
                  if (Value)
                  {
                    v157 = &v194;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v194, *v81);
                    v158 = v215;
                    if (v216 >= v217)
                    {
                      if (v215 <= &v194 && v215 + 24 * v216 > &v194)
                      {
                        v191 = &v194 - v215;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                        v158 = v215;
                        v157 = v215 + v191;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
                        v157 = &v194;
                        v158 = v215;
                      }
                    }

                    v159 = &v158[24 * v216];
                    v160 = *v157;
                    *(v159 + 2) = *(v157 + 2);
                    *v159 = v160;
                    ++v216;
                  }
                }
              }
            }

            Results = &Value;
            mlir::InFlightDiagnostic::InFlightDiagnostic(&v194, &Value);
            if (Value)
            {
              mlir::InFlightDiagnostic::report(&Value);
            }

            if (v224 != 1)
            {
              goto LABEL_212;
            }

            if (v223 != &v224)
            {
              free(v223);
            }

            v161 = __p;
            if (__p)
            {
              v162 = v222;
              v163 = __p;
              if (v222 != __p)
              {
                do
                {
                  v162 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v162 - 1);
                }

                while (v162 != v161);
                v163 = __p;
              }

              v222 = v161;
              operator delete(v163);
            }

            Results = v219;
            if (!v219)
            {
              goto LABEL_210;
            }

            v164 = v220;
            v118 = v219;
            if (v220 == v219)
            {
              goto LABEL_209;
            }

            do
            {
              v166 = *--v164;
              v165 = v166;
              *v164 = 0;
              if (v166)
              {
                operator delete[](v165);
              }
            }

            while (v164 != Results);
            goto LABEL_208;
          }

LABEL_120:
          ++v81;
          ++v78;
        }

        while (v81 != v82);
      }

      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v194 = 0u;
    }

    else
    {
      LOWORD(v196) = 257;
      mlir::OpState::emitError(this, &v194, &Value);
      if (Value)
      {
        LODWORD(v194) = 3;
        *(&v194 + 1) = "expected ";
        *&v195 = 9;
        v95 = &v194;
        v96 = v215;
        if (v216 >= v217)
        {
          if (v215 <= &v194 && v215 + 24 * v216 > &v194)
          {
            v180 = &v194 - v215;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
            v96 = v215;
            v95 = v215 + v180;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
            v95 = &v194;
            v96 = v215;
          }
        }

        v97 = &v96[24 * v216];
        v98 = *v95;
        *(v97 + 2) = *(v95 + 2);
        *v97 = v98;
        v99 = ++v216;
        if (Value)
        {
          LODWORD(v194) = 5;
          *(&v194 + 1) = v79;
          v100 = &v194;
          v101 = v215;
          if (v99 >= v217)
          {
            if (v215 <= &v194 && v215 + 24 * v99 > &v194)
            {
              v181 = &v194 - v215;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v99 + 1, 24);
              v101 = v215;
              v100 = v215 + v181;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v99 + 1, 24);
              v100 = &v194;
              v101 = v215;
            }
          }

          v102 = &v101[24 * v216];
          v103 = *v100;
          *(v102 + 2) = *(v100 + 2);
          *v102 = v103;
          v104 = ++v216;
          if (Value)
          {
            LODWORD(v194) = 3;
            *(&v194 + 1) = " results, got ";
            *&v195 = 14;
            v105 = &v194;
            v106 = v215;
            if (v104 >= v217)
            {
              if (v215 <= &v194 && v215 + 24 * v104 > &v194)
              {
                v182 = &v194 - v215;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v104 + 1, 24);
                v106 = v215;
                v105 = v215 + v182;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v104 + 1, 24);
                v105 = &v194;
                v106 = v215;
              }
            }

            v107 = &v106[24 * v216];
            v108 = *v105;
            *(v107 + 2) = *(v105 + 2);
            *v107 = v108;
            v109 = ++v216;
            if (Value)
            {
              LODWORD(v194) = 5;
              *(&v194 + 1) = v80;
              v110 = &v194;
              v111 = v215;
              if (v109 >= v217)
              {
                if (v215 <= &v194 && v215 + 24 * v109 > &v194)
                {
                  v184 = &v194 - v215;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v109 + 1, 24);
                  v111 = v215;
                  v110 = v215 + v184;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v109 + 1, 24);
                  v110 = &v194;
                  v111 = v215;
                }
              }

              v112 = &v111[24 * v216];
              v113 = *v110;
              *(v112 + 2) = *(v110 + 2);
              *v112 = v113;
              ++v216;
            }
          }
        }
      }

      Results = &Value;
      mlir::InFlightDiagnostic::InFlightDiagnostic(&v194, &Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v224 == 1)
      {
        if (v223 != &v224)
        {
          free(v223);
        }

        v114 = __p;
        if (__p)
        {
          v115 = v222;
          v116 = __p;
          if (v222 != __p)
          {
            do
            {
              v115 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v115 - 1);
            }

            while (v115 != v114);
            v116 = __p;
          }

          v222 = v114;
          operator delete(v116);
        }

        Results = v219;
        if (v219)
        {
          v117 = v220;
          v118 = v219;
          if (v220 != v219)
          {
            do
            {
              v120 = *--v117;
              v119 = v120;
              *v117 = 0;
              if (v120)
              {
                operator delete[](v119);
              }
            }

            while (v117 != Results);
            goto LABEL_208;
          }

LABEL_209:
          v220 = Results;
          operator delete(v118);
        }

LABEL_210:
        if (v215 != v218)
        {
          free(v215);
        }
      }
    }

LABEL_212:
    v167 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v194);
    if (!v167)
    {
      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v194);
    }

    if (v194)
    {
      mlir::InFlightDiagnostic::report(&v194);
    }

    if (BYTE8(v206) == 1)
    {
      mlir::Diagnostic::~Diagnostic((&v194 + 8));
      if (!v167)
      {
LABEL_218:
        v168 = v207;
        if (v207 == v209)
        {
          goto LABEL_220;
        }

        goto LABEL_219;
      }
    }

    else if (!v167)
    {
      goto LABEL_218;
    }

    ArgumentTypes = mlir::ODIE::Compiler::CoreML::GraphOp::getArgumentTypes(this);
    mlir::ValueRange::ValueRange(&Value, ArgumentTypes, v170);
    ResultTypes = mlir::ODIE::Compiler::CoreML::GraphOp::getResultTypes(this);
    mlir::ValueRange::ValueRange(&v194, ResultTypes, v172);
    if (mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(Value, v214, v194, *(&v194 + 1)))
    {
      Arguments = mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(this);
      mlir::ValueRange::ValueRange(&Value, Arguments, v174);
      if ((*(v61 + 46) & 0x80) != 0)
      {
        mlir::ValueRange::ValueRange(&v194, *(v61 + 72), *(v61 + 68));
        if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(Value, v214, v194, *(&v194 + 1)))
        {
          goto LABEL_226;
        }
      }

      else
      {
        mlir::ValueRange::ValueRange(&v194, 0, 0);
        if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(Value, v214, v194, *(&v194 + 1)))
        {
LABEL_226:
          Results = 1;
          v168 = v207;
          if (v207 == v209)
          {
            goto LABEL_220;
          }

          goto LABEL_219;
        }
      }

      LOWORD(v196) = 257;
      mlir::OpState::emitError(this, &v194, &Value);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&Value, "order of token outputs does not match order of handle inputs");
    }

    else
    {
      LOWORD(v196) = 257;
      mlir::OpState::emitError(this, &v194, &Value);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&Value, "number of handle inputs must match number of token outputs");
    }

    Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v175);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    v168 = v207;
    if (v207 == v209)
    {
LABEL_220:
      v58 = v210;
      if (v210 == v212)
      {
        return Results;
      }

      goto LABEL_94;
    }

LABEL_219:
    free(v168);
    goto LABEL_220;
  }

  v31 = (v19 >> 21) & 0x7F8;
  v32 = 32 * *(v18 + 10);
  if (*(v32 + ((v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) != v32 + ((v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_66;
  }

  LOWORD(v196) = 257;
  mlir::OpState::emitError(this, &v194, &Value);
  if (Value)
  {
    LODWORD(v210) = 3;
    v211 = "non-private graphs must have a body";
    v212[0] = 35;
    v33 = &v210;
    v34 = v215;
    if (v216 >= v217)
    {
      if (v215 <= &v210 && v215 + 24 * v216 > &v210)
      {
        v179 = &v210 - v215;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
        v34 = v215;
        v33 = (v215 + v179);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v218, v216 + 1, 24);
        v33 = &v210;
        v34 = v215;
      }
    }

    v35 = &v34[24 * v216];
    v36 = *v33;
    *(v35 + 2) = v33[2];
    *v35 = v36;
    ++v216;
  }

  Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v224 != 1)
  {
    return Results;
  }

  if (v223 != &v224)
  {
    free(v223);
  }

  v37 = __p;
  if (__p)
  {
    v38 = v222;
    v39 = __p;
    if (v222 != __p)
    {
      do
      {
        v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
      }

      while (v38 != v37);
      v39 = __p;
    }

    v222 = v37;
    operator delete(v39);
  }

  v13 = v219;
  if (v219)
  {
    v40 = v220;
    v15 = v219;
    if (v220 == v219)
    {
      goto LABEL_92;
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

    while (v40 != v13);
LABEL_91:
    v15 = v219;
LABEL_92:
    v220 = v13;
    operator delete(v15);
  }

LABEL_93:
  v58 = v215;
  if (v215 != v218)
  {
LABEL_94:
    free(v58);
  }

  return Results;
}

BOOL mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = 0;
    v10 = 0;
    if (!a4)
    {
      return v8 == v10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  for (i = 0; i != a2; ++i)
  {
    if (*(*mlir::TypeRange::dereference_iterator(a1, i) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
    {
      ++v8;
    }
  }

  v10 = 0;
  if (a4)
  {
LABEL_9:
    v11 = 0;
    do
    {
      if (*(*mlir::TypeRange::dereference_iterator(a3, v11) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        ++v10;
      }

      ++v11;
    }

    while (a4 != v11);
  }

  return v8 == v10;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getArgumentTypes(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::FunctionType::getInputs(&Value);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getResultTypes(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::FunctionType::getResults(&Value);
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a1;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  if (a2)
  {
    v7 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v21, v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v7 = *(&v21 + 1) + 1;
      *(&v21 + 1) = v7;
    }

    while (v7 != *(&v22 + 1));
  }

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v21 = a3;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  if (a4)
  {
    v8 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v21, v8) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        break;
      }

      v8 = *(&v21 + 1) + 1;
      *(&v21 + 1) = v8;
    }

    while (v8 != *(&v22 + 1));
  }

  *&v20[24] = v22;
  *&v20[8] = v21;
  v21 = v17;
  v22 = v18;
  v9 = *(&v17 + 1);
  *&v20[40] = v23;
  *v20 = v19;
  v23 = *v20;
  v24 = *&v20[16];
  v25 = *&v20[32];
  if (*(&v17 + 1) != a2)
  {
    while (v24 != a4)
    {
      v11 = mlir::ValueRange::dereference_iterator(&v21, v9);
      v12 = mlir::ValueRange::dereference_iterator(&v23 + 1, v24);
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v12);
      if (HandleForToken)
      {
        v14 = HandleForToken == v11;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        return 0;
      }

      do
      {
        v15 = *(&v21 + 1) + 1;
        *(&v21 + 1) = v15;
      }

      while (v15 != *(&v22 + 1) && *(*(*(mlir::ValueRange::dereference_iterator(&v21, v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id);
      do
      {
        v16 = v24 + 1;
        *&v24 = v16;
      }

      while (v16 != v25 && *(*(*(mlir::ValueRange::dereference_iterator(&v23 + 1, v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
      v9 = *(&v21 + 1);
      if (*(&v21 + 1) == a2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(uint64_t a1)
{
  v1 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (*v1 == v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verify(mlir::Block ***this, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = (((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v2 == v2)
  {
    return 1;
  }

  v4 = v2[1];
  v5 = v4 ? (v4 - 8) : 0;
  if (!mlir::Block::mightHaveTerminator(v5, a2))
  {
    return 1;
  }

  v7 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v7)
  {
    v8 = (v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  Terminator = mlir::Block::getTerminator(v8, v6);
  v10 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(&v33, *(v11 + 48), (*(v11 + 56) - *(v11 + 48)) >> 3);
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    mlir::ValueRange::ValueRange(&v30, *(Terminator + 72), *(Terminator + 68));
    if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(v33, v34, v30, v31))
    {
      return 1;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(v33, v34, v30, v31))
    {
      return 1;
    }
  }

  v32 = 257;
  mlir::OpState::emitError(this, &v30, &v33);
  if (v33)
  {
    v27 = 3;
    v28 = "order of token outputs does not match order of handle inputs";
    v29 = 60;
    v13 = &v27;
    v14 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v27 && v35 + 24 * v36 > &v27)
      {
        v26 = &v27 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v14 = v35;
        v13 = (v35 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v13 = &v27;
        v14 = v35;
      }
    }

    v15 = &v14[24 * v36];
    v16 = *v13;
    *(v15 + 2) = *(v13 + 2);
    *v15 = v16;
    ++v36;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  v17 = result;
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
    result = v17;
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v42;
      v20 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v42 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v39;
    if (v39)
    {
      v22 = v40;
      v23 = v39;
      if (v40 != v39)
      {
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
        v23 = v39;
      }

      v40 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v35 != v38)
    {
      free(v35);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::readProperties(uint64_t a1, uint64_t a2)
{
  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v8);
  v4 = *(a2 + 256);
  if (v4)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x40uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v9;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v9;
    {
      mlir::ODIE::Compiler::CoreML::GraphOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v4 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v4))
    {
      return 0;
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v4 + 1) || (mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v4 + 2) & 1) == 0 || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v4 + 3))
  {
    return 0;
  }

  if (v8[1])
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v4 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext(a2);
    v4[4] = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, 0, 0);
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v4 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v4 + 6))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v4 + 7) & 1;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

unint64_t *mlir::TypeRange::TypeRange<mlir::ResultRange>(unint64_t *a1, uint64_t *a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  NextResultAtOffset = *a2;
  v4 = a2[1];
  v5 = a2[3];
  if (v4)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
  }

  mlir::ValueRange::ValueRange(v7, NextResultAtOffset, v5 - v4);
  mlir::TypeRange::TypeRange(a1, v7[0], v7[1]);
  return a1;
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::verify(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v23[0] = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  v23[1] = v2;
  if (*(*mlir::CallOpInterface::getCallableForCallee(v23) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  v19 = 257;
  mlir::OpState::emitError(this, v18, v23);
  if (v23[0])
  {
    v20 = 3;
    v22 = 45;
    v3 = &v20;
    v4 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v17 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v4 = v24;
        v3 = (v24 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v3 = &v20;
        v4 = v24;
      }
    }

    v5 = &v4[24 * v25];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v25;
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
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

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return v7;
}

void *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = CalleeAttr;
  }

  else
  {
    v5 = 0;
  }

  v49[0] = v5;
  if (v5)
  {
    CalleeAttr = mlir::AffineMapAttr::getValue(v49);
  }

  v6 = *(*CalleeAttr + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = CalleeAttr;
  }

  else
  {
    v8 = 0;
  }

  v49[0] = v8;
  if (v7)
  {
    CalleeAttr = mlir::AffineMapAttr::getValue(v49);
  }

  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = CalleeAttr;
  }

  else
  {
    v9 = 0;
  }

  v47 = v9;
  if (v9)
  {
    v48[0] = mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(this, a2);
    ParentOp = *this;
    if (v48[0])
    {
      return mlir::ODIE::Compiler::CoreML::FuncOp::verifySufficientMatch(v48);
    }

    do
    {
      ParentOp = *(ParentOp + 2);
      if (!ParentOp)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(ParentOp);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v11 = ParentOp;
    Value = mlir::AffineMapAttr::getValue(&v47);
    v13 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, Value);
    if (!v13 || *(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      v46 = 259;
      mlir::OpState::emitOpError(this, v45, v49);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
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

        v15 = __p;
        if (__p)
        {
          v16 = v57;
          v17 = __p;
          if (v57 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v57 = v15;
          operator delete(v17);
        }

        v18 = v54;
        if (!v54)
        {
          goto LABEL_72;
        }

        v19 = v55;
        v20 = v54;
        if (v55 == v54)
        {
LABEL_71:
          v55 = v18;
          operator delete(v20);
LABEL_72:
          if (v50 != v53)
          {
            free(v50);
          }

          return v14;
        }

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
LABEL_70:
        v20 = v54;
        goto LABEL_71;
      }

      return v14;
    }

    return 1;
  }

  v23 = *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  {
    v24 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses();
    v24 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    if (!v26)
    {
      goto LABEL_51;
    }
  }

  v27 = v25;
  v28 = v26;
  do
  {
    v29 = v28 >> 1;
    v30 = &v27[2 * (v28 >> 1)];
    v32 = *v30;
    v31 = v30 + 2;
    v28 += ~(v28 >> 1);
    if (v32 < v24)
    {
      v27 = v31;
    }

    else
    {
      v28 = v29;
    }
  }

  while (v28);
  if (v27 != &v25[2 * v26] && *v27 == v24 && v27[1])
  {
    return 1;
  }

LABEL_51:
  v46 = 257;
  mlir::OpState::emitError(this, v45, v49);
  if (v49[0])
  {
    LODWORD(v48[0]) = 3;
    v48[1] = "expected a parameter attribute if the callee is not resolved";
    v48[2] = 60;
    v33 = v48;
    v34 = v50;
    if (v51 >= v52)
    {
      if (v50 <= v48 && v50 + 24 * v51 > v48)
      {
        v44 = v48 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v34 = v50;
        v33 = v50 + v44;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v33 = v48;
        v34 = v50;
      }
    }

    v35 = &v34[24 * v51];
    v36 = *v33;
    *(v35 + 2) = *(v33 + 2);
    *v35 = v36;
    ++v51;
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
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

    v37 = __p;
    if (__p)
    {
      v38 = v57;
      v39 = __p;
      if (v57 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v57 = v37;
      operator delete(v39);
    }

    v18 = v54;
    if (!v54)
    {
      goto LABEL_72;
    }

    v40 = v55;
    v20 = v54;
    if (v55 == v54)
    {
      goto LABEL_71;
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

    while (v40 != v18);
    goto LABEL_70;
  }

  return v14;
}

void *mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  result = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    result = mlir::AffineMapAttr::getValue(&v6);
  }

  v3 = *(*result + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    result = mlir::AffineMapAttr::getValue(&v6);
  }

  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = CalleeAttr;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    CalleeAttr = mlir::AffineMapAttr::getValue(&v16);
  }

  v6 = *(*CalleeAttr + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = CalleeAttr;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  if (v7)
  {
    CalleeAttr = mlir::AffineMapAttr::getValue(&v16);
  }

  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = CalleeAttr;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *this;
  if (a2)
  {
    while (1)
    {
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v11);
      v10 = ParentOp;
      if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        result = mlir::SymbolTableCollection::lookupSymbolIn(a2, ParentOp, v9);
        if (result)
        {
          goto LABEL_31;
        }

        return result;
      }
    }

    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, 0, v9);
    if (result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    while (1)
    {
      v14 = *(v10 + 16);
      if (!v14)
      {
        break;
      }

      v15 = mlir::Block::getParentOp(v14);
      v10 = v15;
      if (!v15 || *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_30;
      }
    }

    v10 = 0;
LABEL_30:
    result = mlir::SymbolTable::lookupSymbolIn(v10, v9);
LABEL_31:
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::parse(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0;
  if ((*(*a1 + 160))(a1))
  {
    v42[0] = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, v42, 0) && ((*(*a1 + 168))(a1) & 1) != 0)
    {
      v4 = v42[0];
      if (v42[0])
      {
        v5 = *v42[0];
        {
          v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v7 = *(v5 + 8);
          v8 = *(v5 + 16);
          if (!v8)
          {
            goto LABEL_19;
          }
        }

        else
        {
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v7 = *(v5 + 8);
          v8 = *(v5 + 16);
          if (!v8)
          {
            goto LABEL_19;
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
          v16 = v9[1];
          goto LABEL_20;
        }
      }

LABEL_19:
      v16 = 0;
LABEL_20:
      v37 = v4;
      v38 = v16;
      goto LABEL_21;
    }

    return 0;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v37) & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v44 = v46;
  v45 = 0x100000000;
  v42[0] = v43;
  v42[1] = 0x400000000;
  v43[8] = 4;
  v36 = 0;
  if (((*(*a1 + 720))(a1, &v44, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, v42) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::FunctionType>(a1, &v36))
  {
    v39 = v41;
    v40 = 0x600000000;
    Inputs = mlir::FunctionType::getInputs(&v36);
    if (v45 && v18)
    {
      v19 = Inputs;
      v20 = v44;
      v21 = 8 * v18 - 8;
      v22 = 32 * v45 - 32;
      while (((*(*a1 + 728))(a1, v20, *v19, &v39) & 1) != 0)
      {
        if (v22)
        {
          v20 += 32;
          ++v19;
          v23 = v21;
          v21 -= 8;
          v22 -= 32;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_30;
      }

      v15 = 0;
      v34 = v39;
      if (v39 == v41)
      {
        goto LABEL_41;
      }
    }

    else
    {
LABEL_30:
      mlir::NamedAttribute::NamedAttribute(&v47, **(*(a2 + 8) + 96), v37);
      mlir::NamedAttrList::push_back(a2 + 112, v47, v48);
      mlir::ValueRange::ValueRange(&v47, v39, v40);
      mlir::OperationState::addOperands(a2, v47, v48);
      Results = mlir::FunctionType::getResults(&v36);
      v26 = v25;
      v27 = 8 * v25;
      v28 = *(a2 + 72);
      v29 = v28 + ((8 * v25) >> 3);
      if (v29 > *(a2 + 76))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v29, 8);
        LODWORD(v28) = *(a2 + 72);
      }

      if (v26)
      {
        memcpy((*(a2 + 64) + 8 * v28), Results, v27);
        LODWORD(v28) = *(a2 + 72);
      }

      *(a2 + 72) = v28 + (v27 >> 3);
      Attrs = mlir::NamedAttrList::getAttrs(v42);
      v32 = v30;
      *(a2 + 192) = 0;
      v33 = *(a2 + 120);
      if (v30 + v33 > *(a2 + 124))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, v30 + v33, 16);
        LODWORD(v33) = *(a2 + 120);
      }

      if (v32)
      {
        memcpy((*(a2 + 112) + 16 * v33), Attrs, 16 * v32);
        LODWORD(v33) = *(a2 + 120);
      }

      *(a2 + 120) = v33 + v32;
      v15 = 1;
      v34 = v39;
      if (v39 == v41)
      {
        goto LABEL_41;
      }
    }

    free(v34);
  }

  else
  {
    v15 = 0;
  }

LABEL_41:
  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v15;
}

BOOL mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::parse(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0;
  if ((*(*a1 + 160))(a1))
  {
    v42[0] = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, v42, 0) && ((*(*a1 + 168))(a1) & 1) != 0)
    {
      v4 = v42[0];
      if (v42[0])
      {
        v5 = *v42[0];
        {
          v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v7 = *(v5 + 8);
          v8 = *(v5 + 16);
          if (!v8)
          {
            goto LABEL_19;
          }
        }

        else
        {
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v7 = *(v5 + 8);
          v8 = *(v5 + 16);
          if (!v8)
          {
            goto LABEL_19;
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
          v16 = v9[1];
          goto LABEL_20;
        }
      }

LABEL_19:
      v16 = 0;
LABEL_20:
      v37 = v4;
      v38 = v16;
      goto LABEL_21;
    }

    return 0;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v37) & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v44 = v46;
  v45 = 0x100000000;
  v42[0] = v43;
  v42[1] = 0x400000000;
  v43[8] = 4;
  v36 = 0;
  if (((*(*a1 + 720))(a1, &v44, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, v42) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::FunctionType>(a1, &v36))
  {
    v39 = v41;
    v40 = 0x600000000;
    Inputs = mlir::FunctionType::getInputs(&v36);
    if (v45 && v18)
    {
      v19 = Inputs;
      v20 = v44;
      v21 = 8 * v18 - 8;
      v22 = 32 * v45 - 32;
      while (((*(*a1 + 728))(a1, v20, *v19, &v39) & 1) != 0)
      {
        if (v22)
        {
          v20 += 32;
          ++v19;
          v23 = v21;
          v21 -= 8;
          v22 -= 32;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_30;
      }

      v15 = 0;
      v34 = v39;
      if (v39 == v41)
      {
        goto LABEL_41;
      }
    }

    else
    {
LABEL_30:
      mlir::NamedAttribute::NamedAttribute(&v47, **(*(a2 + 8) + 96), v37);
      mlir::NamedAttrList::push_back(a2 + 112, v47, v48);
      mlir::ValueRange::ValueRange(&v47, v39, v40);
      mlir::OperationState::addOperands(a2, v47, v48);
      Results = mlir::FunctionType::getResults(&v36);
      v26 = v25;
      v27 = 8 * v25;
      v28 = *(a2 + 72);
      v29 = v28 + ((8 * v25) >> 3);
      if (v29 > *(a2 + 76))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v29, 8);
        LODWORD(v28) = *(a2 + 72);
      }

      if (v26)
      {
        memcpy((*(a2 + 64) + 8 * v28), Results, v27);
        LODWORD(v28) = *(a2 + 72);
      }

      *(a2 + 72) = v28 + (v27 >> 3);
      Attrs = mlir::NamedAttrList::getAttrs(v42);
      v32 = v30;
      *(a2 + 192) = 0;
      v33 = *(a2 + 120);
      if (v30 + v33 > *(a2 + 124))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, v30 + v33, 16);
        LODWORD(v33) = *(a2 + 120);
      }

      if (v32)
      {
        memcpy((*(a2 + 112) + 16 * v33), Attrs, 16 * v32);
        LODWORD(v33) = *(a2 + 120);
      }

      *(a2 + 120) = v33 + v32;
      v15 = 1;
      v34 = v39;
      if (v39 == v41)
      {
        goto LABEL_41;
      }
    }

    free(v34);
  }

  else
  {
    v15 = 0;
  }

LABEL_41:
  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, &v21);
    if (v22 >= 3)
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, v3);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    a2[32] = v6;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v21;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v21;
    {
      mlir::ODIE::Compiler::CoreML::InvokeOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, &v21);
    if (v22 >= 3)
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, v3);
    }
  }

  v20 = 0;
  if ((mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v7 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v20);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = *v7;
  {
    v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = v7;
    mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
    v7 = v18;
    v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    if (!v11)
    {
      goto LABEL_22;
    }
  }

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
  if (v12 != &v10[2 * v11] && *v12 == v9)
  {
    v19 = v12[1];
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:
  *v3 = v7;
  v3[1] = v19;
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = CalleeAttr;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    CalleeAttr = mlir::AffineMapAttr::getValue(&v16);
  }

  v6 = *(*CalleeAttr + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = CalleeAttr;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  if (v7)
  {
    CalleeAttr = mlir::AffineMapAttr::getValue(&v16);
  }

  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = CalleeAttr;
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = *this;
  while (1)
  {
    v11 = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(v10);
    if (!v11)
    {
      break;
    }

    v10 = v11;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, v9);
    if (result)
    {
      return result;
    }
  }

  v13 = *this;
  Value = mlir::AffineMapAttr::getValue(&v16);
  v15 = mlir::SymbolRefAttr::get(Value);
  do
  {
    result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(v13);
    if (!result)
    {
      break;
    }

    v13 = result;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, result, v15);
  }

  while (!result);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = CalleeAttr;
  }

  else
  {
    v5 = 0;
  }

  v49[0] = v5;
  if (v5)
  {
    CalleeAttr = mlir::AffineMapAttr::getValue(v49);
  }

  v6 = *(*CalleeAttr + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = CalleeAttr;
  }

  else
  {
    v8 = 0;
  }

  v49[0] = v8;
  if (v7)
  {
    if (*(*mlir::AffineMapAttr::getValue(v49) + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_25;
    }
  }

  else if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    goto LABEL_25;
  }

  v9 = *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses();
    v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

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
  if (v13 != &v11[2 * v12] && *v13 == v10 && v13[1])
  {
    return 1;
  }

LABEL_25:
  v19 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, a2);
  if (v19)
  {
    v20 = *(*(v19 + 48) + 16);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v49[0] = v21;
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      return mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(v49);
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      return 1;
    }
  }

  v44 = "could not resolve the callee ";
  v45 = 259;
  mlir::OpState::emitOpError(this, &v44, v49);
  v22 = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (v49[0])
  {
    v23 = &v46;
    mlir::DiagnosticArgument::DiagnosticArgument(&v46, v22);
    v24 = v50;
    if (v51 >= v52)
    {
      if (v50 <= &v46 && v50 + 24 * v51 > &v46)
      {
        v42 = &v46 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v24 = v50;
        v23 = (v50 + v42);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v23 = &v46;
        v24 = v50;
      }
    }

    v25 = &v24[24 * v51];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v51;
    if (v49[0])
    {
      v46 = 3;
      v48 = 41;
      v28 = &v46;
      v29 = v50;
      if (v27 >= v52)
      {
        if (v50 <= &v46 && v50 + 24 * v27 > &v46)
        {
          v43 = &v46 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v27 + 1, 24);
          v29 = v50;
          v28 = (v50 + v43);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v27 + 1, 24);
          v28 = &v46;
          v29 = v50;
        }
      }

      v30 = &v29[24 * v51];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v51;
    }
  }

  v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
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

    v33 = __p;
    if (__p)
    {
      v34 = v57;
      v35 = __p;
      if (v57 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v57 = v33;
      operator delete(v35);
    }

    v36 = v54;
    if (v54)
    {
      v37 = v55;
      v38 = v54;
      if (v55 != v54)
      {
        do
        {
          v40 = *--v37;
          v39 = v40;
          *v37 = 0;
          if (v40)
          {
            operator delete[](v39);
          }
        }

        while (v37 != v36);
        v38 = v54;
      }

      v55 = v36;
      operator delete(v38);
    }

    if (v50 != v53)
    {
      free(v50);
    }
  }

  return v32;
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::canonicalize(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v30[0] = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  AttrData = mlir::OpaqueAttr::getAttrData(v30);
  mlir::OperationName::OperationName(&v28, AttrData, v5, a2[1]);
  if (*(v28 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v24 = *(a1 + 24);
    DialectNamespace = mlir::OperationName::getDialectNamespace(&v28);
    v44 = 1283;
    AttrDictionary = "dialect ";
    v42 = DialectNamespace;
    v43 = v26;
    v30[0] = &AttrDictionary;
    v30[2] = " is not registered";
    v31 = 770;
    v29[0] = v30;
    v27 = a2[2];
    if (v27 && mlir::RewriterBase::Listener::classof(v27))
    {
      (*(*v27 + 88))(v27, v24, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v29);
    }

    return 0;
  }

  else
  {
    mlir::OperationState::OperationState(v30, *(a1 + 24), v28);
    AttrDictionary = mlir::Operation::getAttrDictionary(a1);
    Value = mlir::ArrayAttr::getValue(&AttrDictionary);
    v8 = v7;
    v39[8] = 0;
    v9 = v37;
    v10 = v7 + v37;
    if (v10 > v38)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v10, 16);
      v9 = v37;
    }

    if (v8)
    {
      memcpy((v36 + 16 * v9), Value, 16 * v8);
      v9 = v37;
    }

    v37 = v9 + v8;
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v11 = *(a1 + 68);
      v12 = *(a1 + 72);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v12, v11);
    mlir::OperationState::addOperands(v30, AttrDictionary, v41);
    v13 = *(a1 + 36);
    v14 = a1 - 16;
    if (!v13)
    {
      v14 = 0;
    }

    v29[0] = v14;
    v29[1] = v13;
    mlir::OperandRange::getTypes(v29, &AttrDictionary);
    v15 = AttrDictionary;
    v16 = v41;
    v17 = v43;
    v18 = v43 - v41;
    v19 = v33;
    v20 = v43 - v41 + v33;
    if (v20 > v34)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, &v35, v20, 8);
      v19 = v33;
    }

    if (v17 != v16)
    {
      v21 = (v32 + 8 * v19);
      do
      {
        *v21++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v16++) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      while (v17 != v16);
      LODWORD(v19) = v33;
    }

    v33 = v19 + v18;
    v22 = mlir::OpBuilder::create((a2 + 1), v30);
    (*(*a2 + 8))(a2, a1, v22);
    mlir::OperationState::~OperationState(v30);
    return 1;
  }
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  mlir::NamedAttribute::NamedAttribute(v8, **(*(a2 + 8) + 96), a3);
  mlir::NamedAttrList::push_back(a2 + 112, v8[0], v8[1]);
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v7);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = CallableForCallee;
  ++*(a2 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a5)
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "expected no operands");
  }

  else
  {
    if (a7)
    {
      v23 = *a7;
    }

    else
    {
      v23 = 0uLL;
    }

    v24 = a6;
    v25[0] = 0;
    v26 = 0;
    v27 = v23;
    v28 = a9;
    v29 = a10;
    if (a6)
    {
      v16 = a4;
      Context = mlir::Attribute::getContext(&v24);
      if (v26 == 1)
      {
        v26 = 0;
      }

      mlir::OperationName::OperationName(v25, "coreml.constant", 15, Context);
      v26 = 1;
      a4 = v16;
    }

    v30 = a4;
    v31 = 0;
    *&v23 = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::getValueAttr(&v24);
    *(&v23 + 1) = v18;
    if (v23)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v23);
      v20 = *(a11 + 8);
      if (v20 >= *(a11 + 12))
      {
        v22 = CallableForCallee;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v20 + 1, 8);
        CallableForCallee = v22;
        LODWORD(v20) = *(a11 + 8);
      }

      *(*a11 + 8 * v20) = CallableForCallee;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      v21.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v21, "no value attribute provided");
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v82 = *MEMORY[0x1E69E9840];
  v75 = a6;
  v76[0] = 0;
  v77 = 0;
  v78 = a9;
  v79 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v75);
    if (v77 == 1)
    {
      v77 = 0;
    }

    mlir::OperationName::OperationName(v76, "coreml.concat", 13, Context);
    v77 = 1;
  }

  v80 = a4;
  v81 = a5;
  v68 = 0;
  __p[0] = a4;
  __p[1] = 0;
  v70.n128_u64[0] = &v68;
  __p[0] = mlir::ValueRange::dereference_iterator(__p, 0);
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v70, DefiningOp))
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::getNumElements(&v68) != 1)
  {
    v20.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v20, "expected a single dimension along which to concat");
  }

  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&v68, __p);
  v67 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(__p);
  mlir::IntegerAttr::getValue(&v67, __p);
  if (LODWORD(__p[1]) > 0x40)
  {
    v17 = *__p[0];
    operator delete[](__p[0]);
  }

  else if (LODWORD(__p[1]))
  {
    v17 = __p[0] << -LOBYTE(__p[1]) >> -LOBYTE(__p[1]);
  }

  else
  {
    v17 = 0;
  }

  __p[0] = v74;
  __p[1] = 0x600000000;
  v21 = v81;
  v70.n128_u64[0] = v80;
  v70.n128_u64[1] = 1;
  v70.n128_u64[0] = mlir::ValueRange::offset_base(&v70, 1);
  v70.n128_u64[1] = v21 - v70.n128_u64[1];
  v22 = mlir::ValueRange::dereference_iterator(&v70, 0);
  v66[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
  v66[1] = v23;
  if (!v66[0])
  {
    v28.var0.var0 = a3;
    v18 = mlir::emitOptionalError<char const(&)[66]>(a2, v28, "expected a ShapedType for all inputs to concat");
    v29 = __p[0];
    if (__p[0] != v74)
    {
      goto LABEL_90;
    }

    return v18;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v66);
  v18 = v24;
  v70.n128_u64[0] = &v71;
  v70.n128_u64[1] = 0x600000000;
  if (v24 < 7)
  {
    if (!v24)
    {
      v31 = 0;
      v70.n128_u32[2] = 0;
      v30 = &v71;
LABEL_28:
      v18 = LODWORD(__p[1]);
      if (LODWORD(__p[1]) >= v31)
      {
        if (v31)
        {
          memmove(__p[0], v30, 8 * v31);
        }

        goto LABEL_38;
      }

      if (HIDWORD(__p[1]) >= v31)
      {
        if (LODWORD(__p[1]))
        {
          memmove(__p[0], v30, 8 * LODWORD(__p[1]));
          goto LABEL_36;
        }
      }

      else
      {
        LODWORD(__p[1]) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(__p, v74, v31, 8);
      }

      v18 = 0;
LABEL_36:
      if (v70.n128_u32[2] != v18)
      {
        memcpy(__p[0] + 8 * v18, (v70.n128_u64[0] + 8 * v18), 8 * (v70.n128_u32[2] - v18));
      }

LABEL_38:
      LODWORD(__p[1]) = v31;
      goto LABEL_39;
    }

    v26 = 0;
    v27 = &v71;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, &v71, v24, 8);
    v26 = v70.n128_u32[2];
    v27 = v70.n128_u64[0];
  }

  memcpy(&v27[v26], ArgAttrsAttr, 8 * v18);
  v30 = v70.n128_u64[0];
  v31 = v70.n128_u32[2] + v18;
  v70.n128_u32[2] += v18;
  if (v70.n128_u64[0] == &v71)
  {
    goto LABEL_28;
  }

  if (__p[0] != v74)
  {
    free(__p[0]);
    v30 = v70.n128_u64[0];
    v31 = v70.n128_u32[2];
  }

  __p[0] = v30;
  __p[1] = __PAIR64__(v70.n128_u32[3], v31);
  v70.n128_u64[0] = &v71;
  v70.n128_u32[3] = 0;
LABEL_39:
  v70.n128_u32[2] = 0;
  if (v70.n128_u64[0] != &v71)
  {
    free(v70.n128_u64[0]);
    v31 = __p[1];
  }

  if (!v31)
  {
    if (HIDWORD(__p[1]))
    {
      v32 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__p, v74, 1uLL, 8);
      v32 = LODWORD(__p[1]);
    }

    *(__p[0] + v32) = 1;
    ++LODWORD(__p[1]);
  }

  if (v17 < 0)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v66);
    v17 += v33;
  }

  isSplat = mlir::ElementsAttr::isSplat(v66);
  v35 = v81;
  v70.n128_u64[0] = v80;
  v70.n128_u64[1] = 1;
  *&v69 = mlir::ValueRange::offset_base(&v70, 1);
  *(&v69 + 1) = v35 - v70.n128_u64[1];
  mlir::ValueRange::getTypes(&v69, &v70);
  v36 = v72;
  v37 = v70.n128_u64[1] + 1;
  v69 = *&v70 + __PAIR128__(1, 0);
  if (v70.n128_u64[1] + 1 == v72)
  {
LABEL_48:
    v38 = mlir::RankedTensorType::get(__p[0], LODWORD(__p[1]), isSplat, 0);
    v39 = *(a11 + 8);
    if (v39 >= *(a11 + 12))
    {
      v64 = v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v39 + 1, 8);
      v38 = v64;
      LODWORD(v39) = *(a11 + 8);
    }

    *(*a11 + 8 * v39) = v38;
    ++*(a11 + 8);
    v18 = 1;
    v29 = __p[0];
    if (__p[0] != v74)
    {
      goto LABEL_90;
    }

    return v18;
  }

LABEL_52:
  v40 = mlir::ValueRange::dereference_iterator(&v69, v37);
  v65[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v40 + 8) & 0xFFFFFFFFFFFFFFF8));
  v65[1] = v41;
  if (!v65[0])
  {
    v60.var0.var0 = a3;
    v61 = mlir::emitOptionalError<char const(&)[66]>(a2, v60, "expected a ShapedType for all inputs to concat");
    goto LABEL_88;
  }

  if (mlir::ElementsAttr::isSplat(v65) != isSplat)
  {
    v62.var0.var0 = a3;
    v61 = mlir::emitOptionalError<char const(&)[66]>(a2, v62, "expected the same element type for all inputs to concat");
    goto LABEL_88;
  }

  if (mlir::CallOpInterface::getArgOperands(v65) && (mlir::CallableOpInterface::getArgAttrsAttr(v65), v42 == LODWORD(__p[1])) || (mlir::CallableOpInterface::getArgAttrsAttr(v65), !v43) && LODWORD(__p[1]) == 1)
  {
    v45 = mlir::CallableOpInterface::getArgAttrsAttr(v65);
    v46 = v44;
    v70.n128_u64[0] = &v71;
    v70.n128_u64[1] = 0x600000000;
    if (v44 < 7)
    {
      if (!v44)
      {
        v70.n128_u32[2] = 0;
        goto LABEL_66;
      }

      v47 = 0;
      v48 = &v71;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, &v71, v44, 8);
      v47 = v70.n128_u32[2];
      v48 = v70.n128_u64[0];
    }

    memcpy(&v48[v47], v45, 8 * v46);
    v70.n128_u32[2] += v46;
    if (v70.n128_u32[2])
    {
      v49 = LODWORD(__p[1]);
      if (!LODWORD(__p[1]))
      {
        goto LABEL_77;
      }

LABEL_69:
      v51 = 0;
      v52 = __p[0];
      v53 = 1;
      v54 = v70.n128_u64[0];
      while (1)
      {
        if (v17 == v51)
        {
          v55 = v52[v17];
          if (v55 != 0x8000000000000000)
          {
            v56 = *(v54 + 8 * v17);
            v57 = v56 + v55;
            if (v56 == 0x8000000000000000)
            {
              v57 = *(v54 + 8 * v17);
            }

            v52[v17] = v57;
          }
        }

        else if (v52[v51] != *(v54 + 8 * v51))
        {
          v59.var0.var0 = a3;
          v18 = mlir::emitOptionalError<char const(&)[66]>(a2, v59, "expected all input shapes to match along all dimensions other than the concat dimension");
          v58 = v70.n128_u64[0];
          if (v70.n128_u64[0] != &v71)
          {
            goto LABEL_78;
          }

LABEL_79:
          if (v53)
          {
            goto LABEL_89;
          }

          v37 = *(&v69 + 1) + 1;
          *(&v69 + 1) = v37;
          if (v37 == v36)
          {
            goto LABEL_48;
          }

          goto LABEL_52;
        }

        v53 = ++v51 < v49;
        if (v49 == v51)
        {
          goto LABEL_77;
        }
      }
    }

LABEL_66:
    if (v70.n128_u32[3])
    {
      v50 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, &v71, 1uLL, 8);
      v50 = v70.n128_u32[2];
    }

    *(v70.n128_u64[0] + 8 * v50) = 1;
    ++v70.n128_u32[2];
    v49 = LODWORD(__p[1]);
    if (!LODWORD(__p[1]))
    {
LABEL_77:
      v53 = 0;
      v58 = v70.n128_u64[0];
      if (v70.n128_u64[0] == &v71)
      {
        goto LABEL_79;
      }

LABEL_78:
      free(v58);
      goto LABEL_79;
    }

    goto LABEL_69;
  }

  v63.var0.var0 = a3;
  v61 = mlir::emitOptionalError<char const(&)[66]>(a2, v63, "expected all input tensors to have the same rank");
LABEL_88:
  v18 = v61;
LABEL_89:
  v29 = __p[0];
  if (__p[0] != v74)
  {
LABEL_90:
    free(v29);
  }

  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = a6;
  v42[0] = 0;
  v43 = 0;
  v44 = a9;
  v45 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v41);
    if (v43 == 1)
    {
      v43 = 0;
    }

    mlir::OperationName::OperationName(v42, "coreml.concat", 13, Context);
    v43 = 1;
  }

  v46 = a4;
  v47 = a5;
  v38 = a4;
  v39 = 0;
  v38 = mlir::ValueRange::dereference_iterator(&v38, 0);
  DefiningOp = mlir::Value::getDefiningOp(&v38);
  if (!DefiningOp)
  {
    return 1;
  }

  {
    v34 = DefiningOp;
    mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes();
    DefiningOp = v34;
  }

  v18 = (*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (!v18)
  {
    return 1;
  }

  v38 = v40;
  v39 = 0x600000000;
  if (!mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(v18, a2, a3, a4, a5, a6, v19, v20, a9, a10, &v38))
  {
    result = 0;
    v30 = v38;
    if (v38 == v40)
    {
      return result;
    }

    goto LABEL_19;
  }

  mlir::ValueRange::ValueRange(&v36, *a11, *(a11 + 8));
  mlir::ValueRange::ValueRange(v35, v38, v39);
  v21 = v37;
  if (v37 != v35[1])
  {
    goto LABEL_21;
  }

  if (v37)
  {
    v22 = 0;
    v23 = v36;
    v24 = v35[0];
    while (1)
    {
      v25 = mlir::TypeRange::dereference_iterator(v23, v22);
      if (v25 != mlir::TypeRange::dereference_iterator(v24, v22))
      {
        break;
      }

      if (v21 == ++v22)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    v32.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[66]>(a2, v32, "inferred return types did not match actual return types");
    v30 = v38;
    if (v38 == v40)
    {
      return result;
    }

LABEL_19:
    v31 = result;
    free(v30);
    return v31;
  }

LABEL_15:
  v26 = v38;
  v27 = v39;
  *(a11 + 8) = 0;
  if (v27 > *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v27, 8);
    v28 = *(a11 + 8);
LABEL_25:
    memcpy((*a11 + 8 * v28), v26, 8 * v27);
    v33 = *(a11 + 8);
    goto LABEL_26;
  }

  if (v27)
  {
    v28 = 0;
    goto LABEL_25;
  }

  v33 = 0;
LABEL_26:
  *(a11 + 8) = v33 + v27;
  result = 1;
  v30 = v38;
  if (v38 != v40)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = mlir::ValueShapeRange::getShape(this, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v21);
  ElementType = mlir::ShapeAdaptor::getElementType(v21);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v21, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::verify(mlir::Block ***this)
{
  v189 = *MEMORY[0x1E69E9840];
  v167 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v167);
  v3 = v2;
  *&v177 = *(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *mlir::ArrayAttr::getValue(&v177);
  v5 = (v3 - v4);
  if (v3 < v4)
  {
    v176 = 257;
    mlir::OpState::emitError(this, &v173, &v177);
    if (v177)
    {
      LODWORD(__s2[0]) = 3;
      __s2[1] = " number of axes to shrink ";
      *&v170 = 26;
      v6 = __s2;
      v7 = *(&v178 + 1);
      if (v179 >= v180)
      {
        if (*(&v178 + 1) <= __s2 && *(&v178 + 1) + 24 * v179 > __s2)
        {
          v145 = __s2 - *(&v178 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v179 + 1, 24);
          v7 = *(&v178 + 1);
          v6 = &v145[*(&v178 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v179 + 1, 24);
          v6 = __s2;
          v7 = *(&v178 + 1);
        }
      }

      v8 = v7 + 24 * v179;
      v9 = *v6;
      *(v8 + 16) = v6[2];
      *v8 = v9;
      v10 = ++v179;
      if (v177)
      {
        LODWORD(__s2[0]) = 2;
        __s2[1] = v4;
        v11 = __s2;
        v12 = *(&v178 + 1);
        if (v10 >= v180)
        {
          if (*(&v178 + 1) <= __s2 && *(&v178 + 1) + 24 * v10 > __s2)
          {
            v146 = __s2 - *(&v178 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v10 + 1, 24);
            v12 = *(&v178 + 1);
            v11 = &v146[*(&v178 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v10 + 1, 24);
            v11 = __s2;
            v12 = *(&v178 + 1);
          }
        }

        v13 = v12 + 24 * v179;
        v14 = *v11;
        *(v13 + 16) = v11[2];
        *v13 = v14;
        v15 = ++v179;
        if (v177)
        {
          LODWORD(__s2[0]) = 3;
          __s2[1] = " is larger than input rank ";
          *&v170 = 27;
          v16 = __s2;
          v17 = *(&v178 + 1);
          if (v15 >= v180)
          {
            if (*(&v178 + 1) <= __s2 && *(&v178 + 1) + 24 * v15 > __s2)
            {
              v148 = __s2 - *(&v178 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v15 + 1, 24);
              v17 = *(&v178 + 1);
              v16 = &v148[*(&v178 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v15 + 1, 24);
              v16 = __s2;
              v17 = *(&v178 + 1);
            }
          }

          v18 = v17 + 24 * v179;
          v19 = *v16;
          *(v18 + 16) = v16[2];
          *v18 = v19;
          v20 = ++v179;
          if (v177)
          {
            LODWORD(__s2[0]) = 2;
            __s2[1] = v3;
            v21 = __s2;
            v22 = *(&v178 + 1);
            if (v20 >= v180)
            {
              if (*(&v178 + 1) <= __s2 && *(&v178 + 1) + 24 * v20 > __s2)
              {
                v150 = __s2 - *(&v178 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v20 + 1, 24);
                v22 = *(&v178 + 1);
                v21 = &v150[*(&v178 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v20 + 1, 24);
                v21 = __s2;
                v22 = *(&v178 + 1);
              }
            }

            v23 = v22 + 24 * v179;
            v24 = *v21;
            *(v23 + 16) = v21[2];
            *v23 = v24;
            ++v179;
          }
        }
      }
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v177);
    if (v177)
    {
      mlir::InFlightDiagnostic::report(&v177);
    }

    if (v188 != 1)
    {
      return v25;
    }

    if (v187 != &v188)
    {
      free(v187);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v186;
      v28 = __p;
      if (v186 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v186 = v26;
      operator delete(v28);
    }

    v29 = v183;
    if (!v183)
    {
      goto LABEL_59;
    }

    v30 = v184;
    v31 = v183;
    if (v184 == v183)
    {
      goto LABEL_58;
    }

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
    goto LABEL_57;
  }

  if (*(*this + 9))
  {
    v34 = (*this - 2);
  }

  else
  {
    v34 = 0;
  }

  v166 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v166);
  if (v35 == v5)
  {
    v165 = 0;
    v36 = *((*this)[9] + 7);
    v173 = &v165;
    *&v177 = v36;
    DefiningOp = mlir::Value::getDefiningOp(&v177);
    if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v173, DefiningOp))
    {
      return 1;
    }

    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v165, &v177);
    v38 = v178;
    v168 = v177;
    v39 = v182;
    v173 = v175;
    v174 = 0x600000000;
    v40 = v178;
    v41 = v182 - v178;
    if ((v182 - v178) < 7)
    {
      v42 = 0;
    }

    else
    {
      v160 = v178;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v175, v182 - v178, 8);
      v38 = v160;
      v42 = v174;
    }

    *__s2 = v168;
    v170 = v38;
    v171 = v3;
    v172 = 1;
    if (v39 != v40)
    {
      v60 = &v173[v42];
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(__s2, &v161);
        if (v162 > 0x40)
        {
          v61 = (v171 & (*v161 >> 63)) + *v161;
          operator delete[](v161);
        }

        else if (v162)
        {
          v61 = (v171 & ((v161 << -v162) >> -v162 >> 63)) + ((v161 << -v162) >> -v162);
        }

        else
        {
          v61 = 0;
        }

        *v60++ = v61;
        *&v170 = v170 + 1;
      }

      while (v170 != v39);
      v42 = v174;
    }

    LODWORD(v174) = v42 + v41;
    Value = mlir::ArrayAttr::getValue(&v167);
    if (v174)
    {
      v64 = v173;
      v65 = &v173[v174];
      v66 = 1;
      while (1)
      {
        v67 = *v64;
        if (*v64 >= v3)
        {
          break;
        }

        v68 = Value[v67];
        if (v68 == 1)
        {
          if (++v64 == v65)
          {
            if (v66)
            {
              goto LABEL_134;
            }

            v25 = 1;
            goto LABEL_159;
          }
        }

        else
        {
          if (v68 != 0x8000000000000000)
          {
            LOWORD(v171) = 257;
            mlir::OpState::emitError(this, __s2, &v177);
            if (v177)
            {
              LODWORD(v161) = 3;
              v162 = " shrink dimension ";
              v163 = 18;
              v96 = &v161;
              v97 = *(&v178 + 1);
              if (v179 >= v180)
              {
                if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v179 > &v161)
                {
                  v152 = &v161 - *(&v178 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v179 + 1, 24);
                  v97 = *(&v178 + 1);
                  v96 = &v152[*(&v178 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v179 + 1, 24);
                  v96 = &v161;
                  v97 = *(&v178 + 1);
                }
              }

              v98 = v97 + 24 * v179;
              v99 = *v96;
              *(v98 + 16) = v96[2];
              *v98 = v99;
              v100 = ++v179;
              if (v177)
              {
                LODWORD(v161) = 2;
                v162 = v67;
                v101 = &v161;
                v102 = *(&v178 + 1);
                if (v100 >= v180)
                {
                  if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v100 > &v161)
                  {
                    v154 = &v161 - *(&v178 + 1);
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v100 + 1, 24);
                    v102 = *(&v178 + 1);
                    v101 = &v154[*(&v178 + 1)];
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v100 + 1, 24);
                    v101 = &v161;
                    v102 = *(&v178 + 1);
                  }
                }

                v103 = v102 + 24 * v179;
                v104 = *v101;
                *(v103 + 16) = v101[2];
                *v103 = v104;
                v105 = ++v179;
                if (v177)
                {
                  LODWORD(v161) = 3;
                  v162 = " has non-unit dimension length ";
                  v163 = 31;
                  v106 = &v161;
                  v107 = *(&v178 + 1);
                  if (v105 >= v180)
                  {
                    if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v105 > &v161)
                    {
                      v156 = &v161 - *(&v178 + 1);
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v105 + 1, 24);
                      v107 = *(&v178 + 1);
                      v106 = &v156[*(&v178 + 1)];
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v105 + 1, 24);
                      v106 = &v161;
                      v107 = *(&v178 + 1);
                    }
                  }

                  v108 = v107 + 24 * v179;
                  v109 = *v106;
                  *(v108 + 16) = v106[2];
                  *v108 = v109;
                  v110 = ++v179;
                  if (v177)
                  {
                    LODWORD(v161) = 2;
                    v162 = v68;
                    v111 = &v161;
                    v112 = *(&v178 + 1);
                    if (v110 >= v180)
                    {
                      if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v110 > &v161)
                      {
                        v158 = &v161 - *(&v178 + 1);
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v110 + 1, 24);
                        v112 = *(&v178 + 1);
                        v111 = &v158[*(&v178 + 1)];
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v110 + 1, 24);
                        v111 = &v161;
                        v112 = *(&v178 + 1);
                      }
                    }

                    v113 = v112 + 24 * v179;
                    v114 = *v111;
                    *(v113 + 16) = v111[2];
                    *v113 = v114;
                    v115 = ++v179;
                    if (v177)
                    {
                      LODWORD(v161) = 3;
                      v162 = " in input tensor.";
                      v163 = 17;
                      v116 = &v161;
                      v117 = *(&v178 + 1);
                      if (v115 >= v180)
                      {
                        if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v115 > &v161)
                        {
                          v159 = &v161 - *(&v178 + 1);
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v115 + 1, 24);
                          v117 = *(&v178 + 1);
                          v116 = &v159[*(&v178 + 1)];
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v115 + 1, 24);
                          v116 = &v161;
                          v117 = *(&v178 + 1);
                        }
                      }

                      v118 = v117 + 24 * v179;
                      v119 = *v116;
                      *(v118 + 16) = v116[2];
                      *v118 = v119;
                      ++v179;
                    }
                  }
                }
              }
            }

            v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v177);
            if (v177)
            {
              mlir::InFlightDiagnostic::report(&v177);
            }

            if (v188 != 1)
            {
              goto LABEL_159;
            }

            if (v187 != &v188)
            {
              free(v187);
            }

            v120 = __p;
            if (__p)
            {
              v121 = v186;
              v122 = __p;
              if (v186 != __p)
              {
                do
                {
                  v121 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v121 - 1);
                }

                while (v121 != v120);
                v122 = __p;
              }

              v186 = v120;
              operator delete(v122);
            }

            v91 = v183;
            if (v183)
            {
              v123 = v184;
              v93 = v183;
              if (v184 == v183)
              {
                goto LABEL_156;
              }

              do
              {
                v125 = *--v123;
                v124 = v125;
                *v123 = 0;
                if (v125)
                {
                  operator delete[](v124);
                }
              }

              while (v123 != v91);
LABEL_155:
              v93 = v183;
              goto LABEL_156;
            }

            goto LABEL_157;
          }

          v66 = 0;
          ++v64;
          v25 = 1;
          if (v64 == v65)
          {
            goto LABEL_159;
          }
        }
      }

      LOWORD(v171) = 257;
      mlir::OpState::emitError(this, __s2, &v177);
      if (v177)
      {
        LODWORD(v161) = 3;
        v162 = " shrink axes contains ";
        v163 = 22;
        v69 = &v161;
        v70 = *(&v178 + 1);
        if (v179 >= v180)
        {
          if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v179 > &v161)
          {
            v151 = &v161 - *(&v178 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v179 + 1, 24);
            v70 = *(&v178 + 1);
            v69 = &v151[*(&v178 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v179 + 1, 24);
            v69 = &v161;
            v70 = *(&v178 + 1);
          }
        }

        v71 = v70 + 24 * v179;
        v72 = *v69;
        *(v71 + 16) = v69[2];
        *v71 = v72;
        v73 = ++v179;
        if (v177)
        {
          LODWORD(v161) = 2;
          v162 = v67;
          v74 = &v161;
          v75 = *(&v178 + 1);
          if (v73 >= v180)
          {
            if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v73 > &v161)
            {
              v153 = &v161 - *(&v178 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v73 + 1, 24);
              v75 = *(&v178 + 1);
              v74 = &v153[*(&v178 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v73 + 1, 24);
              v74 = &v161;
              v75 = *(&v178 + 1);
            }
          }

          v76 = v75 + 24 * v179;
          v77 = *v74;
          *(v76 + 16) = v74[2];
          *v76 = v77;
          v78 = ++v179;
          if (v177)
          {
            LODWORD(v161) = 3;
            v162 = " which is higher than input rank ";
            v163 = 33;
            v79 = &v161;
            v80 = *(&v178 + 1);
            if (v78 >= v180)
            {
              if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v78 > &v161)
              {
                v155 = &v161 - *(&v178 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v78 + 1, 24);
                v80 = *(&v178 + 1);
                v79 = &v155[*(&v178 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v78 + 1, 24);
                v79 = &v161;
                v80 = *(&v178 + 1);
              }
            }

            v81 = v80 + 24 * v179;
            v82 = *v79;
            *(v81 + 16) = v79[2];
            *v81 = v82;
            v83 = ++v179;
            if (v177)
            {
              LODWORD(v161) = 2;
              v162 = v3;
              v84 = &v161;
              v85 = *(&v178 + 1);
              if (v83 >= v180)
              {
                if (*(&v178 + 1) <= &v161 && *(&v178 + 1) + 24 * v83 > &v161)
                {
                  v157 = &v161 - *(&v178 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v83 + 1, 24);
                  v85 = *(&v178 + 1);
                  v84 = &v157[*(&v178 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v83 + 1, 24);
                  v84 = &v161;
                  v85 = *(&v178 + 1);
                }
              }

              v86 = v85 + 24 * v179;
              v87 = *v84;
              *(v86 + 16) = v84[2];
              *v86 = v87;
              ++v179;
            }
          }
        }
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v177);
      if (v177)
      {
        mlir::InFlightDiagnostic::report(&v177);
      }

      if (v188 != 1)
      {
        goto LABEL_159;
      }

      if (v187 != &v188)
      {
        free(v187);
      }

      v88 = __p;
      if (__p)
      {
        v89 = v186;
        v90 = __p;
        if (v186 != __p)
        {
          do
          {
            v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
          }

          while (v89 != v88);
          v90 = __p;
        }

        v186 = v88;
        operator delete(v90);
      }

      v91 = v183;
      if (v183)
      {
        v92 = v184;
        v93 = v183;
        if (v184 != v183)
        {
          do
          {
            v95 = *--v92;
            v94 = v95;
            *v92 = 0;
            if (v95)
            {
              operator delete[](v94);
            }
          }

          while (v92 != v91);
          goto LABEL_155;
        }

LABEL_156:
        v184 = v91;
        operator delete(v93);
      }

LABEL_157:
      v144 = *(&v178 + 1);
      if (*(&v178 + 1) == &v181)
      {
        goto LABEL_159;
      }
    }

    else
    {
LABEL_134:
      __s2[0] = &v170;
      __s2[1] = 0x600000000;
      if (v63)
      {
        v126 = 0;
        v127 = 0;
        v128 = &Value[v63];
        do
        {
          if (v174)
          {
            v130 = 8 * v174;
            v131 = v173;
            while (*v131 != v127)
            {
              ++v131;
              v130 -= 8;
              if (!v130)
              {
                goto LABEL_136;
              }
            }
          }

          else
          {
            v131 = v173;
          }

          if (v131 == &v173[v174])
          {
LABEL_136:
            v129 = *Value;
            if (v126 >= HIDWORD(__s2[1]))
            {
              v132 = Value;
              llvm::SmallVectorBase<unsigned int>::grow_pod(__s2, &v170, v126 + 1, 8);
              Value = v132;
              v126 = __s2[1];
            }

            *(__s2[0] + v126) = v129;
            v126 = ++LODWORD(__s2[1]);
          }

          ++v127;
          ++Value;
        }

        while (Value != v128);
      }

      v133 = mlir::ArrayAttr::getValue(&v166);
      if (v134 == LODWORD(__s2[1]) && (v135 = __s2[0], !memcmp(v133, __s2[0], 8 * LODWORD(__s2[1]))))
      {
        v25 = 1;
        if (v135 == &v170)
        {
LABEL_159:
          v58 = v173;
          if (v173 == v175)
          {
            return v25;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v164 = 257;
        mlir::OpState::emitError(this, &v161, &v177);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v177, " expected output shape mismatch: ");
        v137 = v136;
        *&v168 = mlir::ArrayAttr::getValue(&v166);
        *(&v168 + 1) = v138;
        v139 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v137, &v168);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v139, " vs ");
        v141 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(v140, __s2);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v141, " Shrink dims = ");
        v143 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(v142, &v173);
        v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v177);
        v135 = __s2[0];
        if (__s2[0] == &v170)
        {
          goto LABEL_159;
        }
      }

      v144 = v135;
    }

    free(v144);
    goto LABEL_159;
  }

  v176 = 257;
  mlir::OpState::emitError(this, &v173, &v177);
  if (v177)
  {
    LODWORD(__s2[0]) = 3;
    __s2[1] = " expect result rank to be ";
    *&v170 = 26;
    v43 = __s2;
    v44 = *(&v178 + 1);
    if (v179 >= v180)
    {
      if (*(&v178 + 1) <= __s2 && *(&v178 + 1) + 24 * v179 > __s2)
      {
        v147 = __s2 - *(&v178 + 1);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v179 + 1, 24);
        v44 = *(&v178 + 1);
        v43 = &v147[*(&v178 + 1)];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v179 + 1, 24);
        v43 = __s2;
        v44 = *(&v178 + 1);
      }
    }

    v45 = v44 + 24 * v179;
    v46 = *v43;
    *(v45 + 16) = v43[2];
    *v45 = v46;
    v47 = ++v179;
    if (v177)
    {
      LODWORD(__s2[0]) = 2;
      __s2[1] = v5;
      v48 = __s2;
      v49 = *(&v178 + 1);
      if (v47 >= v180)
      {
        if (*(&v178 + 1) <= __s2 && *(&v178 + 1) + 24 * v47 > __s2)
        {
          v149 = __s2 - *(&v178 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v47 + 1, 24);
          v49 = *(&v178 + 1);
          v48 = &v149[*(&v178 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v178 + 8, &v181, v47 + 1, 24);
          v48 = __s2;
          v49 = *(&v178 + 1);
        }
      }

      v50 = v49 + 24 * v179;
      v51 = *v48;
      *(v50 + 16) = v48[2];
      *v50 = v51;
      ++v179;
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v177);
  if (v177)
  {
    mlir::InFlightDiagnostic::report(&v177);
  }

  if (v188 != 1)
  {
    return v25;
  }

  if (v187 != &v188)
  {
    free(v187);
  }

  v52 = __p;
  if (__p)
  {
    v53 = v186;
    v54 = __p;
    if (v186 != __p)
    {
      do
      {
        v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
      }

      while (v53 != v52);
      v54 = __p;
    }

    v186 = v52;
    operator delete(v54);
  }

  v29 = v183;
  if (v183)
  {
    v55 = v184;
    v31 = v183;
    if (v184 == v183)
    {
      goto LABEL_58;
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

    while (v55 != v29);
LABEL_57:
    v31 = v183;
LABEL_58:
    v184 = v29;
    operator delete(v31);
  }

LABEL_59:
  v58 = *(&v178 + 1);
  if (*(&v178 + 1) != &v181)
  {
LABEL_60:
    free(v58);
  }

  return v25;
}