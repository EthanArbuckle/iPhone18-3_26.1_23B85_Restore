uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B170A8;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::TensorToBufferOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::mpsx::TensorToBufferOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(v18, v19, v20);
    mlir::ValueRange::ValueRange(v17, *a11, *(a11 + 8));
    v22[0] = &unk_1F5B170A8;
    v23 = v22;
    if (v23 == v22)
    {
      (*(*v23 + 32))(v23);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v23)
      {
        (*(*v23 + 40))(v23);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v22[0] = "mpsx.tensor_to_buffer";
    v22[1] = 21;
    v15.var0.var0 = a3;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v15, "'", v22, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v19 != v21)
  {
    free(v19);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::TensorToBufferOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B170A8;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::mpsx::TensorToBufferOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, (mlir::mpsx::TensorToBufferOp::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    v8 = a1;
    v6 = mlir::mpsx::TensorToBufferOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::UseMemrefOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>::getSuccessorRegions;
  {
    v5 = v2;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mpsx::UseMemrefOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator()();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<Empty>]";
  v6 = 115;
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

uint64_t mlir::Op<mlir::mpsx::UseMemrefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::mpsx::UseMemrefOp>::verifyTrait(a1) & 1) != 0 && (v8 = a1, (mlir::mpsx::UseMemrefOp::verifyInvariantsImpl(&v8) & 1) != 0) && mlir::OpTrait::impl::verifyIsTerminator(a1, v7))
  {
    v8 = a1;
    v5 = mlir::mpsx::UseMemrefOp::verify(&v8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::mpsx::UseMemrefOp>::verifyTrait(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
      {
        return 1;
      }
    }
  }

  v19 = 257;
  mlir::Operation::emitOpError(a1, &v18, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "expects parent op ");
  if (*v3)
  {
    v4 = v3;
    mlir::Diagnostic::operator<<((v3 + 1), "'");
    v3 = v4;
  }

  v20[0] = "mpsx.memref_backed";
  v20[1] = 18;
  v17[0] = v20;
  v17[1] = 1;
  v5 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v3, v17);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v5, "'");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
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
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v7;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>(uint64_t a1)
{
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v27;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v22 = v1;
    v28 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v22;
    a1 = v28;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v23 = v1;
    v29 = a1;
    v18 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v18;
    v1 = v23;
    a1 = v29;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v24 = v1;
    v30 = a1;
    v15 = v3;
    v19 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v15;
    v2 = v19;
    v1 = v24;
    a1 = v30;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v26 = v1;
    v32 = a1;
    v17 = v3;
    v21 = v2;
    v12 = v5;
    v14 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v12;
    v4 = v14;
    v3 = v17;
    v2 = v21;
    v1 = v26;
    a1 = v32;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v8 = a1;
    return mlir::mpsx::VarHandleOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::Dialect::addAttribute<mlir::mpsx::FusionTypeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mpsx::FusionTypeAttr,mlir::Attribute,mlir::mpsx::detail::FusionTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSD_6detail21FusionTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSC_6detail21FusionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
  v24 = "mpsx.fusion_type";
  v25 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSC_6detail21FusionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail21FusionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14FusionTypeAttrEJNS2_10FusionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(uint64_t result, unint64_t *a2)
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
      goto LABEL_39;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 < v7)
    {
      if (*(result + 12) < v7)
      {
        *(result + 8) = 0;
        v9 = a2;
        v10 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 16);
        a2 = v9;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (!v8)
      {
        v10 = result;
        v8 = 0;
        goto LABEL_36;
      }

      v15 = *result;
      v16 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v16 >= 9)
      {
        if (v15 >= v2 + 16 * v8 || (v17 = *a2, v2 >= &v15[2 * v8]))
        {
          v30 = v16 + 1;
          v31 = 2 * (v30 & 0x1FFFFFFFFFFFFFFCLL);
          v32 = &v15[v31];
          v17 = (v2 + v31 * 8);
          v33 = (v2 + 32);
          v34 = v15 + 4;
          v35 = v30 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v37 = *(v33 - 2);
            v36 = *(v33 - 1);
            v39 = *v33;
            v38 = v33[1];
            v33 += 4;
            *(v34 - 2) = v37;
            *(v34 - 1) = v36;
            *v34 = v39;
            v34[1] = v38;
            v34 += 4;
            v35 -= 4;
          }

          while (v35);
          v15 = v32;
          if (v30 == (v30 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v17 = *a2;
      }

      v40 = (v2 + 16 * v8);
      do
      {
        *v15 = *v17;
        v15[1] = v17[1];
        v17 += 2;
        v15 += 2;
      }

      while (v17 != v40);
LABEL_35:
      v10 = result;
LABEL_36:
      v11 = v7 - v8;
      if (v7 == v8)
      {
LABEL_38:
        result = v10;
        *(v10 + 8) = v7;
        goto LABEL_39;
      }

LABEL_37:
      memcpy((*v10 + 16 * v8), (*a2 + 16 * v8), 16 * v11);
      goto LABEL_38;
    }

    if (v7)
    {
      v12 = *result;
      v13 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v13 >= 9)
      {
        v18 = v12 >= v2 + 16 * v7 || v2 >= &v12[2 * v7];
        v14 = *a2;
        if (v18)
        {
          v19 = v13 + 1;
          v20 = 2 * (v19 & 0x1FFFFFFFFFFFFFFCLL);
          v21 = &v12[v20];
          v14 = (v2 + v20 * 8);
          v22 = (v2 + 32);
          v23 = v12 + 4;
          v24 = v19 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v26 = *(v22 - 2);
            v25 = *(v22 - 1);
            v28 = *v22;
            v27 = v22[1];
            v22 += 4;
            *(v23 - 2) = v26;
            *(v23 - 1) = v25;
            *v23 = v28;
            v23[1] = v27;
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
          v12 = v21;
          if (v19 == (v19 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v14 = *a2;
      }

      v29 = (v2 + 16 * v7);
      do
      {
        *v12 = *v14;
        v12[1] = v14[1];
        v14 += 2;
        v12 += 2;
      }

      while (v14 != v29);
    }

LABEL_26:
    *(result + 8) = v7;
LABEL_39:
    *v6 = 0;
  }

  return result;
}

void mlir::mpsx::MPSXOpFolderDialectInterface::~MPSXOpFolderDialectInterface(mlir::mpsx::MPSXOpFolderDialectInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t *mlir::Dialect::addType<mlir::mpsx::ListType>(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  {
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
  }

  v2 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  mlir::AbstractType::get<mlir::mpsx::ListType>(a1, v15);
  mlir::Dialect::addType(a1, v2, v15);
  v3 = v20;
  if (v20 >= 8)
  {
    if ((v20 & 4) != 0)
    {
      if ((v20 & 2) != 0)
      {
        v4 = v19;
      }

      else
      {
        v4 = v19[0];
      }

      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v19[0], v19[1]);
    }
  }

  v5 = v16;
  if (v17)
  {
    v6 = 16 * v17;
    v7 = (v16 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v16;
  }

  if (v5 != &v18)
  {
    free(v5);
  }

  v9 = *(a1 + 32);
  {
    v14 = v9;
    mlir::Dialect::addType<mlir::mpsx::ListType>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v9);
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, v10, 0, v12);
}

void mlir::AbstractType::get<mlir::mpsx::ListType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 0, sizeof(v17));
  v16 = 0x300000000;
  *&v12 = mlir::detail::StorageUserBase<mlir::mpsx::ListType,mlir::Type,mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v14 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v15 = v17;
  {
    v9 = a1;
    mlir::Dialect::addType<mlir::mpsx::ListType>();
    a1 = v9;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v16)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v15);
  }

  v4 = v14;
  *(a2 + 96) = v14;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(a2 + 72, &v12);
      (*((*(a2 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(&v12);
    }

    else
    {
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
    }
  }

  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx8ListTypeES2_NSD_6detail29TypeWithStaticSubtypesStorageILj1EEENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v11;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx8ListTypeES2_NSC_6detail29TypeWithStaticSubtypesStorageILj1EEENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v10;
  *(a2 + 136) = v3;
  *(a2 + 144) = "mpsx.list_type";
  *(a2 + 152) = 14;
  v5 = v15;
  if (v16)
  {
    v6 = 16 * v16;
    v7 = (v15 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

BOOL mlir::mpsx::anonymous namespace::qimpl::isFPType(void *a1)
{
  v1 = *(*mlir::getElementTypeOrSelf(a1) + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

BOOL mlir::mpsx::anonymous namespace::qimpl::verifyAffineQuant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v41 = a6;
  v11 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
  {
    v38 = 0;
    v39 = 0;
    return 1;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  v38 = v11;
  v39 = v12;
  if (!v11 || !mlir::CallOpInterface::getArgOperands(&v38))
  {
    return 1;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v38);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf((*(a4 + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v35 = 0;
    if ((a6 & 0x100000000) == 0)
    {
LABEL_8:
      v42[0] = &v41;
      v42[1] = &v40;
      v42[2] = &v35;
      v43 = &v38;
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v38);
    if (a6 < 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25 + a6;
    if ((v26 & 0x80000000) == 0)
    {
      v27 = v26 & 0x7FFFFFFF;
      mlir::CallableOpInterface::getArgAttrsAttr(&v38);
      if (v27 <= v28)
      {
        v35 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v38) + 8 * v27);
        goto LABEL_8;
      }
    }

    v37 = 259;
    mlir::Operation::emitOpError(a1, v36, v42);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    v15 = result;
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
      result = v15;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v15;
      }

      v29 = __p;
      if (__p)
      {
        v30 = v48;
        v31 = __p;
        if (v48 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v48 = v29;
        operator delete(v31);
        result = v15;
      }

      v19 = v45;
      if (!v45)
      {
        goto LABEL_54;
      }

      v32 = v46;
      v21 = v45;
      if (v46 == v45)
      {
LABEL_53:
        v46 = v19;
        operator delete(v21);
        result = v15;
LABEL_54:
        if (v43 != &v44)
        {
          free(v43);
          return v15;
        }

        return result;
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

      while (v32 != v19);
LABEL_52:
      v21 = v45;
      goto LABEL_53;
    }
  }

  else
  {
    v36[0] = "input and zeroPoint types must match";
    v37 = 259;
    mlir::Operation::emitOpError(a1, v36, v42);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    v15 = result;
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
      result = v15;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v48;
        v18 = __p;
        if (v48 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v48 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v45;
      if (!v45)
      {
        goto LABEL_54;
      }

      v20 = v46;
      v21 = v45;
      if (v46 == v45)
      {
        goto LABEL_53;
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
      goto LABEL_52;
    }
  }

  return result;
}

uint64_t mlir::mpsx::anonymous namespace::qimpl::verifyAffineQuant(mlir::Operation *,mlir::Value,mlir::Value,mlir::Value,mlir::Value,std::optional<int>)::$_0::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
  }

  v93[0] = v5;
  v93[1] = v6;
  if (*(*a1 + 4) == 1)
  {
    if (mlir::CallOpInterface::getArgOperands(v93))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v93);
      if (v7 >= 2)
      {
        v8 = **(a1 + 8);
        v92 = 257;
        mlir::Operation::emitOpError(v8, v91, &v97);
        if (v97)
        {
          mlir::Diagnostic::operator<<(v98, a2);
          if (v97)
          {
            v94 = 3;
            v95 = " rank must be 0 or 1";
            v96 = 20;
            v9 = &v94;
            v10 = v99;
            if (v100 >= v101)
            {
              if (v99 <= &v94 && v99 + 24 * v100 > &v94)
              {
                v84 = &v94 - v99;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v99, v102, v100 + 1, 24);
                v10 = v99;
                v9 = (v99 + v84);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v99, v102, v100 + 1, 24);
                v9 = &v94;
                v10 = v99;
              }
            }

            v11 = &v10[24 * v100];
            v12 = *v9;
            *(v11 + 2) = *(v9 + 2);
            *v11 = v12;
            ++v100;
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v97);
        v14 = result;
        if (v97)
        {
          mlir::InFlightDiagnostic::report(&v97);
          result = v14;
        }

        if (v108 != 1)
        {
          return result;
        }

        if (v107 != &v108)
        {
          free(v107);
          result = v14;
        }

        v15 = __p;
        if (__p)
        {
          v16 = v106;
          v17 = __p;
          if (v106 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v106 = v15;
          operator delete(v17);
          result = v14;
        }

        v18 = v103;
        if (!v103)
        {
          goto LABEL_97;
        }

        v19 = v104;
        v20 = v103;
        if (v104 == v103)
        {
LABEL_96:
          v104 = v18;
          operator delete(v20);
          result = v14;
LABEL_97:
          if (v99 != v102)
          {
            free(v99);
            return v14;
          }

          return result;
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
LABEL_95:
        v20 = v103;
        goto LABEL_96;
      }
    }

    if (v93[0] && **(a1 + 16) != 0x8000000000000000 && mlir::CallOpInterface::getArgOperands(v93))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v93);
      if (v34)
      {
        v35 = 8 * v34;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v35 -= 8;
          if (!v35)
          {
            goto LABEL_49;
          }
        }

        return 1;
      }

LABEL_49:
      v36 = mlir::CallableOpInterface::getArgAttrsAttr(v93);
      if (mlir::ShapedType::getNumElements(v36, v37) != **(a1 + 16))
      {
        v38 = mlir::CallableOpInterface::getArgAttrsAttr(v93);
        result = mlir::ShapedType::getNumElements(v38, v39);
        if (result == 1)
        {
          return result;
        }

        v40 = **(a1 + 8);
        v92 = 257;
        mlir::Operation::emitOpError(v40, v91, &v97);
        if (v97)
        {
          mlir::Diagnostic::append<char const(&)[7]>(v98, "input and ");
          if (v97)
          {
            mlir::Diagnostic::operator<<(v98, a2);
            if (v97)
            {
            }
          }
        }

        v41 = &v97;
LABEL_102:
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v97);
        return v14;
      }
    }

    return 1;
  }

  if (!v5 || !mlir::CallOpInterface::getArgOperands(v93))
  {
    return 1;
  }

  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v93);
  if (v24)
  {
    v25 = 8 * v24;
    while (*v23 != 0x8000000000000000)
    {
      ++v23;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    return 1;
  }

LABEL_33:
  mlir::CallableOpInterface::getArgAttrsAttr(v93);
  if (v26 > 1)
  {
    if (mlir::CallOpInterface::getArgOperands(*(a1 + 24)))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(*(a1 + 24));
      v43 = v42;
      mlir::CallableOpInterface::getArgAttrsAttr(v93);
      if (v43 != v44)
      {
        v78 = **(a1 + 8);
        v92 = 257;
        mlir::Operation::emitOpError(v78, v91, &v97);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v97, "ND ");
        if (*v79)
        {
          v80 = v79;
          mlir::Diagnostic::operator<<((v79 + 1), a2);
          v79 = v80;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v79, " rank differs from input rank");
        goto LABEL_102;
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(*(a1 + 24));
    if (v45)
    {
      v46 = 0;
      while (1)
      {
        v48 = 8 * v46;
        v49 = *(mlir::CallableOpInterface::getArgAttrsAttr(*(a1 + 24)) + v48);
        v50 = *(mlir::CallableOpInterface::getArgAttrsAttr(v93) + v48);
        v51 = v49 == 0x8000000000000000 || v50 == 0x8000000000000000;
        if (!v51 && v49 % v50)
        {
          break;
        }

        ++v46;
        mlir::CallableOpInterface::getArgAttrsAttr(*(a1 + 24));
        result = 1;
        if (v46 >= v47)
        {
          return result;
        }
      }

      v52 = **(a1 + 8);
      v92 = 257;
      mlir::Operation::emitOpError(v52, v91, &v97);
      if (v97)
      {
        mlir::Diagnostic::operator<<(v98, a2);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v97, " shape not compatible with input for axis ");
      if (*v53)
      {
        v54 = *(v53 + 24);
        v94 = 5;
        v95 = v46;
        v55 = *(v53 + 32);
        v56 = &v94;
        if (v55 >= *(v53 + 36))
        {
          if (v54 <= &v94 && v54 + 24 * v55 > &v94)
          {
            v85 = &v94 - v54;
            v86 = v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v53 + 24, v53 + 40, v55 + 1, 24);
            v53 = v86;
            v54 = *(v86 + 24);
            v56 = &v85[v54];
          }

          else
          {
            v81 = v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v53 + 24, v53 + 40, v55 + 1, 24);
            v53 = v81;
            v54 = *(v81 + 24);
            v56 = &v94;
          }
        }

        v57 = v54 + 24 * *(v53 + 32);
        v58 = *v56;
        *(v57 + 16) = *(v56 + 2);
        *v57 = v58;
        ++*(v53 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v53, ": ");
      if (*v59)
      {
        v60 = *(v59 + 24);
        v94 = 2;
        v95 = v49;
        v61 = *(v59 + 32);
        v62 = &v94;
        if (v61 >= *(v59 + 36))
        {
          if (v60 <= &v94 && v60 + 24 * v61 > &v94)
          {
            v87 = &v94 - v60;
            v88 = v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v59 + 24, v59 + 40, v61 + 1, 24);
            v59 = v88;
            v60 = *(v88 + 24);
            v62 = &v87[v60];
          }

          else
          {
            v82 = v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v59 + 24, v59 + 40, v61 + 1, 24);
            v59 = v82;
            v60 = *(v82 + 24);
            v62 = &v94;
          }
        }

        v63 = v60 + 24 * *(v59 + 32);
        v64 = *v62;
        *(v63 + 16) = *(v62 + 2);
        *v63 = v64;
        ++*(v59 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, " % ");
      if (*v65)
      {
        v66 = *(v65 + 24);
        v94 = 2;
        v95 = v50;
        v67 = *(v65 + 32);
        v68 = &v94;
        if (v67 >= *(v65 + 36))
        {
          if (v66 <= &v94 && v66 + 24 * v67 > &v94)
          {
            v89 = &v94 - v66;
            v90 = v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v65 + 24, v65 + 40, v67 + 1, 24);
            v65 = v90;
            v66 = *(v90 + 24);
            v68 = &v89[v66];
          }

          else
          {
            v83 = v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v65 + 24, v65 + 40, v67 + 1, 24);
            v65 = v83;
            v66 = *(v83 + 24);
            v68 = &v94;
          }
        }

        v69 = v66 + 24 * *(v65 + 32);
        v70 = *v68;
        *(v69 + 16) = *(v68 + 2);
        *v69 = v70;
        ++*(v65 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v65, " != 0");
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
      v14 = result;
      if (v97)
      {
        mlir::InFlightDiagnostic::report(&v97);
        result = v14;
      }

      if ((v108 & 1) == 0)
      {
        return result;
      }

      if (v107 != &v108)
      {
        free(v107);
        result = v14;
      }

      v72 = __p;
      if (__p)
      {
        v73 = v106;
        v74 = __p;
        if (v106 != __p)
        {
          do
          {
            v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
          }

          while (v73 != v72);
          v74 = __p;
        }

        v106 = v72;
        operator delete(v74);
        result = v14;
      }

      v18 = v103;
      if (!v103)
      {
        goto LABEL_97;
      }

      v75 = v104;
      v20 = v103;
      if (v104 == v103)
      {
        goto LABEL_96;
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

      while (v75 != v18);
      goto LABEL_95;
    }

    return 1;
  }

  v27 = mlir::CallableOpInterface::getArgAttrsAttr(v93);
  result = mlir::ShapedType::getNumElements(v27, v28);
  if (result != 1)
  {
    v29 = **(a1 + 8);
    v92 = 257;
    mlir::Operation::emitOpError(v29, v91, &v97);
    v31 = v30;
    if (*v30)
    {
      mlir::Diagnostic::operator<<((v30 + 1), a2);
      if (*v31)
      {
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v97)
    {
      v32 = result;
      mlir::InFlightDiagnostic::report(&v97);
      result = v32;
    }

    if (v108 == 1)
    {
      v14 = result;
      mlir::Diagnostic::~Diagnostic(v98);
      return v14;
    }
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeights(mlir::AffineMapAttr *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 - 16), *(*(*(a1 + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v13 = v6;
  v7 = *mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
  v8 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 4) + v7;
  v9 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 8);
  v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 12) + v9 + v8);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
  v11 = *(a1 + 5);
  v13 = v11;
  v14 = v10;
  if (v10)
  {
    v11 = mlir::ValueRange::offset_base(&v13, v10);
  }

  v13 = v11;
  v14 = 0;
  return mlir::ValueRange::dereference_iterator(&v13, 0);
}

uint64_t mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(mlir::AffineMapAttr *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 - 16), *(*(*(a1 + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;
  v7 = *mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
  v8 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 4) + v7;
  v9 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 8);
  v10 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 12) + v9 + v8;
  v11 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 16);
  v12 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 20) + v11;
  v13 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 24) + v12 + v10;
  v14 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 28) + v13);
  v15 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 32);
  v16 = *(a1 + 5);
  v19 = v16;
  v20 = v14;
  if (v14)
  {
    v16 = mlir::ValueRange::offset_base(&v19, v14);
    v17 = v20;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == v15 + v14)
  {
    return 0;
  }

  v19 = v16;
  v20 = 0;
  return mlir::ValueRange::dereference_iterator(&v19, 0);
}

void *std::__function::__func<mlir::mpsx::anonymous namespace::$_4,std::allocator<mlir::mpsx::anonymous namespace::$_4>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B170A8;
  return result;
}

double mlir::Diagnostic::append<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(uint64_t a1, char *__s, char **a3, char *a4, char *a5, char **a6)
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
  return mlir::Diagnostic::append<char const(&)[47],char const(&)[9],long long &>(v13, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[47],char const(&)[9],long long &>(uint64_t a1, char *__s, char *a3, char **a4)
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
  *&result = mlir::Diagnostic::append<char const(&)[9],long long &>(v9, a3, a4).n128_u64[0];
  return result;
}

__n128 mlir::Diagnostic::append<char const(&)[9],long long &>(uint64_t a1, char *__s, char **a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v7 + 32, v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v7 + 32, v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 2;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v7 + 32, v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v7 + 32, v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeights(mlir::AffineMapAttr *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v13 = v6;
  v7 = *mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
  v8 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 4) + v7;
  v9 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 8);
  v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13) + 12) + v9 + v8);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
  v11 = *(a1 + 5);
  v13 = v11;
  v14 = v10;
  if (v10)
  {
    v11 = mlir::ValueRange::offset_base(&v13, v10);
  }

  v13 = v11;
  v14 = 0;
  return mlir::ValueRange::dereference_iterator(&v13, 0);
}

uint64_t mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(mlir::AffineMapAttr *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Value = mlir::AffineMapAttr::getValue(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;
  v7 = *mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
  v8 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 4) + v7;
  v9 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 8);
  v10 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 12) + v9 + v8;
  v11 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 16);
  v12 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 20) + v11;
  v13 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 24) + v12 + v10;
  v14 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 28) + v13);
  v15 = *(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19) + 32);
  v16 = *(a1 + 5);
  v19 = v16;
  v20 = v14;
  if (v14)
  {
    v16 = mlir::ValueRange::offset_base(&v19, v14);
    v17 = v20;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == v15 + v14)
  {
    return 0;
  }

  v19 = v16;
  v20 = 0;
  return mlir::ValueRange::dereference_iterator(&v19, 0);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v2 = *a1;
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
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  Slow[1] = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4mpsx6detail29TypeWithStaticSubtypesStorageILj1EEEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_8ListTypeEJRNSt3__15arrayINS1_4TypeELm1EEEEEENSE_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS6_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *std::__function::__func<mlir::mpsx::anonymous namespace::$_2,std::allocator<mlir::mpsx::anonymous namespace::$_2>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B170F0;
  return result;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::ANEOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::GPUOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::CPUOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::StitchedOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t *a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
  {
    v2 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v3 = *a1;
    v4 = *(*a1 + 8);
    if (v4 >= *(*a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(*a1, v3 + 16, v4 + 1, 8);
      LODWORD(v4) = *(v3 + 8);
    }

    *(*v3 + 8 * v4) = v2;
    ++*(v3 + 8);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), Slow);
  }

  return Slow;
}

void OUTLINED_FUNCTION_9_14(void *a1@<X8>, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a2 = a1;
  a6 = 259;

  mlir::OpState::emitOpError(&a12, &a2, &a15);
}

void OUTLINED_FUNCTION_10_16(void *a1@<X8>, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v3 = a1;
  LOWORD(v8) = 259;

  mlir::OpState::emitOpError(va1, va, va2);
}

void OUTLINED_FUNCTION_11_12(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v8 = a1;
  LOWORD(v13) = 259;

  mlir::OpState::emitOpError(v6, va, va1);
}

void OUTLINED_FUNCTION_32_10()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v1 + 40, v0 + 1, 24);
}

void OUTLINED_FUNCTION_62_4(void *a1@<X8>, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v3 = a1;
  LOWORD(v8) = 259;

  mlir::OpState::emitOpError(va1, va, va2);
}

unint64_t OUTLINED_FUNCTION_67_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(va, 4);
}

unint64_t OUTLINED_FUNCTION_68_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(va, 4);
}

void OUTLINED_FUNCTION_69_5(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_70_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, &a27, v27 + 1, 24);
}

void OUTLINED_FUNCTION_71_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a13 = 259;

  mlir::OpState::emitOpError(&a19, &a9, &a22);
}

void OUTLINED_FUNCTION_73_4(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  operator delete(a1);
}

unint64_t OUTLINED_FUNCTION_89_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(va, 5);
}

unint64_t OUTLINED_FUNCTION_90_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(va, 5);
}

BOOL mlir::mpsx::isMPSXType(uint64_t a1)
{
  v1 = *(*a1 + 136);
  {
    v6 = v1;
    v7 = a1;
    v1 = v6;
    a1 = v7;
  }

  if (v1 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  v2 = *(*a1 + 136);
  v3 = v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v4 = v3 ? a1 : 0;
  v9 = v4;
  if (!v3)
  {
    return 0;
  }

  ElementType = mlir::TensorType::getElementType(&v9);
  return mlir::Type::isIntOrFloat(&ElementType);
}

uint64_t mlir::mpsx::MPSXDialect::parseType(uint64_t a1, mlir::AsmParser *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  if (!mlir::AsmParser::parseKeyword(this, &v22))
  {
    return 0;
  }

  v4 = (*(*this + 16))(this);
  v5 = (*(*this + 48))(this, v4);
  if (v23 != 4)
  {
    v6 = v22;
    goto LABEL_12;
  }

  v6 = v22;
  if (*v22 != 1953720684)
  {
LABEL_12:
    v28 = 1283;
    v25 = "unknown MPS type: ";
    v27[0] = v6;
    v27[1] = v23;
    mlir::emitError(v5, &v25, v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v35;
        v12 = __p;
        if (v35 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v35 = v10;
        operator delete(v12);
      }

      v13 = v32;
      if (v32)
      {
        v14 = v33;
        v15 = v32;
        if (v33 != v32)
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
          v15 = v32;
        }

        v33 = v13;
        operator delete(v15);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    return 0;
  }

  v7 = *(a1 + 32);
  if (((*(*this + 160))(this) & 1) == 0)
  {
    return 0;
  }

  v25 = v27;
  v26 = 0x100000000;
  do
  {
    v24 = 0;
    if (!mlir::AsmParser::parseType<mlir::Type>(this, &v24))
    {
      result = 0;
      goto LABEL_38;
    }

    v8 = v24;
    v9 = v26;
    if (v26 >= HIDWORD(v26))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
      v9 = v26;
    }

    *(v25 + v9) = v8;
    LODWORD(v26) = v26 + 1;
  }

  while (((*(*this + 128))(this) & 1) != 0);
  v19 = (*(*this + 168))(this);
  v20 = v19;
  result = 0;
  if ((v20 & 1) != 0 && v26 == 1)
  {
    result = mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(v25, 1, v7);
  }

LABEL_38:
  if (v25 != v27)
  {
    v21 = result;
    free(v25);
    return v21;
  }

  return result;
}

void *mlir::mpsx::MPSXDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*a2 + 136);
    {
      v12 = a2;
      a2 = v12;
    }

    if (v4 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*a3 + 16))(a3);
  v7 = v6[4];
  if (v6[3] - v7 > 3uLL)
  {
    *v7 = 1953720684;
    v6[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v6, "list", 4uLL);
  }

  v8 = (*(*a3 + 16))(a3);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, "<", 1uLL);
  }

  else
  {
    *v9 = 60;
    ++v8[4];
  }

  (*(*a3 + 32))(a3, *(v5 + 8));
  result = (*(*a3 + 16))(a3);
  v11 = result[4];
  if (result[3] == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++result[4];
  }

  return result;
}

BOOL mlir::AsmParser::parseType<mlir::Type>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  *a2 = v18;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::mps_spi::MPSSPIDialect::initialize(int32x2_t *this)
{
  mlir::Dialect::addOperations<mlir::mps_spi::RMSNormOp,mlir::mps_spi::ScaledDotProductAttentionOp,mlir::mps_spi::StridedArrayViewOp>(this);
  mlir::Dialect::addAttribute<mlir::mps_spi::DeviceDescriptorOptionsAttr>(this);
  v2 = operator new(0x30uLL);
  {
    v5 = v2;
    mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>();
    v2 = v5;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id;
  v2[1] = this;
  v2[2] = v3;
  *v2 = &unk_1F5B17560;
  v2[3] = &unk_1F5B01238;
  v2[4] = 1;
  *(v2 + 10) = 3;
  v6 = v2;
  mlir::Dialect::addInterface(this, &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

mlir::mps_spi::MPSSPIDialect *mlir::mps_spi::MPSSPIDialect::MPSSPIDialect(mlir::mps_spi::MPSSPIDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "mps_spi", 7, a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id);
  *v3 = &unk_1F5B17138;
  mlir::mps_spi::MPSSPIDialect::initialize(v3);
  return this;
}

void sub_1E001EDD8(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::Dialect::addOperations<mlir::mps_spi::RMSNormOp,mlir::mps_spi::ScaledDotProductAttentionOp,mlir::mps_spi::StridedArrayViewOp>(uint64_t a1)
{
  v2 = operator new(0x70uLL);
  v8 = mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::Model(v2, a1);
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  v3 = v8;
  v8 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = operator new(0x70uLL);
  v8 = mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::Model(v4, a1);
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = operator new(0x70uLL);
  v8 = mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::Model(v6, a1);
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps_spi::StridedArrayViewOp::getAttributeNames(void)::attrNames, 4);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::mps_spi::MPSSPIDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8);
    v10 = a3;
    v11 = v8;
    if (a3)
    {
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(a2, a5, &v12, &v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return 0;
}

llvm::raw_ostream *mlir::mps_spi::operator<<(llvm::raw_ostream *a1, unsigned int *a2)
{
  v3 = llvm::raw_ostream::operator<<(a1, a2[2]);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    v3 = llvm::raw_ostream::write(v3, ".", 1uLL);
  }

  else
  {
    *v4 = 46;
    ++*(v3 + 4);
  }

  v5 = llvm::raw_ostream::operator<<(v3, a2[3]);
  v6 = *(v5 + 4);
  if (*(v5 + 3) == v6)
  {
    v5 = llvm::raw_ostream::write(v5, ".", 1uLL);
  }

  else
  {
    *v6 = 46;
    ++*(v5 + 4);
  }

  v7 = a2[4];

  return llvm::raw_ostream::operator<<(v5, v7);
}

void mlir::mps_spi::ScaledDotProductAttentionOp::downgradeToVersion(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v22[0] = &unk_1F5B01218;
  v22[1] = 1;
  v23 = 0;
  if (*(a2 + 8))
  {
    v5 = *(v4 + 36);
    v6 = v4 - 16;
    if (!v5)
    {
      v6 = 0;
    }

    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = 1;
  }

  else
  {
    v15[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v15[1] = 97;
    v15[2] = v19;
    v15[3] = 2;
    v16 = 1;
    v17[0] = &unk_1F5B171B8;
    v17[1] = a2;
    v18[0] = &unk_1F5B171E8;
    v18[1] = v22;
    v19[0] = v17;
    v19[1] = v18;
    v21 = 263;
    v20 = v15;
    mlir::OpState::emitOpError(a1, &v20, v24);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v30;
        v9 = __p;
        if (v30 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v30 = v7;
        operator delete(v9);
      }

      v10 = v27;
      if (v27)
      {
        v11 = v28;
        v12 = v27;
        if (v28 != v27)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v27;
        }

        v28 = v10;
        operator delete(v12);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }
}

void mlir::mps_spi::RMSNormOp::downgradeToVersion(uint64_t *a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v23[0] = &unk_1F5B01218;
  v23[1] = 1;
  v24 = 1;
  v5 = a2[2];
  if (v5 && (v5 != 1 || a2[3] || a2[4]))
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

void mlir::mps_spi::StridedArrayViewOp::downgradeToVersion(uint64_t *a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v23[0] = &unk_1F5B01218;
  v23[1] = 1;
  v24 = 3;
  v5 = a2[2];
  if (v5 && (v5 != 1 || a2[3] || a2[4] > 2u))
  {
    v14 = *(v4 + 36);
    v15 = v4 - 16;
    if (!v14)
    {
      v15 = 0;
    }

    *a3 = v15;
    *(a3 + 8) = v14;
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

      v6 = __p;
      if (__p)
      {
        v7 = v31;
        v8 = __p;
        if (v31 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v31 = v6;
        operator delete(v8);
      }

      v9 = v28;
      if (v28)
      {
        v10 = v29;
        v11 = v28;
        if (v29 != v28)
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
          v11 = v28;
        }

        v29 = v9;
        operator delete(v11);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

uint64_t mlir::mps_spi::ScaledDotProductAttentionOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = a4;
  v42 = a5;
  if (!a5)
  {
    v14 = mlir::Float32Type::get(a1, a2);
    v15 = mlir::UnrankedTensorType::get(v14);
    v16 = *(a11 + 8);
    if (v16 >= *(a11 + 12))
    {
      v33 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v16 + 1, 8);
      v15 = v33;
      LODWORD(v16) = *(a11 + 8);
    }

    *(*a11 + 8 * v16) = v15;
    goto LABEL_24;
  }

  v12 = (*(mlir::ValueRange::dereference_iterator(&v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8))
  {
    v12 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_19;
  }

  v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  v36 = v12;
  v37 = v13;
  if (!v12 || v42 <= 2)
  {
LABEL_19:
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v12);
    if (!ElementTypeOrSelf)
    {
LABEL_20:
      ElementTypeOrSelf = mlir::Float32Type::get(a1, v28);
    }

LABEL_21:
    v29 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v30 = *(a11 + 8);
    if (v30 >= *(a11 + 12))
    {
      v32 = v29;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v30 + 1, 8);
      v29 = v32;
      v30 = *(a11 + 8);
    }

    *(*a11 + 8 * v30) = v29;
LABEL_24:
    ++*(a11 + 8);
    return 1;
  }

  v17 = (*(mlir::ValueRange::dereference_iterator(&v41, 2) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8))
  {
    v34 = 0;
    v35 = 0;
    goto LABEL_19;
  }

  v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  v34 = v17;
  v35 = v18;
  if (!v17)
  {
    goto LABEL_19;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v36) || (mlir::CallOpInterface::getArgOperands(&v34) & 1) == 0)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v36);
    if (!ElementTypeOrSelf)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v36);
  llvm::SmallVector<long long,4u>::SmallVector<long long,void>(&v38, ArgAttrsAttr, v20);
  v21 = mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  v23 = *(v21 + 8 * v22 - 8);
  v24 = v38;
  v25 = v39;
  *(v38 + v39 - 1) = v23;
  v26 = mlir::ShapedType::clone(&v36, v24, v25);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v26);
  if (v38 != &v40)
  {
    free(v38);
  }

  return 1;
}

BOOL mlir::mps_spi::ScaledDotProductAttentionOp::verify(mlir::mps_spi::ScaledDotProductAttentionOp *this)
{
  v149 = *MEMORY[0x1E69E9840];
  v2 = *(*this + 72);
  v3 = *(v2[3] + 8);
  v4 = (*(v2[7] + 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  v135 = v5;
  v136 = v4;
  v6 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  v134 = v6;
  v7 = (v3 & 0xFFFFFFFFFFFFFFF8);
  v137 = (v3 & 0xFFFFFFFFFFFFFFF8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v132 = v7;
    v133 = v8;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v130 = v4;
    v131 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v132 = v3 & 0xFFFFFFFFFFFFFFF8;
  v133 = 0;
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  v130 = v4;
  v131 = v9;
  if (v5)
  {
LABEL_4:
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:
  v129[0] = v5;
  v129[1] = v10;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v132);
  v12 = mlir::CallOpInterface::getArgOperands(&v130);
  v13 = mlir::CallOpInterface::getArgOperands(v129);
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v14 = (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v138 = v14;
  v139 = v15;
  if ((mlir::CallOpInterface::getArgOperands(&v138) & 1) == 0)
  {
    v111 = "failed: expected scale to be scalar but it is unranked";
    v112 = 54;
    v113 = 0;
    v114 = 0;
    LOBYTE(v115) = 1;
    v123 = 263;
    v122[0] = &v111;
    mlir::OpState::emitOpError(this, v122, &v138);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
    if (v138)
    {
      mlir::InFlightDiagnostic::report(&v138);
    }

    if (v148 == 1)
    {
      if (v147 != &v148)
      {
        free(v147);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v146;
        v31 = __p;
        if (v146 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v146 = v29;
        operator delete(v31);
      }

      v24 = v143;
      if (!v143)
      {
        goto LABEL_115;
      }

      v32 = v144;
      v26 = v143;
      if (v144 == v143)
      {
        goto LABEL_114;
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

      while (v32 != v24);
      goto LABEL_113;
    }

    return v20;
  }

  if (ArgOperands)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
    v18 = v17;
    mlir::CallableOpInterface::getArgAttrsAttr(&v132);
    if (v19 <= 1)
    {
      v111 = "failed: expected query to have at least two dimensions but got {0}";
      v112 = 66;
      v113 = &v118;
      v114 = 1;
      LOBYTE(v115) = 1;
      v116 = &unk_1F5B15E08;
      v117 = &v137;
      v118 = &v116;
      v123 = 263;
      v122[0] = &v111;
      mlir::OpState::emitOpError(this, v122, &v138);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v148 == 1)
      {
        if (v147 != &v148)
        {
          free(v147);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v146;
          v23 = __p;
          if (v146 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v146 = v21;
          operator delete(v23);
        }

        v24 = v143;
        if (!v143)
        {
          goto LABEL_115;
        }

        v25 = v144;
        v26 = v143;
        if (v144 == v143)
        {
LABEL_114:
          v144 = v24;
          operator delete(v26);
LABEL_115:
          if (v141 != &v142)
          {
            free(v141);
          }

          return v20;
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
LABEL_113:
        v26 = v143;
        goto LABEL_114;
      }

      return v20;
    }

    v128 = *(ArgAttrsAttr + 8 * v18 - 8);
  }

  if (!v12)
  {
    v45 = 0;
    v46 = 0;
    if (!v13)
    {
LABEL_84:
      v58 = 0;
      v59 = 0;
      goto LABEL_86;
    }

LABEL_66:
    v47 = mlir::CallableOpInterface::getArgAttrsAttr(v129);
    v49 = v48;
    mlir::CallableOpInterface::getArgAttrsAttr(v129);
    if (v50 <= 1)
    {
      v111 = "failed: expected value to have at least two dimensions but got {0}";
      v112 = 66;
      v113 = &v118;
      v114 = 1;
      LOBYTE(v115) = 1;
      v116 = &unk_1F5B15E08;
      v117 = &v135;
      v118 = &v116;
      v123 = 263;
      v122[0] = &v111;
      mlir::OpState::emitOpError(this, v122, &v138);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v148 == 1)
      {
        if (v147 != &v148)
        {
          free(v147);
        }

        v51 = __p;
        if (__p)
        {
          v52 = v146;
          v53 = __p;
          if (v146 != __p)
          {
            do
            {
              v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
            }

            while (v52 != v51);
            v53 = __p;
          }

          v146 = v51;
          operator delete(v53);
        }

        v24 = v143;
        if (!v143)
        {
          goto LABEL_115;
        }

        v54 = v144;
        v26 = v143;
        if (v144 == v143)
        {
          goto LABEL_114;
        }

        do
        {
          v56 = *--v54;
          v55 = v56;
          *v54 = 0;
          if (v56)
          {
            operator delete[](v55);
          }
        }

        while (v54 != v24);
        goto LABEL_113;
      }

      return v20;
    }

    v60 = v47 + 8 * v49;
    v58 = *(v60 - 8);
    v125 = v58;
    v59 = *(v60 - 16);
    v124 = v59;
LABEL_86:
    v61 = ArgOperands ^ 1;
    if (((ArgOperands ^ 1 | v12 ^ 1) & 1) == 0 && v128 != 0x8000000000000000 && v46 != 0x8000000000000000 && v128 != v46)
    {
      v111 = "failed: query and key must have matching inner dimension but have {0} and {1}";
      v112 = 77;
      v113 = &v120;
      v114 = 2;
      LOBYTE(v115) = 1;
      v116 = &unk_1F5B17218;
      v117 = &v128;
      v118 = &unk_1F5B17218;
      v119 = &v127;
      v120 = &v116;
      v121 = &v118;
      v123 = 263;
      v122[0] = &v111;
      mlir::OpState::emitOpError(this, v122, &v138);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v148 == 1)
      {
        if (v147 != &v148)
        {
          free(v147);
        }

        v72 = __p;
        if (__p)
        {
          v73 = v146;
          v74 = __p;
          if (v146 != __p)
          {
            do
            {
              v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
            }

            while (v73 != v72);
            v74 = __p;
          }

          v146 = v72;
          operator delete(v74);
        }

        v24 = v143;
        if (!v143)
        {
          goto LABEL_115;
        }

        v75 = v144;
        v26 = v143;
        if (v144 == v143)
        {
          goto LABEL_114;
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

        while (v75 != v24);
        goto LABEL_113;
      }

      return v20;
    }

    v62 = v13 ^ 1;
    if (((v12 ^ 1 | v13 ^ 1) & 1) == 0 && v45 != 0x8000000000000000 && v59 != 0x8000000000000000 && v45 != v59)
    {
      v111 = "failed: key and value must have matching outer dimension but have {0} and {1}";
      v112 = 77;
      v113 = &v120;
      v114 = 2;
      LOBYTE(v115) = 1;
      v116 = &unk_1F5B17218;
      v117 = &v126;
      v79 = &unk_1F5B17218;
      v80 = &v124;
LABEL_158:
      v118 = v79;
      v119 = v80;
      v120 = &v116;
      v121 = &v118;
      v123 = 263;
      v122[0] = &v111;
      mlir::OpState::emitOpError(this, v122, &v138);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v148 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v139);
      }

      return v20;
    }

    v63 = v61 | v62;
    if (((v61 | v62) & 1) == 0 && v128 != 0x8000000000000000 && v58 != 0x8000000000000000 && v128 != v58)
    {
      v111 = "failed: query and value must have matching inner dimension but have {0} and {1}";
      v112 = 79;
      v113 = &v120;
      v114 = 2;
      LOBYTE(v115) = 1;
      v116 = &unk_1F5B17218;
      v117 = &v128;
      v79 = &unk_1F5B17218;
      v80 = &v125;
      goto LABEL_158;
    }

    if (((ArgOperands ^ 1 | v12 ^ 1) & 1) != 0 || (mlir::CallableOpInterface::getArgAttrsAttr(&v132), v64 < 3) || (mlir::CallableOpInterface::getArgAttrsAttr(&v130), v65 < 3))
    {
      v70 = 0;
      v81 = 0;
      if (v63)
      {
        goto LABEL_153;
      }
    }

    else
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v132);
      v67 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v132) + 8 * (v66 - 3));
      mlir::CallableOpInterface::getArgAttrsAttr(&v130);
      v69 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v130) + 8 * (v68 - 3));
      v70 = v67 / v69;
      if (v67 % v69)
      {
        v71 = "failed: key heads dimensions do not represent a valid group for the head dimensions available in the query tensor";
LABEL_136:
        v111 = v71;
        v115 = 259;
        v90 = &v111;
        goto LABEL_165;
      }

      v88 = v136;
      if (v136)
      {
        v89 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
      }

      else
      {
        v89 = 0;
      }

      v111 = v88;
      v112 = v89;
      v93 = mlir::CallableOpInterface::getArgAttrsAttr(&v111);
      llvm::SmallVector<long long,6u>::SmallVector(&v138, v93, v94);
      v95 = v139;
      v96 = v138;
      *(v138 + v139 - 3) *= v70;
      v97 = v136;
      if (v136)
      {
        v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
        v96 = v138;
        v95 = v139;
      }

      else
      {
        v98 = 0;
      }

      v111 = v97;
      v112 = v98;
      v136 = mlir::ShapedType::clone(&v111, v96, v95);
      if (v138 != &v140)
      {
        free(v138);
      }

      v81 = 1;
      if (v63)
      {
LABEL_153:
        v110 = 0;
        {
          v111 = "failed: query with type {0} cannot be multiplied with the key (transposed) of type {1}";
          v112 = 86;
          v113 = &v120;
          v114 = 2;
          LOBYTE(v115) = 1;
          v116 = &unk_1F5B15E08;
          v117 = &v137;
          v79 = &unk_1F5B15E08;
          v80 = &v136;
          goto LABEL_158;
        }

        v105 = v110;
        {
          if (mlir::OpTrait::util::getBroadcastedType(v105, v6, 0))
          {
            return 1;
          }

          v106 = "failed: mask with type {0} is not broadcastable with the product of query and key transpose of type {1}";
          v107 = &v134;
          v108 = &v110;
        }

        else
        {
          v106 = "failed: product of query and key transpose of type {0} cannot be multiplied with value of type {1}";
          v107 = &v110;
          v108 = &v135;
        }

        llvm::formatv<mlir::Type &,mlir::Type &>(v106, v107, v108, &v111);
        v123 = 263;
        v122[0] = &v111;
        v90 = v122;
LABEL_165:
        mlir::OpState::emitOpError(this, v90, &v138);
        v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v138);
        return v20;
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v132);
    if (v82 >= 3)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v129);
      if (v83 >= 3)
      {
        mlir::CallableOpInterface::getArgAttrsAttr(&v132);
        v85 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v132) + 8 * (v84 - 3));
        mlir::CallableOpInterface::getArgAttrsAttr(v129);
        v87 = *(mlir::CallableOpInterface::getArgAttrsAttr(v129) + 8 * (v86 - 3));
        if (v85 % v87)
        {
          v71 = "failed: value heads dimensions do not represent a valid group for the head dimensions available in the query tensor";
          goto LABEL_136;
        }

        if (v81 && v70 != v85 / v87)
        {
          v71 = "failed: grouping for the value tensor does not match the one available on the key tensor";
          goto LABEL_136;
        }

        v91 = v135;
        if (v135)
        {
          v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
        }

        else
        {
          v92 = 0;
        }

        v111 = v91;
        v112 = v92;
        v99 = mlir::CallableOpInterface::getArgAttrsAttr(&v111);
        llvm::SmallVector<long long,6u>::SmallVector(&v138, v99, v100);
        v101 = v139;
        v102 = v138;
        *(v138 + v139 - 3) = v85;
        v103 = v135;
        if (v135)
        {
          v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
          v102 = v138;
          v101 = v139;
        }

        else
        {
          v104 = 0;
        }

        v111 = v103;
        v112 = v104;
        v135 = mlir::ShapedType::clone(&v111, v102, v101);
        if (v138 != &v140)
        {
          free(v138);
        }
      }
    }

    goto LABEL_153;
  }

  v35 = mlir::CallableOpInterface::getArgAttrsAttr(&v130);
  v37 = v36;
  mlir::CallableOpInterface::getArgAttrsAttr(&v130);
  if (v38 > 1)
  {
    v57 = v35 + 8 * v37;
    v46 = *(v57 - 8);
    v127 = v46;
    v45 = *(v57 - 16);
    v126 = v45;
    if (!v13)
    {
      goto LABEL_84;
    }

    goto LABEL_66;
  }

  v111 = "failed: expected key to have at least two dimensions but got {0}";
  v112 = 64;
  v113 = &v118;
  v114 = 1;
  LOBYTE(v115) = 1;
  v116 = &unk_1F5B15E08;
  v117 = &v136;
  v118 = &v116;
  v123 = 263;
  v122[0] = &v111;
  mlir::OpState::emitOpError(this, v122, &v138);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
  if (v138)
  {
    mlir::InFlightDiagnostic::report(&v138);
  }

  if (v148 == 1)
  {
    if (v147 != &v148)
    {
      free(v147);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v146;
      v41 = __p;
      if (v146 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v146 = v39;
      operator delete(v41);
    }

    v24 = v143;
    if (!v143)
    {
      goto LABEL_115;
    }

    v42 = v144;
    v26 = v143;
    if (v144 == v143)
    {
      goto LABEL_114;
    }

    do
    {
      v44 = *--v42;
      v43 = v44;
      *v42 = 0;
      if (v44)
      {
        operator delete[](v43);
      }
    }

    while (v42 != v24);
    goto LABEL_113;
  }

  return v20;
}

uint64_t mlir::mps_spi::anonymous namespace::inferMatMulResultType(mlir *a1, AttributeStorage *a2, void *a3, unint64_t a4, uint64_t *a5, int a6)
{
  v9 = a3;
  v85 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a3);
  v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v9 = 0;
  }

  v72[0] = v9;
  v72[1] = v13;
  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8);
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8);
  }

  else
  {
    a4 = 0;
  }

  v71[0] = a4;
  v71[1] = v14;
  if (!(v9 | a4) || !mlir::CallOpInterface::getArgOperands(v72) || (mlir::CallOpInterface::getArgOperands(v71) & 1) == 0)
  {
    *a5 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    return 1;
  }

  v73 = v75;
  v74 = 0x400000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v72);
  v17 = v16;
  v19 = mlir::CallableOpInterface::getArgAttrsAttr(v71);
  v82 = &v84;
  v83 = 0x400000000;
  v70 = v17;
  v79 = v81;
  v80 = 0x400000000;
  if (v17 == 1)
  {
    v21 = *ArgAttrsAttr;
    v84.i64[0] = 1;
    v84.i64[1] = v21;
LABEL_16:
    LODWORD(v83) = 2;
    if (v18 != 1)
    {
      goto LABEL_17;
    }

LABEL_30:
    v32 = *v19;
    LODWORD(v80) = 0;
    if (HIDWORD(v80) > 1)
    {
      v34 = 0;
    }

    else
    {
      v33 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, 2uLL, 8);
      v18 = v33;
      v34 = v80;
    }

    v31 = v79 + 8 * v34;
    *v31 = v32;
    goto LABEL_34;
  }

  if (!v17)
  {
    v84 = vdupq_n_s64(1uLL);
    goto LABEL_16;
  }

  v67 = v18;
  v76 = v78;
  v77 = 0x400000000;
  v23 = (8 * v17) >> 3;
  if (v23 < 5)
  {
    v24 = 0;
    v25 = v78;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v23, 8);
    v24 = v77;
    v25 = v76;
  }

  memcpy(&v25[8 * v24], ArgAttrsAttr, 8 * v17);
  LODWORD(v77) = v77 + v17;
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v82, &v76);
  if (v76 != v78)
  {
    free(v76);
  }

  v18 = v67;
  if (v67 == 1)
  {
    goto LABEL_30;
  }

LABEL_17:
  if (!v18)
  {
    LODWORD(v80) = 0;
    if (HIDWORD(v80) > 1)
    {
      v22 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, 2uLL, 8);
      v18 = 0;
      v22 = v80;
    }

    v31 = v79 + 8 * v22;
    *v31 = 1;
LABEL_34:
    *(v31 + 1) = 1;
    v35 = v80 + 2;
    LODWORD(v80) = v80 + 2;
    goto LABEL_41;
  }

  v26 = v18;
  v76 = v78;
  v77 = 0x400000000;
  v27 = (8 * v18) >> 3;
  v28 = v18;
  if (v27 < 5)
  {
    v29 = 0;
    v30 = v78;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v27, 8);
    v29 = v77;
    v30 = v76;
  }

  memcpy(&v30[8 * v29], v19, v26 * 8);
  LODWORD(v77) = v77 + ((v26 * 8) >> 3);
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v79, &v76);
  if (v76 != v78)
  {
    free(v76);
  }

  v35 = v80;
  if (a6)
  {
    v36 = v79 + 8 * v80;
    *(v36 - 1) = v19[v26 - 2];
    *(v36 - 2) = v19[v26 - 1];
  }

  v18 = v28;
LABEL_41:
  LODWORD(v74) = 0;
  if (v83 <= v35)
  {
    v37 = 0;
    if (v35)
    {
      v41 = v79;
      v42 = 8 * v35;
      do
      {
        v43 = *v41;
        if (v37 >= HIDWORD(v74))
        {
          v69 = v18;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v37 + 1, 8);
          v18 = v69;
          v37 = v74;
        }

        *(v73 + v37) = v43;
        v37 = v74 + 1;
        LODWORD(v74) = v74 + 1;
        ++v41;
        v42 -= 8;
      }

      while (v42);
    }
  }

  else
  {
    v37 = 0;
    v38 = v82;
    v39 = 8 * v83;
    do
    {
      v40 = *v38;
      if (v37 >= HIDWORD(v74))
      {
        v68 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v37 + 1, 8);
        v18 = v68;
        v37 = v74;
      }

      *(v73 + v37) = v40;
      v37 = v74 + 1;
      LODWORD(v74) = v74 + 1;
      ++v38;
      v39 -= 8;
    }

    while (v39);
  }

  v44 = v82;
  v45 = v83;
  v46 = &v82->i8[8 * v83];
  v47 = v79;
  v48 = v80;
  v49 = v79 + 8 * v80;
  v50 = v73;
  v51 = v73 + 8 * v37;
  *(v51 - 1) = *(v49 - 1);
  v52 = v49 - 16;
  *(v51 - 2) = *(v46 - 2);
  v53 = v46 - 16 == v44 || v52 == v47;
  if (v53)
  {
LABEL_73:
    if (v70 <= 1)
    {
      v61 = *(v51 - 1);
      LODWORD(v74) = --v37;
      v50[v37 - 1] = v61;
    }

    if (v18 > 1)
    {
      v62 = 0;
      if (v47 == v81)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v62 = 0;
      LODWORD(v74) = v37 - 1;
      if (v47 == v81)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v54 = 8 * v45 - 24;
  v55 = &v50[v37 - 3];
  v56 = 8 * v48 - 24;
  while (1)
  {
    v57 = *&v44[v54];
    v58 = *&v47[v56];
    if (v57 == 0x8000000000000000)
    {
      if (v58 <= 1)
      {
        v57 = 0x8000000000000000;
      }

      else
      {
        v57 = *&v47[v56];
      }

      goto LABEL_71;
    }

    if (v58 == 0x8000000000000000)
    {
      if (v57 <= 1)
      {
        v57 = 0x8000000000000000;
      }

      goto LABEL_71;
    }

    if (v57 != v58 && v58 != 1)
    {
      v53 = v57 == 1;
      v57 = *&v47[v56];
      if (!v53)
      {
        break;
      }
    }

LABEL_71:
    *v55-- = v57;
    if (v54)
    {
      v54 -= 8;
      v60 = v56;
      v56 -= 8;
      if (v60)
      {
        continue;
      }
    }

    goto LABEL_73;
  }

  LODWORD(v74) = 0;
  v65.var0.var0 = a2;
  v66 = mlir::emitOptionalError<char const(&)[66]>(a1, v65, "incompatible dimensions");
  v47 = v79;
  v62 = !v66;
  if (v79 != v81)
  {
LABEL_79:
    free(v47);
  }

LABEL_80:
  if (v82 != &v84)
  {
    free(v82);
  }

  if (v62)
  {
    v63 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    result = 0;
  }

  else
  {
    v63 = mlir::RankedTensorType::get(v73, v74, ElementTypeOrSelf, 0);
    result = 1;
  }

  *a5 = v63;
  if (v73 != v75)
  {
    v64 = result;
    free(v73);
    return v64;
  }

  return result;
}

const char *llvm::formatv<mlir::Type &,mlir::Type &>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __s;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v6;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_1F5B15E08;
  *(a4 + 48) = a2;
  *(a4 + 56) = &unk_1F5B15E08;
  *(a4 + 64) = a3;
  *(a4 + 80) = a4 + 56;
  return __s;
}

uint64_t mlir::mps_spi::anonymous namespace::isCompatibleReturnTypesDefaultImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = *(a5 + 24);
  if (!v9)
  {
    v14 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  if (v9 != a5)
  {
    v10 = (*(*v9 + 16))(v9);
    v14 = v10;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v14 = v13;
  (*(*v9 + 24))(v9, v13);
  v10 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v10 == v13)
  {
    v18 = v17;
    (*(*v10 + 24))(v10, v17);
  }

  else
  {
    v18 = (*(*v10 + 16))(v10);
  }

LABEL_10:
  {
    v11 = 1;
  }

  else
  {
    if (v14)
    {
      if (v14 == v13)
      {
        v16 = v15;
        (*(*v14 + 24))();
      }

      else
      {
        v16 = (*(*v14 + 16))();
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15)
    {
      (*(*v16 + 32))(v16);
    }

    else if (v16)
    {
      (*(*v16 + 40))();
    }
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  return v11;
}

BOOL mlir::mps_spi::RMSNormOp::verify(mlir::mps_spi::RMSNormOp *this)
{
  v59[6] = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v38[0] = v2;
  v38[1] = v3;
  v37[0] = 0;
  v37[1] = 0;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v38);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v5) != 1)
  {
    v11 = *(*(*this + 72) + 56);
    v39[0] = v37;
    v48[0] = v11;
    DefiningOp = mlir::Value::getDefiningOp(v48);
    if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v39, DefiningOp) || (mlir::ElementsAttr::isSplat(v37) & 1) == 0)
    {
      v39[0] = "requires epsilon to be a scalar";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, v48);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      if (v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
      }

      if (v56 != 1)
      {
        return v13;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v54;
        v16 = __p;
        if (v54 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v54 = v14;
        operator delete(v16);
      }

      v17 = v51;
      if (v51)
      {
        v18 = v52;
        v19 = v51;
        if (v52 != v51)
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
          v19 = v51;
        }

        v52 = v17;
        operator delete(v19);
      }

      v26 = v49;
      if (v49 == v50)
      {
        return v13;
      }

LABEL_35:
      free(v26);
      return v13;
    }
  }

  v6 = *this;
  v7 = *(v6 + 72);
  v8 = *(v7 + 88);
  v9 = (*(*(v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v47[0] = v9;
  v47[1] = v10;
  v57 = v59;
  v58 = 0x600000000;
  if (mlir::CallOpInterface::getArgOperands(v47) && (mlir::matchConstantWithIntVector<long long>(v8, &v57) & 1) != 0 && v58)
  {
    v22 = v57;
    v23 = 8 * v58;
    while (1)
    {
      v46 = *v22;
      v24 = v46;
      mlir::CallableOpInterface::getArgAttrsAttr(v47);
      mlir::tryGetPositiveAxis(v24, v60, 0, 0, 0);
      if ((v25 & 1) == 0)
      {
        break;
      }

      ++v22;
      v23 -= 8;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(v47);
    v39[0] = "failed: constant axis ({0}) is not within range for the input tensor rank ({1})";
    v39[1] = 79;
    v39[2] = v43;
    v39[3] = 2;
    LOBYTE(v40) = 1;
    v41[0] = &unk_1F5B17218;
    v41[1] = &v46;
    v42[0] = &unk_1F5B17290;
    v42[1] = v28;
    v43[0] = v41;
    v43[1] = v42;
    v45 = 263;
    v44 = v39;
    mlir::Operation::emitOpError(v6, &v44, v48);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
    if (v48[0])
    {
      mlir::InFlightDiagnostic::report(v48);
    }

    if (v56)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v54;
        v31 = __p;
        if (v54 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v54 = v29;
        operator delete(v31);
      }

      v32 = v51;
      if (v51)
      {
        v33 = v52;
        v34 = v51;
        if (v52 != v51)
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
          v34 = v51;
        }

        v52 = v32;
        operator delete(v34);
      }

      if (v49 != v50)
      {
        free(v49);
      }
    }
  }

  else
  {
LABEL_33:
    v13 = 1;
  }

  v26 = v57;
  if (v57 != v59)
  {
    goto LABEL_35;
  }

  return v13;
}

void mlir::mps_spi::StridedArrayViewOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, int a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v43[0] = a5;
  v40 = v42;
  v41 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  v34 = v36;
  v35 = 0x600000000;
  v31 = v33;
  v32 = 0x600000000;
  v28 = v30;
  v29 = 0x600000000;
  v25 = v27;
  v26 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(v43, 1, &v31, &v40);
  mlir::dispatchIndexOpFoldResults(a6, a7, &v28, &v37);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v25, &v34);
  *(a2 + 192) = 0;
  v16 = *(a2 + 120);
  if (a12 + v16 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a12 + v16, 16);
    LODWORD(v16) = *(a2 + 120);
  }

  if (a12)
  {
    memcpy((*(a2 + 112) + 16 * v16), __src, 16 * a12);
    LODWORD(v16) = *(a2 + 120);
  }

  *(a2 + 120) = v16 + a12;
  mlir::ValueRange::ValueRange(v24, v31, v32);
  mlir::ValueRange::ValueRange(v23, v28, v29);
  mlir::ValueRange::ValueRange(v22, v25, v26);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v40, v41);
  v18 = mlir::Builder::getDenseI64ArrayAttr(a1, v37, v38);
  v19 = mlir::Builder::getDenseI64ArrayAttr(a1, v34, v35);
  mlir::mps_spi::StridedArrayViewOp::build(v19, a2, a3, a4, v24[0], v24[1], v23[0], v23[1], v22[0], v22[1], DenseI64ArrayAttr, v18, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }
}

void mlir::mps_spi::StridedArrayViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = a4;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v18 = mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2);
  v18[6] = 1;
  v18[7] = a6;
  v18[8] = a8;
  v18[9] = a10;
  *mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2) = a11;
  *(mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2) + 8) = a12;
  *(mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2) + 16) = a13;
  v19 = *(a2 + 72);
  if (v19 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v19 + 1, 8);
    LODWORD(v19) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v19) = a3;
  ++*(a2 + 72);
}

void mlir::mps_spi::StridedArrayViewOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void **a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void *__src, uint64_t a12)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v39 = v41;
  v40 = 0x400000000;
  v17 = (8 * a7) >> 3;
  if (v17 < 5)
  {
    v19 = 0;
    v20 = 0;
    v21 = 8 * a7;
    if (!a7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v17, 8);
    v19 = v40;
    v20 = v40;
    v21 = 8 * a7;
    if (!a7)
    {
      goto LABEL_8;
    }
  }

  v22 = (v39 + 8 * v19);
  v23 = v21;
  do
  {
    v24 = *a6++;
    *v22++ = mlir::Builder::getI64IntegerAttr(a1, v24) & 0xFFFFFFFFFFFFFFFBLL;
    v23 -= 8;
  }

  while (v23);
  v20 = v40;
LABEL_8:
  v42 = v44;
  *v43 = 0x600000000;
  LODWORD(v40) = v20 + (v21 >> 3);
  if (v40)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v42, &v39);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  v36 = v38;
  v37 = 0x400000000;
  v25 = (8 * a10) >> 3;
  if (v25 < 5)
  {
    v26 = 0;
    v27 = 0;
    v28 = 8 * a10;
    if (!a10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v25, 8);
    v26 = v37;
    v27 = v37;
    v28 = 8 * a10;
    if (!a10)
    {
      goto LABEL_19;
    }
  }

  v30 = (v36 + 8 * v26);
  v31 = v28;
  do
  {
    v32 = *a9++;
    *v30++ = mlir::Builder::getI64IntegerAttr(a1, v32) & 0xFFFFFFFFFFFFFFFBLL;
    v31 -= 8;
  }

  while (v31);
  v27 = v37;
LABEL_19:
  v39 = v41;
  v40 = 0x600000000;
  LODWORD(v37) = v27 + (v28 >> 3);
  if (v37)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v39, &v36);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1, a5);
  mlir::mps_spi::StridedArrayViewOp::build(a1, a2, a3, a4, I64IntegerAttr & 0xFFFFFFFFFFFFFFFBLL, v42, v43[0], v34, v39, v40, __src, a12);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }
}

BOOL mlir::mps_spi::StridedArrayViewOp::verify(mlir::Block ***this)
{
  v156 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v138 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = (v2 - 2);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v137 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  MemorySpace = mlir::BaseMemRefType::getMemorySpace(&v138);
  if (MemorySpace == mlir::MemRefType::getMemorySpace(&v137))
  {
    Value = mlir::ArrayAttr::getValue(&v137);
    v9 = v8;
    v145[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
    v10 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v145);
    if (v9)
    {
      v11 = 0;
      v12 = 8 * v9;
      while (1)
      {
        v13 = *(Value + 8 * v11);
        if (v13 != 0x8000000000000000)
        {
          v14 = *(v10 + 8 * v11);
          if (v14 != 0x8000000000000000 && v13 != v14)
          {
            break;
          }
        }

        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_61;
        }
      }

      v16 = v10;
      v141 = "expected result type with size = ";
      v144 = 259;
      mlir::OpState::emitError(this, &v141, v145);
      if (v145[0])
      {
        v17 = *(v16 + 8 * v11);
        LODWORD(v132) = 2;
        v133 = v17;
        v18 = &v132;
        v19 = v146;
        if (v147 >= v148)
        {
          if (v146 <= &v132 && v146 + 24 * v147 > &v132)
          {
            v121 = &v132 - v146;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
            v19 = v146;
            v18 = (v146 + v121);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
            v18 = &v132;
            v19 = v146;
          }
        }

        v20 = &v19[24 * v147];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v147;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v145, " instead of ");
      if (*v22)
      {
        v23 = *(v22 + 24);
        v24 = *(Value + 8 * v11);
        LODWORD(v132) = 2;
        v133 = v24;
        v25 = *(v22 + 32);
        v26 = &v132;
        if (v25 >= *(v22 + 36))
        {
          if (v23 <= &v132 && v23 + 24 * v25 > &v132)
          {
            v122 = &v132 - v23;
            v123 = v22;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v22 + 24, v22 + 40, v25 + 1, 24);
            v22 = v123;
            v23 = *(v123 + 24);
            v26 = &v122[v23];
          }

          else
          {
            v113 = v22;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v22 + 24, v22 + 40, v25 + 1, 24);
            v22 = v113;
            v23 = *(v113 + 24);
            v26 = &v132;
          }
        }

        v27 = v23 + 24 * *(v22 + 32);
        v28 = *v26;
        *(v27 + 16) = v26[2];
        *v27 = v28;
        ++*(v22 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v22, " in dim = ");
      if (*v29)
      {
        v30 = *(v29 + 24);
        LODWORD(v132) = 5;
        v133 = v11;
        v31 = *(v29 + 32);
        v32 = &v132;
        if (v31 >= *(v29 + 36))
        {
          if (v30 <= &v132 && v30 + 24 * v31 > &v132)
          {
            v124 = &v132 - v30;
            v125 = v29;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 24, v29 + 40, v31 + 1, 24);
            v29 = v125;
            v30 = *(v125 + 24);
            v32 = &v124[v30];
          }

          else
          {
            v114 = v29;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 24, v29 + 40, v31 + 1, 24);
            v29 = v114;
            v30 = *(v114 + 24);
            v32 = &v132;
          }
        }

        v33 = v30 + 24 * *(v29 + 32);
        v34 = *v32;
        *(v33 + 16) = v32[2];
        *v33 = v34;
        ++*(v29 + 32);
      }

      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v145[0])
      {
        mlir::InFlightDiagnostic::report(v145);
      }

      if (v155)
      {
        if (v154 != &v155)
        {
          free(v154);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v153;
          v38 = __p;
          if (v153 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v153 = v36;
          operator delete(v38);
        }

        v39 = v150;
        if (v150)
        {
          v40 = v151;
          v41 = v150;
          if (v151 == v150)
          {
            goto LABEL_86;
          }

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
LABEL_85:
          v41 = v150;
LABEL_86:
          v151 = v39;
          operator delete(v41);
          goto LABEL_87;
        }

        goto LABEL_87;
      }

      return v35;
    }

LABEL_61:
    v136 = 0;
    v141 = v143;
    v142 = 0x400000000;
    if (mlir::getStridesAndOffset(v137, &v141, &v136))
    {
      v145[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
      v63 = *mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v145);
      v131 = v63;
      if (v136 != 0x8000000000000000 && v63 != 0x8000000000000000 && v136 != v63)
      {
        v132 = "expected result type with offset = ";
        v135 = 259;
        mlir::OpState::emitError(this, &v132, v145);
        mlir::InFlightDiagnostic::operator<<<long long &>(v145, &v131);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v64, " instead of ");
        mlir::InFlightDiagnostic::operator<<<long long &>(v65, &v136);
        v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v145);
        goto LABEL_127;
      }

      v145[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
      v80 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v145);
      if (!v142)
      {
LABEL_122:
        v35 = 1;
        goto LABEL_127;
      }

      v81 = 0;
      v82 = v141;
      v83 = 8 * v142;
      while (1)
      {
        v84 = *(v141 + v81);
        if (v84 != 0x8000000000000000)
        {
          v85 = *(v80 + 8 * v81);
          if (v85 != 0x8000000000000000 && v84 != v85)
          {
            break;
          }
        }

        ++v81;
        v83 -= 8;
        if (!v83)
        {
          goto LABEL_122;
        }
      }

      v87 = v80;
      v132 = "expected result type with stride = ";
      v135 = 259;
      mlir::OpState::emitError(this, &v132, v145);
      if (v145[0])
      {
        v88 = *(v87 + 8 * v81);
        v139 = 2;
        v140 = v88;
        v89 = &v139;
        v90 = v146;
        if (v147 >= v148)
        {
          if (v146 <= &v139 && v146 + 24 * v147 > &v139)
          {
            v126 = &v139 - v146;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
            v90 = v146;
            v89 = (v146 + v126);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
            v89 = &v139;
            v90 = v146;
          }
        }

        v91 = &v90[24 * v147];
        v92 = *v89;
        *(v91 + 2) = *(v89 + 2);
        *v91 = v92;
        ++v147;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v145, " instead of ");
      if (*v93)
      {
        v94 = *(v93 + 24);
        v95 = v82[v81];
        v139 = 2;
        v140 = v95;
        v96 = *(v93 + 32);
        v97 = &v139;
        if (v96 >= *(v93 + 36))
        {
          if (v94 <= &v139 && v94 + 24 * v96 > &v139)
          {
            v127 = &v139 - v94;
            v128 = v93;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v93 + 24, v93 + 40, v96 + 1, 24);
            v93 = v128;
            v94 = *(v128 + 24);
            v97 = &v127[v94];
          }

          else
          {
            v115 = v93;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v93 + 24, v93 + 40, v96 + 1, 24);
            v93 = v115;
            v94 = *(v115 + 24);
            v97 = &v139;
          }
        }

        v98 = v94 + 24 * *(v93 + 32);
        v99 = *v97;
        *(v98 + 16) = *(v97 + 2);
        *v98 = v99;
        ++*(v93 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v93, " in dim = ");
      if (*v100)
      {
        v101 = *(v100 + 24);
        v139 = 5;
        v140 = v81;
        v102 = *(v100 + 32);
        v103 = &v139;
        if (v102 >= *(v100 + 36))
        {
          if (v101 <= &v139 && v101 + 24 * v102 > &v139)
          {
            v129 = &v139 - v101;
            v130 = v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v100 + 24, v100 + 40, v102 + 1, 24);
            v100 = v130;
            v101 = *(v130 + 24);
            v103 = &v129[v101];
          }

          else
          {
            v116 = v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v100 + 24, v100 + 40, v102 + 1, 24);
            v100 = v116;
            v101 = *(v116 + 24);
            v103 = &v139;
          }
        }

        v104 = v101 + 24 * *(v100 + 32);
        v105 = *v103;
        *(v104 + 16) = *(v103 + 2);
        *v104 = v105;
        ++*(v100 + 32);
      }

      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
      if (v145[0])
      {
        mlir::InFlightDiagnostic::report(v145);
      }

      if (v155)
      {
        if (v154 != &v155)
        {
          free(v154);
        }

        v106 = __p;
        if (__p)
        {
          v107 = v153;
          v108 = __p;
          if (v153 != __p)
          {
            do
            {
              v107 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v107 - 1);
            }

            while (v107 != v106);
            v108 = __p;
          }

          v153 = v106;
          operator delete(v108);
        }

        v74 = v150;
        if (!v150)
        {
          goto LABEL_125;
        }

        v109 = v151;
        v76 = v150;
        if (v151 == v150)
        {
LABEL_124:
          v151 = v74;
          operator delete(v76);
LABEL_125:
          if (v146 != v149)
          {
            free(v146);
          }

          goto LABEL_127;
        }

        do
        {
          v111 = *--v109;
          v110 = v111;
          *v109 = 0;
          if (v111)
          {
            operator delete[](v110);
          }
        }

        while (v109 != v74);
LABEL_123:
        v76 = v150;
        goto LABEL_124;
      }
    }

    else
    {
      v132 = "expected result type to have strided layout but found ";
      v135 = 259;
      mlir::OpState::emitError(this, &v132, v145);
      if (v145[0])
      {
        v67 = &v139;
        mlir::DiagnosticArgument::DiagnosticArgument(&v139, v137);
        v68 = v146;
        if (v147 >= v148)
        {
          if (v146 <= &v139 && v146 + 24 * v147 > &v139)
          {
            v119 = &v139 - v146;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
            v68 = v146;
            v67 = (v146 + v119);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
            v67 = &v139;
            v68 = v146;
          }
        }

        v69 = &v68[24 * v147];
        v70 = *v67;
        *(v69 + 2) = *(v67 + 2);
        *v69 = v70;
        ++v147;
      }

      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v145);
      if (v145[0])
      {
        mlir::InFlightDiagnostic::report(v145);
      }

      if (v155 == 1)
      {
        if (v154 != &v155)
        {
          free(v154);
        }

        v71 = __p;
        if (__p)
        {
          v72 = v153;
          v73 = __p;
          if (v153 != __p)
          {
            do
            {
              v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
            }

            while (v72 != v71);
            v73 = __p;
          }

          v153 = v71;
          operator delete(v73);
        }

        v74 = v150;
        if (!v150)
        {
          goto LABEL_125;
        }

        v75 = v151;
        v76 = v150;
        if (v151 == v150)
        {
          goto LABEL_124;
        }

        do
        {
          v78 = *--v75;
          v77 = v78;
          *v75 = 0;
          if (v78)
          {
            operator delete[](v77);
          }
        }

        while (v75 != v74);
        goto LABEL_123;
      }
    }

LABEL_127:
    v79 = v141;
    if (v141 != v143)
    {
LABEL_128:
      free(v79);
      return v35;
    }

    return v35;
  }

  v141 = "different memory spaces specified for source type ";
  v144 = 259;
  mlir::OpState::emitError(this, &v141, v145);
  if (v145[0])
  {
    v44 = &v132;
    mlir::DiagnosticArgument::DiagnosticArgument(&v132, v138);
    v45 = v146;
    if (v147 >= v148)
    {
      if (v146 <= &v132 && v146 + 24 * v147 > &v132)
      {
        v117 = &v132 - v146;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
        v45 = v146;
        v44 = (v146 + v117);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
        v44 = &v132;
        v45 = v146;
      }
    }

    v46 = &v45[24 * v147];
    v47 = *v44;
    *(v46 + 2) = v44[2];
    *v46 = v47;
    v48 = ++v147;
    if (v145[0])
    {
      LODWORD(v132) = 3;
      v133 = " and result memref type ";
      v134 = 24;
      v49 = &v132;
      v50 = v146;
      if (v48 >= v148)
      {
        if (v146 <= &v132 && v146 + 24 * v48 > &v132)
        {
          v118 = &v132 - v146;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v48 + 1, 24);
          v50 = v146;
          v49 = (v146 + v118);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v48 + 1, 24);
          v49 = &v132;
          v50 = v146;
        }
      }

      v51 = &v50[24 * v147];
      v52 = *v49;
      *(v51 + 2) = v49[2];
      *v51 = v52;
      ++v147;
      if (v145[0])
      {
        v53 = &v132;
        mlir::DiagnosticArgument::DiagnosticArgument(&v132, v137);
        v54 = v146;
        if (v147 >= v148)
        {
          if (v146 <= &v132 && v146 + 24 * v147 > &v132)
          {
            v120 = &v132 - v146;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
            v54 = v146;
            v53 = (v146 + v120);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
            v53 = &v132;
            v54 = v146;
          }
        }

        v55 = &v54[24 * v147];
        v56 = *v53;
        *(v55 + 2) = v53[2];
        *v55 = v56;
        ++v147;
      }
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v145);
  if (v145[0])
  {
    mlir::InFlightDiagnostic::report(v145);
  }

  if (v155 == 1)
  {
    if (v154 != &v155)
    {
      free(v154);
    }

    v57 = __p;
    if (__p)
    {
      v58 = v153;
      v59 = __p;
      if (v153 != __p)
      {
        do
        {
          v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
        }

        while (v58 != v57);
        v59 = __p;
      }

      v153 = v57;
      operator delete(v59);
    }

    v39 = v150;
    if (v150)
    {
      v60 = v151;
      v41 = v150;
      if (v151 == v150)
      {
        goto LABEL_86;
      }

      do
      {
        v62 = *--v60;
        v61 = v62;
        *v60 = 0;
        if (v62)
        {
          operator delete[](v61);
        }
      }

      while (v60 != v39);
      goto LABEL_85;
    }

LABEL_87:
    v79 = v146;
    if (v146 == v149)
    {
      return v35;
    }

    goto LABEL_128;
  }

  return v35;
}

uint64_t mlir::mps_spi::StridedArrayViewOp::fold(mlir::Operation **a1)
{
  v62 = *(*(*a1 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v62);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps_spi::StridedArrayViewOp,void>::id)
  {
    v10 = *(*(DefiningOp + 72) + 24);
    if (*(DefiningOp + 47) && (v65.var0 = "op", v11 = DefiningOp, v65.var1 = 2, InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, v65), DefiningOp = v11, (v13 & 1) != 0))
    {
      v14 = InherentAttr;
    }

    else
    {
      v66.var0 = "op";
      v66.var1 = 2;
      v14 = mlir::DictionaryAttr::get((DefiningOp + 56), v66);
    }

    if (v14)
    {
      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v61 = v15;
    v16 = *a1;
    if (!*(*a1 + 47) || (v67.var0 = "op", v67.var1 = 2, v17 = mlir::Operation::getInherentAttr(*a1, v67), (v18 & 1) == 0))
    {
      v68.var0 = "op";
      v68.var1 = 2;
      v17 = mlir::DictionaryAttr::get((v16 + 56), v68);
    }

    if (v17)
    {
      if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v60 = v19;
    v20 = *(*a1 + 9);
    v21 = v20[1];
    if (v21)
    {
      v22 = *v20;
      *v21 = *v20;
      if (v22)
      {
        *(v22 + 8) = v20[1];
      }
    }

    v20[3] = v10;
    v20[1] = v10;
    v23 = *v10;
    *v20 = *v10;
    if (v23)
    {
      *(v23 + 8) = v20;
    }

    *v10 = v20;
    if (!v15 || !v19)
    {
      goto LABEL_75;
    }

    v24 = *a1;
    Context = mlir::Attribute::getContext((*a1 + 24));
    AttrData = mlir::OpaqueAttr::getAttrData(&v61);
    if (!AttrData)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_53;
    }

    v27 = v26;
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_83;
    }

    v28 = AttrData;
    if (v26 >= 0x17)
    {
      if ((v26 | 7) == 0x17)
      {
        v30 = 25;
      }

      else
      {
        v30 = (v26 | 7) + 1;
      }

      p_dst = operator new(v30);
      __dst.__r_.__value_.__l.__size_ = v27;
      __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v26;
      p_dst = &__dst;
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    memmove(p_dst, v28, v27);
LABEL_52:
    p_dst->__r_.__value_.__s.__data_[v27] = 0;
LABEL_53:
    v31 = std::string::append(&__dst, "->");
    v32 = v31->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = mlir::OpaqueAttr::getAttrData(&v60);
    if (!v33)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      goto LABEL_65;
    }

    v35 = v34;
    if (v34 <= 0x7FFFFFFFFFFFFFF7)
    {
      v36 = v33;
      if (v34 >= 0x17)
      {
        if ((v34 | 7) == 0x17)
        {
          v41 = 25;
        }

        else
        {
          v41 = (v34 | 7) + 1;
        }

        v37 = operator new(v41);
        v51 = v35;
        v52 = v41 | 0x8000000000000000;
        v50 = v37;
      }

      else
      {
        HIBYTE(v52) = v34;
        v37 = &v50;
        if (!v34)
        {
          goto LABEL_64;
        }
      }

      memmove(v37, v36, v35);
LABEL_64:
      *(v37 + v35) = 0;
      v40 = HIBYTE(v52);
      v39 = v50;
      v38 = v51;
LABEL_65:
      if ((v40 & 0x80u) == 0)
      {
        v42 = &v50;
      }

      else
      {
        v42 = v39;
      }

      if ((v40 & 0x80u) == 0)
      {
        v43 = v40;
      }

      else
      {
        v43 = v38;
      }

      v44 = std::string::append(&v54, v42, v43);
      v45 = v44->__r_.__value_.__r.__words[2];
      *__p = *&v44->__r_.__value_.__l.__data_;
      v56 = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v58 = 260;
      v57[0] = __p;
      StringAttr = mlir::Builder::getStringAttr(&Context, v57);
      v47 = mlir::Attribute::getContext((v24 + 24));
      v64 = 261;
      v63[0] = "op";
      v63[1] = 2;
      v48 = mlir::StringAttr::get(v47, v63);
      mlir::Operation::setAttr(v24, v48, StringAttr);
      if (SHIBYTE(v56) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v52) & 0x80000000) == 0)
        {
LABEL_73:
          if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v52) & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      operator delete(v50);
      if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_74:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_75:
          if (*(*a1 + 9))
          {
            v49 = *a1 - 16;
          }

          else
          {
            v49 = 0;
          }

          return mlir::detail::OpResultImpl::getNextResultAtOffset(v49, 0) | 4;
        }

LABEL_82:
        operator delete(__dst.__r_.__value_.__l.__data_);
        goto LABEL_75;
      }

LABEL_81:
      operator delete(v54.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_82;
    }

LABEL_83:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (*(*a1 + 9))
  {
    v3 = *a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v57[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(v57);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  if (*(*a1 + 9))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  v7 = *(v62 + 8);
  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) ^ v7) > 7)
  {
    return 0;
  }

  v63[0] = *(*a1 + 2 * ((*(*a1 + 11) >> 23) & 1) + 8);
  if (*mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v63))
  {
    return 0;
  }

  return v62 | 4;
}

void mlir::mps_spi::RMSNormOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  __src = v25;
  v24 = 0x200000000;
  v7 = *a1;
  mlir::ValueRange::ValueRange(&v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  v26[0] = v21;
  v26[1] = v22;
  if (v22)
  {
    v10 = *(mlir::ValueRange::dereference_iterator(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = mlir::Float32Type::get(v7, v9);
    v10 = mlir::UnrankedTensorType::get(v11);
  }

  v12 = v24;
  if (v24 >= HIDWORD(v24))
  {
    v16 = v10;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v25, v24 + 1, 8);
    v10 = v16;
    v12 = v24;
  }

  *(__src + v12) = v10;
  LODWORD(v24) = v24 + 1;
  v13 = v24;
  v14 = __src;
  v15 = *(a2 + 72);
  if (v15 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v15 + v24, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v15), v14, 8 * v13);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v13;
  if (__src != v25)
  {
    free(__src);
  }
}

BOOL mlir::mps_spi::RMSNormOp::verifyInvariantsImpl(mlir::mps_spi::RMSNormOp *this)
{
  v123 = *MEMORY[0x1E69E9840];
  if ((mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps1(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v113 = *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
    v114 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v113);
    v4 = *v3;
    if (ArgOperands)
    {
      v107 = v3;
      v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
      mlir::CallableOpInterface::getArgAttrsAttr(&v107);
      v4 = *v3;
      if (!v6)
      {
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
        Value = v3;
        v111 = v74;
        isSplat = mlir::ElementsAttr::isSplat(&Value);
        if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
        {
          goto LABEL_45;
        }

        v4 = *v3;
      }
    }
  }

  if (*(v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v105[0] = v3;
    v105[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
    v7 = mlir::CallOpInterface::getArgOperands(v105);
    v4 = *v3;
    if (v7)
    {
      v104[0] = v3;
      v104[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
      mlir::CallableOpInterface::getArgAttrsAttr(v104);
      v4 = *v3;
      if (v8 == 1)
      {
        v103[0] = v3;
        v103[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
        isSplat = mlir::ElementsAttr::isSplat(v103);
        if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
        {
          goto LABEL_45;
        }

        v4 = *v3;
      }
    }
  }

  if (*(v4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (v102[0] = v3, v102[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), isSplat = mlir::ElementsAttr::isSplat(v102), !mlir::Type::isSignedInteger(&isSplat, 32)) && !mlir::Type::isSignedInteger(&isSplat, 64))
  {
    v109 = 261;
    v107 = "operand";
    v108 = 7;
    mlir::Operation::emitOpError(v2, &v107, &v113);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v113, " #");
    if (*v9)
    {
      v11 = v9 + 24;
      v10 = *(v9 + 24);
      LODWORD(Value) = 5;
      v111 = 2;
      v12 = *(v9 + 32);
      v13 = &Value;
      if (v12 >= *(v9 + 36))
      {
        if (v10 <= &Value && v10 + 24 * v12 > &Value)
        {
          v92 = &Value - v10;
          v93 = v9;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9 + 24, v9 + 40, v12 + 1, 24);
          v9 = v93;
          v10 = *(v93 + 24);
          v13 = &v92[v10];
        }

        else
        {
          v88 = v9;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9 + 24, v9 + 40, v12 + 1, 24);
          v9 = v88;
          v10 = *(v88 + 24);
          v13 = &Value;
        }
      }

      v14 = v10 + 24 * *(v9 + 32);
      v15 = *v13;
      *(v14 + 16) = v13[2];
      *v14 = v15;
      v16 = (*(v9 + 32) + 1);
      *(v9 + 32) = v16;
      if (*v9)
      {
        LODWORD(Value) = 3;
        v111 = " must be 0D tensor of mps index type values or 1D tensor of mps index type values or unranked tensor of mps index type values, but got ";
        v112 = 135;
        v17 = *(v9 + 24);
        v18 = &Value;
        if (v16 >= *(v9 + 36))
        {
          if (v17 <= &Value && v17 + 24 * v16 > &Value)
          {
            v94 = &Value - v17;
            v95 = v9;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v9 + 40, v16 + 1, 24);
            v9 = v95;
            v17 = *(v95 + 24);
            v18 = &v94[v17];
          }

          else
          {
            v89 = v9;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v9 + 40, v16 + 1, 24);
            v9 = v89;
            v17 = *(v89 + 24);
            v18 = &Value;
          }
        }

        v19 = v17 + 24 * *(v9 + 32);
        v20 = *v18;
        *(v19 + 16) = v18[2];
        *v19 = v20;
        ++*(v9 + 32);
        if (*v9)
        {
          v21 = &Value;
          v22 = v9;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, v3);
          v23 = *(v22 + 32);
          v24 = *(v22 + 24);
          if (v23 >= *(v22 + 36))
          {
            if (v24 <= &Value && v24 + 24 * v23 > &Value)
            {
              v98 = &Value - v24;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v22 + 40, v23 + 1, 24);
              v9 = v22;
              v24 = *(v22 + 24);
              v21 = &v98[v24];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v22 + 40, v23 + 1, 24);
              v9 = v22;
              v24 = *(v22 + 24);
              v21 = &Value;
            }
          }

          else
          {
            v9 = v22;
          }

          v25 = v24 + 24 * *(v9 + 32);
          v26 = *v21;
          *(v25 + 16) = v21[2];
          *v25 = v26;
          ++*(v9 + 32);
        }
      }
    }

    v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
    if (v113)
    {
      mlir::InFlightDiagnostic::report(&v113);
    }

    if (v122 == 1)
    {
      if (v121 != &v122)
      {
        free(v121);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v120;
        v30 = __p;
        if (v120 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v120 = v28;
        operator delete(v30);
      }

      v31 = v117;
      if (v117)
      {
        v32 = v118;
        v33 = v117;
        if (v118 != v117)
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
          v33 = v117;
        }

        v118 = v31;
        operator delete(v33);
      }

      if (v115 != v116)
      {
        free(v115);
      }
    }

    if (!v27)
    {
      return 0;
    }
  }

LABEL_45:
  if (*(*this + 36))
  {
    v36 = *this - 16;
  }

  else
  {
    v36 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0);
  v38 = *this;
  v39 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v40 = *v39;
  v41 = *(*v39 + 136);
  if (v41 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v41 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_67;
  }

  v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v40 + 8);
  v113 = v39;
  v114 = v43;
  Value = mlir::ElementsAttr::isSplat(&v113);
  if (!mlir::Type::isSignlessInteger(&Value, 1) && !mlir::Type::isSignedInteger(&Value, 8) && !mlir::Type::isSignedInteger(&Value, 16) && !mlir::Type::isSignedInteger(&Value, 32) && !mlir::Type::isSignedInteger(&Value, 64) && !mlir::Type::isUnsignedInteger(&Value, 8) && !mlir::Type::isUnsignedInteger(&Value, 16) && !mlir::Type::isUnsignedInteger(&Value, 32) && !mlir::Type::isUnsignedInteger(&Value, 64) && !mlir::Type::isF16(&Value) && !mlir::Type::isF32(&Value) && !mlir::Type::isBF16(&Value) && *(*Value + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v40 = *v39;
    v41 = *(*v39 + 136);
LABEL_67:
    if (v41 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v41 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v40 + 8);
      v107 = v39;
      v108 = v45;
      v46 = mlir::ElementsAttr::isSplat(&v107);
      if (*(*v46 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v75 = v46;
        v105[0] = v46;
        Value = mlir::AffineMapAttr::getValue(v105);
        if (mlir::Type::isF16(&Value))
        {
          goto LABEL_108;
        }

        v103[0] = v75;
        v104[0] = mlir::AffineMapAttr::getValue(v103);
        if (mlir::Type::isF32(v104))
        {
          goto LABEL_108;
        }
      }
    }

    v109 = 261;
    v107 = "result";
    v108 = 6;
    mlir::Operation::emitOpError(v38, &v107, &v113);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v113, " #");
    if (*v47)
    {
      v49 = v47 + 24;
      v48 = *(v47 + 24);
      LODWORD(Value) = 5;
      v111 = 0;
      v50 = *(v47 + 32);
      p_Value = &Value;
      if (v50 >= *(v47 + 36))
      {
        if (v48 <= &Value && v48 + 24 * v50 > &Value)
        {
          v96 = &Value - v48;
          v97 = v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47 + 24, v47 + 40, v50 + 1, 24);
          v47 = v97;
          v48 = *(v97 + 24);
          p_Value = &v96[v48];
        }

        else
        {
          v90 = v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47 + 24, v47 + 40, v50 + 1, 24);
          v47 = v90;
          v48 = *(v90 + 24);
          p_Value = &Value;
        }
      }

      v52 = v48 + 24 * *(v47 + 32);
      v53 = *p_Value;
      *(v52 + 16) = p_Value[2];
      *v52 = v53;
      v54 = (*(v47 + 32) + 1);
      *(v47 + 32) = v54;
      if (*v47)
      {
        LODWORD(Value) = 3;
        v111 = " must be tensor of mps native type values or tensor of complex values, but got ";
        v112 = 79;
        v55 = *(v47 + 24);
        v56 = &Value;
        if (v54 >= *(v47 + 36))
        {
          if (v55 <= &Value && v55 + 24 * v54 > &Value)
          {
            v99 = &Value - v55;
            v100 = v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v47 + 40, v54 + 1, 24);
            v47 = v100;
            v55 = *(v100 + 24);
            v56 = &v99[v55];
          }

          else
          {
            v91 = v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v47 + 40, v54 + 1, 24);
            v47 = v91;
            v55 = *(v91 + 24);
            v56 = &Value;
          }
        }

        v57 = v55 + 24 * *(v47 + 32);
        v58 = *v56;
        *(v57 + 16) = v56[2];
        *v57 = v58;
        ++*(v47 + 32);
        if (*v47)
        {
          v59 = &Value;
          v60 = v47;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, v39);
          v61 = *(v60 + 32);
          v62 = *(v60 + 24);
          if (v61 >= *(v60 + 36))
          {
            if (v62 <= &Value && v62 + 24 * v61 > &Value)
            {
              v101 = &Value - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v60 + 40, v61 + 1, 24);
              v47 = v60;
              v62 = *(v60 + 24);
              v59 = &v101[v62];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v60 + 40, v61 + 1, 24);
              v47 = v60;
              v62 = *(v60 + 24);
              v59 = &Value;
            }
          }

          else
          {
            v47 = v60;
          }

          v63 = v62 + 24 * *(v47 + 32);
          v64 = *v59;
          *(v63 + 16) = v59[2];
          *v63 = v64;
          ++*(v47 + 32);
        }
      }
    }

    v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v113)
    {
      mlir::InFlightDiagnostic::report(&v113);
    }

    if (v122 == 1)
    {
      if (v121 != &v122)
      {
        free(v121);
      }

      v66 = __p;
      if (__p)
      {
        v67 = v120;
        v68 = __p;
        if (v120 != __p)
        {
          do
          {
            v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
          }

          while (v67 != v66);
          v68 = __p;
        }

        v120 = v66;
        operator delete(v68);
      }

      v69 = v117;
      if (v117)
      {
        v70 = v118;
        v71 = v117;
        if (v118 != v117)
        {
          do
          {
            v73 = *--v70;
            v72 = v73;
            *v70 = 0;
            if (v73)
            {
              operator delete[](v72);
            }
          }

          while (v70 != v69);
          v71 = v117;
        }

        v118 = v69;
        operator delete(v71);
      }

      if (v115 != v116)
      {
        free(v115);
      }
    }

    if (v65)
    {
      goto LABEL_108;
    }

    return 0;
  }

LABEL_108:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 72) + 24));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 56)))
  {
    v77 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 56));
    if (v77 == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
    {
      return 1;
    }
  }

  v107 = "failed to verify that all of {input, epsilon} have same element type";
  v109 = 259;
  mlir::OpState::emitOpError(this, &v107, &v113);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
  v79 = result;
  if (v113)
  {
    mlir::InFlightDiagnostic::report(&v113);
    result = v79;
  }

  if (v122 == 1)
  {
    if (v121 != &v122)
    {
      free(v121);
      result = v79;
    }

    v80 = __p;
    if (__p)
    {
      v81 = v120;
      v82 = __p;
      if (v120 != __p)
      {
        do
        {
          v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
        }

        while (v81 != v80);
        v82 = __p;
      }

      v120 = v80;
      operator delete(v82);
      result = v79;
    }

    v83 = v117;
    if (v117)
    {
      v84 = v118;
      v85 = v117;
      if (v118 != v117)
      {
        do
        {
          v87 = *--v84;
          v86 = v87;
          *v84 = 0;
          if (v87)
          {
            operator delete[](v86);
          }
        }

        while (v84 != v83);
        v85 = v117;
      }

      v118 = v83;
      operator delete(v85);
      result = v79;
    }

    if (v115 != v116)
    {
      free(v115);
      return v79;
    }
  }

  return result;
}

uint64_t mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps1(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v53[0] = a2;
    v53[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v48[0] = mlir::ElementsAttr::isSplat(v53);
    if (mlir::Type::isSignlessInteger(v48, 1))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v48, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v48, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v48, 32))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v48, 64))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v48, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v48, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v48, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v48, 64))
    {
      return 1;
    }

    if (mlir::Type::isF16(v48))
    {
      return 1;
    }

    if (mlir::Type::isF32(v48))
    {
      return 1;
    }

    if (mlir::Type::isBF16(v48))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v48[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }
  }

  v49 = 261;
  v48[0] = a3;
  v48[1] = a4;
  mlir::Operation::emitOpError(a1, v48, v53);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v53, " #");
  if (*v13)
  {
    v15 = v13 + 24;
    v14 = *(v13 + 24);
    v50 = 5;
    v51 = a5;
    v16 = *(v13 + 32);
    v17 = &v50;
    if (v16 >= *(v13 + 36))
    {
      if (v14 <= &v50 && v14 + 24 * v16 > &v50)
      {
        v43 = &v50 - v14;
        v44 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v16 + 1, 24);
        v13 = v44;
        v14 = *(v44 + 24);
        v17 = &v43[v14];
      }

      else
      {
        v41 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v16 + 1, 24);
        v13 = v41;
        v14 = *(v41 + 24);
        v17 = &v50;
      }
    }

    v18 = v14 + 24 * *(v13 + 32);
    v19 = *v17;
    *(v18 + 16) = *(v17 + 2);
    *v18 = v19;
    v20 = (*(v13 + 32) + 1);
    *(v13 + 32) = v20;
    if (*v13)
    {
      v50 = 3;
      v51 = " must be tensor of mps native type values, but got ";
      v52 = 51;
      v21 = *(v13 + 24);
      v22 = &v50;
      if (v20 >= *(v13 + 36))
      {
        if (v21 <= &v50 && v21 + 24 * v20 > &v50)
        {
          v45 = &v50 - v21;
          v46 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 40, v20 + 1, 24);
          v13 = v46;
          v21 = *(v46 + 24);
          v22 = &v45[v21];
        }

        else
        {
          v42 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 40, v20 + 1, 24);
          v13 = v42;
          v21 = *(v42 + 24);
          v22 = &v50;
        }
      }

      v23 = v21 + 24 * *(v13 + 32);
      v24 = *v22;
      *(v23 + 16) = *(v22 + 2);
      *v23 = v24;
      ++*(v13 + 32);
      if (*v13)
      {
        v25 = &v50;
        v26 = v13;
        mlir::DiagnosticArgument::DiagnosticArgument(&v50, a2);
        v27 = *(v26 + 32);
        v28 = *(v26 + 24);
        if (v27 >= *(v26 + 36))
        {
          if (v28 <= &v50 && v28 + 24 * v27 > &v50)
          {
            v47 = &v50 - v28;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v26 + 40, v27 + 1, 24);
            v13 = v26;
            v28 = *(v26 + 24);
            v25 = &v47[v28];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v26 + 40, v27 + 1, 24);
            v13 = v26;
            v28 = *(v26 + 24);
            v25 = &v50;
          }
        }

        else
        {
          v13 = v26;
        }

        v29 = v28 + 24 * *(v13 + 32);
        v30 = *v25;
        *(v29 + 16) = *(v25 + 2);
        *v29 = v30;
        ++*(v13 + 32);
      }
    }
  }

  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v53[0])
  {
    mlir::InFlightDiagnostic::report(v53);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v59;
      v34 = __p;
      if (v59 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v59 = v32;
      operator delete(v34);
    }

    v35 = v56;
    if (v56)
    {
      v36 = v57;
      v37 = v56;
      if (v57 != v56)
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
        v37 = v56;
      }

      v57 = v35;
      operator delete(v37);
    }

    if (v54 != &v55)
    {
      free(v54);
    }
  }

  return v31;
}

void mlir::mps_spi::ScaledDotProductAttentionOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v24 = a4;
  v25 = a3;
  v22 = a6;
  v23 = a5;
  v21 = a7;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v28 = v30;
  v29 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps_spi::ScaledDotProductAttentionOp::inferReturnTypes(v9, v11, v12, v27[0], v27[1], v13, v14, v15, v19, v20, &v28) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = v28;
  v17 = v29;
  v18 = *(a2 + 72);
  if (v18 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18 + v29, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t mlir::mps_spi::ScaledDotProductAttentionOp::verifyInvariantsImpl(mlir::mps_spi::ScaledDotProductAttentionOp *this)
{
  v72 = *MEMORY[0x1E69E9840];
  if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v62[0] = *(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8, v62[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), ArgOperands = mlir::CallOpInterface::getArgOperands(v62), v4 = *v3, !ArgOperands) || (v52 = v3, v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), mlir::CallableOpInterface::getArgAttrsAttr(&v52), v4 = *v3, v6))
  {
LABEL_8:
    v7 = *(v4 + 136);
    if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
      v57[0] = v3;
      v57[1] = v9;
      isSplat = mlir::ElementsAttr::isSplat(v57);
      if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
      {
        v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
        v56[0] = v3;
        v56[1] = v10;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v56);
        v71 = 1;
        if (v12 == 1 && *ArgAttrsAttr == v71)
        {
          goto LABEL_52;
        }
      }
    }

    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
      v55[0] = v3;
      v55[1] = v40;
      isSplat = mlir::ElementsAttr::isSplat(v55);
      if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
      {
        goto LABEL_52;
      }
    }

    v54 = 261;
    v52 = "operand";
    v53 = 7;
    mlir::Operation::emitOpError(v2, &v52, v62);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v62, " #");
    if (*v13)
    {
      v15 = v13 + 24;
      v14 = *(v13 + 24);
      LODWORD(v59) = 5;
      v60 = 4;
      v16 = *(v13 + 32);
      v17 = &v59;
      if (v16 >= *(v13 + 36))
      {
        if (v14 <= &v59 && v14 + 24 * v16 > &v59)
        {
          v47 = &v59 - v14;
          v48 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v16 + 1, 24);
          v13 = v48;
          v14 = *(v48 + 24);
          v17 = &v47[v14];
        }

        else
        {
          v45 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v16 + 1, 24);
          v13 = v45;
          v14 = *(v45 + 24);
          v17 = &v59;
        }
      }

      v18 = v14 + 24 * *(v13 + 32);
      v19 = *v17;
      *(v18 + 16) = *(v17 + 2);
      *v18 = v19;
      v20 = (*(v13 + 32) + 1);
      *(v13 + 32) = v20;
      if (*v13)
      {
        LODWORD(v59) = 3;
        v60 = " must be 0D tensor of floating point values or static-shape defined tensor with shape equal to [1] or unranked tensor of floating point values, but got ";
        v61 = 152;
        v21 = *(v13 + 24);
        v22 = &v59;
        if (v20 >= *(v13 + 36))
        {
          if (v21 <= &v59 && v21 + 24 * v20 > &v59)
          {
            v49 = &v59 - v21;
            v50 = v13;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 40, v20 + 1, 24);
            v13 = v50;
            v21 = *(v50 + 24);
            v22 = &v49[v21];
          }

          else
          {
            v46 = v13;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 40, v20 + 1, 24);
            v13 = v46;
            v21 = *(v46 + 24);
            v22 = &v59;
          }
        }

        v23 = v21 + 24 * *(v13 + 32);
        v24 = *v22;
        *(v23 + 16) = *(v22 + 2);
        *v23 = v24;
        ++*(v13 + 32);
        if (*v13)
        {
          v25 = &v59;
          v26 = v13;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v3);
          v27 = *(v26 + 32);
          v28 = *(v26 + 24);
          if (v27 >= *(v26 + 36))
          {
            if (v28 <= &v59 && v28 + 24 * v27 > &v59)
            {
              v51 = &v59 - v28;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v26 + 40, v27 + 1, 24);
              v13 = v26;
              v28 = *(v26 + 24);
              v25 = &v51[v28];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v26 + 40, v27 + 1, 24);
              v13 = v26;
              v28 = *(v26 + 24);
              v25 = &v59;
            }
          }

          else
          {
            v13 = v26;
          }

          v29 = v28 + 24 * *(v13 + 32);
          v30 = *v25;
          *(v29 + 16) = *(v25 + 2);
          *v29 = v30;
          ++*(v13 + 32);
        }
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 == 1)
    {
      if (v69 != &v70)
      {
        free(v69);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v68;
        v34 = __p;
        if (v68 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v68 = v32;
        operator delete(v34);
      }

      v35 = v65;
      if (v65)
      {
        v36 = v66;
        v37 = v65;
        if (v66 != v65)
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
          v37 = v65;
        }

        v66 = v35;
        operator delete(v37);
      }

      if (v63 != &v64)
      {
        free(v63);
      }
    }

    if (v31)
    {
      goto LABEL_52;
    }

    return 0;
  }

  v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8);
  v59 = v3;
  v60 = v44;
  isSplat = mlir::ElementsAttr::isSplat(&v59);
  if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
  {
    v4 = *v3;
    goto LABEL_8;
  }

LABEL_52:
  if (*(*this + 36))
  {
    v41 = *this - 16;
  }

  else
  {
    v41 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
  return mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

unint64_t mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(mlir::mps_spi::StridedArrayViewOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = v3 + 88;
  if (a2)
  {
    v5 = a2;
    if (a2 > 7)
    {
      v6 = a2 & 0xFFFFFFF8;
      v9 = (v3 + 104);
      v10 = 0uLL;
      v11 = v6;
      v12 = 0uLL;
      do
      {
        v10 = vaddq_s32(v9[-1], v10);
        v12 = vaddq_s32(*v9, v12);
        v9 += 2;
        v11 -= 8;
      }

      while (v11);
      v7 = vaddvq_s32(vaddq_s32(v12, v10));
      if (v6 == a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v13 = (16 * v2 + 4 * v6 + *this + 88);
    v14 = a2 - v6;
    do
    {
      v15 = *v13++;
      v7 += v15;
      --v14;
    }

    while (v14);
LABEL_10:
    v8 = v7;
    return v8 | (*(v4 + 4 * v5) << 32);
  }

  v5 = 0;
  v8 = 0;
  return v8 | (*(v4 + 4 * v5) << 32);
}

BOOL mlir::mps_spi::StridedArrayViewOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v68 = v6;
  if (!v6)
  {
    a3(&v72, a4);
    if (v72)
    {
      v69 = 3;
      v70 = "expected DictionaryAttr to set properties";
      v71 = 41;
      v16 = &v69;
      v17 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &v69 && v74 + 24 * v75 > &v69)
        {
          v64 = &v69 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v17 = v74;
          v16 = (v74 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v16 = &v69;
          v17 = v74;
        }
      }

      v18 = &v17[24 * v75];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v75;
      if (v72)
      {
        mlir::InFlightDiagnostic::report(&v72);
      }
    }

    if (v83 != 1)
    {
      return 0;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v81;
      v22 = __p;
      if (v81 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v81 = v20;
      operator delete(v22);
    }

    v23 = v78;
    if (!v78)
    {
      goto LABEL_76;
    }

    v24 = v79;
    v25 = v78;
    if (v79 == v78)
    {
LABEL_75:
      v79 = v23;
      operator delete(v25);
LABEL_76:
      if (v74 != v77)
      {
        free(v74);
      }

      return 0;
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
LABEL_74:
    v25 = v78;
    goto LABEL_75;
  }

  v85.var0 = "static_offsets";
  v85.var1 = 14;
  v8 = mlir::DictionaryAttr::get(&v68, v85);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
  {
    a3(&v72, a4);
    if (*v28)
    {
      v29 = v28;
      v30 = &v69;
      mlir::DiagnosticArgument::DiagnosticArgument(&v69, v9);
      v31 = (v29 + 3);
      v32 = v29[3];
      v33 = *(v29 + 8);
      if (v33 >= *(v29 + 9))
      {
        if (v32 <= &v69 && v32 + 24 * v33 > &v69)
        {
          v65 = &v69 - v32;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v31, (v29 + 5), v33 + 1, 24);
          v32 = v29[3];
          v30 = &v65[v32];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v31, (v29 + 5), v33 + 1, 24);
          v32 = v29[3];
          v30 = &v69;
        }
      }

      v34 = v32 + 24 * *(v29 + 8);
      v35 = *v30;
      *(v34 + 16) = *(v30 + 2);
      *v34 = v35;
      ++*(v29 + 8);
    }

    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if ((v83 & 1) == 0)
    {
      return 0;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v81;
      v38 = __p;
      if (v81 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v81 = v36;
      operator delete(v38);
    }

    v23 = v78;
    if (!v78)
    {
      goto LABEL_76;
    }

    v39 = v79;
    v25 = v78;
    if (v79 == v78)
    {
      goto LABEL_75;
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

    while (v39 != v23);
    goto LABEL_74;
  }

  *a1 = v9;
LABEL_8:
  v86.var0 = "static_sizes";
  v86.var1 = 12;
  v10 = mlir::DictionaryAttr::get(&v68, v86);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v10))
  {
    a3(&v72, a4);
    if (*v42)
    {
      v43 = v42;
      v44 = &v69;
      mlir::DiagnosticArgument::DiagnosticArgument(&v69, v11);
      v45 = (v43 + 3);
      v46 = v43[3];
      v47 = *(v43 + 8);
      if (v47 >= *(v43 + 9))
      {
        if (v46 <= &v69 && v46 + 24 * v47 > &v69)
        {
          v66 = &v69 - v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v45, (v43 + 5), v47 + 1, 24);
          v46 = v43[3];
          v44 = &v66[v46];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v45, (v43 + 5), v47 + 1, 24);
          v46 = v43[3];
          v44 = &v69;
        }
      }

      v48 = v46 + 24 * *(v43 + 8);
      v49 = *v44;
      *(v48 + 16) = *(v44 + 2);
      *v48 = v49;
      ++*(v43 + 8);
    }

    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if ((v83 & 1) == 0)
    {
      return 0;
    }

    if (v82 != &v83)
    {
      free(v82);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v81;
      v52 = __p;
      if (v81 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v81 = v50;
      operator delete(v52);
    }

    v23 = v78;
    if (!v78)
    {
      goto LABEL_76;
    }

    v53 = v79;
    v25 = v78;
    if (v79 == v78)
    {
      goto LABEL_75;
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

    while (v53 != v23);
    goto LABEL_74;
  }

  a1[1] = v11;
LABEL_11:
  v87.var0 = "static_strides";
  v87.var1 = 14;
  v12 = mlir::DictionaryAttr::get(&v68, v87);
  if (v12)
  {
    v13 = v12;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v12))
    {
      a3(&v72, a4);
      if (*v56)
      {
        v57 = v56;
        v58 = &v69;
        mlir::DiagnosticArgument::DiagnosticArgument(&v69, v13);
        v59 = (v57 + 3);
        v60 = v57[3];
        v61 = *(v57 + 8);
        if (v61 >= *(v57 + 9))
        {
          if (v60 <= &v69 && v60 + 24 * v61 > &v69)
          {
            v67 = &v69 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v59, (v57 + 5), v61 + 1, 24);
            v60 = v57[3];
            v58 = &v67[v60];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v59, (v57 + 5), v61 + 1, 24);
            v60 = v57[3];
            v58 = &v69;
          }
        }

        v62 = v60 + 24 * *(v57 + 8);
        v63 = *v58;
        *(v62 + 16) = *(v58 + 2);
        *v62 = v63;
        ++*(v57 + 8);
      }

      if (v72)
      {
        mlir::InFlightDiagnostic::report(&v72);
      }

      if (v83 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v73);
      }

      return 0;
    }

    a1[2] = v13;
  }

  v88.var0 = "operandSegmentSizes";
  v88.var1 = 19;
  v14 = mlir::DictionaryAttr::get(&v68, v88);
  if (!v14)
  {
    v89.var0 = "operand_segment_sizes";
    v89.var1 = 21;
    v14 = mlir::DictionaryAttr::get(&v68, v89);
    if (!v14)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 4, v14, a3, a4) & 1) != 0;
}

uint64_t mlir::mps_spi::StridedArrayViewOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v38[6] = *MEMORY[0x1E69E9840];
  v35 = a1;
  v36 = v38;
  v37 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v35, "static_offsets", 14, *a2);
    v6 = v37;
    if (v37 >= HIDWORD(v37))
    {
      v29 = NamedAttr;
      v30 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v37 + 1, 16);
      v5 = v30;
      NamedAttr = v29;
      v6 = v37;
    }

    v7 = (v36 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v37) = v37 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v35, "static_sizes", 12, v8);
    v11 = v37;
    if (v37 >= HIDWORD(v37))
    {
      v31 = v9;
      v32 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v37 + 1, 16);
      v10 = v32;
      v9 = v31;
      v11 = v37;
    }

    v12 = (v36 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v37) = v37 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v35, "static_strides", 14, v13);
    v16 = v37;
    if (v37 >= HIDWORD(v37))
    {
      v33 = v14;
      v34 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v37 + 1, 16);
      v15 = v34;
      v14 = v33;
      v16 = v37;
    }

    v17 = (v36 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v37) = v37 + 1;
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 4);
  v19 = mlir::Builder::getNamedAttr(&v35, "operandSegmentSizes", 19, v18);
  v21 = v37;
  if (v37 >= HIDWORD(v37))
  {
    v27 = v19;
    v28 = v20;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v37 + 1, 16);
    v20 = v28;
    v19 = v27;
    v21 = v37;
  }

  v22 = (v36 + 16 * v21);
  *v22 = v19;
  v22[1] = v20;
  v23 = __CFADD__(v37, 1);
  v24 = (v37 + 1);
  LODWORD(v37) = v37 + 1;
  if (v23)
  {
    DictionaryAttr = 0;
  }

  else
  {
    DictionaryAttr = mlir::Builder::getDictionaryAttr(&v35, v36, v24);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps_spi::StridedArrayViewOp::getInherentAttr(uint64_t a1, uint64_t *a2, char *__s1, int64_t __n)
{
  v5 = a1;
  LOBYTE(a1) = 0;
  if (__n > 18)
  {
    if (__n == 19)
    {
      v8 = "operandSegmentSizes";
    }

    else
    {
      v6 = 0;
      if (__n != 21)
      {
        return v6 | a1;
      }

      v8 = "operand_segment_sizes";
    }

    if (!memcmp(__s1, v8, __n))
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v5, a2 + 3, 4);
      goto LABEL_20;
    }

LABEL_17:
    LOBYTE(a1) = 0;
    v6 = 0;
    return v6 | a1;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      a1 = a2[1];
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v6 = 0;
  if (__n == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      a1 = *a2;
      goto LABEL_20;
    }

    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      a1 = a2[2];
LABEL_20:
      v6 = a1 & 0xFFFFFFFFFFFFFF00;
      return v6 | a1;
    }

    goto LABEL_17;
  }

  return v6 | a1;
}

uint64_t mlir::mps_spi::StridedArrayViewOp::setInherentAttr(uint64_t result, char *__s1, int64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v8 = "operandSegmentSizes";
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v8 = "operand_segment_sizes";
    }

    result = memcmp(__s1, v8, a3);
    if (!result && a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      v10 = result ? a4 : 0;
      v13 = v10;
      if (v10)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v13);
        if (result == 4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v13);
          if (v11)
          {
            return memmove(v5 + 3, result, 4 * v11);
          }
        }
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[1] = v9;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        *v5 = v12;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
          if (result)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[2] = v7;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps_spi::StridedArrayViewOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(v8, "static_offsets", 0xE, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(v9, "static_sizes", 0xC, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(v10, "static_strides", 0xE, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(void *a1, void *a2, void *a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1 || mlir::detail::DenseArrayAttrImpl<long long>::classof(a1))
  {
    return 1;
  }

  a4(v24, a5);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v24, "attribute '");
  if (*v11)
  {
    v23 = 261;
    v22[0] = a2;
    v22[1] = a3;
    v12 = v11;
    mlir::Diagnostic::operator<<((v11 + 1), v22);
    v11 = v12;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, "' failed to satisfy constraint: i64 dense array attribute");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v30;
      v16 = __p;
      if (v30 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v30 = v14;
      operator delete(v16);
    }

    v17 = v27;
    if (v27)
    {
      v18 = v28;
      v19 = v27;
      if (v28 != v27)
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
        v19 = v27;
      }

      v28 = v17;
      operator delete(v19);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v9;
}

BOOL mlir::mps_spi::StridedArrayViewOp::readProperties(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v17 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v17))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v17) >= 5)
    {
      v15 = "size mismatch for operand/result_segment_size";
      v16 = 259;
      (*(*a1 + 16))(v18, a1, &v15);
      if (v18[0])
      {
        mlir::InFlightDiagnostic::report(v18);
      }

      if (v26 == 1)
      {
        if (v25 != &v26)
        {
          free(v25);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v24;
          v6 = __p;
          if (v24 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v24 = v4;
          operator delete(v6);
        }

        v7 = v21;
        if (v21)
        {
          v8 = v22;
          v9 = v21;
          if (v22 != v21)
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
            v9 = v21;
          }

          v22 = v7;
          operator delete(v9);
        }

        if (v19 != &v20)
        {
          free(v19);
        }
      }

      return 0;
    }

    v12 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
    if (v13)
    {
      memmove(v3 + 3, v12, 4 * v13);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 4) = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

BOOL mlir::mps_spi::StridedArrayViewOp::verifyInvariantsImpl(mlir::mps_spi::StridedArrayViewOp *this)
{
  v148 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      v8 = *(v5 + 16);
      if (v8)
      {
        v138 = v2;
        if (mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(v4, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v138))
        {
          v138 = *this;
          if (mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(v7, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v138))
          {
            v138 = *this;
            if (mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(v8, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v138))
            {
              v9 = *(*this + 44);
              v10 = *(*this + 16 * ((v9 >> 23) & 1) + 88);
              if ((v9 & 0x800000) != 0)
              {
                v11 = *(*this + 72);
                if (v10)
                {
LABEL_9:
                  v12 = 0;
                  v13 = &v147;
                  v14 = v141;
                  v15 = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
                  v131 = v11;
                  do
                  {
                    v17 = *(*(v11 + 32 * v12 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
                    v18 = *(*v17 + 136);
                    if (v18 == v15 || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
                    {
                      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
                      v138 = v17;
                      v139 = v16;
                      mlir::ElementsAttr::isSplat(&v138);
                    }

                    else
                    {
                      v20 = *this;
                      v134 = 261;
                      v132 = "operand";
                      v133 = 7;
                      mlir::Operation::emitOpError(v20, &v132, &v138);
                      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v138, " #");
                      if (*v21)
                      {
                        v23 = v21 + 24;
                        v22 = *(v21 + 24);
                        v135 = 5;
                        v136 = v12;
                        v24 = *(v21 + 32);
                        if (v24 >= *(v21 + 36))
                        {
                          if (v22 <= &v135 && v22 + 24 * v24 > &v135)
                          {
                            v53 = v15;
                            v54 = v14;
                            v55 = v13;
                            v56 = &v135 - v22;
                            v57 = v21;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v24 + 1, 24);
                            v21 = v57;
                            v22 = *(v57 + 24);
                            v25 = &v56[v22];
                            v13 = v55;
                            v14 = v54;
                            v15 = v53;
                            v11 = v131;
                          }

                          else
                          {
                            v51 = v21;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v24 + 1, 24);
                            v21 = v51;
                            v22 = *(v51 + 24);
                            v25 = &v135;
                          }
                        }

                        else
                        {
                          v25 = &v135;
                        }

                        v26 = v22 + 24 * *(v21 + 32);
                        v27 = *v25;
                        *(v26 + 16) = *(v25 + 2);
                        *v26 = v27;
                        v28 = (*(v21 + 32) + 1);
                        *(v21 + 32) = v28;
                        if (*v21)
                        {
                          v135 = 3;
                          v136 = " must be ranked or unranked memref of any type values, but got ";
                          v137 = 63;
                          v29 = *(v21 + 24);
                          if (v28 >= *(v21 + 36))
                          {
                            if (v29 <= &v135 && v29 + 24 * v28 > &v135)
                            {
                              v58 = v15;
                              v59 = v14;
                              v60 = v13;
                              v61 = &v135 - v29;
                              v62 = v21;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v21 + 40, v28 + 1, 24);
                              v21 = v62;
                              v29 = *(v62 + 24);
                              v30 = &v61[v29];
                              v13 = v60;
                              v14 = v59;
                              v15 = v58;
                              v11 = v131;
                            }

                            else
                            {
                              v52 = v21;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v21 + 40, v28 + 1, 24);
                              v21 = v52;
                              v29 = *(v52 + 24);
                              v30 = &v135;
                            }
                          }

                          else
                          {
                            v30 = &v135;
                          }

                          v31 = v29 + 24 * *(v21 + 32);
                          v32 = *v30;
                          *(v31 + 16) = *(v30 + 2);
                          *v31 = v32;
                          ++*(v21 + 32);
                          if (*v21)
                          {
                            v33 = v15;
                            v34 = v14;
                            v35 = v13;
                            v36 = &v135;
                            v37 = v21;
                            mlir::DiagnosticArgument::DiagnosticArgument(&v135, v17);
                            v21 = v37;
                            v38 = *(v37 + 32);
                            v39 = *(v37 + 24);
                            if (v38 >= *(v37 + 36))
                            {
                              if (v39 <= &v135 && v39 + 24 * v38 > &v135)
                              {
                                v63 = &v135 - v39;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v37 + 40, v38 + 1, 24);
                                v21 = v37;
                                v39 = *(v37 + 24);
                                v36 = &v63[v39];
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v37 + 40, v38 + 1, 24);
                                v21 = v37;
                                v39 = *(v37 + 24);
                                v36 = &v135;
                              }
                            }

                            v40 = v39 + 24 * *(v21 + 32);
                            v41 = *v36;
                            *(v40 + 16) = *(v36 + 2);
                            *v40 = v41;
                            ++*(v21 + 32);
                            v13 = v35;
                            v14 = v34;
                            v15 = v33;
                            v11 = v131;
                          }
                        }
                      }

                      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
                      if (v138)
                      {
                        mlir::InFlightDiagnostic::report(&v138);
                      }

                      if (v147 == 1)
                      {
                        if (v146 != v13)
                        {
                          free(v146);
                        }

                        v43 = __p;
                        if (__p)
                        {
                          v44 = v145;
                          v45 = __p;
                          if (v145 != __p)
                          {
                            do
                            {
                              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
                            }

                            while (v44 != v43);
                            v45 = __p;
                          }

                          v145 = v43;
                          operator delete(v45);
                        }

                        v46 = v142;
                        if (v142)
                        {
                          v47 = v143;
                          v48 = v142;
                          if (v143 != v142)
                          {
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
                            v48 = v142;
                          }

                          v143 = v46;
                          operator delete(v48);
                        }

                        if (v140 != v14)
                        {
                          free(v140);
                        }
                      }

                      if (!v42)
                      {
                        return 0;
                      }
                    }

                    ++v12;
                  }

                  while (v12 != v10);
                }
              }

              else
              {
                v11 = 0;
                if (v10)
                {
                  goto LABEL_9;
                }
              }

              ODSOperands = mlir::memref::ReinterpretCastOp::getODSOperands(this, 1u);
              if (v86)
              {
                v87 = v86;
                v88 = ODSOperands + 24;
                while ((mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps7(*this, *(*v88 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
                {
                  LODWORD(v10) = v10 + 1;
                  v88 += 32;
                  if (!--v87)
                  {
                    goto LABEL_116;
                  }
                }

                return 0;
              }

LABEL_116:
              v89 = mlir::memref::ReinterpretCastOp::getODSOperands(this, 2u);
              if (v90)
              {
                v91 = v90;
                v92 = v89 + 24;
                while ((mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps7(*this, *(*v92 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
                {
                  LODWORD(v10) = v10 + 1;
                  v92 += 32;
                  if (!--v91)
                  {
                    goto LABEL_120;
                  }
                }

                return 0;
              }

LABEL_120:
              v93 = mlir::memref::ReinterpretCastOp::getODSOperands(this, 3u);
              if (v94)
              {
                v95 = v94;
                v96 = v93 + 24;
                while ((mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps7(*this, *(*v96 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
                {
                  LODWORD(v10) = v10 + 1;
                  v96 += 32;
                  if (!--v95)
                  {
                    goto LABEL_124;
                  }
                }

                return 0;
              }

LABEL_124:
              if (*(*this + 36))
              {
                v97 = *this - 16;
              }

              else
              {
                v97 = 0;
              }

              v98 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v97, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
              if (*(*v98 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
              {
                v126 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v98 + 8);
                v138 = v98;
                v139 = v126;
                mlir::ElementsAttr::isSplat(&v138);
                return 1;
              }

              v99 = *this;
              v134 = 261;
              v132 = "result";
              v133 = 6;
              mlir::Operation::emitOpError(v99, &v132, &v138);
              mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v138, " #");
              v101 = v100;
              if (*v100)
              {
                v102 = *(v100 + 24);
                v135 = 5;
                v136 = 0;
                v103 = *(v100 + 32);
                v104 = &v135;
                if (v103 >= *(v100 + 36))
                {
                  if (v102 <= &v135 && v102 + 24 * v103 > &v135)
                  {
                    v128 = &v135 - v102;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v100 + 24, v100 + 40, v103 + 1, 24);
                    v102 = *(v101 + 24);
                    v104 = &v128[v102];
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v100 + 24, v100 + 40, v103 + 1, 24);
                    v102 = *(v101 + 24);
                    v104 = &v135;
                  }
                }

                v105 = v102 + 24 * *(v101 + 32);
                v106 = *v104;
                *(v105 + 16) = *(v104 + 2);
                *v105 = v106;
                v107 = (*(v101 + 32) + 1);
                *(v101 + 32) = v107;
                if (*v101)
                {
                  v135 = 3;
                  v136 = " must be memref of any type values, but got ";
                  v137 = 44;
                  v108 = *(v101 + 24);
                  v109 = &v135;
                  if (v107 >= *(v101 + 36))
                  {
                    if (v108 <= &v135 && v108 + 24 * v107 > &v135)
                    {
                      v129 = &v135 - v108;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(v101 + 24, v101 + 40, v107 + 1, 24);
                      v108 = *(v101 + 24);
                      v109 = &v129[v108];
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(v101 + 24, v101 + 40, v107 + 1, 24);
                      v108 = *(v101 + 24);
                      v109 = &v135;
                    }
                  }

                  v110 = v108 + 24 * *(v101 + 32);
                  v111 = *v109;
                  *(v110 + 16) = *(v109 + 2);
                  *v110 = v111;
                  ++*(v101 + 32);
                  if (*v101)
                  {
                    v112 = &v135;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v135, v98);
                    v113 = *(v101 + 32);
                    v114 = *(v101 + 24);
                    if (v113 >= *(v101 + 36))
                    {
                      if (v114 <= &v135 && v114 + 24 * v113 > &v135)
                      {
                        v130 = &v135 - v114;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(v101 + 24, v101 + 40, v113 + 1, 24);
                        v114 = *(v101 + 24);
                        v112 = &v130[v114];
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(v101 + 24, v101 + 40, v113 + 1, 24);
                        v114 = *(v101 + 24);
                        v112 = &v135;
                      }
                    }

                    v115 = v114 + 24 * *(v101 + 32);
                    v116 = *v112;
                    *(v115 + 16) = *(v112 + 2);
                    *v115 = v116;
                    ++*(v101 + 32);
                  }
                }
              }

              v117 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
              if (v138)
              {
                mlir::InFlightDiagnostic::report(&v138);
              }

              if (v147 == 1)
              {
                if (v146 != &v147)
                {
                  free(v146);
                }

                v118 = __p;
                if (__p)
                {
                  v119 = v145;
                  v120 = __p;
                  if (v145 != __p)
                  {
                    do
                    {
                      v119 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v119 - 1);
                    }

                    while (v119 != v118);
                    v120 = __p;
                  }

                  v145 = v118;
                  operator delete(v120);
                }

                v121 = v142;
                if (v142)
                {
                  v122 = v143;
                  v123 = v142;
                  if (v143 != v142)
                  {
                    do
                    {
                      v125 = *--v122;
                      v124 = v125;
                      *v122 = 0;
                      if (v125)
                      {
                        operator delete[](v124);
                      }
                    }

                    while (v122 != v121);
                    v123 = v142;
                  }

                  v143 = v121;
                  operator delete(v123);
                }

                if (v140 != v141)
                {
                  free(v140);
                }
              }

              if (v117)
              {
                return 1;
              }
            }
          }
        }

        return 0;
      }

      v132 = "requires attribute 'static_strides'";
      v134 = 259;
      mlir::OpState::emitOpError(this, &v132, &v138);
      v64 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v147 == 1)
      {
        if (v146 != &v147)
        {
          free(v146);
        }

        v79 = __p;
        if (__p)
        {
          v80 = v145;
          v81 = __p;
          if (v145 != __p)
          {
            do
            {
              v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
            }

            while (v80 != v79);
            v81 = __p;
          }

          v145 = v79;
          operator delete(v81);
        }

        v68 = v142;
        if (!v142)
        {
          goto LABEL_109;
        }

        v82 = v143;
        v70 = v142;
        if (v143 == v142)
        {
LABEL_108:
          v143 = v68;
          operator delete(v70);
LABEL_109:
          if (v140 != v141)
          {
            free(v140);
          }

          return v64;
        }

        do
        {
          v84 = *--v82;
          v83 = v84;
          *v82 = 0;
          if (v84)
          {
            operator delete[](v83);
          }
        }

        while (v82 != v68);
LABEL_107:
        v70 = v142;
        goto LABEL_108;
      }
    }

    else
    {
      v132 = "requires attribute 'static_sizes'";
      v134 = 259;
      mlir::OpState::emitOpError(this, &v132, &v138);
      v64 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v147 == 1)
      {
        if (v146 != &v147)
        {
          free(v146);
        }

        v73 = __p;
        if (__p)
        {
          v74 = v145;
          v75 = __p;
          if (v145 != __p)
          {
            do
            {
              v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
            }

            while (v74 != v73);
            v75 = __p;
          }

          v145 = v73;
          operator delete(v75);
        }

        v68 = v142;
        if (!v142)
        {
          goto LABEL_109;
        }

        v76 = v143;
        v70 = v142;
        if (v143 == v142)
        {
          goto LABEL_108;
        }

        do
        {
          v78 = *--v76;
          v77 = v78;
          *v76 = 0;
          if (v78)
          {
            operator delete[](v77);
          }
        }

        while (v76 != v68);
        goto LABEL_107;
      }
    }
  }

  else
  {
    v132 = "requires attribute 'static_offsets'";
    v134 = 259;
    mlir::OpState::emitOpError(this, &v132, &v138);
    v64 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
    if (v138)
    {
      mlir::InFlightDiagnostic::report(&v138);
    }

    if (v147 == 1)
    {
      if (v146 != &v147)
      {
        free(v146);
      }

      v65 = __p;
      if (__p)
      {
        v66 = v145;
        v67 = __p;
        if (v145 != __p)
        {
          do
          {
            v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
          }

          while (v66 != v65);
          v67 = __p;
        }

        v145 = v65;
        operator delete(v67);
      }

      v68 = v142;
      if (!v142)
      {
        goto LABEL_109;
      }

      v69 = v143;
      v70 = v142;
      if (v143 == v142)
      {
        goto LABEL_108;
      }

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
      goto LABEL_107;
    }
  }

  return v64;
}

uint64_t mlir::mps_spi::__mlir_ods_local_type_constraint_MPSSPIOps7(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v43 = 261;
  v42[0] = a3;
  v42[1] = a4;
  mlir::Operation::emitOpError(a1, v42, v47);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v47, " #");
  if (*v7)
  {
    v9 = v7 + 24;
    v8 = *(v7 + 24);
    v44 = 5;
    v45 = a5;
    v10 = *(v7 + 32);
    v11 = &v44;
    if (v10 >= *(v7 + 36))
    {
      if (v8 <= &v44 && v8 + 24 * v10 > &v44)
      {
        v37 = &v44 - v8;
        v38 = v7;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v10 + 1, 24);
        v7 = v38;
        v8 = *(v38 + 24);
        v11 = &v37[v8];
      }

      else
      {
        v35 = v7;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v10 + 1, 24);
        v7 = v35;
        v8 = *(v35 + 24);
        v11 = &v44;
      }
    }

    v12 = v8 + 24 * *(v7 + 32);
    v13 = *v11;
    *(v12 + 16) = *(v11 + 2);
    *v12 = v13;
    v14 = (*(v7 + 32) + 1);
    *(v7 + 32) = v14;
    if (*v7)
    {
      v44 = 3;
      v45 = " must be variadic of index, but got ";
      v46 = 36;
      v15 = *(v7 + 24);
      v16 = &v44;
      if (v14 >= *(v7 + 36))
      {
        if (v15 <= &v44 && v15 + 24 * v14 > &v44)
        {
          v39 = &v44 - v15;
          v40 = v7;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v7 + 40, v14 + 1, 24);
          v7 = v40;
          v15 = *(v40 + 24);
          v16 = &v39[v15];
        }

        else
        {
          v36 = v7;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v7 + 40, v14 + 1, 24);
          v7 = v36;
          v15 = *(v36 + 24);
          v16 = &v44;
        }
      }

      v17 = v15 + 24 * *(v7 + 32);
      v18 = *v16;
      *(v17 + 16) = *(v16 + 2);
      *v17 = v18;
      ++*(v7 + 32);
      if (*v7)
      {
        v19 = &v44;
        v20 = v7;
        mlir::DiagnosticArgument::DiagnosticArgument(&v44, a2);
        v7 = v20;
        v21 = *(v20 + 32);
        v22 = *(v20 + 24);
        if (v21 >= *(v20 + 36))
        {
          if (v22 <= &v44 && v22 + 24 * v21 > &v44)
          {
            v41 = &v44 - v22;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v20 + 40, v21 + 1, 24);
            v7 = v20;
            v22 = *(v20 + 24);
            v19 = &v41[v22];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v20 + 40, v21 + 1, 24);
            v7 = v20;
            v22 = *(v20 + 24);
            v19 = &v44;
          }
        }

        v23 = v22 + 24 * *(v7 + 32);
        v24 = *v19;
        *(v23 + 16) = *(v19 + 2);
        *v23 = v24;
        ++*(v7 + 32);
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v7);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v53;
      v28 = __p;
      if (v53 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v53 = v26;
      operator delete(v28);
    }

    v29 = v50;
    if (v50)
    {
      v30 = v51;
      v31 = v50;
      if (v51 != v50)
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
        v31 = v50;
      }

      v51 = v29;
      operator delete(v31);
    }

    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v25;
}