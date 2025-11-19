BOOL mlir::ModuleOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::ModuleOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::detail::ModuleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 1);
    }
  }

  return 0;
}

BOOL mlir::ModuleOp::verifyInvariantsImpl(mlir::ModuleOp *this)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v39 = v2;
  if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v39) & 1) == 0)
  {
    return 0;
  }

  v39 = *this;
  if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v5, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v39) & 1) == 0)
  {
    return 0;
  }

  v6 = *this;
  v7 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  v8 = *(v7 + 8);
  if (v8 != v7 && *(v8 + 8) == v7)
  {
    return 1;
  }

  v34 = "region #";
  v35 = 259;
  mlir::Operation::emitOpError(v6, &v34, &v39);
  if (v39)
  {
    LODWORD(v32[0]) = 5;
    v32[1] = 0;
    v9 = v32;
    v10 = v41;
    if (v42 >= v43)
    {
      if (v41 <= v32 && v41 + 24 * v42 > v32)
      {
        v28 = v32 - v41;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
        v10 = v41;
        v9 = v41 + v28;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
        v9 = v32;
        v10 = v41;
      }
    }

    v11 = &v10[24 * v42];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    ++v42;
    v13 = v39 == 0;
  }

  else
  {
    v13 = 1;
  }

  v31 = 1283;
  v30[0] = " ('";
  v30[2] = "bodyRegion";
  v30[3] = 10;
  v32[0] = v30;
  v32[2] = "') ";
  v33 = 770;
  if (!v13)
  {
    mlir::Diagnostic::operator<<(&v40, v32);
    if (v39)
    {
      v36 = 3;
      v37 = "failed to verify constraint: region with 1 blocks";
      v38 = 49;
      v14 = &v36;
      v15 = v41;
      if (v42 >= v43)
      {
        if (v41 <= &v36 && v41 + 24 * v42 > &v36)
        {
          v29 = &v36 - v41;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v15 = v41;
          v14 = (v41 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v14 = &v36;
          v15 = v41;
        }
      }

      v16 = &v15[24 * v42];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v42;
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v48;
      v21 = __p;
      if (v48 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v48 = v19;
      operator delete(v21);
    }

    v22 = v45;
    if (v45)
    {
      v23 = v46;
      v24 = v45;
      if (v46 != v45)
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
        v24 = v45;
      }

      v46 = v22;
      operator delete(v24);
    }

    if (v41 != v44)
    {
      free(v41);
    }
  }

  return v18;
}

uint64_t mlir::ModuleOp::parse(uint64_t a1, void *a2)
{
  v23 = 0;
  v4 = operator new(0x18uLL);
  *v4 = v4;
  *(v4 + 1) = v4;
  *(v4 + 2) = 0;
  v22 = v4;
  (*(*a1 + 528))(a1, &v23);
  v5 = v23;
  if (v23)
  {
    v6 = a2[32];
    if (!v6)
    {
      v7 = operator new(0x10uLL);
      *v7 = 0;
      v7[1] = 0;
      a2[32] = v7;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v20;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v20;
      {
        mlir::ModuleOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::detail::ModuleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = a2[32];
      v5 = v23;
    }

    *v6 = v5;
  }

  v21 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 496))(a1, a2 + 14) & 1) != 0 && ((v9 = a2[1], v20[0] = a1, v20[1] = &v21, v20[2] = a2, (v10 = mlir::NamedAttrList::get((a2 + 14), **(v9 + 96))) == 0) || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v10, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ModuleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20)) && ((v11 = mlir::NamedAttrList::get((a2 + 14), *(*(v9 + 96) + 8))) == 0 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v11, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ModuleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20)))
  {
    v12 = v22;
    v13 = (*(*a1 + 776))(a1, v22, 0, 0, 0);
    v14 = 0;
    if (v13)
    {
      if (*v12 == v12)
      {
        v15 = operator new(0x48uLL);
        *v15 = 0u;
        v15[1] = 0u;
        *(v15 + 4) = v15 + 2;
        *(v15 + 5) = v15 + 2;
        *(v15 + 7) = 0;
        *(v15 + 8) = 0;
        *(v15 + 6) = 0;
        llvm::ilist_traits<mlir::Block>::addNodeToList(v12, v15);
        v16 = *v12;
        *(v15 + 2) = v12;
        *(v15 + 1) = v16;
        v15 = (v15 + 8);
        *(v16 + 8) = v15;
        *v12 = v15;
      }

      mlir::OperationState::addRegion(a2, &v22);
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = v22;
  v22 = 0;
  if (v17)
  {
    mlir::Region::~Region(v17, v8);
    operator delete(v18);
  }

  return v14;
}

void mlir::ModuleOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (*&v4[4 * ((v4[11] >> 23) & 1) + 16])
  {
    v5 = (*(*a2 + 16))(a2);
    v6 = *(v5 + 4);
    if (v6 >= *(v5 + 3))
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      *(v5 + 4) = v6 + 1;
      *v6 = 32;
    }

    v14 = *&(*this)[4 * (((*this)[11] >> 23) & 1) + 16];
    AttrData = mlir::OpaqueAttr::getAttrData(&v14);
    (*(*a2 + 88))(a2, AttrData, v8);
    v4 = *this;
  }

  v14 = v16;
  v16[0] = "sym_name";
  v16[1] = 8;
  v15 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, Value, v10, v14, v15);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a2 + 224))(a2, ((&(*this)[4 * (((*this)[11] >> 23) & 1) + 17] + (((*this)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*this)[10], 1, 1, 0);
  if (v14 != v16)
  {
    free(v14);
  }
}

uint64_t mlir::UnrealizedConversionCastOp::parse(uint64_t a1, uint64_t a2)
{
  v20[16] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  v16[0] = &v17;
  v16[1] = 0x100000000;
  __src = &v15;
  v14 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v18, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v19 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v16) & 1) == 0) || (v12[16] = 257, ((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0) || (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0))
  {
    v9 = 0;
    v10 = __src;
    if (__src == &v15)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v5 = __src;
  v6 = v14;
  v7 = *(a2 + 72);
  v8 = v7 + v14;
  if (v8 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v8, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  if (v6)
  {
    memcpy((*(a2 + 64) + 8 * v7), v5, 8 * v6);
    LODWORD(v7) = *(a2 + 72);
  }

  *(a2 + 72) = v7 + v6;
  v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v18, v16, v4, a2 + 16) & 1;
  v10 = __src;
  if (__src != &v15)
  {
LABEL_15:
    free(v10);
  }

LABEL_16:
  if (v16[0] != &v17)
  {
    free(v16[0]);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v9;
}

void *llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}

const char *llvm::getTypeName<mlir::DataLayoutSpecInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DataLayoutSpecInterface]";
  v6 = 79;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ModuleOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "builtin.module", 14, a1, &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5AF7A50;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ModuleOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::UnrealizedConversionCastOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::VariadicResults<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::VariadicOperands<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::OpInvariants<mlir::UnrealizedConversionCastOp>,mlir::ConditionallySpeculatable::Trait<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::UnrealizedConversionCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::UnrealizedConversionCastOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "builtin.unrealized_conversion_cast", 34, a1, &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5AF7B30;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ModuleOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::printAssembly(uint64_t a1, unsigned int *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  v7 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64;
  if (a4 != 14)
  {
    if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
    {
      return *v7;
    }

    return 0;
  }

  if (*a3 != 0x697369765F6D7973 || *(a3 + 6) != 0x7974696C69626973)
  {
    return 0;
  }

  v7 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72;
  return *v7;
}

void *mlir::RegisteredOperationName::Model<mlir::ModuleOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  result = mlir::OpaqueAttr::getAttrData(&v11);
  if (v7 == 14)
  {
    if (*result == 0x697369765F6D7973 && *(result + 6) == 0x7974696C69626973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        *(v5 + 72) = v9;
      }

      else
      {
        *(v5 + 72) = 0;
      }
    }
  }

  else if (v7 == 8 && *result == 0x656D616E5F6D7973)
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

      *(v5 + 64) = v10;
    }

    else
    {
      *(v5 + 64) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8, v6);
  }

  v9 = *(v7 + 8);
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "sym_visibility", 14, v9);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::ModuleOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::get(a3, **(a2 + 96));
  result = 0;
  if (!v9 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v9, "sym_name", 8, a4, a5) & 1) != 0)
  {
    v10 = mlir::NamedAttrList::get(a3, *(*(a2 + 96) + 8));
    if (!v10 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v10, "sym_visibility", 0xE, a4, a5) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::ModuleOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::ModuleOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = HIDWORD(a2[1]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = __ROR8__(v7 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) >> 47))) ^ v7;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::writeProperties;
  {
    v9 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(a1);
  v4 = malloc(0x20uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getDefaultDialect;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getRegionKind;
  v6[1] = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ModuleOp>::hasSSADominance;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

const char *llvm::getTypeName<mlir::RegionKindInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionKindInterface]";
  v6 = 75;
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v152;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  v137 = v1;
  v153 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v1 = v137;
  a1 = v153;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  v138 = v1;
  v154 = a1;
  v123 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v123;
  v1 = v138;
  a1 = v154;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_70;
  }

LABEL_69:
  v139 = v1;
  v155 = a1;
  v110 = v3;
  v124 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v110;
  v2 = v124;
  v1 = v139;
  a1 = v155;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_70:
  v140 = v1;
  v156 = a1;
  v111 = v3;
  v125 = v2;
  v98 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v4 = v98;
  v3 = v111;
  v2 = v125;
  v1 = v140;
  a1 = v156;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_71:
  v141 = v1;
  v157 = a1;
  v112 = v3;
  v126 = v2;
  v87 = v5;
  v99 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v5 = v87;
  v4 = v99;
  v3 = v112;
  v2 = v126;
  v1 = v141;
  a1 = v157;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  v142 = v1;
  v158 = a1;
  v113 = v3;
  v127 = v2;
  v88 = v5;
  v100 = v4;
  v77 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v6 = v77;
  v5 = v88;
  v4 = v100;
  v3 = v113;
  v2 = v127;
  v1 = v142;
  a1 = v158;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_73:
  v143 = v1;
  v159 = a1;
  v114 = v3;
  v128 = v2;
  v89 = v5;
  v101 = v4;
  v78 = v6;
  v68 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v68;
  v6 = v78;
  v5 = v89;
  v4 = v101;
  v3 = v114;
  v2 = v128;
  v1 = v143;
  a1 = v159;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_75;
  }

LABEL_74:
  v144 = v1;
  v160 = a1;
  v115 = v3;
  v129 = v2;
  v90 = v5;
  v102 = v4;
  v79 = v6;
  v60 = v8;
  v69 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v60;
  v7 = v69;
  v6 = v79;
  v5 = v90;
  v4 = v102;
  v3 = v115;
  v2 = v129;
  v1 = v144;
  a1 = v160;
  v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_76;
  }

LABEL_75:
  v145 = v1;
  v161 = a1;
  v116 = v3;
  v130 = v2;
  v91 = v5;
  v103 = v4;
  v80 = v6;
  v61 = v8;
  v70 = v7;
  v53 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v9 = v53;
  v8 = v61;
  v7 = v70;
  v6 = v80;
  v5 = v91;
  v4 = v103;
  v3 = v116;
  v2 = v130;
  v1 = v145;
  a1 = v161;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_76:
  v146 = v1;
  v162 = a1;
  v117 = v3;
  v131 = v2;
  v92 = v5;
  v104 = v4;
  v81 = v6;
  v62 = v8;
  v71 = v7;
  v47 = v10;
  v54 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v10 = v47;
  v9 = v54;
  v8 = v62;
  v7 = v71;
  v6 = v81;
  v5 = v92;
  v4 = v104;
  v3 = v117;
  v2 = v131;
  v1 = v146;
  a1 = v162;
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_78;
  }

LABEL_77:
  v147 = v1;
  v163 = a1;
  v118 = v3;
  v132 = v2;
  v93 = v5;
  v105 = v4;
  v82 = v6;
  v63 = v8;
  v72 = v7;
  v48 = v10;
  v55 = v9;
  v42 = v11;
  mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef();
  v11 = v42;
  v10 = v48;
  v9 = v55;
  v8 = v63;
  v7 = v72;
  v6 = v82;
  v5 = v93;
  v4 = v105;
  v3 = v118;
  v2 = v132;
  v1 = v147;
  a1 = v163;
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_79;
  }

LABEL_78:
  v148 = v1;
  v164 = a1;
  v119 = v3;
  v133 = v2;
  v94 = v5;
  v106 = v4;
  v83 = v6;
  v64 = v8;
  v73 = v7;
  v49 = v10;
  v56 = v9;
  v38 = v12;
  v43 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v12 = v38;
  v11 = v43;
  v10 = v49;
  v9 = v56;
  v8 = v64;
  v7 = v73;
  v6 = v83;
  v5 = v94;
  v4 = v106;
  v3 = v119;
  v2 = v133;
  v1 = v148;
  a1 = v164;
  v13 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

LABEL_80:
    v150 = v1;
    v166 = a1;
    v121 = v3;
    v135 = v2;
    v96 = v5;
    v108 = v4;
    v85 = v6;
    v66 = v8;
    v75 = v7;
    v51 = v10;
    v58 = v9;
    v40 = v12;
    v45 = v11;
    v33 = v14;
    v36 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
    v14 = v33;
    v13 = v36;
    v12 = v40;
    v11 = v45;
    v10 = v51;
    v9 = v58;
    v8 = v66;
    v7 = v75;
    v6 = v85;
    v5 = v96;
    v4 = v108;
    v3 = v121;
    v2 = v135;
    v1 = v150;
    a1 = v166;
    v15 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_81;
  }

LABEL_79:
  v149 = v1;
  v165 = a1;
  v120 = v3;
  v134 = v2;
  v95 = v5;
  v107 = v4;
  v84 = v6;
  v65 = v8;
  v74 = v7;
  v50 = v10;
  v57 = v9;
  v39 = v12;
  v44 = v11;
  v35 = v13;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v13 = v35;
  v12 = v39;
  v11 = v44;
  v10 = v50;
  v9 = v57;
  v8 = v65;
  v7 = v74;
  v6 = v84;
  v5 = v95;
  v4 = v107;
  v3 = v120;
  v2 = v134;
  v1 = v149;
  a1 = v165;
  v14 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_80;
  }

LABEL_16:
  v15 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_81:
  v151 = v1;
  v167 = a1;
  v122 = v3;
  v136 = v2;
  v97 = v5;
  v109 = v4;
  v86 = v6;
  v67 = v8;
  v76 = v7;
  v52 = v10;
  v59 = v9;
  v41 = v12;
  v46 = v11;
  v34 = v14;
  v37 = v13;
  v32 = v15;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v15 = v32;
  v14 = v34;
  v13 = v37;
  v12 = v41;
  v11 = v46;
  v10 = v52;
  v9 = v59;
  v8 = v67;
  v7 = v76;
  v6 = v86;
  v5 = v97;
  v4 = v109;
  v3 = v122;
  v2 = v136;
  v1 = v151;
  a1 = v167;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NoRegionArguments<Empty>]";
  v6 = 89;
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

const char *llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NoTerminator<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SingleBlock<Empty>]";
  v6 = 83;
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

const char *llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionKindInterface::Trait<Empty>]";
  v6 = 89;
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

const char *llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasOnlyGraphRegion<Empty>]";
  v6 = 90;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ModuleOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::ModuleOp::verify(&v4);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6) && (mlir::OpTrait::SingleBlock<mlir::ModuleOp>::verifyTrait(a1) & 1) != 0 && (v8 = a1, mlir::ModuleOp::verifyInvariantsImpl(&v8)))
  {
    return mlir::detail::SymbolOpInterfaceTrait<mlir::ModuleOp>::verifyTrait(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpTrait::SingleBlock<mlir::ModuleOp>::verifyTrait(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 44);
  v2 = v1 & 0x7FFFFF;
  if ((v1 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v3 = 0;
  for (i = (((a1 + 16 * ((v1 >> 23) & 1) + ((v1 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40)); ; i += 3)
  {
    if (i != *i)
    {
      v5 = i[1];
      if (i == v5 || i != *(v5 + 8))
      {
        break;
      }
    }

    if (v2 == ++v3)
    {
      return 1;
    }
  }

  v27 = "expects region #";
  v28 = 259;
  mlir::Operation::emitOpError(a1, &v27, v32);
  if (v32[0])
  {
    v29 = 5;
    v30 = v3;
    v6 = &v29;
    v7 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v29 && v33 + 24 * v34 > &v29)
      {
        v25 = &v29 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = v33;
        v6 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v6 = &v29;
        v7 = v33;
      }
    }

    v8 = &v7[24 * v34];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    v10 = ++v34;
    if (v32[0])
    {
      v29 = 3;
      v30 = " to have 0 or 1 blocks";
      v31 = 22;
      v11 = &v29;
      v12 = v33;
      if (v10 >= v35)
      {
        if (v33 <= &v29 && v33 + 24 * v10 > &v29)
        {
          v26 = &v29 - v33;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v10 + 1, 24);
          v12 = v33;
          v11 = (v33 + v26);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v10 + 1, 24);
          v11 = &v29;
          v12 = v33;
        }
      }

      v13 = &v12[24 * v34];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
      ++v34;
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::ModuleOp>::verifyTrait(mlir::Operation *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v30.var0 = "sym_name";
  v30.var1 = 8;
  InherentAttr = mlir::Operation::getInherentAttr(a1, v30);
  result = 1;
  if ((v2 & 1) != 0 && InherentAttr)
  {
    if (mlir::detail::verifySymbol(a1, v2))
    {
      v5 = *(a1 + 2);
      if (!v5)
      {
        return 1;
      }

      ParentOp = mlir::Block::getParentOp(v5);
      if (!ParentOp)
      {
        return 1;
      }

      v7 = ParentOp;
      {
        mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef();
      }

      if (((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        return 1;
      }

      else
      {
        v17 = "symbol's parent must have the SymbolTable trait";
        v18 = 259;
        mlir::OpState::emitOpError(&v19, &v17, v20);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
        v8 = result;
        if (v20[0])
        {
          mlir::InFlightDiagnostic::report(v20);
          result = v8;
        }

        if (v28 == 1)
        {
          if (v27 != &v28)
          {
            free(v27);
            result = v8;
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
            result = v8;
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
            result = v8;
          }

          if (v21 != &v22)
          {
            free(v21);
            return v8;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = v6[0];
      if ((v7 & 2) != 0)
      {
        v4 = v6;
      }

      v5 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  a5(v23, a6);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
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
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::VariadicResults<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::VariadicOperands<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::OpInvariants<mlir::UnrealizedConversionCastOp>,mlir::ConditionallySpeculatable::Trait<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::UnrealizedConversionCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::UnrealizedConversionCastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>::getEffects;
  {
    v8 = v4;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v44;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  v37 = v1;
  v45 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
  v1 = v37;
  a1 = v45;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v38 = v1;
  v46 = a1;
  v31 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v31;
  v1 = v38;
  a1 = v46;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v39 = v1;
  v47 = a1;
  v32 = v2;
  v26 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v3 = v26;
  v2 = v32;
  v1 = v39;
  a1 = v47;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v40 = v1;
  v48 = a1;
  v33 = v2;
  v22 = v4;
  v27 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v22;
  v3 = v27;
  v2 = v33;
  v1 = v40;
  a1 = v48;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

LABEL_40:
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_41;
  }

LABEL_39:
  v41 = v1;
  v49 = a1;
  v34 = v2;
  v23 = v4;
  v28 = v3;
  v19 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v5 = v19;
  v4 = v23;
  v3 = v28;
  v2 = v34;
  v1 = v41;
  a1 = v49;
  v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_40;
  }

LABEL_8:
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_41:
  v43 = v1;
  v51 = a1;
  v36 = v2;
  v25 = v4;
  v30 = v3;
  v18 = v6;
  v21 = v5;
  v16 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v7 = v16;
  v6 = v18;
  v5 = v21;
  v4 = v25;
  v3 = v30;
  v2 = v36;
  v1 = v43;
  a1 = v51;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    return 0;
  }

  v4 = a1[9];
  if (a1[9])
  {
    v5 = (a1 - 4);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v5, i);
    }
  }

  v8 = a1;
  return mlir::UnrealizedConversionCastOp::verify(&v8);
}

mlir::ResourceBlobManagerDialectInterface *mlir::ResourceBlobManagerDialectInterface::ResourceBlobManagerDialectInterface(mlir::ResourceBlobManagerDialectInterface *this, mlir::Dialect *a2)
{
  {
    v7 = a2;
    mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>();
    a2 = v7;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id;
  *(this + 1) = a2;
  *(this + 2) = v3;
  *this = &unk_1F5AF7C78;
  v4 = operator new(0x40uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = &unk_1F5AF7C98;
  *(v4 + 40) = 0u;
  *(v4 + 7) = 0;
  *(v4 + 24) = 0u;
  v5 = llvm::sys::RWMutexImpl::RWMutexImpl((v4 + 24));
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0x6000000000;
  *(this + 3) = v5;
  *(this + 4) = v4;
  return this;
}

uint64_t mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::~ResourceBlobManagerDialectInterfaceBase(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5AF7C78;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = a1;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    a1 = v4;
  }

  return MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::~ResourceBlobManagerDialectInterfaceBase(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5AF7C78;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, v5);
  }

  else
  {
    v3 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
  }

  operator delete(v3);
}

void mlir::ResourceBlobManagerDialectInterface::~ResourceBlobManagerDialectInterface(mlir::ResourceBlobManagerDialectInterface *this, uint64_t a2)
{
  *this = &unk_1F5AF7C78;
  v2 = *(this + 4);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = this;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    this = v3;
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);
}

{
  *this = &unk_1F5AF7C78;
  v2 = *(this + 4);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, v5);
  }

  else
  {
    v3 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);
  }

  operator delete(v3);
}

void std::__shared_ptr_emplace<mlir::DialectResourceBlobManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AF7C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<mlir::DialectResourceBlobManager>::__on_zero_shared(uint64_t a1)
{
  llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::~StringMap(a1 + 40);

  llvm::sys::RWMutexImpl::~RWMutexImpl((a1 + 24));
}

uint64_t llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          if (*(v4 + 88) == 1)
          {
            v7 = v4[9];
            if (v7 >= 8)
            {
              v8 = v4 + 6;
              v9 = v4 + 6;
              if ((v7 & 2) == 0)
              {
                v9 = *v8;
              }

              (*(v7 & 0xFFFFFFFFFFFFFFF8))(v9, v4[3], v4[4], v4[5]);
              v10 = v4[9];
              if (v10 >= 8)
              {
                if ((v10 & 4) != 0)
                {
                  if ((v10 & 2) == 0)
                  {
                    v8 = *v8;
                  }

                  (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
                }

                if ((v10 & 2) == 0)
                {
                  llvm::deallocate_buffer(v4[6], v4[7]);
                }
              }
            }
          }

          llvm::deallocate_buffer(v4, (v6 + 97));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void anonymous namespace::BuiltinOpAsmDialectInterface::~BuiltinOpAsmDialectInterface(_anonymous_namespace_::BuiltinOpAsmDialectInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t anonymous namespace::BuiltinOpAsmDialectInterface::getAlias(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "map";
      goto LABEL_10;
    }

    *(v6 + 2) = 112;
    v12 = 24941;
    goto LABEL_22;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "set";
      goto LABEL_10;
    }

    *(v6 + 2) = 116;
    v12 = 25971;
LABEL_22:
    *v6 = v12;
    a3[4] += 3;
    return 1;
  }

  if (mlir::LocationAttr::classof(a2))
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "loc";
LABEL_10:
      llvm::raw_ostream::write(a3, v7, 3uLL);
      return 1;
    }

    *(v6 + 2) = 99;
    v12 = 28524;
    goto LABEL_22;
  }

  v9 = a2;
  v10 = *(*a2 + 136);
  {
    if (v10 != mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v9 = 0;
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v14 = v10;
    mlir::AsmPrinter::Impl::printAttributeImpl();
    v13 = a2;
    if (v14 != mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v13 = 0;
    }

    v15 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  if (*(*mlir::AffineMapAttr::getValue(&v15) + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v11 = a3[4];
  if (a3[3] - v11 > 7uLL)
  {
    *v11 = 0x74636E6974736964;
    a3[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(a3, "distinct", 8uLL);
  }

  return 1;
}

{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  if (!v3 || mlir::arith::FastMathFlagsAttr::getValue(&v7) < 0x11)
  {
    return 0;
  }

  v5 = a3[4];
  if ((a3[3] - v5) > 4)
  {
    *(v5 + 4) = 101;
    *v5 = 1819309428;
    a3[4] += 5;
  }

  else
  {
    llvm::raw_ostream::write(a3, "tuple", 5uLL);
  }

  return 1;
}

void anonymous namespace::BuiltinOpAsmDialectInterface::declareResource(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  LOBYTE(v11[0]) = 0;
  v14 = 0;
  mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(v5, a2, a3, v11, &v9);
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = 1;
  if (v14 == 1 && v13 >= 8)
  {
    v6 = (v13 & 2) != 0 ? v12 : v12[0];
    (*(v13 & 0xFFFFFFFFFFFFFFF8))(v6, v11[0], v11[1], v11[2]);
    v7 = v13;
    if (v13 >= 8)
    {
      if ((v13 & 4) != 0)
      {
        if ((v13 & 2) != 0)
        {
          v8 = v12;
        }

        else
        {
          v8 = v12[0];
        }

        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      }

      if ((v7 & 2) == 0)
      {
        llvm::deallocate_buffer(v12[0], v12[1]);
      }
    }
  }
}

void anonymous namespace::BuiltinOpAsmDialectInterface::getResourceKey(const void ***a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = **a1;
  if (!v3)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  v4 = (*a1)[1];
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v4 | 7) + 1;
    }

    v6 = operator new(v5);
    v2[1] = v4;
    v2[2] = v5 | 0x8000000000000000;
    *v2 = v6;
    v2 = v6;
  }

  else
  {
    *(a2 + 23) = v4;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  memmove(v2, v3, v4);
LABEL_12:
  *(v2 + v4) = 0;
}

uint64_t anonymous namespace::BuiltinOpAsmDialectInterface::parseResource(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  (*(*a2 + 56))(v12, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>, &v11);
  if (v15 != 1)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = (*(*a2 + 16))(a2);
  mlir::DialectResourceBlobManager::update(*(v4 + 24), v5, v6, v12);
  if ((v15 & 1) != 0 && v14 >= 8)
  {
    v7 = (v14 & 2) != 0 ? v13 : v13[0];
    (*(v14 & 0xFFFFFFFFFFFFFFF8))(v7, v12[0], v12[1], v12[2]);
    v8 = v14;
    if (v14 >= 8)
    {
      if ((v14 & 4) != 0)
      {
        if ((v14 & 2) != 0)
        {
          v9 = v13;
        }

        else
        {
          v9 = v13[0];
        }

        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(v13[0], v13[1]);
      }
    }
  }

  return 1;
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::buildResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 24 * a4;
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      {
        if (v7 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = v7;
        mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::buildResources();
        if (v9 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
        {
LABEL_6:
          v8 = *(v6 - 1);
          if (*(v8 + 80) == 1)
          {
            (*(*a2 + 32))(a2, *v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
          }
        }
      }

      v6 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::ModuleOpGenericAdaptorBase::Properties]";
  v6 = 102;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ModuleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

int8x16_t OUTLINED_FUNCTION_2_6@<Q0>(int8x16_t *a1@<X8>)
{
  v3 = v2 - 8;
  v4 = vld4q_f64(v3);
  v5 = vld4q_f64(v2);
  v6 = vdupq_n_s64(v1);
  result = vorrq_s8(v4, v6);
  a1[-1] = result;
  *a1 = vorrq_s8(v5, v6);
  return result;
}

uint64_t mlir::builtin_dialect_detail::addBytecodeInterface(int32x2_t *this, mlir::BuiltinDialect *a2)
{
  v3 = operator new(0x18uLL);
  {
    v6 = v3;
    mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>();
    v3 = v6;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id;
  v3[1] = this;
  v3[2] = v4;
  *v3 = &unk_1F5AF7D50;
  v7 = v3;
  mlir::Dialect::addInterface(this, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void anonymous namespace::BuiltinDialectBytecodeInterface::~BuiltinDialectBytecodeInterface(_anonymous_namespace_::BuiltinDialectBytecodeInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

llvm::APFloatBase *anonymous namespace::BuiltinDialectBytecodeInterface::readAttribute(mlir::DialectInterface *a1, uint64_t a2)
{
  v117 = *MEMORY[0x1E69E9840];
  Context = mlir::DialectInterface::getContext(a1);
  v96 = 0;
  v5 = (*(*a2 + 72))(a2, &v96);
  result = 0;
  if (v5)
  {
    switch(v96)
    {
      case 0:
        *v104 = &v104[16];
        *&v104[8] = 0x600000000;
        *v115 = a2;
        if ((mlir::DialectBytecodeReader::readList<mlir::Attribute,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::Attribute>(llvm::SmallVectorImpl<mlir::Attribute> &)::{lambda(mlir::Attribute&)#1}>(a2, v104, v115) & 1) == 0)
        {
          goto LABEL_135;
        }

        result = mlir::ArrayAttr::get(Context, *v104, *&v104[8]);
        goto LABEL_136;
      case 1:
        *v104 = &v104[16];
        *&v104[8] = 0x300000000;
        v97 = 0;
        if (((*(*a2 + 72))(a2, &v97) & 1) == 0)
        {
          goto LABEL_135;
        }

        v35 = v97;
        if (v97 > *&v104[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v104, &v104[16], v97, 16);
          v35 = v97;
        }

        if (!v35)
        {
          goto LABEL_103;
        }

        v36 = 0;
        while (1)
        {
          v98 = 0;
          v101 = 0;
          if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v98) & 1) == 0 || ((*(*a2 + 48))(a2, &v101) & 1) == 0)
          {
            goto LABEL_135;
          }

          mlir::NamedAttribute::NamedAttribute(&v102, v98, v101);
          *v115 = v102;
          v115[16] = 1;
          if (*&v104[8] >= *&v104[12])
          {
            llvm::SmallVectorTemplateBase<llvm::SMRange,true>::growAndEmplaceBack<llvm::SMRange>(v104, v115);
            if (++v36 >= v97)
            {
LABEL_103:
              result = mlir::DictionaryAttr::get(Context, *v104, *&v104[8]);
              goto LABEL_136;
            }
          }

          else
          {
            *(*v104 + 16 * *&v104[8]) = *v115;
            ++*&v104[8];
            if (++v36 >= v97)
            {
              goto LABEL_103;
            }
          }
        }

      case 2:
        *v115 = 0uLL;
        v34 = (*(*a2 + 104))(a2, v115);
        result = 0;
        if (v34)
        {
          LOWORD(v106) = 261;
          *v104 = *v115;
          return mlir::StringAttr::get(Context, v104);
        }

        return result;
      case 3:
        *v115 = 0uLL;
        *&v102 = 0;
        if (((*(*a2 + 104))(a2, v115) & 1) == 0 || ((*(*a2 + 64))(a2, &v102) & 1) == 0)
        {
          return 0;
        }

        LOWORD(v106) = 261;
        *v104 = *v115;
        return mlir::StringAttr::get(v104, v102);
      case 4:
        *v104 = 0;
        v8 = mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v104);
        result = 0;
        if (v8)
        {
          return mlir::SymbolRefAttr::get(*v104);
        }

        return result;
      case 5:
        *&v102 = 0;
        *v104 = &v104[16];
        *&v104[8] = 0x600000000;
        if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v102) & 1) == 0)
        {
          goto LABEL_198;
        }

        *v115 = a2;
        if ((mlir::DialectBytecodeReader::readList<mlir::FlatSymbolRefAttr,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::FlatSymbolRefAttr>(llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::FlatSymbolRefAttr&)#1}>(a2, v104, v115) & 1) == 0)
        {
          goto LABEL_198;
        }

        result = mlir::SymbolRefAttr::get(v102, *v104, *&v104[8]);
        v37 = *v104;
        if (*v104 == &v104[16])
        {
          return result;
        }

        goto LABEL_199;
      case 6:
        *v104 = 0;
        v45 = (*(*a2 + 64))(a2, v104);
        result = 0;
        if (v45)
        {
          return mlir::TypeAttr::get(*v104);
        }

        return result;
      case 7:
        return mlir::UnitAttr::get(Context, v4);
      case 8:
        v101 = 0;
        LOBYTE(v98) = 0;
        v100 = 0;
        if (((*(*a2 + 64))(a2, &v101) & 1) == 0)
        {
          return 0;
        }

        v51 = v101;
        v52 = *(*v101 + 136);
        v53 = v52 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id ? v101 : 0;
        *v104 = v53;
        if (v53)
        {
          Width = mlir::IntegerType::getWidth(v104);
          v55 = 0;
        }

        else if (v52 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v55 = 0;
          Width = 64;
        }

        else
        {
          v116 = 257;
          (*(*a2 + 16))(v104, a2, v115);
          if (*v104)
          {
            LODWORD(v102) = 3;
            *(&v102 + 1) = "expected integer or index type for IntegerAttr, but got: ";
            v103 = 57;
            v66 = &v102;
            v67 = v105;
            if (v106 >= v107)
            {
              if (v105 <= &v102 && v105 + 24 * v106 > &v102)
              {
                v94 = &v102 - v105;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                v67 = v105;
                v66 = v105 + v94;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                v66 = &v102;
                v67 = v105;
              }
            }

            v68 = &v67[24 * v106];
            v69 = *v66;
            *(v68 + 2) = *(v66 + 2);
            *v68 = v69;
            ++v106;
            if (*v104)
            {
              v70 = &v102;
              mlir::DiagnosticArgument::DiagnosticArgument(&v102, v51);
              v71 = v105;
              if (v106 >= v107)
              {
                if (v105 <= &v102 && v105 + 24 * v106 > &v102)
                {
                  v95 = &v102 - v105;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                  v71 = v105;
                  v70 = v105 + v95;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
                  v70 = &v102;
                  v71 = v105;
                }
              }

              v72 = &v71[24 * v106];
              v73 = *v70;
              *(v72 + 2) = *(v70 + 2);
              *v72 = v73;
              ++v106;
              if (*v104)
              {
                mlir::InFlightDiagnostic::report(v104);
              }
            }
          }

          if (v114 == 1)
          {
            if (v113 != &v114)
            {
              free(v113);
            }

            v74 = __p;
            if (__p)
            {
              v75 = v112;
              v76 = __p;
              if (v112 != __p)
              {
                do
                {
                  v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
                }

                while (v75 != v74);
                v76 = __p;
              }

              v112 = v74;
              operator delete(v76);
            }

            v77 = v109;
            if (v109)
            {
              v78 = v110;
              v79 = v109;
              if (v110 != v109)
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
                v79 = v109;
              }

              v110 = v77;
              operator delete(v79);
            }

            if (v105 != v108)
            {
              free(v105);
            }
          }

          Width = 0;
          v55 = v100;
        }

        (*(*a2 + 88))(v104, a2, Width);
        if (v55 == v104[16])
        {
          if (v55)
          {
            if (v99 >= 0x41 && v98)
            {
              operator delete[](v98);
            }

            v98 = *v104;
            v99 = *&v104[8];
            *&v104[8] = 0;
            v91 = 1;
          }

          else
          {
            v91 = 0;
          }
        }

        else if (v55)
        {
          if (v99 >= 0x41 && v98)
          {
            operator delete[](v98);
          }

          v91 = 0;
          v100 = 0;
        }

        else
        {
          v99 = *&v104[8];
          v98 = *v104;
          *&v104[8] = 0;
          v91 = 1;
          v100 = 1;
        }

        if (v104[16] == 1 && *&v104[8] >= 0x41u && *v104)
        {
          operator delete[](*v104);
        }

        if (!v91)
        {
          return 0;
        }

        result = mlir::IntegerAttr::get(v101, &v98);
        if ((v100 & 1) == 0 || v99 < 0x41 || !v98)
        {
          return result;
        }

        v88 = result;
        operator delete[](v98);
        return v88;
      case 9:
        v98 = 0;
        v115[0] = 0;
        LOBYTE(v116) = 0;
        v13 = (*(*a2 + 64))(a2, &v98);
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }

        v14 = *(*v98 + 136);
        if (v14 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          return 0;
        }

        *&v102 = v98;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v102);
        (*(*a2 + 96))(v104, a2, FloatSemantics);
        std::__optional_storage_base<llvm::APFloat,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APFloat,false>>(v115, v104);
        if (v106 == 1)
        {
          v33 = *&v104[8];
          if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v104[8]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v104[8]);
          }
        }

        result = mlir::FloatAttr::get(v98, v115);
        if (v116)
        {
          v89 = result;
          v90 = *&v115[8];
          if (llvm::APFloatBase::PPCDoubleDouble(result) == v90)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v115[8]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v115[8]);
          }

          return v89;
        }

        return result;
      case 10:
        *v104 = 0;
        *v115 = 0;
        if (!mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v104) || !mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v115))
        {
          return 0;
        }

        v50.var0.var0 = *v115;
        return mlir::CallSiteLoc::get(*v104, v50, v49);
      case 11:
        *v104 = 0;
        *v115 = 0;
        *&v102 = 0;
        if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v104) & 1) == 0 || ((*(*a2 + 72))(a2, v115) & 1) == 0 || ((*(*a2 + 72))(a2, &v102) & 1) == 0)
        {
          return 0;
        }

        return mlir::FileLineColLoc::get(*v104, *v115, v102);
      case 12:
        *v104 = &v104[16];
        *&v104[8] = 0x600000000;
        v98 = 0;
        if (((*(*a2 + 72))(a2, &v98) & 1) == 0)
        {
          goto LABEL_135;
        }

        v9 = v98;
        if (v98 > *&v104[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v104, &v104[16], v98, 8);
          v9 = v98;
        }

        if (!v9)
        {
          goto LABEL_30;
        }

        v10 = 0;
        while (1)
        {
          *&v102 = 0;
          v11 = mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, &v102);
          v12 = v11 ? v102 : 0;
          *v115 = v12;
          v115[8] = v11;
          if (!v11)
          {
            goto LABEL_135;
          }

          if (*&v104[8] >= *&v104[12])
          {
            llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(v104, v115);
            if (++v10 >= v98)
            {
LABEL_30:
              mlir::FusedLoc::get(*v104, *&v104[8], 0, Context);
            }
          }

          else
          {
            *(*v104 + 8 * *&v104[8]) = v102;
            ++*&v104[8];
            if (++v10 >= v98)
            {
              goto LABEL_30;
            }
          }
        }

      case 13:
        *v104 = &v104[16];
        *&v104[8] = 0x600000000;
        v101 = 0;
        v98 = 0;
        if (((*(*a2 + 72))(a2, &v98) & 1) == 0)
        {
          goto LABEL_135;
        }

        v41 = v98;
        if (v98 > *&v104[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v104, &v104[16], v98, 8);
          v41 = v98;
        }

        if (!v41)
        {
          goto LABEL_133;
        }

        v42 = 0;
        break;
      case 14:
        *v104 = 0;
        *v115 = 0;
        if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v104) & 1) == 0 || !mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v115))
        {
          return 0;
        }

        return mlir::NameLoc::get(*v104, *v115);
      case 15:
        return mlir::UnknownLoc::get(Context, v4);
      case 16:
        v102 = 0uLL;
        v7 = mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, &v102);
        result = 0;
        if (!v7)
        {
          return result;
        }

        mlir::DialectBytecodeReader::readResourceHandle<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(a2, v104);
        if ((v105 & 1) == 0)
        {
          return 0;
        }

        *&v115[1] = *&v104[1];
        *&v115[16] = *&v104[16];
        v115[0] = v104[0];
        return mlir::DenseResourceElementsAttr::get(v102, *(&v102 + 1), v115);
      case 17:
        *v115 = 0;
        *&v102 = 0;
        *v104 = 0;
        *&v104[8] = 0;
        if (((*(*a2 + 64))(a2, v115) & 1) == 0 || ((*(*a2 + 72))(a2, &v102) & 1) == 0 || ((*(*a2 + 112))(a2, v104) & 1) == 0)
        {
          return 0;
        }

        return mlir::DenseArrayAttr::get(*v115, v102, *v104, *&v104[8]);
      case 18:
        *v104 = 0;
        *&v104[8] = 0;
        *v115 = 0uLL;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, v104) || ((*(*a2 + 112))(a2, v115) & 1) == 0)
        {
          return 0;
        }

        return mlir::DenseElementsAttr::getFromRawBuffer(*v104, *&v104[8], *v115, *&v115[8], v46, v47, v48);
      case 19:
        v102 = 0uLL;
        v98 = 0;
        *v104 = &v104[16];
        *&v104[8] = 0x300000000;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, &v102) || ((*(*a2 + 72))(a2, &v98) & 1) == 0)
        {
          goto LABEL_198;
        }

        *v115 = v102;
        if (v98)
        {
          NumElements = 1;
        }

        else
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v115);
          NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v83);
        }

        v84 = *&v104[8];
        if (NumElements != *&v104[8])
        {
          if (NumElements >= *&v104[8])
          {
            if (NumElements > *&v104[12])
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v104, &v104[16], NumElements, 16);
              v84 = *&v104[8];
            }

            if (NumElements != v84)
            {
              bzero((*v104 + 16 * v84), 16 * (NumElements - v84));
            }
          }

          LODWORD(v84) = NumElements;
          *&v104[8] = NumElements;
          NumElements = NumElements;
        }

        v85 = *v104;
        if (v84)
        {
          v86 = 16 * NumElements;
          do
          {
            if (((*(*a2 + 104))(a2, v85) & 1) == 0)
            {
LABEL_198:
              result = 0;
              v37 = *v104;
              if (*v104 == &v104[16])
              {
                return result;
              }

              goto LABEL_199;
            }

            v85 += 16;
            v86 -= 16;
          }

          while (v86);
          v85 = *v104;
          v87 = *&v104[8];
        }

        else
        {
          v87 = 0;
        }

        result = mlir::DenseStringElementsAttr::get(v102, *(&v102 + 1), v85, v87);
        v37 = *v104;
        if (*v104 != &v104[16])
        {
          goto LABEL_199;
        }

        return result;
      case 20:
        *v104 = 0;
        *&v104[8] = 0;
        *v115 = 0;
        *&v102 = 0;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, v104) || !mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a2, v115) || !mlir::DialectBytecodeReader::readAttribute<mlir::DenseElementsAttr>(a2, &v102))
        {
          return 0;
        }

        return mlir::SparseElementsAttr::get(*v104, *&v104[8], *v115, v102);
      case 21:
        *v104 = 0;
        v38 = (*(*a2 + 48))(a2, v104);
        result = 0;
        if (v38)
        {
          Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, *v104);
          {
          }

          v40 = mlir::AbstractAttribute::lookup(mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id, Context);
          result = Storage;
          *Storage = v40;
        }

        return result;
      default:
        v116 = 257;
        (*(*a2 + 16))(v104, a2, v115);
        if (*v104)
        {
          LODWORD(v102) = 3;
          *(&v102 + 1) = "unknown attribute code: ";
          v103 = 24;
          v56 = &v102;
          v57 = v105;
          if (v106 >= v107)
          {
            if (v105 <= &v102 && v105 + 24 * v106 > &v102)
            {
              v92 = &v102 - v105;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
              v57 = v105;
              v56 = v105 + v92;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v106 + 1, 24);
              v56 = &v102;
              v57 = v105;
            }
          }

          v58 = &v57[24 * v106];
          v59 = *v56;
          *(v58 + 2) = *(v56 + 2);
          *v58 = v59;
          v60 = ++v106;
          if (*v104)
          {
            LODWORD(v102) = 5;
            *(&v102 + 1) = v96;
            v61 = &v102;
            v62 = v105;
            if (v60 >= v107)
            {
              if (v105 <= &v102 && v105 + 24 * v60 > &v102)
              {
                v93 = &v102 - v105;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v60 + 1, 24);
                v62 = v105;
                v61 = v105 + v93;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v108, v60 + 1, 24);
                v61 = &v102;
                v62 = v105;
              }
            }

            v63 = &v62[24 * v106];
            v64 = *v61;
            *(v63 + 2) = *(v61 + 2);
            *v63 = v64;
            ++v106;
            if (*v104)
            {
              mlir::InFlightDiagnostic::report(v104);
            }
          }
        }

        if (v114 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v104[8]);
        }

        return 0;
    }

    while (1)
    {
      *&v102 = 0;
      v43 = mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, &v102);
      v44 = v43 ? v102 : 0;
      *v115 = v44;
      v115[8] = v43;
      if (!v43)
      {
        break;
      }

      if (*&v104[8] >= *&v104[12])
      {
        llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(v104, v115);
        if (++v42 >= v98)
        {
LABEL_133:
          if ((*(*a2 + 48))(a2, &v101))
          {
            result = mlir::FusedLoc::get(Context, *v104, *&v104[8], v101);
            goto LABEL_136;
          }

          break;
        }
      }

      else
      {
        *(*v104 + 8 * *&v104[8]) = v102;
        ++*&v104[8];
        if (++v42 >= v98)
        {
          goto LABEL_133;
        }
      }
    }

LABEL_135:
    result = 0;
LABEL_136:
    v37 = *v104;
    if (*v104 != &v104[16])
    {
LABEL_199:
      v88 = result;
      free(v37);
      return v88;
    }
  }

  return result;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::readType(mlir::DialectInterface *a1, _WORD *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  Context = mlir::DialectInterface::getContext(a1);
  v69 = 0;
  v5 = (*(*a2 + 72))(a2, &v69);
  result = 0;
  if (v5)
  {
    switch(v69)
    {
      case 0uLL:
        v73 = 0;
        v7 = (*(*a2 + 72))(a2, &v73);
        result = 0;
        if (v7)
        {
          return mlir::IntegerType::get(Context, v73 >> 2, v73 & 3);
        }

        return result;
      case 1uLL:
        return mlir::IndexType::get(Context, v4);
      case 2uLL:
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v80 = v82;
        v81 = 0x600000000;
        v83 = a2;
        if (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v73, &v83) & 1) != 0 && (v83 = a2, (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v80, &v83)))
        {
          mlir::ValueRange::ValueRange(&v83, v73, LODWORD(v74[0]));
          mlir::ValueRange::ValueRange(v79, v80, v81);
          result = mlir::FunctionType::get(Context, v83, v84, v79[0], v79[1]);
        }

        else
        {
          result = 0;
        }

        if (v80 != v82)
        {
          v66 = result;
          free(v80);
          result = v66;
        }

        goto LABEL_154;
      case 3uLL:
        return mlir::BFloat16Type::get(Context, v4);
      case 4uLL:
        return mlir::Float16Type::get(Context, v4);
      case 5uLL:
        return mlir::Float32Type::get(Context, v4);
      case 6uLL:
        return mlir::Float64Type::get(Context, v4);
      case 7uLL:
        return mlir::Float80Type::get(Context, v4);
      case 8uLL:
        return mlir::Float128Type::get(Context, v4);
      case 9uLL:
        v73 = 0;
        v26 = (*(*a2 + 64))(a2, &v73);
        result = 0;
        if (v26)
        {
          return mlir::ComplexType::get(v73);
        }

        return result;
      case 0xAuLL:
        v9 = &v74[1];
        v72 = 0;
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v71 = 0;
        v83 = 0;
        v84 = 0;
        if (((*(*a2 + 72))(a2, &v72) & 1) == 0)
        {
          goto LABEL_144;
        }

        v53 = v72;
        if (v72 > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v72, 8);
          v53 = v72;
        }

        if (!v53)
        {
          goto LABEL_124;
        }

        v54 = 0;
        while (1)
        {
          v79[0] = 0;
          v55 = (*(*a2 + 80))(a2, v79);
          v56 = (v55 & 1) != 0 ? v79[0] : 0;
          v80 = v56;
          LOBYTE(v81) = v55 & 1;
          if ((v55 & 1) == 0)
          {
            goto LABEL_144;
          }

          v57 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v73, &v80);
            if (++v54 >= v72)
            {
LABEL_124:
              if (((*(*a2 + 64))(a2, &v71) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(a2, &v83))
              {
                v20 = v73;
                v21 = LODWORD(v74[0]);
                v22 = v71;
                v24 = v83;
                v25 = v84;
                v23 = 0;
                goto LABEL_127;
              }

              goto LABEL_144;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v79[0];
            LODWORD(v74[0]) = v57 + 1;
            if (++v54 >= v72)
            {
              goto LABEL_124;
            }
          }
        }

      case 0xBuLL:
        v70 = 0;
        v71 = 0;
        v9 = &v74[1];
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v83 = 0;
        v84 = 0;
        if (((*(*a2 + 48))(a2, &v71) & 1) == 0)
        {
          goto LABEL_144;
        }

        v72 = 0;
        if (((*(*a2 + 72))(a2, &v72) & 1) == 0)
        {
          goto LABEL_144;
        }

        v15 = v72;
        if (v72 > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v72, 8);
          v15 = v72;
        }

        if (!v15)
        {
          goto LABEL_37;
        }

        v16 = 0;
        while (1)
        {
          v79[0] = 0;
          v17 = (*(*a2 + 80))(a2, v79);
          v18 = (v17 & 1) != 0 ? v79[0] : 0;
          v80 = v18;
          LOBYTE(v81) = v17 & 1;
          if ((v17 & 1) == 0)
          {
            goto LABEL_144;
          }

          v19 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v73, &v80);
            if (++v16 >= v72)
            {
LABEL_37:
              if (((*(*a2 + 64))(a2, &v70) & 1) == 0 || !mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(a2, &v83))
              {
                goto LABEL_144;
              }

              v20 = v73;
              v21 = LODWORD(v74[0]);
              v22 = v70;
              v23 = v71;
              v24 = v83;
              v25 = v84;
LABEL_127:
              result = mlir::MemRefType::get(v20, v21, v22, v24, v25, v23);
              goto LABEL_145;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v79[0];
            LODWORD(v74[0]) = v19 + 1;
            if (++v16 >= v72)
            {
              goto LABEL_37;
            }
          }
        }

      case 0xCuLL:
        return mlir::NoneType::get(Context, v4);
      case 0xDuLL:
        v9 = &v74[1];
        v72 = 0;
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v79[0] = 0;
        if (((*(*a2 + 72))(a2, v79) & 1) == 0)
        {
          goto LABEL_144;
        }

        v47 = v79[0];
        if (v79[0] > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v79[0], 8);
          v47 = v79[0];
        }

        if (!v47)
        {
          goto LABEL_106;
        }

        v48 = 0;
        while (1)
        {
          v83 = 0;
          v49 = (*(*a2 + 80))(a2, &v83);
          v50 = (v49 & 1) != 0 ? v83 : 0;
          v80 = v50;
          LOBYTE(v81) = v49 & 1;
          if ((v49 & 1) == 0)
          {
            goto LABEL_144;
          }

          v51 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v73, &v80);
            if (++v48 >= v79[0])
            {
LABEL_106:
              if (((*(*a2 + 64))(a2, &v72) & 1) == 0)
              {
                goto LABEL_144;
              }

              result = mlir::RankedTensorType::get(v73, LODWORD(v74[0]), v72, 0);
              goto LABEL_145;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v83;
            LODWORD(v74[0]) = v51 + 1;
            if (++v48 >= v79[0])
            {
              goto LABEL_106;
            }
          }
        }

      case 0xEuLL:
        v9 = &v74[1];
        v72 = 0;
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v71 = 0;
        if (((*(*a2 + 48))(a2, &v72) & 1) == 0)
        {
          goto LABEL_144;
        }

        v79[0] = 0;
        if (((*(*a2 + 72))(a2, v79) & 1) == 0)
        {
          goto LABEL_144;
        }

        v10 = v79[0];
        if (v79[0] > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v79[0], 8);
          v10 = v79[0];
        }

        if (!v10)
        {
          goto LABEL_21;
        }

        v11 = 0;
        while (1)
        {
          v83 = 0;
          v12 = (*(*a2 + 80))(a2, &v83);
          v13 = (v12 & 1) != 0 ? v83 : 0;
          v80 = v13;
          LOBYTE(v81) = v12 & 1;
          if ((v12 & 1) == 0)
          {
            goto LABEL_144;
          }

          v14 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v73, &v80);
            if (++v11 >= v79[0])
            {
LABEL_21:
              if (((*(*a2 + 64))(a2, &v71) & 1) == 0)
              {
                goto LABEL_144;
              }

              result = mlir::RankedTensorType::get(v73, LODWORD(v74[0]), v71, v72);
              goto LABEL_145;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v83;
            LODWORD(v74[0]) = v14 + 1;
            if (++v11 >= v79[0])
            {
              goto LABEL_21;
            }
          }
        }

      case 0xFuLL:
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v80 = a2;
        if (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v73, &v80))
        {
          mlir::ValueRange::ValueRange(&v80, v73, LODWORD(v74[0]));
          result = mlir::TupleType::get(Context, v80, v81);
        }

        else
        {
          result = 0;
        }

LABEL_154:
        v63 = v73;
        if (v73 == &v74[1])
        {
          return result;
        }

        goto LABEL_146;
      case 0x10uLL:
        v73 = 0;
        v8 = (*(*a2 + 64))(a2, &v73);
        result = 0;
        if (v8)
        {
          return mlir::UnrankedMemRefType::get(v73, 0);
        }

        return result;
      case 0x11uLL:
        v73 = 0;
        v80 = 0;
        if (((*(*a2 + 48))(a2, &v73) & 1) == 0 || ((*(*a2 + 64))(a2, &v80) & 1) == 0)
        {
          return 0;
        }

        return mlir::UnrankedMemRefType::get(v80, v73);
      case 0x12uLL:
        v73 = 0;
        v52 = (*(*a2 + 64))(a2, &v73);
        result = 0;
        if (v52)
        {
          return mlir::UnrankedTensorType::get(v73);
        }

        return result;
      case 0x13uLL:
        v9 = &v74[1];
        v72 = 0;
        v73 = &v74[1];
        v74[0] = 0x600000000;
        v79[0] = 0;
        if (((*(*a2 + 72))(a2, v79) & 1) == 0)
        {
          goto LABEL_144;
        }

        v58 = v79[0];
        if (v79[0] > HIDWORD(v74[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, &v74[1], v79[0], 8);
          v58 = v79[0];
        }

        if (!v58)
        {
          goto LABEL_142;
        }

        v59 = 0;
        while (1)
        {
          v83 = 0;
          v60 = (*(*a2 + 80))(a2, &v83);
          v61 = (v60 & 1) != 0 ? v83 : 0;
          v80 = v61;
          LOBYTE(v81) = v60 & 1;
          if ((v60 & 1) == 0)
          {
            break;
          }

          v62 = v74[0];
          if (LODWORD(v74[0]) >= HIDWORD(v74[0]))
          {
            llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v73, &v80);
            if (++v59 >= v79[0])
            {
LABEL_142:
              if ((*(*a2 + 64))(a2, &v72))
              {
                result = mlir::VectorType::get(v73, LODWORD(v74[0]), v72, 0, 0);
                goto LABEL_145;
              }

              break;
            }
          }

          else
          {
            *(v73 + LODWORD(v74[0])) = v83;
            LODWORD(v74[0]) = v62 + 1;
            if (++v59 >= v79[0])
            {
              goto LABEL_142;
            }
          }
        }

LABEL_144:
        result = 0;
        goto LABEL_145;
      case 0x14uLL:
        v9 = &v75;
        v73 = &v75;
        *v74 = xmmword_1E09700D0;
        v80 = v82;
        v81 = 0x600000000;
        v71 = 0;
        v83 = 0;
        if (((*(*a2 + 72))(a2, &v83) & 1) == 0)
        {
          goto LABEL_148;
        }

        v27 = v83;
        if (v74[1] < v83)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v73, &v75, v83, 1);
          v27 = v83;
        }

        if (!v27)
        {
          goto LABEL_67;
        }

        v28 = 0;
        break;
      default:
        v82[8] = 257;
        (*(*a2 + 16))(&v73, a2, &v80);
        if (v73)
        {
          LODWORD(v83) = 3;
          v84 = "unknown attribute code: ";
          v85 = 24;
          v38 = &v83;
          v39 = v75;
          if (v76 >= v77)
          {
            if (v75 <= &v83 && v75 + 24 * v76 > &v83)
            {
              v67 = &v83 - v75;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
              v39 = v75;
              v38 = &v67[v75];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
              v38 = &v83;
              v39 = v75;
            }
          }

          v40 = v39 + 24 * v76;
          v41 = *v38;
          *(v40 + 16) = v38[2];
          *v40 = v41;
          v42 = ++v76;
          if (v73)
          {
            LODWORD(v83) = 5;
            v84 = v69;
            v43 = &v83;
            v44 = v75;
            if (v42 >= v77)
            {
              if (v75 <= &v83 && v75 + 24 * v42 > &v83)
              {
                v68 = &v83 - v75;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v42 + 1, 24);
                v44 = v75;
                v43 = &v68[v75];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v42 + 1, 24);
                v43 = &v83;
                v44 = v75;
              }
            }

            v45 = v44 + 24 * v76;
            v46 = *v43;
            *(v45 + 16) = v43[2];
            *v45 = v46;
            ++v76;
            if (v73)
            {
              mlir::InFlightDiagnostic::report(&v73);
            }
          }
        }

        if (v78[160] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v74);
        }

        return 0;
    }

    while (1)
    {
      LOBYTE(v72) = 0;
      v29 = (*(*a2 + 120))(a2, &v72);
      v30 = v72;
      if ((v29 & 1) == 0)
      {
        v30 = 0;
      }

      LOWORD(v79[0]) = v30 | ((v29 & 1) << 8);
      if ((v29 & 1) == 0)
      {
        break;
      }

      v31 = v74[0];
      if (v74[0] >= v74[1])
      {
        llvm::SmallVectorTemplateBase<char,true>::growAndEmplaceBack<char const&>(&v73, v79);
        if (++v28 >= v83)
        {
LABEL_67:
          v72 = 0;
          if ((*(*a2 + 72))(a2, &v72))
          {
            v32 = v72;
            if (v72 > HIDWORD(v81))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v72, 8);
              v32 = v72;
            }

            if (v32)
            {
              v33 = 0;
              while (1)
              {
                v79[0] = 0;
                v34 = (*(*a2 + 80))(a2, v79);
                v35 = (v34 & 1) != 0 ? v79[0] : 0;
                v83 = v35;
                LOBYTE(v84) = v34 & 1;
                if ((v34 & 1) == 0)
                {
                  break;
                }

                v36 = v81;
                if (v81 >= HIDWORD(v81))
                {
                  llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v80, &v83);
                  if (++v33 >= v72)
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                  *&v80[4 * v81] = v79[0];
                  LODWORD(v81) = v36 + 1;
                  if (++v33 >= v72)
                  {
                    goto LABEL_80;
                  }
                }
              }
            }

            else
            {
LABEL_80:
              if ((*(*a2 + 64))(a2, &v71))
              {
                result = mlir::VectorType::get(v80, v81, v71, v73, v74[0]);
                v37 = v80;
                if (v80 == v82)
                {
                  goto LABEL_145;
                }

                goto LABEL_149;
              }
            }
          }

          break;
        }
      }

      else
      {
        *(v73 + v74[0]) = v30;
        v74[0] = v31 + 1;
        if (++v28 >= v83)
        {
          goto LABEL_67;
        }
      }
    }

LABEL_148:
    result = 0;
    v37 = v80;
    if (v80 == v82)
    {
      goto LABEL_145;
    }

LABEL_149:
    v65 = result;
    free(v37);
    result = v65;
LABEL_145:
    v63 = v73;
    if (v73 != v9)
    {
LABEL_146:
      v64 = result;
      free(v63);
      return v64;
    }
  }

  return result;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::writeAttribute(uint64_t a1, void *a2, uint64_t a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 0);
    Value = mlir::ArrayAttr::getValue(__p);
    v12 = v11;
    (*(*a3 + 48))(a3);
    if (v12)
    {
      v13 = 8 * v12;
      do
      {
        v14 = *Value++;
        (*(*a3 + 16))(a3, v14);
        v13 -= 8;
      }

      while (v13);
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 10);
    v15 = mlir::AffineMapAttr::getValue(__p);
    (*(*a3 + 16))(a3, v15);
    LHS = mlir::AffineBinaryOpExpr::getLHS(__p);
    goto LABEL_33;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 17);
    v17 = mlir::AffineMapAttr::getValue(__p);
    (*(*a3 + 32))(a3, v17);
    v18 = mlir::AffineBinaryOpExpr::getLHS(__p);
    (*(*a3 + 48))(a3, v18);
    RawData = mlir::DenseArrayAttr::getRawData(__p);
LABEL_36:
    (*(*a3 + 88))(a3, RawData, v20);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 18);
    v21 = mlir::ArrayAttr::getValue(__p);
    (*(*a3 + 32))(a3, v21);
    RawData = mlir::DenseElementsAttr::getRawStringData(__p);
    goto LABEL_36;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 16);
    v22 = mlir::ArrayAttr::getValue(&v71);
    (*(*a3 + 32))(a3, v22);
    RawHandle = mlir::DenseResourceElementsAttr::getRawHandle(&v71, __p);
    (*(*a3 + 40))(a3, __p, RawHandle);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 19);
    v24 = mlir::ArrayAttr::getValue(&v71);
    (*(*a3 + 32))(a3, v24);
    isSplat = mlir::DenseElementsAttr::isSplat(&v71);
    (*(*a3 + 48))(a3, isSplat);
    __p[0] = v71;
    v26 = mlir::DenseElementsAttr::isSplat(__p);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(__p);
    v29 = RawStringData;
    if (v26)
    {
      (*(*a3 + 80))(a3, *RawStringData, RawStringData[1]);
    }

    else if (v28)
    {
      v36 = &RawStringData[2 * v28];
      do
      {
        v37 = *v29;
        v38 = v29[1];
        v29 += 2;
        (*(*a3 + 80))(a3, v37, v38);
      }

      while (v29 != v36);
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 1);
    v30 = mlir::ArrayAttr::getValue(&v71);
    v32 = v31;
    (*(*a3 + 48))(a3);
    if (v32)
    {
      v33 = 16 * v32;
      do
      {
        v34 = *v30++;
        *__p = v34;
        CallableRegion = mlir::CallGraphNode::getCallableRegion(__p);
        (*(*a3 + 16))(a3, CallableRegion);
        (*(*a3 + 16))(a3, __p[1]);
        v33 -= 16;
      }

      while (v33);
    }

    return 1;
  }

  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      goto LABEL_10;
    }

LABEL_81:
    __p[0] = a2;
    (*(*a3 + 48))(a3, 21);
    LHS = mlir::AffineMapAttr::getValue(__p);
    goto LABEL_33;
  }

  v70 = a2;
  mlir::AsmPrinter::Impl::printAttributeImpl();
  a2 = v70;
  if (v4 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
  {
    goto LABEL_81;
  }

LABEL_10:
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 11);
    v39 = mlir::AffineMapAttr::getValue(__p);
    (*(*a3 + 16))(a3, v39);
    Position = mlir::AffineDimExpr::getPosition(__p);
    (*(*a3 + 48))(a3, Position);
    Column = mlir::FileLineColLoc::getColumn(__p);
    (*(*a3 + 48))(a3, Column);
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  __p[0] = v6;
  if (v6)
  {
    v7 = a2;
    mlir::OpaqueAttr::getAttrData(__p);
    if (v8)
    {
      a2 = v7;
      v5 = *(*v7 + 136);
      goto LABEL_17;
    }

    __p[0] = v7;
    (*(*a3 + 48))(a3, 4);
    LHS = mlir::AffineMapAttr::getValue(__p);
LABEL_33:
    (*(*a3 + 16))(a3, LHS);
    return 1;
  }

LABEL_17:
  if (v5 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 9);
    v42 = mlir::AffineMapAttr::getValue(&v71);
    (*(*a3 + 32))(a3, v42);
    mlir::FloatAttr::getValue(&v71, __p);
    v43 = (*(*a3 + 72))(a3, __p);
    v44 = __p[1];
    if (llvm::APFloatBase::PPCDoubleDouble(v43) == v44)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
  {
    __p[0] = a2;
    if (!mlir::AffineBinaryOpExpr::getRHS(__p))
    {
      (*(*a3 + 48))(a3, 12);
      v45 = mlir::ArrayAttr::getValue(__p);
      v47 = v46;
      (*(*a3 + 48))(a3);
      if (v47)
      {
        v48 = 8 * v47;
        do
        {
          v49 = *v45++;
          (*(*a3 + 16))(a3, v49);
          v48 -= 8;
        }

        while (v48);
      }
    }

    if (!mlir::AffineBinaryOpExpr::getRHS(__p))
    {
      return 1;
    }

    (*(*a3 + 48))(a3, 13);
    v50 = mlir::ArrayAttr::getValue(__p);
    v52 = v51;
    (*(*a3 + 48))(a3);
    if (v52)
    {
      v53 = 8 * v52;
      do
      {
        v54 = *v50++;
        (*(*a3 + 16))(a3, v54);
        v53 -= 8;
      }

      while (v53);
    }

    LHS = mlir::AffineBinaryOpExpr::getRHS(__p);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 8);
    v55 = mlir::AffineMapAttr::getValue(&v71);
    (*(*a3 + 32))(a3, v55);
    mlir::IntegerAttr::getValue(&v71, __p);
    (*(*a3 + 64))(a3, __p);
    if (LODWORD(__p[1]) >= 0x41 && __p[0])
    {
      operator delete[](__p[0]);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 14);
    v56 = mlir::AffineMapAttr::getValue(__p);
    (*(*a3 + 16))(a3, v56);
    LHS = mlir::AffineBinaryOpExpr::getLHS(__p);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 20);
    v57 = mlir::ArrayAttr::getValue(__p);
    (*(*a3 + 32))(a3, v57);
    RHS = mlir::AffineBinaryOpExpr::getRHS(__p);
    (*(*a3 + 16))(a3, RHS);
    LHS = mlir::SparseElementsAttr::getValues(__p);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    __p[0] = a2;
    if (*(*mlir::AffineMapAttr::getValue(__p) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      (*(*a3 + 48))(a3, 2);
      AttrData = mlir::OpaqueAttr::getAttrData(__p);
      (*(*a3 + 80))(a3, AttrData, v60);
    }

    if (*(*mlir::AffineMapAttr::getValue(__p) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      return 1;
    }

    (*(*a3 + 48))(a3, 3);
    v61 = mlir::OpaqueAttr::getAttrData(__p);
    (*(*a3 + 80))(a3, v61, v62);
    v63 = mlir::AffineMapAttr::getValue(__p);
    goto LABEL_77;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 5);
    v64 = mlir::AffineMapAttr::getValue(__p);
    (*(*a3 + 16))(a3, v64);
    v65 = mlir::OpaqueAttr::getAttrData(__p);
    v67 = v66;
    (*(*a3 + 48))(a3);
    if (v67)
    {
      v68 = 8 * v67;
      do
      {
        v69 = *v65++;
        (*(*a3 + 16))(a3, v69);
        v68 -= 8;
      }

      while (v68);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    __p[0] = a2;
    (*(*a3 + 48))(a3, 6);
    v63 = mlir::AffineMapAttr::getValue(__p);
LABEL_77:
    (*(*a3 + 32))(a3, v63);
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 7);
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      return 0;
    }

    (*(*a3 + 48))(a3, 15);
  }

  return 1;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::writeType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    (*(*a3 + 48))(a3, 3);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v76 = a2;
    (*(*a3 + 48))(a3, 9);
    Value = mlir::AffineMapAttr::getValue(&v76);
    goto LABEL_21;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    (*(*a3 + 48))(a3, 8);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    (*(*a3 + 48))(a3, 4);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    (*(*a3 + 48))(a3, 5);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    (*(*a3 + 48))(a3, 6);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    (*(*a3 + 48))(a3, 7);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v76 = a2;
    (*(*a3 + 48))(a3, 2);
    Inputs = mlir::FunctionType::getInputs(&v76);
    v9 = v8;
    (*(*a3 + 48))(a3);
    if (v9)
    {
      v10 = 8 * v9;
      do
      {
        v11 = *Inputs++;
        (*(*a3 + 32))(a3, v11);
        v10 -= 8;
      }

      while (v10);
    }

    Results = mlir::FunctionType::getResults(&v76);
    v14 = v13;
    (*(*a3 + 48))(a3);
    if (v14)
    {
      v15 = 8 * v14;
      do
      {
        v16 = *Results++;
        (*(*a3 + 32))(a3, v16);
        v15 -= 8;
      }

      while (v15);
    }

    return 1;
  }

  if (v4 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v76 = a2;
      (*(*a3 + 48))(a3, 0);
      Width = mlir::IntegerType::getWidth(&v76);
      v18 = mlir::IntegerType::getSignedness(&v76) | (4 * Width);
      (*(*a3 + 48))(a3, v18);
      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v76 = a2;
      if (!mlir::MemRefType::getMemorySpace(&v76))
      {
        (*(*a3 + 48))(a3, 10);
        v19 = mlir::ArrayAttr::getValue(&v76);
        v21 = v20;
        (*(*a3 + 48))(a3);
        if (v21)
        {
          v22 = 8 * v21;
          do
          {
            v23 = *v19++;
            (*(*a3 + 56))(a3, v23);
            v22 -= 8;
          }

          while (v22);
        }

        RHS = mlir::AffineBinaryOpExpr::getRHS(&v76);
        (*(*a3 + 32))(a3, RHS);
        RawStringData = mlir::DenseElementsAttr::getRawStringData(&v76);
        (*(*a3 + 16))(a3, RawStringData);
      }

      if (mlir::MemRefType::getMemorySpace(&v76))
      {
        (*(*a3 + 48))(a3, 11);
        MemorySpace = mlir::MemRefType::getMemorySpace(&v76);
        (*(*a3 + 16))(a3, MemorySpace);
        v27 = mlir::ArrayAttr::getValue(&v76);
        v29 = v28;
        (*(*a3 + 48))(a3);
        if (v29)
        {
          v30 = 8 * v29;
          do
          {
            v31 = *v27++;
            (*(*a3 + 56))(a3, v31);
            v30 -= 8;
          }

          while (v30);
        }

        v32 = mlir::AffineBinaryOpExpr::getRHS(&v76);
        (*(*a3 + 32))(a3, v32);
        v33 = mlir::DenseElementsAttr::getRawStringData(&v76);
        (*(*a3 + 16))(a3, v33);
      }

      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      (*(*a3 + 48))(a3, 12);
      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v76 = a2;
      if (!mlir::SparseElementsAttr::getValues(&v76))
      {
        (*(*a3 + 48))(a3, 13);
        v34 = mlir::ArrayAttr::getValue(&v76);
        v36 = v35;
        (*(*a3 + 48))(a3);
        if (v36)
        {
          v37 = 8 * v36;
          do
          {
            v38 = *v34++;
            (*(*a3 + 56))(a3, v38);
            v37 -= 8;
          }

          while (v37);
        }

        v39 = mlir::AffineBinaryOpExpr::getRHS(&v76);
        (*(*a3 + 32))(a3, v39);
      }

      if (!mlir::SparseElementsAttr::getValues(&v76))
      {
        return 1;
      }

      (*(*a3 + 48))(a3, 14);
      Values = mlir::SparseElementsAttr::getValues(&v76);
      (*(*a3 + 16))(a3, Values);
      v41 = mlir::ArrayAttr::getValue(&v76);
      v43 = v42;
      (*(*a3 + 48))(a3);
      if (v43)
      {
        v44 = 8 * v43;
        do
        {
          v45 = *v41++;
          (*(*a3 + 56))(a3, v45);
          v44 -= 8;
        }

        while (v44);
      }
    }

    else
    {
      if (v4 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
      {
        v76 = a2;
        (*(*a3 + 48))(a3, 15);
        Types = mlir::TupleType::getTypes(&v76);
        v48 = v47;
        (*(*a3 + 48))(a3);
        if (v48)
        {
          v49 = 8 * v48;
          do
          {
            v50 = *Types++;
            (*(*a3 + 32))(a3, v50);
            v49 -= 8;
          }

          while (v49);
        }

        return 1;
      }

      if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
      {
        v76 = a2;
        if (!mlir::AffineBinaryOpExpr::getLHS(&v76))
        {
          (*(*a3 + 48))(a3, 16);
          v51 = mlir::AffineMapAttr::getValue(&v76);
          (*(*a3 + 32))(a3, v51);
        }

        if (!mlir::AffineBinaryOpExpr::getLHS(&v76))
        {
          return 1;
        }

        (*(*a3 + 48))(a3, 17);
        LHS = mlir::AffineBinaryOpExpr::getLHS(&v76);
        (*(*a3 + 16))(a3, LHS);
        Value = mlir::AffineMapAttr::getValue(&v76);
        goto LABEL_21;
      }

      if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v76 = a2;
        (*(*a3 + 48))(a3, 18);
        Value = mlir::AffineMapAttr::getValue(&v76);
        goto LABEL_21;
      }

      if (v4 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        return 0;
      }

      v76 = a2;
      v53 = mlir::DenseElementsAttr::getRawStringData(&v76);
      v55 = v54;
      v56 = memchr(v53, 1, v54);
      if (!v56 || v56 == &v53[v55])
      {
        (*(*a3 + 48))(a3, 19);
        v57 = mlir::ArrayAttr::getValue(&v76);
        v59 = v58;
        (*(*a3 + 48))(a3);
        if (v59)
        {
          v60 = 8 * v59;
          do
          {
            v61 = *v57++;
            (*(*a3 + 56))(a3, v61);
            v60 -= 8;
          }

          while (v60);
        }

        v62 = mlir::AffineBinaryOpExpr::getRHS(&v76);
        (*(*a3 + 32))(a3, v62);
      }

      v63 = mlir::DenseElementsAttr::getRawStringData(&v76);
      v65 = v64;
      v66 = memchr(v63, 1, v64);
      if (!v66 || v66 == &v63[v65])
      {
        return 1;
      }

      (*(*a3 + 48))(a3, 20);
      v67 = mlir::DenseElementsAttr::getRawStringData(&v76);
      v69 = v68;
      (*(*a3 + 48))(a3);
      for (; v69; --v69)
      {
        v70 = *v67++;
        (*(*a3 + 96))(a3, v70);
      }

      v71 = mlir::ArrayAttr::getValue(&v76);
      v73 = v72;
      (*(*a3 + 48))(a3);
      if (v73)
      {
        v74 = 8 * v73;
        do
        {
          v75 = *v71++;
          (*(*a3 + 56))(a3, v75);
          v74 -= 8;
        }

        while (v74);
      }
    }

    Value = mlir::AffineBinaryOpExpr::getRHS(&v76);
LABEL_21:
    (*(*a3 + 32))(a3, Value);
    return 1;
  }

  (*(*a3 + 48))(a3, 1);
  return 1;
}

void mlir::BytecodeDialectInterface::readVersion(uint64_t a1@<X1>, void *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = "Dialect does not support versioning";
  v12 = 259;
  (*(*a1 + 16))(v13, a1, &v11);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v19;
      v5 = __p;
      if (v19 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v19 = v3;
      operator delete(v5);
    }

    v6 = v16;
    if (v16)
    {
      v7 = v17;
      v8 = v16;
      if (v17 != v16)
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
        v8 = v16;
      }

      v17 = v6;
      operator delete(v8);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  *a2 = 0;
}

uint64_t mlir::DialectBytecodeReader::readList<mlir::Attribute,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::Attribute>(llvm::SmallVectorImpl<mlir::Attribute> &)::{lambda(mlir::Attribute&)#1}>(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  if ((*(*a1 + 72))(a1, &v10))
  {
    v5 = v10;
    if (v10 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v10, 8);
      v5 = v10;
    }

    if (!v5)
    {
      return 1;
    }

    v6 = 0;
    while (1)
    {
      v9 = 0;
      if (((*(**a3 + 48))(*a3, &v9) & 1) == 0)
      {
        break;
      }

      v7 = *(a2 + 8);
      if (v7 >= *(a2 + 12))
      {
        llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(a2, &v9);
        if (++v6 >= v10)
        {
          return 1;
        }
      }

      else
      {
        *(*a2 + 8 * v7) = v9;
        *(a2 + 8) = v7 + 1;
        if (++v6 >= v10)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readList<mlir::FlatSymbolRefAttr,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::FlatSymbolRefAttr>(llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::FlatSymbolRefAttr&)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  if ((*(*a1 + 72))(a1, &v10))
  {
    v5 = v10;
    if (v10 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v10, 8);
      v5 = v10;
    }

    if (!v5)
    {
      return 1;
    }

    v6 = 0;
    while (1)
    {
      v9 = 0;
      if ((mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(*a3, &v9) & 1) == 0)
      {
        break;
      }

      v7 = *(a2 + 8);
      if (v7 >= *(a2 + 12))
      {
        llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(a2, &v9);
        if (++v6 >= v10)
        {
          return 1;
        }
      }

      else
      {
        *(*a2 + 8 * v7) = v9;
        ++*(a2 + 8);
        if (++v6 >= v10)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void std::__optional_storage_base<llvm::APFloat,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APFloat,false>>(_BYTE *a1, uint64_t a2)
{
  if (a1[32] == *(a2 + 32))
  {
    if (a1[32])
    {
      v3 = (a1 + 8);
      v4 = (a2 + 8);

      llvm::APFloat::Storage::operator=(v3, v4);
    }
  }

  else if (a1[32])
  {
    v5 = *(a1 + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v5)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat((a1 + 8));
      a1[32] = 0;
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat((a1 + 8));
      a1[32] = 0;
    }
  }

  else
  {
    v6 = *(a2 + 8);
    v7 = (a2 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v6)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), v7);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), v7);
    }

    a1[32] = 1;
  }
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::LocationAttr::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::LocationAttr]";
  v38 = 68;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readType<mlir::ShapedType>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 64))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v36);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]";
  v38 = 66;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

double mlir::DialectBytecodeReader::readResourceHandle<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  (*(*a1 + 128))(&v22);
  if ((v24 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    return *&v4;
  }

  v5 = *(&v22 + 1);
  {
    if (v5 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
    {
      goto LABEL_4;
    }

LABEL_33:
    *&v4 = v22;
    *a2 = v22;
    *(a2 + 16) = v23;
    *(a2 + 24) = 1;
    return *&v4;
  }

  mlir::detail::Parser::parseDenseResourceElementsAttr();
  if (v5 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
  {
    goto LABEL_33;
  }

LABEL_4:
  v21 = 257;
  (*(*a1 + 16))(v28, a1, v20);
  if (!v28[0])
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v38 != 1)
    {
      return *&v4;
    }

    goto LABEL_12;
  }

  v25 = 3;
  v26 = "provided resource handle differs from the expected resource type";
  v27 = 64;
  v6 = &v25;
  v7 = v29;
  if (v30 >= v31)
  {
    if (v29 <= &v25 && v29 + 24 * v30 > &v25)
    {
      v18 = &v25 - v29;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
      v7 = v29;
      v6 = (v29 + v18);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
      v6 = &v25;
      v7 = v29;
    }
  }

  v8 = &v7[24 * v30];
  v4 = *v6;
  *(v8 + 2) = *(v6 + 2);
  *v8 = v4;
  ++v30;
  v9 = v28[0];
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v9)
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v38 == 1)
  {
LABEL_12:
    if (v37 != &v38)
    {
      free(v37);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v36;
      v12 = __p;
      if (v36 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v36 = v10;
      operator delete(v12);
    }

    v13 = v33;
    if (v33)
    {
      v14 = v34;
      v15 = v33;
      if (v34 != v33)
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
        v15 = v33;
      }

      v34 = v13;
      operator delete(v15);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }

  return *&v4;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::DenseIntElementsAttr::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DenseIntElementsAttr]";
  v38 = 76;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::DenseElementsAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::DenseElementsAttr::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DenseElementsAttr]";
  v38 = 73;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

uint64_t mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  if ((*(*a1 + 72))(a1, &v10))
  {
    v5 = v10;
    if (v10 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v10, 8);
      v5 = v10;
    }

    if (!v5)
    {
      return 1;
    }

    v6 = 0;
    while (1)
    {
      v9 = 0;
      if (((*(**a3 + 64))(*a3, &v9) & 1) == 0)
      {
        break;
      }

      v7 = *(a2 + 8);
      if (v7 >= *(a2 + 12))
      {
        llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(a2, &v9);
        if (++v6 >= v10)
        {
          return 1;
        }
      }

      else
      {
        *(*a2 + 8 * v7) = v9;
        *(a2 + 8) = v7 + 1;
        if (++v6 >= v10)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::MemRefLayoutAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::MemRefLayoutAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v36);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefLayoutAttrInterface]";
  v38 = 81;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

void *llvm::DefaultDoCastIfPossible<mlir::MemRefLayoutAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::MemRefLayoutAttrInterface,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}

uint64_t mlir::ComplexType::get(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Attribute::getContext(&v4);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v5[0] = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v5[1] = &Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail18ComplexTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11ComplexTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v10[1] = v5;
  v9 = v4;
  v2 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v8 = &v9;
  v7[0] = &v9;
  v7[1] = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v2 ^ (v2 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t mlir::FunctionType::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v14 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v13[1] = &v14;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a2, 0, a2, a3);
  v11 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a4, 0, a4, a5)) | (v10 << 32));
  v15[0] = v18;
  v15[1] = v17;
  v16 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v11 >> 31) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::MemRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v54[0] = a6;
  v54[1] = a7;
  if (mlir::BaseMemRefType::isValidElementType(a5))
  {
    if (a4)
    {
      v13 = 8 * a4;
      v14 = a3;
      while (*v14 < 0x8000000000000001)
      {
        ++v14;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      a1(v58, a2);
      if (v58[0])
      {
        v55 = 3;
        v56 = "invalid memref size";
        v57 = 19;
        v30 = &v55;
        v31 = v59;
        if (v60 >= v61)
        {
          if (v59 <= &v55 && v59 + 24 * v60 > &v55)
          {
            v52 = &v55 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v31 = v59;
            v30 = (v59 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v30 = &v55;
            v31 = v59;
          }
        }

        v32 = &v31[24 * v60];
        v33 = *v30;
        *(v32 + 2) = *(v30 + 2);
        *v32 = v33;
        ++v60;
      }

      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
      if (v58[0])
      {
        mlir::InFlightDiagnostic::report(v58);
      }

      if (v68 == 1)
      {
        if (v67 != &v68)
        {
          free(v67);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v66;
          v36 = __p;
          if (v66 != __p)
          {
            do
            {
              v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v66 = v34;
          operator delete(v36);
        }

        v25 = v63;
        if (!v63)
        {
          goto LABEL_75;
        }

        v37 = v64;
        v27 = v63;
        if (v64 == v63)
        {
          goto LABEL_74;
        }

        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            operator delete[](v38);
          }
        }

        while (v37 != v25);
        goto LABEL_73;
      }
    }

    else
    {
LABEL_6:
      if ((mlir::MemRefLayoutAttrInterface::verifyLayout(v54, a3, a4, a1, a2) & 1) == 0)
      {
        return 0;
      }

      if (!a8)
      {
        return 1;
      }

      v15 = *(*a8 + 136);
      if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        return 1;
      }

      v16 = v15 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
      if (v16 || *(**a8 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
      {
        return 1;
      }

      a1(v58, a2);
      if (v58[0])
      {
        v55 = 3;
        v56 = "unsupported memory space Attribute";
        v57 = 34;
        v40 = &v55;
        v41 = v59;
        if (v60 >= v61)
        {
          if (v59 <= &v55 && v59 + 24 * v60 > &v55)
          {
            v53 = &v55 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v41 = v59;
            v40 = (v59 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v40 = &v55;
            v41 = v59;
          }
        }

        v42 = &v41[24 * v60];
        v43 = *v40;
        *(v42 + 2) = *(v40 + 2);
        *v42 = v43;
        ++v60;
      }

      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
      if (v58[0])
      {
        mlir::InFlightDiagnostic::report(v58);
      }

      if (v68 == 1)
      {
        if (v67 != &v68)
        {
          free(v67);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v66;
          v46 = __p;
          if (v66 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v66 = v44;
          operator delete(v46);
        }

        v25 = v63;
        if (!v63)
        {
          goto LABEL_75;
        }

        v47 = v64;
        v27 = v63;
        if (v64 == v63)
        {
LABEL_74:
          v64 = v25;
          operator delete(v27);
LABEL_75:
          if (v59 != v62)
          {
            free(v59);
          }

          return v17;
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

        while (v47 != v25);
LABEL_73:
        v27 = v63;
        goto LABEL_74;
      }
    }
  }

  else
  {
    a1(v58, a2);
    if (v58[0])
    {
      v55 = 3;
      v56 = "invalid memref element type";
      v57 = 27;
      v18 = &v55;
      v19 = v59;
      if (v60 >= v61)
      {
        if (v59 <= &v55 && v59 + 24 * v60 > &v55)
        {
          v51 = &v55 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v19 = v59;
          v18 = (v59 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v18 = &v55;
          v19 = v59;
        }
      }

      v20 = &v19[24 * v60];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      ++v60;
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v66;
        v24 = __p;
        if (v66 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v66 = v22;
        operator delete(v24);
      }

      v25 = v63;
      if (!v63)
      {
        goto LABEL_75;
      }

      v26 = v64;
      v27 = v63;
      if (v64 == v63)
      {
        goto LABEL_74;
      }

      do
      {
        v29 = *--v26;
        v28 = v29;
        *v26 = 0;
        if (v29)
        {
          operator delete[](v28);
        }
      }

      while (v26 != v25);
      goto LABEL_73;
    }
  }

  return v17;
}

uint64_t mlir::OpaqueType::get(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a1;
  Context = mlir::Attribute::getContext(&v11);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v12[1] = &Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10OpaqueTypeEJRNS1_10StringAttrERNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v17[1] = v12;
  v16[0] = v11;
  v16[1] = a2;
  v16[2] = a3;
  v6 = (v11 >> 4) ^ (v11 >> 9);
  v7 = llvm::hash_value(a2, a3);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::OpaqueType::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, const char *a5)
{
  v11 = a3;
  Context = mlir::Attribute::getContext(&v11);
  return mlir::detail::StorageUserBase<mlir::OpaqueType,mlir::Type,mlir::detail::OpaqueTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::StringAttr,llvm::StringRef>(a1, a2, Context, v11, a4, a5);
}

uint64_t mlir::detail::StorageUserBase<mlir::OpaqueType,mlir::Type,mlir::detail::OpaqueTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::StringAttr,llvm::StringRef>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, void *a5, const char *a6)
{
  if ((mlir::OpaqueType::verify(a1, a2, a4, a5, a6) & 1) == 0)
  {
    return 0;
  }

  v16 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v15[1] = &v16;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10OpaqueTypeEJRNS1_10StringAttrERNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v20[1] = v15;
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v11 = llvm::hash_value(a5, a6);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ (a4 >> 4) ^ (a4 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ (a4 >> 4) ^ (a4 >> 9))));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::OpaqueType::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, const char *a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v61 = a3;
  AttrData = mlir::OpaqueAttr::getAttrData(&v61);
  if (mlir::Dialect::isValidNamespace(AttrData, v10))
  {
    Context = mlir::Attribute::getContext(&v61);
    if (mlir::MLIRContext::allowsUnregisteredDialects(Context))
    {
      return 1;
    }

    v12 = mlir::OpaqueAttr::getAttrData(&v61);
    if (mlir::MLIRContext::getLoadedDialect(Context, v12, v13))
    {
      return 1;
    }

    a1(&v66, a2);
    if (v66)
    {
      LODWORD(v62) = 3;
      v64 = 2;
      v31 = &v62;
      v32 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v62 && v68 + 24 * v69 > &v62)
        {
          v57 = &v62 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v32 = v68;
          v31 = v68 + v57;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v31 = &v62;
          v32 = v68;
        }
      }

      v33 = &v32[24 * v69];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      ++v69;
      if (v66)
      {
        mlir::Diagnostic::operator<<(v67, v61);
        if (v66)
        {
          LODWORD(v62) = 3;
          v63 = "<";
          v64 = 2;
          v35 = &v62;
          v36 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v62 && v68 + 24 * v69 > &v62)
            {
              v58 = &v62 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v36 = v68;
              v35 = v68 + v58;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v35 = &v62;
              v36 = v68;
            }
          }

          v37 = &v36[24 * v69];
          v38 = *v35;
          *(v37 + 2) = *(v35 + 2);
          *v37 = v38;
          ++v69;
          if (v66)
          {
            v65 = 261;
            v62 = a4;
            v63 = a5;
            mlir::Diagnostic::operator<<(v67, &v62);
            if (v66)
            {
              LODWORD(v62) = 3;
              v63 = ">";
              v64 = 2;
              v39 = &v62;
              v40 = v68;
              if (v69 >= v70)
              {
                if (v68 <= &v62 && v68 + 24 * v69 > &v62)
                {
                  v59 = &v62 - v68;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
                  v40 = v68;
                  v39 = v68 + v59;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
                  v39 = &v62;
                  v40 = v68;
                }
              }

              v41 = &v40[24 * v69];
              v42 = *v39;
              *(v41 + 2) = *(v39 + 2);
              *v41 = v42;
              v43 = ++v69;
              if (v66)
              {
                LODWORD(v62) = 3;
                v64 = 185;
                v44 = &v62;
                v45 = v68;
                if (v43 >= v70)
                {
                  if (v68 <= &v62 && v68 + 24 * v43 > &v62)
                  {
                    v60 = &v62 - v68;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v43 + 1, 24);
                    v45 = v68;
                    v44 = v68 + v60;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v43 + 1, 24);
                    v44 = &v62;
                    v45 = v68;
                  }
                }

                v46 = &v45[24 * v69];
                v47 = *v44;
                *(v46 + 2) = *(v44 + 2);
                *v46 = v47;
                ++v69;
              }
            }
          }
        }
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
    if (v66)
    {
      mlir::InFlightDiagnostic::report(&v66);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v75;
        v50 = __p;
        if (v75 != __p)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v75 = v48;
        operator delete(v50);
      }

      v26 = v72;
      if (!v72)
      {
        goto LABEL_56;
      }

      v51 = v73;
      v28 = v72;
      if (v73 == v72)
      {
LABEL_55:
        v73 = v26;
        operator delete(v28);
LABEL_56:
        if (v68 != v71)
        {
          free(v68);
        }

        return v14;
      }

      do
      {
        v53 = *--v51;
        v52 = v53;
        *v51 = 0;
        if (v53)
        {
          operator delete[](v52);
        }
      }

      while (v51 != v26);
LABEL_54:
      v28 = v72;
      goto LABEL_55;
    }
  }

  else
  {
    a1(&v66, a2);
    if (v66)
    {
      LODWORD(v62) = 3;
      v63 = "invalid dialect namespace '";
      v64 = 27;
      v15 = &v62;
      v16 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v62 && v68 + 24 * v69 > &v62)
        {
          v55 = &v62 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v16 = v68;
          v15 = v68 + v55;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v15 = &v62;
          v16 = v68;
        }
      }

      v17 = &v16[24 * v69];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      ++v69;
      if (v66)
      {
        mlir::Diagnostic::operator<<(v67, v61);
        if (v66)
        {
          LODWORD(v62) = 3;
          v63 = "'";
          v64 = 1;
          v19 = &v62;
          v20 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v62 && v68 + 24 * v69 > &v62)
            {
              v56 = &v62 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v20 = v68;
              v19 = v68 + v56;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v19 = &v62;
              v20 = v68;
            }
          }

          v21 = &v20[24 * v69];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          ++v69;
        }
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
    if (v66)
    {
      mlir::InFlightDiagnostic::report(&v66);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v75;
        v25 = __p;
        if (v75 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v75 = v23;
        operator delete(v25);
      }

      v26 = v72;
      if (!v72)
      {
        goto LABEL_56;
      }

      v27 = v73;
      v28 = v72;
      if (v73 == v72)
      {
        goto LABEL_55;
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
      goto LABEL_54;
    }
  }

  return v14;
}

uint64_t mlir::RankedTensorType::get(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  Context = mlir::Attribute::getContext(&v17);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v18[1] = &Context;
  v23[0] = _ZN4llvm12function_refIFvPN4mlir6detail23RankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_16RankedTensorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v23[1] = v18;
  v22[0] = a1;
  v22[1] = a2;
  v8 = v17;
  v22[2] = v17;
  v22[3] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a1, &a1[a2]);
  v10 = (v8 >> 4) ^ (v8 >> 9);
  v11 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v12 = __ROR8__(0xB492B66FBE98F273 * v9 - v10, 43);
  v13 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v10;
  v14 = 0xB492B66FBE98F273 * v9 - v11 - 0xAE502812AA7333 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) + 24;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v13 + v12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ (v13 + v12))));
  v20[0] = v22;
  v20[1] = v23;
  v21 = v22;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, -348639895 * ((v15 >> 47) ^ v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
}

uint64_t mlir::TupleType::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v9 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v8[1] = &v9;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJRNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v12[1] = v8;
  v13[0] = a2;
  v13[1] = a3;
  v6 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a2, 0, a2, a3);
  v10[0] = v13;
  v10[1] = v12;
  v11 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::TupleType::get(mlir::TupleType *this, mlir::MLIRContext *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(&v11, 0, 0);
  v7 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v6[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v6[1] = &v7;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v10[1] = v6;
  v13[0] = v11;
  v13[1] = v12;
  v4 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v11, 0, v11, v12);
  v8[0] = v13;
  v8[1] = v10;
  v9 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::UnrankedMemRefType::get(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = a1;
  if (a2)
  {
    v3 = *(*a2 + 136);
    v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v5 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? a2 : 0;
    v18[0] = v5;
    if (v4)
    {
      mlir::IntegerAttr::getValue(v18, &v19);
      v11 = v20;
      if (v20 >= 0x41)
      {
        if (v11 - llvm::APInt::countLeadingZerosSlowCase(&v19) >= 0x41)
        {
          if (v19)
          {
            operator delete[](v19);
          }

          goto LABEL_6;
        }

        v12 = *v19;
        operator delete[](v19);
        if (v12)
        {
          goto LABEL_6;
        }
      }

      else if (v19)
      {
        goto LABEL_6;
      }

      v2 = 0;
    }
  }

LABEL_6:
  Context = mlir::Attribute::getContext(&v13);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  v14[1] = &Context;
  v19 = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedMemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedMemRefTypeEJRNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v20 = v14;
  v18[0] = v13;
  v18[1] = v2;
  v7 = (v2 >> 4) ^ (v2 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v13 >> 4) ^ (v13 >> 9));
  v16[0] = v18;
  v16[1] = &v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::UnrankedMemRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v14 = a3;
  if (a4)
  {
    v7 = *(*a4 + 136);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v9 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? a4 : 0;
    v17 = v9;
    if (v8)
    {
      mlir::IntegerAttr::getValue(&v17, &__p);
      v12 = v16;
      if (v16 >= 0x41)
      {
        if (v12 - llvm::APInt::countLeadingZerosSlowCase(&__p) >= 0x41)
        {
          if (__p)
          {
            operator delete[](__p);
          }

          goto LABEL_6;
        }

        v13 = *__p;
        operator delete[](__p);
        if (v13)
        {
          goto LABEL_6;
        }
      }

      else if (__p)
      {
        goto LABEL_6;
      }

      v4 = 0;
    }
  }

LABEL_6:
  Context = mlir::Attribute::getContext(&v14);
  return mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<mlir::Type,mlir::Attribute>(a1, a2, Context, v14, v4);
}

uint64_t mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<mlir::Type,mlir::Attribute>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t *a4, uint64_t a5)
{
  if ((mlir::UnrankedMemRefType::verify(a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v14 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  v13[1] = &v14;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedMemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedMemRefTypeEJRNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v18[1] = v13;
  v17[0] = a4;
  v17[1] = a5;
  v9 = (a5 >> 4) ^ (a5 >> 9);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (a4 >> 4) ^ (a4 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::UnrankedMemRefType::get(uint64_t a1, unsigned int a2)
{
  v7 = a1;
  Context = mlir::Attribute::getContext(&v7);
  if (!a2)
  {
    return mlir::UnrankedMemRefType::get(v7, 0);
  }

  v4 = mlir::IntegerType::get(Context, 64, 0);
  v5 = mlir::IntegerAttr::get(v4, a2);
  return mlir::UnrankedMemRefType::get(v7, v5);
}

uint64_t mlir::UnrankedMemRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (mlir::BaseMemRefType::isValidElementType(a3))
  {
    if (!a4)
    {
      return 1;
    }

    v7 = *(*a4 + 136);
    if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 1;
    }

    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    if (v8 || *(**a4 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      return 1;
    }

    a1(v38, a2);
    if (v38[0])
    {
      v35 = 3;
      v36 = "unsupported memory space Attribute";
      v37 = 34;
      v22 = &v35;
      v23 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &v35 && v39 + 24 * v40 > &v35)
        {
          v34 = &v35 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v23 = v39;
          v22 = (v39 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v22 = &v35;
          v23 = v39;
        }
      }

      v24 = &v23[24 * v40];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      ++v40;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v46;
        v28 = __p;
        if (v46 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v46 = v26;
        operator delete(v28);
      }

      v17 = v43;
      if (!v43)
      {
        goto LABEL_50;
      }

      v29 = v44;
      v19 = v43;
      if (v44 == v43)
      {
LABEL_49:
        v44 = v17;
        operator delete(v19);
LABEL_50:
        if (v39 != v42)
        {
          free(v39);
        }

        return v9;
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
LABEL_48:
      v19 = v43;
      goto LABEL_49;
    }
  }

  else
  {
    a1(v38, a2);
    if (v38[0])
    {
      v35 = 3;
      v36 = "invalid memref element type";
      v37 = 27;
      v10 = &v35;
      v11 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &v35 && v39 + 24 * v40 > &v35)
        {
          v33 = &v35 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v11 = v39;
          v10 = (v39 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v10 = &v35;
          v11 = v39;
        }
      }

      v12 = &v11[24 * v40];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v40;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v46;
        v16 = __p;
        if (v46 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v46 = v14;
        operator delete(v16);
      }

      v17 = v43;
      if (!v43)
      {
        goto LABEL_50;
      }

      v18 = v44;
      v19 = v43;
      if (v44 == v43)
      {
        goto LABEL_49;
      }

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
      goto LABEL_48;
    }
  }

  return v9;
}

uint64_t mlir::UnrankedTensorType::get(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Attribute::getContext(&v4);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v5[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v5[1] = &Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v10[1] = v5;
  v9 = v4;
  v2 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v8 = &v9;
  v7[0] = &v9;
  v7[1] = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v2 ^ (v2 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t mlir::VectorType::get(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29[5] = *MEMORY[0x1E69E9840];
  v20 = a3;
  v27 = v29;
  v28 = xmmword_1E09700D0;
  if (a5)
  {
    v7 = a5;
  }

  else if (a2)
  {
    if (a2 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v27, v29, a2, 1);
      a4 = v27;
      v9 = v28;
    }

    else
    {
      v9 = 0;
      a4 = v29;
    }

    bzero(a4 + v9, a2);
    v7 = v9 + a2;
    *&v28 = v9 + a2;
  }

  else
  {
    v7 = 0;
    a4 = v29;
  }

  Context = mlir::Attribute::getContext(&v20);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  v21[1] = &Context;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir6detail17VectorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10VectorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNSB_IbEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v26[1] = v21;
  v25[0] = a1;
  v25[1] = a2;
  v11 = v20;
  v25[2] = v20;
  v25[3] = a4;
  v25[4] = v7;
  v12 = llvm::hashing::detail::hash_combine_range_impl<char const>(a1, &a1[a2]);
  v13 = (v11 >> 4) ^ (v11 >> 9);
  v14 = llvm::hashing::detail::hash_combine_range_impl<char const>(a4, a4 + v7);
  v15 = 0xB492B66FBE98F273 * v12 - 0xAE502812AA7333 + __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * v14 + 24;
  v16 = (__ROR8__(0xB492B66FBE98F273 * v12 - v13, 43) - 0x3C5A37A36834CED9 * v13 + __ROR8__((0x9AE16A3B2F90404FLL * v14) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v15;
  v17 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, -348639895 * ((v17 >> 47) ^ v17), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
  if (v27 != v29)
  {
    v19 = result;
    free(v27);
    return v19;
  }

  return result;
}

uint64_t mlir::VectorType::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, const char **a3, const char *a4, uint64_t a5, void *a6, const char *a7)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a5;
  v18 = v20;
  v19 = xmmword_1E09700D0;
  if (a7)
  {
    v11 = a7;
  }

  else if (a4)
  {
    if (a4 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v18, v20, a4, 1);
      a6 = v18;
      v13 = v19;
    }

    else
    {
      v13 = 0;
      a6 = v20;
    }

    bzero(a6 + v13, a4);
    v11 = &a4[v13];
    *&v19 = v11;
  }

  else
  {
    v11 = 0;
    a6 = v20;
  }

  Context = mlir::Attribute::getContext(&v17);
  result = mlir::detail::StorageUserBase<mlir::VectorType,mlir::Type,mlir::detail::VectorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getChecked<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>>(a1, a2, Context, a3, a4, v17, a6, v11);
  if (v18 != v20)
  {
    v16 = result;
    free(v18);
    return v16;
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::VectorType,mlir::Type,mlir::detail::VectorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getChecked<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, const char **a4, const char *a5, uint64_t a6, uint64_t a7, const char *a8)
{
  if ((mlir::VectorType::verifyInvariantsImpl(a1, a2, a3, a4, a6) & 1) == 0 || (mlir::VectorType::verify(a1, a2, a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  v25 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v24[0] = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  v24[1] = &v25;
  v29[0] = _ZN4llvm12function_refIFvPN4mlir6detail17VectorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10VectorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNSB_IbEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v29[1] = v24;
  v28[0] = a4;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a7;
  v28[4] = a8;
  v17 = llvm::hashing::detail::hash_combine_range_impl<char const>(a4, &a4[a5]);
  v18 = (a6 >> 4) ^ (a6 >> 9);
  v19 = llvm::hashing::detail::hash_combine_range_impl<char const>(a7, &a8[a7]);
  v20 = __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * v17 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v19 + 24;
  v21 = (__ROR8__(0xB492B66FBE98F273 * v17 - v18, 43) - 0x3C5A37A36834CED9 * v18 + __ROR8__((0x9AE16A3B2F90404FLL * v19) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v20;
  v22 = 0x9DDFEA08EB382D69 * (v20 ^ ((0x9DDFEA08EB382D69 * v21) >> 47) ^ (0x9DDFEA08EB382D69 * v21));
  v26[0] = v28;
  v26[1] = v29;
  v27 = v28;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, -348639895 * ((v22 >> 47) ^ v22), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v27, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v26);
}

uint64_t mlir::VectorType::verifyInvariantsImpl(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *(*a5 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  v10 = 1;
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    a1(v28, a2);
    if (v28[0])
    {
      v25 = 3;
      v26 = "failed to verify 'elementType': integer or index or floating-point";
      v27 = 66;
      v12 = &v25;
      v13 = v29;
      if (v30 >= v31)
      {
        if (v29 <= &v25 && v29 + 24 * v30 > &v25)
        {
          v24 = &v25 - v29;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v13 = v29;
          v12 = (v29 + v24);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v12 = &v25;
          v13 = v29;
        }
      }

      v14 = &v13[24 * v30];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v30;
      if (v28[0])
      {
        mlir::InFlightDiagnostic::report(v28);
      }
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v36;
        v18 = __p;
        if (v36 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v36 = v16;
        operator delete(v18);
      }

      v19 = v33;
      if (v33)
      {
        v20 = v34;
        v21 = v33;
        if (v34 != v33)
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
          v21 = v33;
        }

        v34 = v19;
        operator delete(v21);
      }

      if (v29 != v32)
      {
        free(v29);
      }
    }

    return 0;
  }

  return v10;
}

uint64_t mlir::VectorType::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, const char **a3, const char *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v110 = *MEMORY[0x1E69E9840];
  v7 = *(*a5 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    if (a4)
    {
      v26 = 0;
      v27 = &a3[a4];
      while (a3[v26] > 0)
      {
        if (a4 == ++v26)
        {
          goto LABEL_61;
        }
      }

      a1(&v98, a2);
      if (v98)
      {
        LODWORD(v95) = 3;
        v96 = "vector types must have positive constant sizes but got ";
        v97 = 55;
        v61 = &v95;
        v62 = v100;
        if (v101 >= v102)
        {
          if (v100 <= &v95 && v100 + 24 * v101 > &v95)
          {
            v89 = &v95 - v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
            v62 = v100;
            v61 = (v100 + v89);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
            v61 = &v95;
            v62 = v100;
          }
        }

        v63 = &v62[24 * v101];
        v64 = *v61;
        *(v63 + 2) = v61[2];
        *v63 = v64;
        ++v101;
        if (v98)
        {
          v95 = ", ";
          llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(a3, v27, v99, v99, &v95);
        }
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
      if (v98)
      {
        mlir::InFlightDiagnostic::report(&v98);
      }

      if (v109 == 1)
      {
        if (v108 != &v109)
        {
          free(v108);
        }

        v65 = __p;
        if (__p)
        {
          v66 = v107;
          v67 = __p;
          if (v107 != __p)
          {
            do
            {
              v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
            }

            while (v66 != v65);
            v67 = __p;
          }

          v107 = v65;
          operator delete(v67);
        }

        v55 = v104;
        if (!v104)
        {
          goto LABEL_132;
        }

        v68 = v105;
        v57 = v104;
        if (v105 == v104)
        {
          goto LABEL_131;
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

        while (v68 != v55);
        goto LABEL_130;
      }
    }

    else
    {
LABEL_61:
      if (a7 == a4)
      {
        return 1;
      }

      a1(&v98, a2);
      if (v98)
      {
        LODWORD(v95) = 3;
        v96 = "number of dims must match, got ";
        v97 = 31;
        v31 = &v95;
        v32 = v100;
        if (v101 >= v102)
        {
          if (v100 <= &v95 && v100 + 24 * v101 > &v95)
          {
            v88 = &v95 - v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
            v32 = v100;
            v31 = (v100 + v88);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
            v31 = &v95;
            v32 = v100;
          }

          v34 = a4;
          v33 = a7;
        }

        else
        {
          v33 = a7;
          v34 = a4;
        }

        v35 = &v32[24 * v101];
        v36 = *v31;
        *(v35 + 2) = v31[2];
        *v35 = v36;
        v37 = ++v101;
        if (v98)
        {
          LODWORD(v95) = 5;
          v96 = v33;
          v38 = &v95;
          v39 = v100;
          if (v37 >= v102)
          {
            if (v100 <= &v95 && v100 + 24 * v37 > &v95)
            {
              v90 = &v95 - v100;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v37 + 1, 24);
              v39 = v100;
              v38 = (v100 + v90);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v37 + 1, 24);
              v38 = &v95;
              v39 = v100;
            }

            v34 = a4;
          }

          v40 = &v39[24 * v101];
          v41 = *v38;
          *(v40 + 2) = v38[2];
          *v40 = v41;
          v42 = ++v101;
          if (v98)
          {
            LODWORD(v95) = 3;
            v96 = " and ";
            v97 = 5;
            v43 = &v95;
            v44 = v100;
            if (v42 >= v102)
            {
              if (v100 <= &v95 && v100 + 24 * v42 > &v95)
              {
                v91 = &v95 - v100;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v42 + 1, 24);
                v44 = v100;
                v43 = (v100 + v91);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v42 + 1, 24);
                v43 = &v95;
                v44 = v100;
              }

              v34 = a4;
            }

            v45 = &v44[24 * v101];
            v46 = *v43;
            *(v45 + 2) = v43[2];
            *v45 = v46;
            v47 = ++v101;
            if (v98)
            {
              LODWORD(v95) = 5;
              v96 = v34;
              v48 = &v95;
              v49 = v100;
              if (v47 >= v102)
              {
                if (v100 <= &v95 && v100 + 24 * v47 > &v95)
                {
                  v92 = &v95 - v100;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v47 + 1, 24);
                  v49 = v100;
                  v48 = (v100 + v92);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v47 + 1, 24);
                  v48 = &v95;
                  v49 = v100;
                }
              }

              v50 = &v49[24 * v101];
              v51 = *v48;
              *(v50 + 2) = v48[2];
              *v50 = v51;
              ++v101;
            }
          }
        }
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
      if (v98)
      {
        mlir::InFlightDiagnostic::report(&v98);
      }

      if (v109 == 1)
      {
        if (v108 != &v109)
        {
          free(v108);
        }

        v52 = __p;
        if (__p)
        {
          v53 = v107;
          v54 = __p;
          if (v107 != __p)
          {
            do
            {
              v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
            }

            while (v53 != v52);
            v54 = __p;
          }

          v107 = v52;
          operator delete(v54);
        }

        v55 = v104;
        if (!v104)
        {
          goto LABEL_132;
        }

        v56 = v105;
        v57 = v104;
        if (v105 == v104)
        {
          goto LABEL_131;
        }

        do
        {
          v59 = *--v56;
          v58 = v59;
          *v56 = 0;
          if (v59)
          {
            operator delete[](v58);
          }
        }

        while (v56 != v55);
        goto LABEL_130;
      }
    }
  }

  else
  {
    a1(&v98, a2);
    if (v98)
    {
      LODWORD(v95) = 3;
      v96 = "vector elements must be int/index/float type but got ";
      v97 = 53;
      v72 = &v95;
      v73 = v100;
      if (v101 >= v102)
      {
        if (v100 <= &v95 && v100 + 24 * v101 > &v95)
        {
          v93 = &v95 - v100;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
          v73 = v100;
          v72 = (v100 + v93);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
          v72 = &v95;
          v73 = v100;
        }
      }

      v74 = a5;
      v75 = &v73[24 * v101];
      v76 = *v72;
      *(v75 + 2) = v72[2];
      *v75 = v76;
      ++v101;
      if (v98)
      {
        v77 = &v95;
        mlir::DiagnosticArgument::DiagnosticArgument(&v95, v74);
        v78 = v100;
        if (v101 >= v102)
        {
          if (v100 <= &v95 && v100 + 24 * v101 > &v95)
          {
            v94 = &v95 - v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
            v78 = v100;
            v77 = (v100 + v94);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
            v77 = &v95;
            v78 = v100;
          }
        }

        v79 = &v78[24 * v101];
        v80 = *v77;
        *(v79 + 2) = v77[2];
        *v79 = v80;
        ++v101;
      }
    }

    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
    if (v98)
    {
      mlir::InFlightDiagnostic::report(&v98);
    }

    if (v109 == 1)
    {
      if (v108 != &v109)
      {
        free(v108);
      }

      v81 = __p;
      if (__p)
      {
        v82 = v107;
        v83 = __p;
        if (v107 != __p)
        {
          do
          {
            v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
          }

          while (v82 != v81);
          v83 = __p;
        }

        v107 = v81;
        operator delete(v83);
      }

      v55 = v104;
      if (!v104)
      {
        goto LABEL_132;
      }

      v84 = v105;
      v57 = v104;
      if (v105 == v104)
      {
LABEL_131:
        v105 = v55;
        operator delete(v57);
LABEL_132:
        if (v100 != v103)
        {
          free(v100);
        }

        return v28;
      }

      do
      {
        v86 = *--v84;
        v85 = v86;
        *v84 = 0;
        if (v86)
        {
          operator delete[](v85);
        }
      }

      while (v84 != v55);
LABEL_130:
      v57 = v104;
      goto LABEL_131;
    }
  }

  return v28;
}

uint64_t *mlir::Dialect::addTypes<mlir::ComplexType,mlir::Float8E5M2Type,mlir::Float8E4M3Type,mlir::Float8E4M3FNType,mlir::Float8E5M2FNUZType,mlir::Float8E4M3FNUZType,mlir::Float8E4M3B11FNUZType,mlir::Float8E3M4Type,mlir::Float4E2M1FNType,mlir::Float6E2M3FNType,mlir::Float6E3M2FNType,mlir::BFloat16Type,mlir::Float16Type,mlir::FloatTF32Type,mlir::Float32Type,mlir::Float64Type,mlir::Float80Type,mlir::Float128Type,mlir::FunctionType,mlir::IndexType,mlir::IntegerType,mlir::MemRefType,mlir::NoneType,mlir::OpaqueType,mlir::RankedTensorType,mlir::TupleType,mlir::UnrankedMemRefType,mlir::UnrankedTensorType,mlir::VectorType>(uint64_t a1)
{
  mlir::Dialect::addType<mlir::ComplexType>(a1);
  mlir::Dialect::addType<mlir::Float8E5M2Type>(a1);
  mlir::Dialect::addType<mlir::Float8E4M3Type>(a1);
  mlir::Dialect::addType<mlir::Float8E4M3FNType>(a1);
  mlir::Dialect::addType<mlir::Float8E5M2FNUZType>(a1);
  mlir::Dialect::addType<mlir::Float8E4M3FNUZType>(a1);
  mlir::Dialect::addType<mlir::Float8E4M3B11FNUZType>(a1);
  mlir::Dialect::addType<mlir::Float8E3M4Type>(a1);
  mlir::Dialect::addType<mlir::Float4E2M1FNType>(a1);
  mlir::Dialect::addType<mlir::Float6E2M3FNType>(a1);
  mlir::Dialect::addType<mlir::Float6E3M2FNType>(a1);
  mlir::Dialect::addType<mlir::BFloat16Type>(a1);
  mlir::Dialect::addType<mlir::Float16Type>(a1);
  mlir::Dialect::addType<mlir::FloatTF32Type>(a1);
  mlir::Dialect::addType<mlir::Float32Type>(a1);
  mlir::Dialect::addType<mlir::Float64Type>(a1);
  mlir::Dialect::addType<mlir::Float80Type>(a1);
  mlir::Dialect::addType<mlir::Float128Type>(a1);
  mlir::Dialect::addType<mlir::FunctionType>(a1);
  mlir::Dialect::addType<mlir::IndexType>(a1);
  mlir::Dialect::addType<mlir::IntegerType>(a1);
  mlir::Dialect::addType<mlir::MemRefType>(a1);
  mlir::Dialect::addType<mlir::NoneType>(a1);
  mlir::Dialect::addType<mlir::OpaqueType>(a1);
  mlir::Dialect::addType<mlir::RankedTensorType>(a1);
  mlir::Dialect::addType<mlir::TupleType>(a1);
  mlir::Dialect::addType<mlir::UnrankedMemRefType>(a1);
  mlir::Dialect::addType<mlir::UnrankedTensorType>(a1);

  return mlir::Dialect::addType<mlir::VectorType>(a1);
}

uint64_t mlir::FloatType::getWidth(mlir::FloatType *this)
{
  if (*(**this + 136) == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    return 32;
  }

  FloatSemantics = mlir::FloatType::getFloatSemantics(this);

  return llvm::APFloatBase::semanticsSizeInBits(FloatSemantics);
}

void *mlir::FloatType::getFloatSemantics(llvm::APFloatBase *this)
{
  v1 = *(**this + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return llvm::APFloatBase::Float4E2M1FN(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id)
  {
    return llvm::APFloatBase::Float6E2M3FN(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return llvm::APFloatBase::Float6E3M2FN(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
  {
    return llvm::APFloatBase::Float8E5M2(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return llvm::APFloatBase::Float8E4M3(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return llvm::APFloatBase::Float8E4M3FN(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return llvm::APFloatBase::Float8E5M2FNUZ(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id)
  {
    return llvm::APFloatBase::Float8E4M3FNUZ(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return llvm::APFloatBase::Float8E4M3B11FNUZ(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id)
  {
    return llvm::APFloatBase::Float8E3M4(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return llvm::APFloatBase::BFloat(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    return llvm::APFloatBase::IEEEhalf(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    return llvm::APFloatBase::FloatTF32(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return llvm::APFloatBase::IEEEsingle(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return llvm::APFloatBase::IEEEdouble(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    return llvm::APFloatBase::x87DoubleExtended(this);
  }

  return llvm::APFloatBase::IEEEquad(this);
}

uint64_t mlir::FloatType::getFPMantissaWidth(mlir::FloatType *this)
{
  FloatSemantics = mlir::FloatType::getFloatSemantics(this);

  return llvm::APFloatBase::semanticsPrecision(FloatSemantics);
}

uint64_t mlir::FunctionType::clone(mlir::Attribute *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v13[1] = &Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a2, 0, a2, a3);
  v11 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a4, 0, a4, a5)) | (v10 << 32));
  v15[0] = v18;
  v15[1] = v17;
  v16 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v11 >> 31) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::TensorType::getElementType(mlir::TensorType *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return *(v1 + 24);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return *(v1 + 8);
  }

  return 0;
}

uint64_t mlir::TensorType::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(**a1 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(a2 + 16))
    {
      v4 = *a2;
      v5 = v3[4];
      v6 = *(a2 + 8);
    }

    else
    {
      v4 = v3[1];
      v6 = v3[2];
      v5 = v3[4];
    }

    return mlir::RankedTensorType::get(v4, v6, a3, v5);
  }

  if (*(a2 + 16))
  {
    v4 = *a2;
    v6 = *(a2 + 8);
    v5 = 0;

    return mlir::RankedTensorType::get(v4, v6, a3, v5);
  }

  v10 = a3;
  Context = mlir::Attribute::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v11[1] = &Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v11;
  v15 = v10;
  v9 = 0x9DDFEA08EB382D69 * ((8 * ((v10 >> 4) ^ (v10 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v9 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::TensorType::clone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = 1;
  v3 = *a1;
  v4 = *(**a1 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return mlir::TensorType::cloneWith(a1, v6, *(v3 + 24));
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return mlir::TensorType::cloneWith(a1, v6, *(v3 + 8));
  }

  return mlir::TensorType::cloneWith(a1, v6, 0);
}

BOOL mlir::TensorType::isValidElementType(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return *(*v1 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id;
  }

  return result;
}

uint64_t mlir::BaseMemRefType::getElementType(mlir::BaseMemRefType *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    return *(v1 + 24);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    return *(v1 + 8);
  }

  return 0;
}

uint64_t mlir::BaseMemRefType::cloneWith(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(**a1 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v4 = (v3 + 1);
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[6];
    if (*(a2 + 16))
    {
      v8 = (a2 + 8);
    }

    else
    {
      v8 = (v3 + 2);
    }

    if (*(a2 + 16))
    {
      v4 = a2;
    }

    v9 = *v4;
    v10 = *v8;
    return mlir::MemRefType::get(v9, v10, a3, v5, v6, v7);
  }

  if (*(a2 + 16))
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v7 = v3[2];
    v5 = 0;
    v6 = 0;
    return mlir::MemRefType::get(v9, v10, a3, v5, v6, v7);
  }

  return mlir::UnrankedMemRefType::get(a3, v3[2]);
}

uint64_t mlir::BaseMemRefType::getMemorySpace(mlir::BaseMemRefType *this)
{
  v1 = 16;
  if (*(**this + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v1 = 48;
  }

  return *(*this + v1);
}

unsigned int *mlir::computeRankReductionMask@<X0>(unsigned int *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 1;
  *&v25 = -1;
  *(&v25 + 1) = -1;
  v22 = 0;
  if (a2)
  {
    v10 = result;
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = 0;
    if (a5)
    {
      while (1)
      {
        while (1)
        {
          v14 = *&v10[2 * v12];
          v15 = a4 <= v13 || v14 == 1;
          if (v15 || (*(a3 + 8 * v13) != 0x8000000000000000 ? (v16 = v14 == 0x8000000000000000) : (v16 = 1), !v16))
          {
            if (a4 <= v13 || v14 != *(a3 + 8 * v13))
            {
              break;
            }
          }

          ++v13;
          v11 = (v11 + 1);
          v22 = v11;
          v12 = v11;
          if (a2 <= v11)
          {
            goto LABEL_23;
          }
        }

        result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v24, &v22, v23);
        if (v14 != 1)
        {
          goto LABEL_27;
        }

        LODWORD(v11) = ++v22;
        v12 = v22;
        if (a2 <= v22)
        {
          goto LABEL_23;
        }
      }
    }

    do
    {
      while (1)
      {
        v17 = *&v10[2 * v12];
        if (a4 <= v13 || v17 != *(a3 + 8 * v13))
        {
          break;
        }

        ++v13;
        v11 = (v11 + 1);
        v22 = v11;
        v12 = v11;
        if (a2 <= v11)
        {
          goto LABEL_23;
        }
      }

      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v24, &v22, v23);
      if (v17 != 1)
      {
        goto LABEL_27;
      }

      LODWORD(v11) = ++v22;
      v12 = v22;
    }

    while (a2 > v22);
LABEL_23:
    if (a4 != v13)
    {
LABEL_27:
      *a6 = 0;
      *(a6 + 24) = 0;
      if ((v24 & 1) == 0)
      {
        goto LABEL_28;
      }

      return result;
    }
  }

  else if (a4)
  {
    goto LABEL_27;
  }

  *(a6 + 16) = -1;
  v18 = v24;
  v19 = HIDWORD(v24);
  v20 = v24 & 1;
  *a6 = v24 | 1;
  *(a6 + 4) = v19;
  v24 = v20;
  if (v18)
  {
    *(a6 + 8) = v25;
    *&v25 = -1;
    v21 = HIDWORD(v25);
    *(a6 + 16) = DWORD2(v25);
    DWORD2(v25) = -1;
    if (v21 != -1)
    {
      *(a6 + 20) = v21;
      HIDWORD(v25) = -1;
    }
  }

  else
  {
    *(a6 + 8) = v25;
    LODWORD(v24) = 1;
    *&v25 = -1;
    *(&v25 + 1) = -1;
    *a6 = v18;
  }

  *(a6 + 24) = 1;
  if ((v24 & 1) == 0)
  {
LABEL_28:
    llvm::deallocate_buffer(v25, (4 * DWORD2(v25)));
  }

  return result;
}

uint64_t mlir::isRankReducedType(void *a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1 == a3)
  {
    return 0;
  }

  if (a1)
  {
    v4 = *a1;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v34 = v4;
      v35 = a3;
      v33 = a1;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      a1 = v33;
      a3 = v35;
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v34 + 8);
      v7 = *(v34 + 16);
      if (!v7)
      {
        goto LABEL_16;
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
      v24 = v8[1];
      v38 = a1;
      v39 = v24;
      if (!a3)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  v38 = a1;
  v39 = 0;
  if (!a3)
  {
    goto LABEL_31;
  }

LABEL_17:
  v14 = *a3;
  {
    v36 = a3;
    v25 = v14;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a3 = v36;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v16 = *(v25 + 8);
    v17 = *(v25 + 16);
    if (v17)
    {
      goto LABEL_19;
    }

LABEL_31:
    v26 = 0;
    goto LABEL_32;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (!v17)
  {
    goto LABEL_31;
  }

LABEL_19:
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
  if (v18 == &v16[2 * v17] || *v18 != v15)
  {
    goto LABEL_31;
  }

  v26 = v18[1];
LABEL_32:
  v37[0] = a3;
  v37[1] = v26;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v38);
  v29 = v28;
  v30 = mlir::CallableOpInterface::getArgAttrsAttr(v37);
  if (v31 > v29)
  {
    return 1;
  }

  mlir::computeRankReductionMask(ArgAttrsAttr, v29, v30, v31, 0, v40);
  if (v43 != 1)
  {
    return 2;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v38);
  if (isSplat == mlir::ElementsAttr::isSplat(v37))
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

  if ((v40[0] & 1) == 0)
  {
    llvm::deallocate_buffer(v41, (4 * v42));
  }

  return result;
}