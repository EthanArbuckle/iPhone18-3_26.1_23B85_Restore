void mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::tensor::ScatterOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::tensor::ScatterOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::tensor::ScatterOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::ScatterOp>,mlir::OpTrait::OneResult<mlir::tensor::ScatterOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::tensor::ScatterOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::ScatterOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::tensor::ScatterOp>,mlir::OpTrait::OpInvariants<mlir::tensor::ScatterOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::ScatterOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::ScatterOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::ScatterOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::ScatterOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::ScatterOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::writeProperties;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneResult<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneOperand<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CollapseShapeOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CollapseShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CollapseShapeOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(0x20uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::getDefaultDialect;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CastOp>,mlir::OpTrait::OneResult<mlir::tensor::CastOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CastOp>,mlir::OpTrait::OneOperand<mlir::tensor::CastOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CastOp>,mlir::CastOpInterface::Trait<mlir::tensor::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CastOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::tensor::ScatterOp>::getSpeculatability;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::getEffects;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ScatterOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::tensor::ScatterOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::tensor::ScatterOp::verify(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::SplatOp>,mlir::OpTrait::OneResult<mlir::tensor::SplatOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::tensor::SplatOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::SplatOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::tensor::SplatOp>,mlir::OpTrait::OpInvariants<mlir::tensor::SplatOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::SplatOp>,mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::tensor::SplatOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::SplatOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::SplatOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::SplatOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::SplatOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::SplatOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::SplatOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::SplatOp>::getDefaultDialect;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CastOp>,mlir::OpTrait::OneResult<mlir::tensor::CastOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CastOp>,mlir::OpTrait::OneOperand<mlir::tensor::CastOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CastOp>,mlir::CastOpInterface::Trait<mlir::tensor::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CastOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ReifyRankedShapedTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::SplatOp>::reifyResultShapes;
  {
    v12 = v4;
    mlir::Dialect::declarePromisedInterfaces<mlir::ReifyRankedShapedTypeOpInterface,mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp,mlir::tensor::PadOp>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::tensor::SplatOp>::getSpeculatability;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::tensor::SplatOp>::getEffects;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

BOOL mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::tensor::SplatOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17 = a1;
  v18[0] = v8;
  v18[1] = v9;
  v19 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(v20, v12, v11);
  v20[2] = a2;
  v20[3] = a3;
  v13 = mlir::tensor::SplatOp::fold(&v17, v18);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::SplatOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::tensor::SplatOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::tensor::SplatOp::verify(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::tensor::UnPackOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::tensor::UnPackOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::tensor::UnPackOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] == a2[1])
  {
    return a3[2] == a2[2];
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::UnPackOp>,mlir::OpTrait::OneResult<mlir::tensor::UnPackOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::tensor::UnPackOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::UnPackOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::tensor::UnPackOp>,mlir::OpTrait::OpInvariants<mlir::tensor::UnPackOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::DestinationStyleOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::UnPackOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::UnPackOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::writeProperties;
  {
    v17 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneResult<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneOperand<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CollapseShapeOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CollapseShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CollapseShapeOp>>();
    v3 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(0x20uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getDefaultDialect;
  {
    v18 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CastOp>,mlir::OpTrait::OneResult<mlir::tensor::CastOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CastOp>,mlir::OpTrait::OneOperand<mlir::tensor::CastOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CastOp>,mlir::CastOpInterface::Trait<mlir::tensor::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CastOp>>();
    v5 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getDpsInitsMutable;
  {
    v19 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::InsertOp>,mlir::OpTrait::OneResult<mlir::tensor::InsertOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::tensor::InsertOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::InsertOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::tensor::InsertOp>,mlir::OpTrait::OpInvariants<mlir::tensor::InsertOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::InsertOp>,mlir::DestinationStyleOpInterface::Trait<mlir::tensor::InsertOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::InsertOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::InsertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::InsertOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::InsertOp>>();
    v7 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::tensor::UnPackOp>::getSpeculatability;
  {
    v20 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v9 = v20;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(8uLL);
  v11 = v10;
  *v10 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getEffects;
  {
    v21 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v11 = v21;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(8uLL);
  v13 = v12;
  *v12 = mlir::detail::ReifyRankedShapedTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::reifyResultShapes;
  {
    v22 = v12;
    mlir::Dialect::declarePromisedInterfaces<mlir::ReifyRankedShapedTypeOpInterface,mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp,mlir::tensor::PadOp>();
    v13 = v22;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id, v13);
  v14 = malloc(0x18uLL);
  v15 = v14;
  *v14 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::inferReturnTypes;
  v14[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::refineReturnTypes;
  v14[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::isCompatibleReturnTypes;
  {
    v23 = v14;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::DimOp>,mlir::OpTrait::OneResult<mlir::tensor::DimOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::tensor::DimOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::DimOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::tensor::DimOp>,mlir::OpTrait::OpInvariants<mlir::tensor::DimOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::DimOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::DimOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::DimOp>,mlir::ShapedDimOpInterface::Trait<mlir::tensor::DimOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::DimOp>>();
    v15 = v23;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v16, v15);
}

mlir::MutableOperandRange *mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getDpsInitsMutable@<X0>(uint64_t a1@<X1>, mlir::MutableOperandRange *a2@<X8>)
{
  v5 = a1;
  ODSOperandIndexAndLength = mlir::tensor::InsertOp::getODSOperandIndexAndLength(&v5, 1u);
  return mlir::MutableOperandRange::MutableOperandRange(a2, (*(v5 + 72) + 32 * ODSOperandIndexAndLength));
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::tensor::UnPackOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::tensor::InsertOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
  {
    mlir::ValueRange::ValueRange(&v23, v25, v26);
    mlir::ValueRange::ValueRange(v22, *a11, *(a11 + 8));
    v13 = v24;
    if (v24 == v22[1])
    {
      if (!v24)
      {
LABEL_7:
        v18 = 1;
        v19 = v25;
        if (v25 == v27)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v23;
      v16 = v22[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v23 = "tensor.unpack";
    v24 = 13;
    v21.var0.var0 = a3;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v21, "'", &v23, "' op inferred type(s) ", &v25, " are incompatible with return type(s) of operation ", a11);
    v19 = v25;
    if (v25 == v27)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v25;
  if (v25 != v27)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::tensor::UnPackOp::fold(&v13, v14);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v104;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  v94 = v1;
  v107 = a1;
  v71 = v3;
  v82 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v95 = v1;
  v108 = a1;
  v72 = v3;
  v83 = v2;
  v62 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v96 = v1;
  v109 = a1;
  v73 = v3;
  v84 = v2;
  v54 = v5;
  v63 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v97 = v1;
  v110 = a1;
  v74 = v3;
  v85 = v2;
  v55 = v5;
  v64 = v4;
  v47 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v98 = v1;
  v111 = a1;
  v75 = v3;
  v86 = v2;
  v56 = v5;
  v65 = v4;
  v41 = v7;
  v48 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v99 = v1;
  v112 = a1;
  v76 = v3;
  v87 = v2;
  v57 = v5;
  v66 = v4;
  v42 = v7;
  v49 = v6;
  v36 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v100 = v1;
  v113 = a1;
  v77 = v3;
  v88 = v2;
  v58 = v5;
  v67 = v4;
  v43 = v7;
  v50 = v6;
  v32 = v9;
  v37 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v9 = v32;
  v8 = v37;
  v7 = v43;
  v6 = v50;
  v5 = v58;
  v4 = v67;
  v3 = v77;
  v2 = v88;
  v1 = v100;
  a1 = v113;
  v10 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

LABEL_65:
    v102 = v1;
    v115 = a1;
    v79 = v3;
    v90 = v2;
    v60 = v5;
    v69 = v4;
    v45 = v7;
    v52 = v6;
    v34 = v9;
    v39 = v8;
    v27 = v11;
    v30 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>();
    v11 = v27;
    v10 = v30;
    v9 = v34;
    v8 = v39;
    v7 = v45;
    v6 = v52;
    v5 = v60;
    v4 = v69;
    v3 = v79;
    v2 = v90;
    v1 = v102;
    a1 = v115;
    v12 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_66;
  }

LABEL_64:
  v101 = v1;
  v114 = a1;
  v78 = v3;
  v89 = v2;
  v59 = v5;
  v68 = v4;
  v44 = v7;
  v51 = v6;
  v33 = v9;
  v38 = v8;
  v29 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v10 = v29;
  v9 = v33;
  v8 = v38;
  v7 = v44;
  v6 = v51;
  v5 = v59;
  v4 = v68;
  v3 = v78;
  v2 = v89;
  v1 = v101;
  a1 = v114;
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_66:
  v103 = v1;
  v116 = a1;
  v80 = v3;
  v91 = v2;
  v61 = v5;
  v70 = v4;
  v46 = v7;
  v53 = v6;
  v35 = v9;
  v40 = v8;
  v28 = v11;
  v31 = v10;
  v26 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v12 = v26;
  v11 = v28;
  v10 = v31;
  v9 = v35;
  v8 = v40;
  v7 = v46;
  v6 = v53;
  v5 = v61;
  v4 = v70;
  v3 = v80;
  v2 = v91;
  v1 = v103;
  a1 = v116;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::tensor::UnPackOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::tensor::UnPackOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::tensor::UnPackOp::verify(&v6);
}

uint64_t mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    return mlir::detail::verifyInferredResultTypes(a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::YieldOp>,mlir::OpTrait::ZeroResults<mlir::tensor::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::YieldOp>,mlir::OpTrait::OneOperand<mlir::tensor::YieldOp>,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::tensor::YieldOp>,mlir::OpTrait::OpInvariants<mlir::tensor::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::tensor::YieldOp>,mlir::OpTrait::ReturnLike<mlir::tensor::YieldOp>,mlir::OpTrait::IsTerminator<mlir::tensor::YieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::tensor::YieldOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getMutableSuccessorOperands;
  v6[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getSuccessorRegions;
  {
    v11 = v6;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::tensor::GenerateOp, mlir::tensor::PadOp>::Impl<Empty>]";
  v6 = 134;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::AtomicYieldOp::print(&v7, a3);
}

uint64_t mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::tensor::YieldOp>::verifyTrait(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      v3 = *(*(ParentOp + 48) + 16);
      if (v3 == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
      {
        return 1;
      }
    }
  }

  v32 = 257;
  mlir::Operation::emitOpError(a1, &v31, &v37);
  if (!v37)
  {
    goto LABEL_17;
  }

  LODWORD(v34) = 3;
  *(&v34 + 1) = "expects parent op ";
  *&v35 = 18;
  v6 = &v34;
  v7 = v39;
  if (v40 >= v41)
  {
    if (v39 <= &v34 && v39 + 24 * v40 > &v34)
    {
      v28 = &v34 - v39;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
      v7 = v39;
      v6 = (v39 + v28);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
      v6 = &v34;
      v7 = v39;
    }
  }

  v8 = &v7[24 * v40];
  v9 = *v6;
  *(v8 + 2) = *(v6 + 2);
  *v8 = v9;
  v10 = ++v40;
  if (v37)
  {
    LODWORD(v34) = 3;
    *(&v34 + 1) = "to be one of '";
    *&v35 = 14;
    v11 = &v34;
    v12 = v39;
    if (v10 >= v41)
    {
      if (v39 <= &v34 && v39 + 24 * v10 > &v34)
      {
        v29 = &v34 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v10 + 1, 24);
        v12 = v39;
        v11 = (v39 + v29);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v10 + 1, 24);
        v11 = &v34;
        v12 = v39;
      }
    }

    v13 = &v12[24 * v40];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    ++v40;
    v34 = xmmword_1E86D3540;
    v35 = *&off_1E86D3550;
    if (v37)
    {
      v33[0] = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v38, v38, v33);
      if (v37)
      {
        LODWORD(v33[0]) = 3;
        v33[1] = "'";
        v33[2] = 1;
        v15 = v33;
        v16 = v39;
        if (v40 >= v41)
        {
          if (v39 <= v33 && v39 + 24 * v40 > v33)
          {
            v30 = v33 - v39;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v16 = v39;
            v15 = (v39 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v15 = v33;
            v16 = v39;
          }
        }

        v17 = &v16[24 * v40];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v40;
      }
    }
  }

  else
  {
LABEL_17:
    v34 = xmmword_1E86D3540;
    v35 = *&off_1E86D3550;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
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

    v19 = __p;
    if (__p)
    {
      v20 = v46;
      v21 = __p;
      if (v46 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v46 = v19;
      operator delete(v21);
    }

    v22 = v43;
    if (v43)
    {
      v23 = v44;
      v24 = v43;
      if (v44 != v43)
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
        v24 = v43;
      }

      v44 = v22;
      operator delete(v24);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }

  return v5;
}

void anonymous namespace::TensorInlinerInterface::~TensorInlinerInterface(_anonymous_namespace_::TensorInlinerInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t anonymous namespace::TensorInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

const char *llvm::getTypeName<mlir::transform::FindPayloadReplacementOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::FindPayloadReplacementOpInterface]";
  v6 = 100;
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

const char *llvm::getTypeName<mlir::SubsetExtractionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SubsetExtractionOpInterface]";
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

const char *llvm::getTypeName<mlir::TilingInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TilingInterface]";
  v6 = 71;
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

uint64_t mlir::tensor::TensorDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  if (!result)
  {
    if (mlir::complex::ConstantOp::isBuildableWith(a3, a4))
    {
      v10 = a3;
      return mlir::OpBuilder::create<mlir::complex::ConstantOp,mlir::Type &,mlir::ArrayAttr>(a2, a5, &v11, &v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::tensor::getMixedSize(mlir::IndexType **a1, uint64_t a2, uint64_t a3, mlir::MLIRContext *a4)
{
  v4 = a4;
  v19[1] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a3;
  v12 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v17;
  v16 = 0x600000000;
  if (*(mlir::ArrayAttr::getValue(&v12) + 8 * a4) != 0x8000000000000000)
  {
    Value = mlir::ArrayAttr::getValue(&v12);
    v8 = mlir::Builder::getIndexAttr(a1, *(Value + 8 * v4)) & 0xFFFFFFFFFFFFFFFBLL;
    v9 = v15;
    if (v15 == v17)
    {
      return v8;
    }

LABEL_7:
    free(v9);
    return v8;
  }

  v18[0] = v19;
  v18[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a1, v18, a2, &v14, &v13);
  v7 = *v18[0];
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  v8 = v7 | 4;
  v9 = v15;
  if (v15 != v17)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::tensor::EmptyOp::build(v11, v18, *a3, *(a3 + 8), *a4, 0);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

BOOL mlir::tensor::isSameTypeWithoutEncoding(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v12 = v2;
  if (!v2)
  {
    return a1 == a2;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v11 = v3;
  if (!v3)
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v12);
  v6 = v5;
  v7 = mlir::ArrayAttr::getValue(&v11);
  if (v6 != v8 || memcmp(Value, v7, 8 * v6))
  {
    return 0;
  }

  RHS = mlir::AffineBinaryOpExpr::getRHS(&v12);
  return RHS == mlir::AffineBinaryOpExpr::getRHS(&v11);
}

BOOL mlir::tensor::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  if (a2 == 1 && a4 == 1)
  {
    v22[3] = v4;
    v22[4] = v5;
    v9 = mlir::TypeRange::dereference_iterator(a1, 0);
    v10 = mlir::TypeRange::dereference_iterator(a3, 0);
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v21 = v13;
    v14 = *(*v10 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v20 = v16;
    if (v13)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    v7 = !v17 && (v22[0] = mlir::TensorType::getElementType(&v21), IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v22), v22[0] = mlir::TensorType::getElementType(&v20), IntOrFloatBitWidth == mlir::Type::getIntOrFloatBitWidth(v22)) && mlir::verifyCompatibleShape(v21, v20);
  }

  return v7;
}

void mlir::tensor::BitcastOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.bitcast", 14, v24, a2, 0, 0);
  *v4 = &unk_1F5B091E8;
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

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ChainedTensorBitcast]";
  v25 = 93;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
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

uint64_t mlir::tensor::preservesStaticInformation(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v21 = v2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v20 = v3;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  RHS = mlir::AffineBinaryOpExpr::getRHS(&v21);
  if (RHS == mlir::AffineBinaryOpExpr::getRHS(&v20))
  {
    mlir::ArrayAttr::getValue(&v21);
    v9 = v8;
    mlir::ArrayAttr::getValue(&v20);
    if (v9 == v10)
    {
      Values = mlir::SparseElementsAttr::getValues(&v21);
      if (Values == mlir::SparseElementsAttr::getValues(&v20))
      {
        Value = mlir::ArrayAttr::getValue(&v21);
        v14 = v13;
        v15 = mlir::ArrayAttr::getValue(&v20);
        v5 = 1;
        if (v14 && v16)
        {
          v17 = 8 * v16 - 8;
          v18 = 8 * v14 - 8;
          while (*Value == 0x8000000000000000 || *v15 != 0x8000000000000000)
          {
            v5 = 1;
            if (v18)
            {
              ++Value;
              ++v15;
              v19 = v17;
              v17 -= 8;
              v18 -= 8;
              if (v19)
              {
                continue;
              }
            }

            return v5;
          }

          return 0;
        }

        return v5;
      }
    }
  }

  return 0;
}

BOOL mlir::tensor::CastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  if (a2 == 1 && a4 == 1)
  {
    v21[3] = v4;
    v21[4] = v5;
    v9 = mlir::TypeRange::dereference_iterator(a1, 0);
    v10 = mlir::TypeRange::dereference_iterator(a3, 0);
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v21[0] = v13;
    v14 = *(*v10 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v20 = v16;
    if (v13)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    v7 = !v17 && (ElementType = mlir::TensorType::getElementType(v21), ElementType == mlir::TensorType::getElementType(&v20)) && mlir::verifyCompatibleShape(v21[0], v20);
  }

  return v7;
}

void mlir::tensor::CastOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.cast", 11, v44, a2, 0, 0);
  *v4 = &unk_1F5B09288;
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

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ChainedTensorCast]";
  v45 = 90;
  v9 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v45;
  }

  v11 = &v44[v10];
  v12 = v45 - v10;
  if (v45 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v45 - v10;
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
  mlir::Pattern::Pattern((v24 + 2), "tensor.cast", 11, v44, a2, 0, 0);
  *v24 = &unk_1F5B09328;
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

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TensorCastExtractSlice]";
  v45 = 95;
  v29 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v45;
  }

  v31 = &v44[v30];
  v32 = v45 - v30;
  if (v45 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v45 - v30;
  }

  v34 = &v31[v33];
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

uint64_t mlir::tensor::ConcatOp::inferResultType(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v43 = v45;
  v44 = 0x400000000;
  if (a3 < 5)
  {
    if (!a3)
    {
      v11 = 0;
      v12 = v45;
      goto LABEL_8;
    }

    v7 = 0;
    v8 = v45;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, a3, 8);
    v7 = v44;
    v8 = v43;
  }

  v9 = 0;
  v10 = v8 + 8 * v7;
  do
  {
    *&v10[8 * v9] = mlir::TypeRange::dereference_iterator(a2, v9);
    ++v9;
  }

  while (a3 != v9);
  v11 = v44;
  v12 = v43;
LABEL_8:
  LODWORD(v44) = v11 + a3;
  mlir::ArrayAttr::getValue(v12);
  v40 = v42;
  v41 = 0x600000000;
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  if (v13 < 7)
  {
    v15 = 0;
    v16 = v13;
LABEL_11:
    bzero(v40 + 8 * v15, 8 * v16);
    LODWORD(v41) = v14;
    if (v14 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v13, 8);
  v15 = v41;
  v16 = v14 - v41;
  if (v14 != v41)
  {
    goto LABEL_11;
  }

  LODWORD(v41) = v14;
LABEL_29:
  for (i = 0; i != v14; ++i)
  {
    if (i != a1)
    {
      if (v44)
      {
        v32 = 0;
        v33 = v43;
        v34 = 8 * v44;
        v35 = 1;
        do
        {
          v39 = *v33;
          Value = mlir::ArrayAttr::getValue(&v39);
          v37 = *(Value + 8 * i);
          if (v35)
          {
            if (v37 != 0x8000000000000000)
            {
              v35 = 0;
              v32 = *(Value + 8 * i);
            }
          }

          else if (v37 != 0x8000000000000000 && v32 != v37)
          {
            v35 = 0;
            v32 = v3;
          }

          v33 = (v33 + 8);
          v3 = v32;
          v34 -= 8;
        }

        while (v34);
        if (v35)
        {
          v31 = 0x8000000000000000;
        }

        else
        {
          v31 = v32;
        }

        v3 = v32;
      }

      else
      {
        v31 = 0x8000000000000000;
      }

      *(v40 + i) = v31;
    }
  }

LABEL_12:
  v17 = v43;
  if (v44)
  {
    v18 = 0;
    v19 = 0;
    v20 = 8 * v44;
    do
    {
      v21 = *v17;
      v17 = (v17 + 8);
      v39 = v21;
      v22 = *(mlir::ArrayAttr::getValue(&v39) + 8 * a1);
      v23 = v22 == 0x8000000000000000;
      v24 = v22 + v19;
      v18 |= v23;
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v24;
      }

      v20 -= 8;
    }

    while (v20);
    v17 = v43;
    if (v18)
    {
      v24 = 0x8000000000000000;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v40;
  *(v40 + a1) = v24;
  v26 = v41;
  RHS = mlir::AffineBinaryOpExpr::getRHS(v17);
  v28 = mlir::RankedTensorType::get(v25, v26, RHS, 0);
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v28;
}

uint64_t mlir::tensor::ConcatOp::verify(mlir::tensor::ConcatOp *this)
{
  v145[6] = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0 || (v3 = *(v2 + 68), !v3))
  {
    mlir::tensor::ConcatOp::verify(this, &v131);
    return v131;
  }

  v4 = 0;
  v143 = v145;
  v144 = 0x600000000;
  v5 = *(v2 + 72) + 24;
  do
  {
    v6 = *(*v5 + 8);
    if (v4 >= HIDWORD(v144))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v145, v4 + 1, 8);
      v4 = v144;
    }

    v143[v4] = (v6 & 0xFFFFFFFFFFFFFFF8);
    v4 = v144 + 1;
    LODWORD(v144) = v144 + 1;
    v5 += 32;
    --v3;
  }

  while (v3);
  if (*(*this + 36))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  v123 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*this + 36))
  {
    v8 = *this - 16;
  }

  else
  {
    v8 = 0;
  }

  v131 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v131);
  v10 = v9;
  if (v144)
  {
    v11 = v143;
    v12 = 8 * v144;
    while (1)
    {
      v131 = *v11;
      mlir::ArrayAttr::getValue(&v131);
      if (v13 != v10)
      {
        break;
      }

      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v127 = "rank of concatenated inputs must match result rank";
    v130 = 259;
    mlir::OpState::emitOpError(this, &v127, &v131);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v131);
    if (v131)
    {
      mlir::InFlightDiagnostic::report(&v131);
    }

    if (v142 != 1)
    {
      goto LABEL_80;
    }

    if (v141 != &v142)
    {
      free(v141);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v140;
      v30 = __p;
      if (v140 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v140 = v28;
      operator delete(v30);
    }

    v23 = v137;
    if (v137)
    {
      v31 = v138;
      v25 = v137;
      if (v138 == v137)
      {
        goto LABEL_77;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          operator delete[](v32);
        }
      }

      while (v31 != v23);
      goto LABEL_76;
    }

LABEL_78:
    v42 = v133;
    if (v133 == v136)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_17:
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v123);
  if (v144)
  {
    v15 = RHS;
    v16 = v143;
    v17 = 8 * v144;
    while (1)
    {
      v131 = *v16;
      if (v15 != mlir::AffineBinaryOpExpr::getRHS(&v131))
      {
        break;
      }

      ++v16;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    v127 = "inputs and result element type must match";
    v130 = 259;
    mlir::OpState::emitOpError(this, &v127, &v131);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v131);
    if (v131)
    {
      mlir::InFlightDiagnostic::report(&v131);
    }

    if (v142 != 1)
    {
      goto LABEL_80;
    }

    if (v141 != &v142)
    {
      free(v141);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v140;
      v38 = __p;
      if (v140 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v140 = v36;
      operator delete(v38);
    }

    v23 = v137;
    if (!v137)
    {
      goto LABEL_78;
    }

    v39 = v138;
    v25 = v137;
    if (v138 == v137)
    {
      goto LABEL_77;
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
    goto LABEL_76;
  }

LABEL_21:
  v127 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v127, &v131);
  if (v132 > 0x40)
  {
    v18 = *v131;
    operator delete[](v131);
    if (v18 >= v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = v131;
    if (v131 >= v10)
    {
LABEL_23:
      v127 = "concatenation dim must be less than the tensor rank";
      v130 = 259;
      mlir::OpState::emitOpError(this, &v127, &v131);
      v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v131);
      if (v131)
      {
        mlir::InFlightDiagnostic::report(&v131);
      }

      if (v142 != 1)
      {
        goto LABEL_80;
      }

      if (v141 != &v142)
      {
        free(v141);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v140;
        v22 = __p;
        if (v140 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v140 = v20;
        operator delete(v22);
      }

      v23 = v137;
      if (!v137)
      {
        goto LABEL_78;
      }

      v24 = v138;
      v25 = v137;
      if (v138 == v137)
      {
        goto LABEL_77;
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
LABEL_76:
      v25 = v137;
LABEL_77:
      v138 = v23;
      operator delete(v25);
      goto LABEL_78;
    }
  }

  v127 = v129;
  v128 = 0x600000000;
  if (v10)
  {
    if (v10 < 7)
    {
      v34 = 0;
      v35 = v10;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v129, v10, 8);
      v34 = v128;
      v35 = v10 - v128;
      if (v10 == v128)
      {
LABEL_85:
        LODWORD(v128) = v10;
        if (v10 >= 1)
        {
          for (i = 0; i != v10; ++i)
          {
            if (i != v18)
            {
              if (v144)
              {
                v46 = 0;
                v47 = v143;
                v48 = 8 * v144;
                v49 = 1;
                while (1)
                {
                  v122 = *v47;
                  Value = mlir::ArrayAttr::getValue(&v122);
                  v51 = *(Value + 8 * i);
                  if (v49)
                  {
                    if (v51 != 0x8000000000000000)
                    {
                      v46 = *(Value + 8 * i);
                      v49 = 0;
                    }
                  }

                  else if (v51 != 0x8000000000000000 && v46 != v51)
                  {
                    v120[0] = "static concatenation size mismatch along ";
                    v121 = 259;
                    mlir::OpState::emitOpError(this, v120, &v131);
                    if (v131)
                    {
                      v124 = 3;
                      v125 = "non-concatenated dimension ";
                      v126 = 27;
                      v61 = &v124;
                      v62 = v133;
                      if (v134 >= v135)
                      {
                        if (v133 <= &v124 && v133 + 24 * v134 > &v124)
                        {
                          v114 = &v124 - v133;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
                          v62 = v133;
                          v61 = (v133 + v114);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
                          v61 = &v124;
                          v62 = v133;
                        }
                      }

                      v63 = &v62[24 * v134];
                      v64 = *v61;
                      *(v63 + 2) = *(v61 + 2);
                      *v63 = v64;
                      v65 = ++v134;
                      if (v131)
                      {
                        v124 = 2;
                        v125 = i;
                        v66 = &v124;
                        v67 = v133;
                        if (v65 >= v135)
                        {
                          if (v133 <= &v124 && v133 + 24 * v65 > &v124)
                          {
                            v115 = &v124 - v133;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v65 + 1, 24);
                            v67 = v133;
                            v66 = (v133 + v115);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v65 + 1, 24);
                            v66 = &v124;
                            v67 = v133;
                          }
                        }

                        v68 = &v67[24 * v134];
                        v69 = *v66;
                        *(v68 + 2) = *(v66 + 2);
                        *v68 = v69;
                        ++v134;
                      }
                    }

                    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v131);
                    if (v131)
                    {
                      mlir::InFlightDiagnostic::report(&v131);
                    }

                    if (v142)
                    {
                      if (v141 != &v142)
                      {
                        free(v141);
                      }

                      v70 = __p;
                      if (__p)
                      {
                        v71 = v140;
                        v72 = __p;
                        if (v140 != __p)
                        {
                          do
                          {
                            v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
                          }

                          while (v71 != v70);
                          v72 = __p;
                        }

                        v140 = v70;
                        operator delete(v72);
                      }

                      v73 = v137;
                      if (v137)
                      {
                        v74 = v138;
                        v75 = v137;
                        if (v138 != v137)
                        {
                          do
                          {
                            v77 = *--v74;
                            v76 = v77;
                            *v74 = 0;
                            if (v77)
                            {
                              operator delete[](v76);
                            }
                          }

                          while (v74 != v73);
                          v75 = v137;
                        }

                        v138 = v73;
                        operator delete(v75);
                      }

                      v113 = v133;
                      if (v133 != v136)
                      {
                        goto LABEL_174;
                      }
                    }

                    goto LABEL_175;
                  }

                  ++v47;
                  v48 -= 8;
                  if (!v48)
                  {
                    if (v49)
                    {
                      v45 = 0x8000000000000000;
                    }

                    else
                    {
                      v45 = v46;
                    }

                    goto LABEL_90;
                  }
                }
              }

              v45 = 0x8000000000000000;
LABEL_90:
              *&v127[8 * i] = v45;
            }
          }
        }

        goto LABEL_105;
      }
    }

    bzero(&v127[8 * v34], 8 * v35);
    goto LABEL_85;
  }

LABEL_105:
  v53 = v143;
  if (v144)
  {
    v54 = 0;
    v55 = 0;
    v56 = 8 * v144;
    do
    {
      v57 = *v53;
      v53 = (v53 + 8);
      v131 = v57;
      v58 = *(mlir::ArrayAttr::getValue(&v131) + 8 * v18);
      v59 = v58 == 0x8000000000000000;
      v60 = v58 + v54;
      v55 |= v59;
      if (v55)
      {
        v54 = 0;
      }

      else
      {
        v54 = v60;
      }

      v56 -= 8;
    }

    while (v56);
    v53 = v143;
    if (v55)
    {
      v60 = 0x8000000000000000;
    }
  }

  else
  {
    v60 = 0;
  }

  v78 = v127;
  *&v127[8 * v18] = v60;
  v79 = v128;
  v80 = mlir::AffineBinaryOpExpr::getRHS(v53);
  v122 = mlir::RankedTensorType::get(v78, v79, v80, 0);
  v81 = mlir::ArrayAttr::getValue(&v122);
  v83 = v82;
  v84 = mlir::ArrayAttr::getValue(&v123);
  if (v83)
  {
    v85 = 8 * v83;
    while (*v81 == 0x8000000000000000 || *v84 == 0x8000000000000000 || *v81 == *v84)
    {
      ++v81;
      ++v84;
      v85 -= 8;
      if (!v85)
      {
        goto LABEL_170;
      }
    }

    v120[0] = "result type ";
    v121 = 259;
    mlir::OpState::emitOpError(this, v120, &v131);
    if (v131)
    {
      v87 = &v124;
      mlir::DiagnosticArgument::DiagnosticArgument(&v124, v123);
      v88 = v133;
      if (v134 >= v135)
      {
        if (v133 <= &v124 && v133 + 24 * v134 > &v124)
        {
          v116 = &v124 - v133;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
          v88 = v133;
          v87 = (v133 + v116);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
          v87 = &v124;
          v88 = v133;
        }
      }

      v89 = &v88[24 * v134];
      v90 = *v87;
      *(v89 + 2) = *(v87 + 2);
      *v89 = v90;
      v91 = ++v134;
      if (v131)
      {
        v124 = 3;
        v125 = "does not match inferred shape ";
        v126 = 30;
        v92 = &v124;
        v93 = v133;
        if (v91 >= v135)
        {
          if (v133 <= &v124 && v133 + 24 * v91 > &v124)
          {
            v117 = &v124 - v133;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v91 + 1, 24);
            v93 = v133;
            v92 = (v133 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v91 + 1, 24);
            v92 = &v124;
            v93 = v133;
          }
        }

        v94 = &v93[24 * v134];
        v95 = *v92;
        *(v94 + 2) = *(v92 + 2);
        *v94 = v95;
        ++v134;
        if (v131)
        {
          v96 = &v124;
          mlir::DiagnosticArgument::DiagnosticArgument(&v124, v122);
          v97 = v133;
          if (v134 >= v135)
          {
            if (v133 <= &v124 && v133 + 24 * v134 > &v124)
            {
              v118 = &v124 - v133;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
              v97 = v133;
              v96 = (v133 + v118);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
              v96 = &v124;
              v97 = v133;
            }
          }

          v98 = &v97[24 * v134];
          v99 = *v96;
          *(v98 + 2) = *(v96 + 2);
          *v98 = v99;
          v100 = ++v134;
          if (v131)
          {
            v124 = 3;
            v125 = " static sizes";
            v126 = 13;
            v101 = &v124;
            v102 = v133;
            if (v100 >= v135)
            {
              if (v133 <= &v124 && v133 + 24 * v100 > &v124)
              {
                v119 = &v124 - v133;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v100 + 1, 24);
                v102 = v133;
                v101 = (v133 + v119);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v100 + 1, 24);
                v101 = &v124;
                v102 = v133;
              }
            }

            v103 = &v102[24 * v134];
            v104 = *v101;
            *(v103 + 2) = *(v101 + 2);
            *v103 = v104;
            ++v134;
          }
        }
      }
    }

    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v131);
    if (v131)
    {
      mlir::InFlightDiagnostic::report(&v131);
    }

    if (v142)
    {
      if (v141 != &v142)
      {
        free(v141);
      }

      v105 = __p;
      if (__p)
      {
        v106 = v140;
        v107 = __p;
        if (v140 != __p)
        {
          do
          {
            v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
          }

          while (v106 != v105);
          v107 = __p;
        }

        v140 = v105;
        operator delete(v107);
      }

      v108 = v137;
      if (v137)
      {
        v109 = v138;
        v110 = v137;
        if (v138 != v137)
        {
          do
          {
            v112 = *--v109;
            v111 = v112;
            *v109 = 0;
            if (v112)
            {
              operator delete[](v111);
            }
          }

          while (v109 != v108);
          v110 = v137;
        }

        v138 = v108;
        operator delete(v110);
      }

      v113 = v133;
      if (v133 != v136)
      {
LABEL_174:
        free(v113);
      }
    }
  }

  else
  {
LABEL_170:
    v19 = 1;
  }

LABEL_175:
  v42 = v127;
  if (v127 == v129)
  {
    goto LABEL_80;
  }

LABEL_79:
  free(v42);
LABEL_80:
  if (v143 != v145)
  {
    free(v143);
  }

  return v19;
}

uint64_t mlir::tensor::ConcatOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "concat", 6);
}

void mlir::tensor::ConcatOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.concat", 13, v24, a2, 0, 0);
  *v4 = &unk_1F5B09398;
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

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SingleInputConcatOp]";
  v25 = 92;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
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

void mlir::tensor::DimOp::build(mlir::IndexType **a1, uint64_t *a2, uint64_t a3, mlir::MLIRContext *a4)
{
  v8 = a4;
  v7 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, *a2, &v8);
  mlir::memref::DimOp::build(a1, a2, a3, v7 - 16);
}

BOOL mlir::tensor::DimOp::getSpeculatability(mlir::tensor::DimOp *this)
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(*this + 72) + 56) | 4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = 0;
  }

  v8 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = ConstantIntValue;
  mlir::ArrayAttr::getValue(&v8);
  return v6 > v5;
}

void *mlir::tensor::DimOp::fold(mlir::tensor **a1, uint64_t a2)
{
  v2 = *(*(a2 + 40) + 8);
  if (!v2)
  {
    return 0;
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v2 = 0;
  }

  v30 = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v29 = v3;
  if (!v3)
  {
    return 0;
  }

  Int = mlir::IntegerAttr::getInt(&v30);
  if (Int < 0)
  {
    return 0;
  }

  v6 = Int;
  mlir::ArrayAttr::getValue(&v29);
  if (v6 >= v7)
  {
    return 0;
  }

  v8 = mlir::IntegerAttr::getInt(&v30);
  if (*(mlir::ArrayAttr::getValue(&v29) + 8 * v8) != 0x8000000000000000)
  {
    __p = mlir::Attribute::getContext((*a1 + 24));
    Value = mlir::ArrayAttr::getValue(&v29);
    v14 = mlir::IntegerAttr::getInt(&v30);
    return (mlir::Builder::getIndexAttr(&__p, *(Value + 8 * v14)) & 0xFFFFFFFFFFFFFFFBLL);
  }

  __p = *(*(*a1 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  v10 = DefiningOp;
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id)
  {
    mlir::tensor::DimOp::fold(DefiningOp, &v30, &__p);
    return __p;
  }

  mlir::IntegerAttr::getValue(&v30, &__p);
  if (v28 > 0x40)
  {
    v12 = *__p;
    operator delete[](__p);
  }

  else
  {
    v12 = __p;
  }

  if (v10)
  {
    v16 = *(*(v10 + 48) + 16);
    v17 = v16 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    v18 = v16 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v10 : 0;
    v26 = v18;
    if (v17)
    {
      v19 = *(v10 + 36) ? v10 - 16 : 0;
      v25 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::ArrayAttr::getValue(&v25);
      v21 = v20;
      v22 = v26;
      v24 = *(*(*(v26 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::ArrayAttr::getValue(&v24);
      if (v21 == v11)
      {
        __p = *(v22 + 16 * ((*(v22 + 44) >> 23) & 1) + 72);
        if (*(mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__p) + 8 * v12) == 0x8000000000000000)
        {
          return (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getDynamicSize(&v26, v12) | 4);
        }
      }
    }
  }

  if ((mlir::tensor::foldTensorCast(*a1, v11) & 1) == 0)
  {
    return 0;
  }

  if (*(*a1 + 9))
  {
    v23 = *a1 - 16;
  }

  else
  {
    v23 = 0;
  }

  return (mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) | 4);
}

void mlir::tensor::DimOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.dim", 10, v64, a2, 0, 0);
  *v4 = &unk_1F5B09438;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::DimOfCastOp]";
  v65 = 84;
  v9 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v65;
  }

  v11 = &v64[v10];
  v12 = v65 - v10;
  if (v65 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v65 - v10;
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
    goto LABEL_80;
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
      goto LABEL_81;
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
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v24 + 2), "tensor.dim", 10, v64, a2, 0, 0);
  *v24 = &unk_1F5B094A8;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::DimOfDestStyleOp]";
  v65 = 89;
  v29 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v65;
  }

  v31 = &v64[v30];
  v32 = v65 - v30;
  if (v65 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v65 - v30;
  }

  v34 = &v31[v33];
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
    goto LABEL_80;
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
      goto LABEL_81;
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
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v44 + 2), "tensor.dim", 10, v64, a2, 0, 0);
  *v44 = &unk_1F5B09518;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::DimOfReshapeOp]";
  v65 = 87;
  v49 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v65;
  }

  v51 = &v64[v50];
  v52 = v65 - v50;
  if (v65 - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = v65 - v50;
  }

  v54 = &v51[v53];
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
LABEL_80:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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
    if (!(v61 >> 61))
    {
      v62 = operator new(8 * v61);
      goto LABEL_77;
    }

LABEL_81:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v62 = 0;
LABEL_77:
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
}

void mlir::tensor::EmptyOp::build(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[6] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x600000000;
  v16 = v18;
  v17 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, &v16, &v19);
  v9 = v19;
  v10 = v20;
  mlir::ValueRange::ValueRange(v15, v16, v17);
  v11 = v15[0];
  v12 = v15[1];
  v13 = mlir::RankedTensorType::get(v9, v10, a5, a6);
  mlir::OperationState::addOperands(a2, v11, v12);
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14 + 1, 8);
    LODWORD(v14) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v14) = v13;
  ++*(a2 + 72);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::tensor::EmptyOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, uint64_t a3)
{
  v31[6] = *MEMORY[0x1E69E9840];
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v28 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v28);
  v29 = v31;
  v30 = 0x600000000;
  if (v7)
  {
    v8 = v7;
    if (v7 < 7)
    {
      v9 = 0;
      v10 = v7;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v7, 8);
      v9 = v30;
      v10 = v8 - v30;
      if (v8 == v30)
      {
        goto LABEL_10;
      }
    }

    bzero(v29 + 8 * v9, 8 * v10);
LABEL_10:
    LODWORD(v30) = v8;
  }

  v11 = *(a3 + 8);
  if (!v11)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v11, &v29);
LABEL_18:
    v15 = v29;
    if (v29 == v31)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v11 == 1)
  {
    goto LABEL_18;
  }

  v12 = v11 << 6;
  v13 = (v12 + *a3 - 64);
  v14 = 64 - v12;
  do
  {
    if (v13 + 2 != *v13)
    {
      free(*v13);
    }

    v13 -= 8;
    v14 += 64;
  }

  while (v14);
  *(a3 + 8) = 1;
  v15 = v29;
  if (v29 != v31)
  {
LABEL_19:
    free(v15);
  }

LABEL_20:
  if (*(*a1 + 36))
  {
    v16 = *a1 - 16;
  }

  else
  {
    v16 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v29);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      if (*(*a1 + 36))
      {
        v24 = *a1 - 16;
      }

      else
      {
        v24 = 0;
      }

      v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(mlir::ArrayAttr::getValue(&v29) + 8 * v19) == 0x8000000000000000)
      {
        v20 = v18++;
        v21 = *(*(*a1 + 72) + 32 * v20 + 24) | 4;
      }

      else
      {
        if (*(*a1 + 36))
        {
          v25 = *a1 - 16;
        }

        else
        {
          v25 = 0;
        }

        v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        Value = mlir::ArrayAttr::getValue(&v29);
        v21 = mlir::Builder::getIndexAttr(a2, *(Value + 8 * v19)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * v19++) = v21;
      if (*(*a1 + 36))
      {
        v22 = *a1 - 16;
      }

      else
      {
        v22 = 0;
      }

      v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::ArrayAttr::getValue(&v29);
    }

    while (v19 < v23);
  }

  return 1;
}

uint64_t mlir::tensor::EmptyOp::getMixedSizes@<X0>(mlir::tensor::EmptyOp *this@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + 16;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v21[0] = mlir::Attribute::getContext((*this + 24));
  memset(&v21[1], 0, 24);
  if (*(*this + 36))
  {
    v5 = *this - 16;
  }

  else
  {
    v5 = 0;
  }

  v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::ArrayAttr::getValue(&v20);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (*(*this + 36))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(mlir::ArrayAttr::getValue(&v20) + 8 * v9) == 0x8000000000000000)
      {
        v10 = *(*(*this + 72) + 32 * v8 + 24);
        v11 = *(a2 + 8);
        if (v11 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v4, v11 + 1, 8);
          v11 = *(a2 + 8);
        }

        ++v8;
        v12 = v10 | 4;
      }

      else
      {
        if (*(*this + 36))
        {
          v16 = *this - 16;
        }

        else
        {
          v16 = 0;
        }

        v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        Value = mlir::ArrayAttr::getValue(&v20);
        IndexAttr = mlir::Builder::getIndexAttr(v21, *(Value + 8 * v9));
        v11 = *(a2 + 8);
        if (v11 >= *(a2 + 12))
        {
          v19 = IndexAttr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v4, v11 + 1, 8);
          IndexAttr = v19;
          v11 = *(a2 + 8);
        }

        v12 = IndexAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(*a2 + 8 * v11) = v12;
      ++*(a2 + 8);
      ++v9;
      if (*(*this + 36))
      {
        v13 = *this - 16;
      }

      else
      {
        v13 = 0;
      }

      v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      result = mlir::ArrayAttr::getValue(&v20);
    }

    while (v9 < v14);
  }

  return result;
}

void mlir::tensor::EmptyOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.cast", 11, v64, a2, 0, 0);
  *v4 = &unk_1F5B09588;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithCastOp]";
  v65 = 98;
  v9 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v65;
  }

  v11 = &v64[v10];
  v12 = v65 - v10;
  if (v65 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v65 - v10;
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
    goto LABEL_80;
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
      goto LABEL_81;
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
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v24 + 2), "tensor.dim", 10, v64, a2, 0, 0);
  *v24 = &unk_1F5B095F8;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithDimOp]";
  v65 = 97;
  v29 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v65;
  }

  v31 = &v64[v30];
  v32 = v65 - v30;
  if (v65 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v65 - v30;
  }

  v34 = &v31[v33];
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
    goto LABEL_80;
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
      goto LABEL_81;
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
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v44 + 2), "tensor.empty", 12, v64, a2, 0, 0);
  *v44 = &unk_1F5B09668;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReplaceEmptyTensorStaticShapeDims]";
  v65 = 106;
  v49 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v65;
  }

  v51 = &v64[v50];
  v52 = v65 - v50;
  if (v65 - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = v65 - v50;
  }

  v54 = &v51[v53];
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
LABEL_80:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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
    if (!(v61 >> 61))
    {
      v62 = operator new(8 * v61);
      goto LABEL_77;
    }

LABEL_81:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v62 = 0;
LABEL_77:
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
}

uint64_t mlir::tensor::ExtractOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "extracted", 9);
}

unint64_t mlir::tensor::ExtractOp::fold(uint64_t a1, uint64_t a2)
{
  v51[9] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  v5 = *v4;
  if (*v4)
  {
    if (mlir::DenseElementsAttr::classof(*v4))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v50[0] = v6;
    if (v6)
    {
      isSplat = mlir::DenseElementsAttr::isSplat(v50);
      v8 = isSplat ? v5 : 0;
      v48 = v8;
      if (isSplat)
      {
        mlir::ArrayAttr::getValue(&v48);
        mlir::NamedAttribute::NamedAttribute(v50, v48, 0);
        v9 = v48;
        NumElements = mlir::DenseElementsAttr::getNumElements(&v48);
        mlir::NamedAttribute::NamedAttribute(&v41, v9, NumElements);
        return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v50) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v4 = *(a2 + 40);
  }

  v50[0] = v51;
  v50[1] = 0x800000000;
  v12 = 8 * *(a2 + 48);
  v13 = v12 - 8;
  if (v12 == 8)
  {
LABEL_13:
    v41 = *(*(*a1 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v41);
    if (DefiningOp && ((v15 = *(*(DefiningOp + 48) + 16), v15 != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id) ? (v16 = 0) : (v16 = DefiningOp), v15 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id))
    {
      v41 = *(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::ArrayAttr::getValue(&v41);
      v30 = 0;
      if (v29 - 1 >= 0)
      {
        v31 = 8 * (v29 - 1);
        LODWORD(v32) = 1;
        do
        {
          v30 += *(v50[0] + v31) * v32;
          v32 = *(mlir::ArrayAttr::getValue(&v41) + v31) * v32;
          v31 -= 8;
        }

        while (v31 != -8);
      }

      if ((*(v16 + 46) & 0x80) != 0)
      {
        v11 = 0;
        if ((v30 & 0x80000000) == 0 && v30 < *(v16 + 68))
        {
          v11 = *(*(v16 + 72) + 32 * v30 + 24) | 4;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v17 = **(a2 + 40);
      if (v17)
      {
        v18 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
        v47[0] = v18;
        v47[1] = v19;
        if (v18)
        {
          if (mlir::ElementsAttr::isValidIndex(v18, v19, v50[0], LODWORD(v50[1])))
          {
            mlir::ElementsAttr::getValues<mlir::Attribute>(v47, &v41);
            FlattenedIndex = mlir::ElementsAttr::getFlattenedIndex(v46, v50[0]);
            v21 = FlattenedIndex;
            LOWORD(v48) = v41;
            v22 = BYTE1(v41);
            if (v41 == 1)
            {
              v23 = v42;
              v49[0] = v42;
              v24 = v43 + FlattenedIndex;
            }

            else
            {
              (*(*v42 + 16))(v49);
              v22 = BYTE1(v48);
              v24 = v43 + v21;
              v49[1] = v43 + v21;
              if ((v48 & 1) == 0)
              {
                v38 = v49[0];
                v49[0] = 0;
                if ((v48 & 0x100) != 0)
                {
                  v39 = 0;
                }

                else
                {
                  v39 = v43 + v21;
                }

                v35 = (*(*v38 + 24))(v38, v39);
                (*(*v38 + 8))(v38);
                if ((v48 & 1) == 0)
                {
                  v40 = v49[0];
                  v49[0] = 0;
                  if (v40)
                  {
                    (*(*v40 + 8))(v40);
                  }
                }

                goto LABEL_47;
              }

              v23 = v49[0];
            }

            if (v22)
            {
              v34 = 0;
            }

            else
            {
              v34 = v24;
            }

            v35 = *(v23 + 8 * v34);
LABEL_47:
            if ((v44 & 1) == 0)
            {
              v36 = v45;
              v45 = 0;
              if (v36)
              {
                (*(*v36 + 8))(v36);
              }
            }

            v11 = v35 & 0xFFFFFFFFFFFFFFFBLL;
            if ((v41 & 1) == 0)
            {
              v37 = v42;
              v42 = 0;
              if (v37)
              {
                (*(*v37 + 8))(v37);
              }
            }

            goto LABEL_38;
          }
        }
      }
    }
  }

  else
  {
    v25 = (v4 + 1);
    while (*v25 && *(**v25 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v41 = *v25;
      Int = mlir::IntegerAttr::getInt(&v41);
      v27 = LODWORD(v50[1]);
      if (LODWORD(v50[1]) >= HIDWORD(v50[1]))
      {
        v28 = Int;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v50, v51, LODWORD(v50[1]) + 1, 8);
        Int = v28;
        v27 = LODWORD(v50[1]);
      }

      *(v50[0] + v27) = Int;
      ++LODWORD(v50[1]);
      ++v25;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = 0;
LABEL_38:
  if (v50[0] != v51)
  {
    free(v50[0]);
  }

  return v11;
}

void mlir::tensor::ExtractOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.extract", 14, v24, a2, 0, 0);
  *v4 = &unk_1F5B09708;
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

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ExtractFromTensorCast]";
  v25 = 94;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
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

uint64_t mlir::tensor::FromElementsOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "from_elements", 13);
}

void mlir::tensor::FromElementsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v8 = a4;
  v5 = mlir::ValueRange::dereference_iterator(&v9, 0);
  v6 = mlir::RankedTensorType::get(&v8, 1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, 0);
  mlir::OperationState::addOperands(a2, v9, v10);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = v6;
  ++*(a2 + 72);
}

unint64_t mlir::tensor::FromElementsOp::fold(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (*(a2 + 48))
  {
    v4 = 8 * v3;
    v5 = *(a2 + 40);
    while (*v5)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = *(a2 + 40);
  }

  if (v5 != (*(a2 + 40) + 8 * v3))
  {
    return 0;
  }

LABEL_9:
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v9);
  return mlir::DenseElementsAttr::get(v7, v8, *(a2 + 40), *(a2 + 48)) & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::tensor::FromElementsOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.extract", 14, v24, a2, 0, 0);
  *v4 = &unk_1F5B097A8;
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

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ExtractElementFromIndexCast]";
  v25 = 100;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
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

uint64_t mlir::tensor::GatherOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "gather", 6);
}

uint64_t mlir::tensor::GatherOp::inferResultType(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v58[6] = *MEMORY[0x1E69E9840];
  v46 = a2;
  v47 = a1;
  Value = mlir::ArrayAttr::getValue(&v46);
  v10 = v8 - 1;
  v56 = v58;
  v57 = 0x600000000;
  v11 = (8 * (v8 - 1)) >> 3;
  if (v11 < 7)
  {
    v12 = 0;
    v13 = 8 * v10;
    if (v8 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v11, 8);
  v12 = v57;
  v13 = 8 * v10;
  if (v10)
  {
LABEL_5:
    memcpy(v56 + 8 * v12, Value, v13);
    v12 = v57;
  }

LABEL_6:
  v14 = v12 + (v13 >> 3);
  LODWORD(v57) = v12 + (v13 >> 3);
  mlir::ArrayAttr::getValue(&v47);
  if (v15 + v14 > HIDWORD(v57))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v15 + v14, 8);
  }

  mlir::ArrayAttr::getValue(&v47);
  if (v16)
  {
    v17 = v16;
    v18 = &a3[a4];
    v19 = (8 * a4) >> 3;
    if (a5)
    {
      for (i = 0; i != v17; ++i)
      {
        v23 = a3;
        if (a4)
        {
          v24 = (8 * a4) >> 3;
          do
          {
            v25 = v24 >> 1;
            v26 = &v23[v24 >> 1];
            v28 = *v26;
            v27 = v26 + 1;
            v24 += ~(v24 >> 1);
            if (v28 < i)
            {
              v23 = v27;
            }

            else
            {
              v24 = v25;
            }
          }

          while (v24);
        }

        if (v23 == v18 || i < *v23)
        {
          v21 = *(mlir::ArrayAttr::getValue(&v47) + 8 * i);
          v22 = v57;
          if (v57 >= HIDWORD(v57))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 8);
            v22 = v57;
          }

          *(v56 + v22) = v21;
          LODWORD(v57) = v57 + 1;
        }
      }

      goto LABEL_42;
    }

    if (a4)
    {
      v29 = 0;
      while (1)
      {
        v30 = a3;
        v31 = v19;
        do
        {
          v32 = v31 >> 1;
          v33 = &v30[v31 >> 1];
          v35 = *v33;
          v34 = v33 + 1;
          v31 += ~(v31 >> 1);
          if (v35 < v29)
          {
            v30 = v34;
          }

          else
          {
            v31 = v32;
          }
        }

        while (v31);
        if (v30 == v18 || v29 < *v30)
        {
          v36 = *(mlir::ArrayAttr::getValue(&v47) + 8 * v29);
          v37 = v57;
          if (v57 >= HIDWORD(v57))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v37 = v57;
          v36 = 1;
          if (v57 >= HIDWORD(v57))
          {
LABEL_37:
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v37 + 1, 8);
            v37 = v57;
          }
        }

        *(v56 + v37) = v36;
        LODWORD(v57) = v57 + 1;
        if (++v29 == v17)
        {
          goto LABEL_42;
        }
      }
    }

    for (j = 0; j != v17; ++j)
    {
      v39 = *(mlir::ArrayAttr::getValue(&v47) + 8 * j);
      v40 = v57;
      if (v57 >= HIDWORD(v57))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 8);
        v40 = v57;
      }

      *(v56 + v40) = v39;
      LODWORD(v57) = v57 + 1;
    }
  }

LABEL_42:
  v48 = v47;
  v49 = mlir::ArrayAttr::getValue(&v48);
  v50 = v41;
  v51 = v53;
  v52 = 0x600000000;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v48);
  Values = mlir::SparseElementsAttr::getValues(&v48);
  v55 = Values;
  v49 = v56;
  v50 = v57;
  LODWORD(v52) = 0;
  if (v57)
  {
    v43 = v56;
  }

  else
  {
    v43 = v51;
  }

  v44 = mlir::RankedTensorType::get(v43, v57, RHS, Values);
  if (v51 != v53)
  {
    free(v51);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  return v44;
}

BOOL mlir::tensor::GatherOp::verify(mlir::tensor::GatherOp *this)
{
  v75 = *MEMORY[0x1E69E9840];
  v64[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(v64);
  v3 = v2;
  v64[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v64);
  v6 = v5;
  v7 = *this;
  v64[0] = *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(v64);
  if ((verifyGatherOrScatterDims(v7, v4, v6, Value, v9, v3, "gather", 6, "source", 6) & 1) == 0)
  {
    return 0;
  }

  v10 = mlir::tensor::GatherOp::inferResultType(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, v4, v6, 0);
  v11 = 1;
  v12 = mlir::tensor::GatherOp::inferResultType(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, v4, v6, 1);
  if (*(*this + 36))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) != v10)
  {
    v14 = *(*this + 36) ? *this - 16 : 0;
    if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8) != v12)
    {
      v59 = "result type mismatch: expected ";
      v60 = 259;
      mlir::OpState::emitOpError(this, &v59, v64);
      if (v64[0])
      {
        v15 = &v61;
        mlir::DiagnosticArgument::DiagnosticArgument(&v61, v10);
        v16 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v66 > &v61)
          {
            v53 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v16 = v65;
            v15 = (v65 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v15 = &v61;
            v16 = v65;
          }
        }

        v17 = &v16[24 * v66];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        v19 = ++v66;
        if (v64[0])
        {
          v61 = 3;
          v62 = " or its rank-reduced variant ";
          v63 = 29;
          v20 = &v61;
          v21 = v65;
          if (v19 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v19 > &v61)
            {
              v55 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v19 + 1, 24);
              v21 = v65;
              v20 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v19 + 1, 24);
              v20 = &v61;
              v21 = v65;
            }
          }

          v22 = &v21[24 * v66];
          v23 = *v20;
          *(v22 + 2) = *(v20 + 2);
          *v22 = v23;
          ++v66;
          if (v64[0])
          {
            v24 = &v61;
            mlir::DiagnosticArgument::DiagnosticArgument(&v61, v12);
            v25 = v65;
            if (v66 >= v67)
            {
              if (v65 <= &v61 && v65 + 24 * v66 > &v61)
              {
                v57 = &v61 - v65;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
                v25 = v65;
                v24 = (v65 + v57);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
                v24 = &v61;
                v25 = v65;
              }
            }

            v26 = &v25[24 * v66];
            v27 = *v24;
            *(v26 + 2) = *(v24 + 2);
            *v26 = v27;
            v28 = ++v66;
            if (v64[0])
            {
              v61 = 3;
              v62 = " (got: ";
              v63 = 7;
              v29 = &v61;
              v30 = v65;
              if (v28 >= v67)
              {
                if (v65 <= &v61 && v65 + 24 * v28 > &v61)
                {
                  v58 = &v61 - v65;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v28 + 1, 24);
                  v30 = v65;
                  v29 = (v65 + v58);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v28 + 1, 24);
                  v29 = &v61;
                  v30 = v65;
                }
              }

              v31 = &v30[24 * v66];
              v32 = *v29;
              *(v31 + 2) = *(v29 + 2);
              *v31 = v32;
              ++v66;
            }
          }
        }
      }

      if (*(*this + 36))
      {
        v33 = *this - 16;
      }

      else
      {
        v33 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
      if (v64[0])
      {
        v35 = &v61;
        mlir::DiagnosticArgument::DiagnosticArgument(&v61, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
        v36 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v66 > &v61)
          {
            v54 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v36 = v65;
            v35 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v35 = &v61;
            v36 = v65;
          }
        }

        v37 = &v36[24 * v66];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        v39 = ++v66;
        if (v64[0])
        {
          v61 = 3;
          v62 = ")";
          v63 = 1;
          v40 = &v61;
          v41 = v65;
          if (v39 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v39 > &v61)
            {
              v56 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v39 + 1, 24);
              v41 = v65;
              v40 = (v65 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v39 + 1, 24);
              v40 = &v61;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v66;
        }
      }

      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
      if (v64[0])
      {
        mlir::InFlightDiagnostic::report(v64);
      }

      if (v74 == 1)
      {
        if (v73 != &v74)
        {
          free(v73);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v72;
          v46 = __p;
          if (v72 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v72 = v44;
          operator delete(v46);
        }

        v47 = v69;
        if (v69)
        {
          v48 = v70;
          v49 = v69;
          if (v70 != v69)
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
            v49 = v69;
          }

          v70 = v47;
          operator delete(v49);
        }

        if (v65 != v68)
        {
          free(v65);
        }
      }
    }
  }

  return v11;
}

uint64_t verifyGatherOrScatterDims(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, const char *a8, void *a9, const char *a10)
{
  v104 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= a6)
    {
      if (a5 && *(a4 + 8 * a5 - 8) == a3)
      {
        v37 = 8 * a3;
        for (i = a2; (*i & 0x8000000000000000) == 0; ++i)
        {
          if (*i >= a6)
          {
            v87 = 261;
            v84 = a7;
            v85 = a8;
            mlir::Operation::emitOpError(a1, &v84, &v92);
            if (v92)
            {
              LODWORD(v88) = 3;
              v89 = "_dims value must be smaller than ";
              v90 = 33;
              v61 = &v88;
              v62 = v94;
              if (v95 >= v96)
              {
                if (v94 <= &v88 && v94 + 24 * v95 > &v88)
                {
                  v82 = &v88 - v94;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                  v62 = v94;
                  v61 = v94 + v82;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                  v61 = &v88;
                  v62 = v94;
                }
              }

              v63 = &v62[24 * v95];
              v64 = *v61;
              *(v63 + 2) = *(v61 + 2);
              *v63 = v64;
              ++v95;
              if (v92)
              {
                v91 = 261;
                v88 = a9;
                v89 = a10;
                mlir::Diagnostic::operator<<(v93, &v88);
                if (v92)
                {
                  LODWORD(v88) = 3;
                  v89 = " rank";
                  v90 = 5;
                  v65 = &v88;
                  v66 = v94;
                  if (v95 >= v96)
                  {
                    if (v94 <= &v88 && v94 + 24 * v95 > &v88)
                    {
                      v83 = &v88 - v94;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                      v66 = v94;
                      v65 = v94 + v83;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                      v65 = &v88;
                      v66 = v94;
                    }
                  }

                  v67 = &v66[24 * v95];
                  v68 = *v65;
                  *(v67 + 2) = *(v65 + 2);
                  *v67 = v68;
                  ++v95;
                }
              }
            }

            v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
            if (v92)
            {
              mlir::InFlightDiagnostic::report(&v92);
            }

            if (v103 != 1)
            {
              return v18;
            }

            if (v102 != &v103)
            {
              free(v102);
            }

            v69 = __p;
            if (__p)
            {
              v70 = v101;
              v71 = __p;
              if (v101 != __p)
              {
                do
                {
                  v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
                }

                while (v70 != v69);
                v71 = __p;
              }

              v101 = v69;
              operator delete(v71);
            }

            v22 = v98;
            if (!v98)
            {
              goto LABEL_117;
            }

            v72 = v99;
            v24 = v98;
            if (v99 == v98)
            {
              goto LABEL_116;
            }

            do
            {
              v74 = *--v72;
              v73 = v74;
              *v72 = 0;
              if (v74)
              {
                operator delete[](v73);
              }
            }

            while (v72 != v22);
            goto LABEL_115;
          }

          v37 -= 8;
          if (!v37)
          {
            if (a3 < 2)
            {
              return 1;
            }

            v39 = a3 - 1;
            v40 = a2 + 1;
            v18 = 1;
            while (*(v40 - 1) < *v40)
            {
              ++v40;
              if (!--v39)
              {
                return v18;
              }
            }

            v91 = 261;
            v88 = a7;
            v89 = a8;
            mlir::Operation::emitOpError(a1, &v88, &v92);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v92, "_dims values must be strictly increasing");
            v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
            return v18;
          }
        }

        v91 = 261;
        v88 = a7;
        v89 = a8;
        mlir::Operation::emitOpError(a1, &v88, &v92);
        if (v92)
        {
          LODWORD(v84) = 3;
          v85 = "_dims value must be non-negative";
          v86 = 32;
          v51 = &v84;
          v52 = v94;
          if (v95 >= v96)
          {
            if (v94 <= &v84 && v94 + 24 * v95 > &v84)
            {
              v81 = &v84 - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
              v52 = v94;
              v51 = v94 + v81;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
              v51 = &v84;
              v52 = v94;
            }
          }

          v53 = &v52[24 * v95];
          v54 = *v51;
          *(v53 + 2) = *(v51 + 2);
          *v53 = v54;
          ++v95;
        }

        v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
        if (v92)
        {
          mlir::InFlightDiagnostic::report(&v92);
        }

        if (v103 != 1)
        {
          return v18;
        }

        if (v102 != &v103)
        {
          free(v102);
        }

        v55 = __p;
        if (__p)
        {
          v56 = v101;
          v57 = __p;
          if (v101 != __p)
          {
            do
            {
              v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
            }

            while (v56 != v55);
            v57 = __p;
          }

          v101 = v55;
          operator delete(v57);
        }

        v22 = v98;
        if (!v98)
        {
          goto LABEL_117;
        }

        v58 = v99;
        v24 = v98;
        if (v99 == v98)
        {
          goto LABEL_116;
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

        while (v58 != v22);
        goto LABEL_115;
      }

      v91 = 261;
      v88 = a7;
      v89 = a8;
      mlir::Operation::emitOpError(a1, &v88, &v92);
      if (v92)
      {
        LODWORD(v84) = 3;
        v85 = "_dims length must match the size of last dimension of indices";
        v86 = 61;
        v41 = &v84;
        v42 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &v84 && v94 + 24 * v95 > &v84)
          {
            v79 = &v84 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v42 = v94;
            v41 = v94 + v79;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v41 = &v84;
            v42 = v94;
          }
        }

        v43 = &v42[24 * v95];
        v44 = *v41;
        *(v43 + 2) = *(v41 + 2);
        *v43 = v44;
        ++v95;
      }

      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
      if (v92)
      {
        mlir::InFlightDiagnostic::report(&v92);
      }

      if (v103 == 1)
      {
        if (v102 != &v103)
        {
          free(v102);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v101;
          v47 = __p;
          if (v101 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v101 = v45;
          operator delete(v47);
        }

        v22 = v98;
        if (!v98)
        {
          goto LABEL_117;
        }

        v48 = v99;
        v24 = v98;
        if (v99 == v98)
        {
          goto LABEL_116;
        }

        do
        {
          v50 = *--v48;
          v49 = v50;
          *v48 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v48 != v22);
        goto LABEL_115;
      }
    }

    else
    {
      v87 = 261;
      v84 = a7;
      v85 = a8;
      mlir::Operation::emitOpError(a1, &v84, &v92);
      if (v92)
      {
        LODWORD(v88) = 3;
        v89 = "_dims overflow ";
        v90 = 15;
        v10 = &v88;
        v11 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &v88 && v94 + 24 * v95 > &v88)
          {
            v78 = &v88 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v11 = v94;
            v10 = v94 + v78;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v10 = &v88;
            v11 = v94;
          }
        }

        v12 = &v11[24 * v95];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v95;
        if (v92)
        {
          v91 = 261;
          v88 = a9;
          v89 = a10;
          mlir::Diagnostic::operator<<(v93, &v88);
          if (v92)
          {
            LODWORD(v88) = 3;
            v89 = " rank";
            v90 = 5;
            v14 = &v88;
            v15 = v94;
            if (v95 >= v96)
            {
              if (v94 <= &v88 && v94 + 24 * v95 > &v88)
              {
                v80 = &v88 - v94;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                v15 = v94;
                v14 = v94 + v80;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                v14 = &v88;
                v15 = v94;
              }
            }

            v16 = &v15[24 * v95];
            v17 = *v14;
            *(v16 + 2) = *(v14 + 2);
            *v16 = v17;
            ++v95;
          }
        }
      }

      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
      if (v92)
      {
        mlir::InFlightDiagnostic::report(&v92);
      }

      if (v103 == 1)
      {
        if (v102 != &v103)
        {
          free(v102);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v101;
          v21 = __p;
          if (v101 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v101 = v19;
          operator delete(v21);
        }

        v22 = v98;
        if (!v98)
        {
          goto LABEL_117;
        }

        v23 = v99;
        v24 = v98;
        if (v99 == v98)
        {
LABEL_116:
          v99 = v22;
          operator delete(v24);
LABEL_117:
          if (v94 != v97)
          {
            free(v94);
          }

          return v18;
        }

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
LABEL_115:
        v24 = v98;
        goto LABEL_116;
      }
    }
  }

  else
  {
    v91 = 261;
    v88 = a7;
    v89 = a8;
    mlir::Operation::emitOpError(a1, &v88, &v92);
    if (v92)
    {
      LODWORD(v84) = 3;
      v85 = "_dims must be non-empty";
      v86 = 23;
      v27 = &v84;
      v28 = v94;
      if (v95 >= v96)
      {
        if (v94 <= &v84 && v94 + 24 * v95 > &v84)
        {
          v77 = &v84 - v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v28 = v94;
          v27 = v94 + v77;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v27 = &v84;
          v28 = v94;
        }
      }

      v29 = &v28[24 * v95];
      v30 = *v27;
      *(v29 + 2) = *(v27 + 2);
      *v29 = v30;
      ++v95;
    }

    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
    if (v92)
    {
      mlir::InFlightDiagnostic::report(&v92);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v101;
        v33 = __p;
        if (v101 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v101 = v31;
        operator delete(v33);
      }

      v22 = v98;
      if (!v98)
      {
        goto LABEL_117;
      }

      v34 = v99;
      v24 = v98;
      if (v99 == v98)
      {
        goto LABEL_116;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          operator delete[](v35);
        }
      }

      while (v34 != v22);
      goto LABEL_115;
    }
  }

  return v18;
}

unint64_t mlir::tensor::GatherOp::fold(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *v3;
  if (*v3 && !mlir::DenseElementsAttr::classof(*v3))
  {
    v4 = 0;
  }

  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

unint64_t reshapeConstantSource(unint64_t result, void *a2, uint64_t a3, char a4)
{
  v13 = a2;
  v14 = result;
  if (result)
  {
    if (!mlir::DenseElementsAttr::isSplat(&v14) || !mlir::TensorType::hasRank(&v13))
    {
      return 0;
    }

    Value = mlir::ArrayAttr::getValue(&v13);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }

LABEL_8:
    if (a4)
    {
      mlir::ArrayAttr::getValue(&v14);
      mlir::NamedAttribute::NamedAttribute(&v16, v14, 0);
      v9 = v14;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
      mlir::NamedAttribute::NamedAttribute(&v15, v9, NumElements);
      if (mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v16) != a3)
      {
        return 0;
      }
    }

    v11 = mlir::TensorType::operator mlir::ShapedType(&v13);
    return mlir::DenseElementsAttr::reshape(&v14, v11, v12) & 0xFFFFFFFFFFFFFFFBLL;
  }

  return result;
}

uint64_t mlir::tensor::InsertOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "inserted", 8);
}

unint64_t mlir::tensor::InsertOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v4 = *v2;
  v3 = v2[1];
  if (*v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (!mlir::DenseElementsAttr::classof(v2[1]) ? (v6 = 0) : (v6 = v3), (*&v14 = v6) != 0 && ((isSplat = mlir::DenseElementsAttr::isSplat(&v14)) == 0 ? (v8 = 0) : (v8 = v3), (v12 = v8, isSplat) && (mlir::ArrayAttr::getValue(&v12), mlir::NamedAttribute::NamedAttribute(&v14, v12, 0), v9 = v12, NumElements = mlir::DenseElementsAttr::getNumElements(&v12), mlir::NamedAttribute::NamedAttribute(&v13, v9, NumElements), v4 == mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v14)))))
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::GenerateOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "generated", 9);
}

uint64_t mlir::tensor::GenerateOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, uint64_t a3)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v23 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v23);
  v24 = v26;
  v25 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 < 7)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v6, 8);
      v8 = v25;
      v9 = v7 - v25;
      if (v7 == v25)
      {
        goto LABEL_7;
      }
    }

    bzero(v24 + 8 * v8, 8 * v9);
LABEL_7:
    LODWORD(v25) = v7;
  }

  v10 = *(a3 + 8);
  if (!v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v10, &v24);
LABEL_15:
    v14 = v24;
    if (v24 == v26)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v10 == 1)
  {
    goto LABEL_15;
  }

  v11 = v10 << 6;
  v12 = (v11 + *a3 - 64);
  v13 = 64 - v11;
  do
  {
    if (v12 + 2 != *v12)
    {
      free(*v12);
    }

    v12 -= 8;
    v13 += 64;
  }

  while (v13);
  *(a3 + 8) = 1;
  v14 = v24;
  if (v24 != v26)
  {
LABEL_16:
    free(v14);
  }

LABEL_17:
  v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v24);
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    for (i = 0; i != v16; ++i)
    {
      v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(mlir::ArrayAttr::getValue(&v24) + 8 * i) == 0x8000000000000000)
      {
        v19 = v17++;
        v20 = *(*(*a1 + 72) + 32 * v19 + 24) | 4;
      }

      else
      {
        v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
        Value = mlir::ArrayAttr::getValue(&v24);
        v20 = mlir::Builder::getIndexAttr(a2, *(Value + 8 * i)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * i) = v20;
    }
  }

  return 1;
}

BOOL mlir::tensor::GenerateOp::verifyRegions(mlir::tensor::GenerateOp *this)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v39 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  ArgumentTypes = mlir::Region::getArgumentTypes((((v2 + 16 * ((*(v2 + 44) >> 23) & 1) + ((*(v2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40)));
  if (ArgumentTypes == v4)
  {
LABEL_5:
    v7 = (((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
    if (*v7 == v7)
    {
      mlir::ArrayAttr::getValue(&v39);
      if (!v11)
      {
LABEL_10:
        v12 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
        if (v12)
        {
          v13 = (v12 - 8);
        }

        else
        {
          v13 = 0;
        }

        v14 = *(*(*(mlir::Block::getTerminator(v13, v11) + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v14 == mlir::AffineBinaryOpExpr::getRHS(&v39))
        {
          return 1;
        }

        v38 = 259;
        mlir::OpState::emitOpError(this, v37, v40);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
        if (v40[0])
        {
          mlir::InFlightDiagnostic::report(v40);
        }

        if (v48 != 1)
        {
          return v15;
        }

        if (v47 != &v48)
        {
          free(v47);
        }

        v30 = __p;
        if (__p)
        {
          v31 = v46;
          v32 = __p;
          if (v46 != __p)
          {
            do
            {
              v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
            }

            while (v31 != v30);
            v32 = __p;
          }

          v46 = v30;
          operator delete(v32);
        }

        v19 = v43;
        if (!v43)
        {
          goto LABEL_66;
        }

        v33 = v44;
        v21 = v43;
        if (v44 == v43)
        {
LABEL_65:
          v44 = v19;
          operator delete(v21);
LABEL_66:
          if (v41 != &v42)
          {
            free(v41);
          }

          return v15;
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

        while (v33 != v19);
LABEL_64:
        v21 = v43;
        goto LABEL_65;
      }
    }

    else
    {
      v8 = v7[1];
      if (v8)
      {
        v9 = v8 - 8;
      }

      else
      {
        v9 = 0;
      }

      v10 = ((*(v9 + 56) - *(v9 + 48)) >> 3);
      mlir::ArrayAttr::getValue(&v39);
      if (v11 == v10)
      {
        goto LABEL_10;
      }
    }

    v37[0] = "must have one body argument per input dimension";
    v38 = 259;
    mlir::OpState::emitError(this, v37, v40);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v48 != 1)
    {
      return v15;
    }

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
    if (!v43)
    {
      goto LABEL_66;
    }

    v20 = v44;
    v21 = v43;
    if (v44 == v43)
    {
      goto LABEL_65;
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
    goto LABEL_64;
  }

  v5 = ArgumentTypes;
  v6 = v4;
  while (1)
  {
    v40[0] = *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (!mlir::Type::isIndex(v40))
    {
      break;
    }

    v5 += 8;
    if (v5 == v6)
    {
      goto LABEL_5;
    }
  }

  v37[0] = "all body arguments must be index";
  v38 = 259;
  mlir::OpState::emitError(this, v37, v40);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
  if (v40[0])
  {
    mlir::InFlightDiagnostic::report(v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v46;
      v26 = __p;
      if (v46 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v46 = v24;
      operator delete(v26);
    }

    v19 = v43;
    if (!v43)
    {
      goto LABEL_66;
    }

    v27 = v44;
    v21 = v43;
    if (v44 == v43)
    {
      goto LABEL_65;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        operator delete[](v28);
      }
    }

    while (v27 != v19);
    goto LABEL_64;
  }

  return v15;
}

void mlir::tensor::GenerateOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.extract", 14, v44, a2, 0, 0);
  *v4 = &unk_1F5B09818;
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

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ExtractFromTensorGenerate]";
  v45 = 98;
  v9 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v45;
  }

  v11 = &v44[v10];
  v12 = v45 - v10;
  if (v45 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v45 - v10;
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
  mlir::Pattern::Pattern((v24 + 2), "tensor.generate", 15, v44, a2, 0, 0);
  *v24 = &unk_1F5B09888;
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

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::StaticTensorGenerate]";
  v45 = 93;
  v29 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v45;
  }

  v31 = &v44[v30];
  v32 = v45 - v30;
  if (v45 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v45 - v30;
  }

  v34 = &v31[v33];
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

BOOL mlir::tensor::ReshapeOp::verify(mlir::tensor::ReshapeOp *this)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v72 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 36);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v71 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v72);
  if (ElementType != mlir::TensorType::getElementType(&v71))
  {
    v69[0] = "element types of source and destination tensor types should be the same";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v80;
        v15 = __p;
        if (v80 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v80 = v13;
        operator delete(v15);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v17 = v78;
      v18 = v77;
      if (v78 == v77)
      {
        goto LABEL_92;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v17 != v16);
      goto LABEL_91;
    }

    return v12;
  }

  v73 = *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *mlir::ArrayAttr::getValue(&v73);
  v8 = v71;
  v9 = v72;
  v10 = *(*v71 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = 0;
  }

  v68 = v8;
  v11 = *(*v72 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = 0;
  }

  v67 = v9;
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 1;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && mlir::TensorType::hasRank(&v68))
  {
    Value = mlir::ArrayAttr::getValue(&v68);
    if (v22)
    {
      v23 = 8 * v22;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_57;
    }

LABEL_33:
    if (!mlir::TensorType::hasRank(&v67))
    {
      goto LABEL_57;
    }

    v24 = mlir::ArrayAttr::getValue(&v67);
    if (v25)
    {
      v26 = 8 * v25;
      while (*v24 != 0x8000000000000000)
      {
        ++v24;
        v26 -= 8;
        if (!v26)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_57;
    }

LABEL_38:
    v73 = mlir::TensorType::operator mlir::ShapedType(&v67);
    v74 = v27;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v73);
    if (!v29)
    {
      v38 = 1;
      goto LABEL_47;
    }

    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v30)
    {
      v31 = v30 + 1;
      v32 = (v30 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v33 = (ArgAttrsAttr + 8 * v32);
      v34 = (ArgAttrsAttr + 8);
      v35 = 1;
      v36 = v32;
      v37 = 1;
      do
      {
        v35 *= *(v34 - 1);
        v37 *= *v34;
        v34 += 2;
        v36 -= 2;
      }

      while (v36);
      v38 = v37 * v35;
      if (v31 == v32)
      {
LABEL_47:
        v73 = mlir::TensorType::operator mlir::ShapedType(&v68);
        v74 = v40;
        v41 = mlir::CallableOpInterface::getArgAttrsAttr(&v73);
        if (!v42)
        {
          v51 = 1;
          goto LABEL_56;
        }

        v43 = (v42 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v43)
        {
          v44 = v43 + 1;
          v45 = (v43 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v46 = (v41 + 8 * v45);
          v47 = (v41 + 8);
          v48 = 1;
          v49 = v45;
          v50 = 1;
          do
          {
            v48 *= *(v47 - 1);
            v50 *= *v47;
            v47 += 2;
            v49 -= 2;
          }

          while (v49);
          v51 = v50 * v48;
          if (v44 == v45)
          {
LABEL_56:
            if (v38 != v51)
            {
              v69[0] = "source and destination tensor should have the same number of elements";
              v70 = 259;
              mlir::OpState::emitOpError(this, v69, &v73);
              v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v73);
              return v12;
            }

            goto LABEL_57;
          }
        }

        else
        {
          v51 = 1;
          v46 = v41;
        }

        do
        {
          v52 = *v46++;
          v51 *= v52;
        }

        while (v46 != (v41 + 8 * v42));
        goto LABEL_56;
      }
    }

    else
    {
      v38 = 1;
      v33 = ArgAttrsAttr;
    }

    do
    {
      v39 = *v33++;
      v38 *= v39;
    }

    while (v33 != (ArgAttrsAttr + 8 * v29));
    goto LABEL_47;
  }

LABEL_57:
  if (v7 == 0x8000000000000000)
  {
    v69[0] = "cannot use shape operand with dynamic length to reshape to statically-ranked tensor type";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v80;
        v55 = __p;
        if (v80 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v80 = v53;
        operator delete(v55);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v56 = v78;
      v18 = v77;
      if (v78 == v77)
      {
LABEL_92:
        v78 = v16;
        operator delete(v18);
LABEL_93:
        if (v75 != &v76)
        {
          free(v75);
        }

        return v12;
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

      while (v56 != v16);
LABEL_91:
      v18 = v77;
      goto LABEL_92;
    }
  }

  else
  {
    mlir::ArrayAttr::getValue(&v68);
    if (v7 == v59)
    {
      return 1;
    }

    v69[0] = "length of shape operand differs from the result's tensor rank";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v60 = __p;
      if (__p)
      {
        v61 = v80;
        v62 = __p;
        if (v80 != __p)
        {
          do
          {
            v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
          }

          while (v61 != v60);
          v62 = __p;
        }

        v80 = v60;
        operator delete(v62);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v63 = v78;
      v18 = v77;
      if (v78 == v77)
      {
        goto LABEL_92;
      }

      do
      {
        v65 = *--v63;
        v64 = v65;
        *v63 = 0;
        if (v65)
        {
          operator delete[](v64);
        }
      }

      while (v63 != v16);
      goto LABEL_91;
    }
  }

  return v12;
}

unint64_t mlir::tensor::ReshapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *v3;
  if (*v3 && !mlir::DenseElementsAttr::classof(*v3))
  {
    v4 = 0;
  }

  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    v40 = *(*(*a1 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v40);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
    {
      v16 = *a1;
      v17 = *(*a1 + 72);
      v18 = *(*(DefiningOp + 72) + 24);
      v19 = v17[1];
      if (v19)
      {
        v20 = *v17;
        *v19 = *v17;
        if (v20)
        {
          *(v20 + 8) = v19;
        }
      }

      v17[3] = v18;
      v17[1] = v18;
      v21 = *v18;
      *v17 = *v18;
      if (v21)
      {
        *(v21 + 8) = v17;
      }

      *v18 = v17;
      v22 = *(v16 + 36);
      v23 = v16 - 16;
      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      return mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0) | 4;
    }

    else
    {
      v9 = *a1;
      v10 = *(*(*a1 + 72) + 24);
      v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v11 = 0;
      }

      v40 = v11;
      v12 = *(v9 - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && v11 == v12)
      {
        mlir::ArrayAttr::getValue(&v40);
        if (v15 == 1)
        {
          return v10 | 4;
        }

        else
        {
          v39 = *(*(*a1 + 72) + 56);
          result = mlir::Value::getDefiningOp(&v39);
          if (result)
          {
            if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
            {
              if ((*(result + 46) & 0x80) != 0)
              {
                v25 = *(result + 68);
                v26 = *(result + 72);
                mlir::ArrayAttr::getValue(&v40);
                v28 = v27 == v25;
                if (v25 >= 1 && v27 == v25)
                {
                  v29 = 0;
                  v30 = (v26 + 24);
                  while (1)
                  {
                    v39 = *v30;
                    ConstantIntValue = mlir::getConstantIntValue(v39 | 4);
                    if (v32)
                    {
                      v28 = ConstantIntValue == *(mlir::ArrayAttr::getValue(&v40) + 8 * v29);
                    }

                    else
                    {
                      v33 = mlir::Value::getDefiningOp(&v39);
                      if (!v33 || *(*(v33 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
                      {
                        return 0;
                      }

                      v34 = *(v33 + 72);
                      v35 = *(v34 + 24) == v10;
                      v36 = mlir::getConstantIntValue(*(v34 + 56) | 4);
                      v28 = v35 & v37;
                      if (v29 != v36)
                      {
                        v28 = 0;
                      }
                    }

                    if (++v29 < v25)
                    {
                      v30 += 4;
                      if (v28)
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }
              }

              else
              {
                mlir::ArrayAttr::getValue(&v40);
                v28 = v38 == 0;
              }

              if (v28)
              {
                return v10 | 4;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "collapsed", 9);
}

uint64_t mlir::tensor::ExpandShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "expanded", 8);
}

uint64_t mlir::tensor::ExpandShapeOp::getCorrespondingSourceDim(mlir::tensor::ExpandShapeOp *this, uint64_t a2)
{
  v22[16] = *MEMORY[0x1E69E9840];
  mlir::memref::CollapseShapeOp::getReassociationIndices(this, &v17);
  v20 = v22;
  v21 = 0x400000000;
  if (v18)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v20, &v17);
    v3 = v17;
    if (!v18)
    {
      goto LABEL_8;
    }

    v4 = v17 + 32 * v18 - 16;
    v5 = -32 * v18;
    do
    {
      v6 = *(v4 - 2);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
  }

  v3 = v17;
LABEL_8:
  if (v3 != &v19)
  {
    free(v3);
  }

  v7 = v20;
  if (!v21)
  {
    v8 = 0;
    if (v20 == v22)
    {
      return v8;
    }

    goto LABEL_28;
  }

  v8 = 0;
  v9 = v20;
  while (1)
  {
    v11 = *(v9 + 2);
    if (v11)
    {
      v12 = 8 * v11;
      v10 = *v9;
      while (*v10 != a2)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v10 = *v9;
    }

    if (v10 != &(*v9)[v11])
    {
      break;
    }

LABEL_14:
    ++v8;
    v9 += 4;
    if (v9 == (v20 + 32 * v21))
    {
      v8 = ((v21 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      break;
    }
  }

  v13 = v20 + 32 * v21 - 16;
  v14 = -32 * v21;
  do
  {
    v15 = *(v13 - 2);
    if (v13 != v15)
    {
      free(v15);
    }

    v13 -= 32;
    v14 += 32;
  }

  while (v14);
  v7 = v20;
  if (v20 != v22)
  {
LABEL_28:
    free(v7);
  }

  return v8;
}

void mlir::tensor::ExpandShapeOp::inferOutputShape(mlir::IndexType **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v15 = mlir::TensorType::operator mlir::ShapedType(&v21);
  mlir::inferExpandShapeOutputShape(a1, a2, v15, v16, a4, a5, a6, a7, &__src);
  if (v25 != 1)
  {
    *a8 = 0;
    *(a8 + 64) = 0;
    return;
  }

  v17 = (a8 + 16);
  *a8 = a8 + 16;
  *(a8 + 8) = 0x600000000;
  if (&__src != a8)
  {
    v18 = v23;
    if (v23)
    {
      if (v23 < 7)
      {
        v19 = v23;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a8, a8 + 16, v23, 8);
        v19 = v23;
        if (!v23)
        {
          goto LABEL_11;
        }

        v17 = *a8;
      }

      memcpy(v17, __src, 8 * v19);
LABEL_11:
      *(a8 + 8) = v18;
      v20 = v25;
      *(a8 + 64) = 1;
      if ((v20 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  *(a8 + 64) = 1;
LABEL_12:
  if (__src != &v24)
  {
    free(__src);
  }
}

void mlir::tensor::ExpandShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x600000000;
  v16 = (8 * a8) >> 3;
  if (v16 < 7)
  {
    v17 = 0;
    v18 = 8 * a8;
    if (!a8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v16, 8);
  v17 = v22;
  v18 = 8 * a8;
  if (a8)
  {
LABEL_5:
    memcpy(v21 + 8 * v17, a7, v18);
    v17 = v22;
  }

LABEL_6:
  LODWORD(v22) = v17 + (v18 >> 3);
  mlir::decomposeMixedValues(&v21, &v24);
  if (v21 != v23)
  {
    free(v21);
  }

  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  mlir::ValueRange::ValueRange(&v21, v27, v28);
  mlir::tensor::ExpandShapeOp::build(a1, a2, a3, a4, ReassociationIndicesAttribute, v21, v22, v20, v24, v25);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v24 != &v26)
  {
    free(v24);
  }
}

void mlir::tensor::ExpandShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v23 = a4;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v16 = *(a2 + 256);
  if (!v16)
  {
    v17 = operator new(0x10uLL);
    *v17 = 0;
    v17[1] = 0;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v25;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v24;
    {
      mlir::tensor::ExpandShapeOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = *(a2 + 256);
  }

  *v16 = a5;
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a9, a10);
  v19 = DenseI64ArrayAttr;
  v20 = *(a2 + 256);
  if (v20)
  {
    *(v20 + 8) = DenseI64ArrayAttr;
    v21 = *(a2 + 72);
    if (v21 >= *(a2 + 76))
    {
LABEL_7:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v21 + 1, 8);
      LODWORD(v21) = *(a2 + 72);
    }
  }

  else
  {
    v22 = operator new(0x10uLL);
    *v22 = 0;
    v22[1] = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v27;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v26;
    {
      mlir::tensor::ExpandShapeOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 8) = v19;
    v21 = *(a2 + 72);
    if (v21 >= *(a2 + 76))
    {
      goto LABEL_7;
    }
  }

  *(*(a2 + 64) + 8 * v21) = a3;
  ++*(a2 + 72);
}