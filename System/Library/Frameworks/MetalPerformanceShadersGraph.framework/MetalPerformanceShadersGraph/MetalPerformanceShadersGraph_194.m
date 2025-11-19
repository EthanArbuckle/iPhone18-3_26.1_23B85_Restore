void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::LayerNorm>::refineReturnTypes(mlir::Float16Type *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.layer_norm";
      v18 = 15;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::LayerNorm,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::anec::InstanceNorm>,mlir::OpTrait::OneResult<mlir::anec::InstanceNorm>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::InstanceNorm>,mlir::OpTrait::ZeroSuccessors<mlir::anec::InstanceNorm>,mlir::OpTrait::OneOperand<mlir::anec::InstanceNorm>,mlir::OpTrait::OpInvariants<mlir::anec::InstanceNorm>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::InstanceNorm>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::anec::InstanceNorm>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::InstanceNorm>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::InstanceNorm>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::InstanceNorm>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::InstanceNorm>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::InstanceNorm>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::InstanceNorm>,mlir::InferTypeOpInterface::Trait<mlir::anec::InstanceNorm>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::InstanceNorm>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::InstanceNorm>>(a1, a2))
  {
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::LeakyRelu>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.leaky_relu";
      v18 = 15;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::anec::LeakyRelu::verifyInvariantsImpl(&v9)))
  {
    {
      mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v7 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Linear>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::Linear>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Linear>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Linear>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Linear>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Linear>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Linear>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Linear>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Linear>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.linear";
      v18 = 11;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v152;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v137 = v1;
    v153 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v137;
    a1 = v153;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v138 = v1;
    v154 = a1;
    v123 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v123;
    v1 = v138;
    a1 = v154;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v139 = v1;
    v155 = a1;
    v110 = v3;
    v124 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v110;
    v2 = v124;
    v1 = v139;
    a1 = v155;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v140 = v1;
    v156 = a1;
    v111 = v3;
    v125 = v2;
    v98 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v141 = v1;
    v157 = a1;
    v112 = v3;
    v126 = v2;
    v87 = v5;
    v99 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v87;
    v4 = v99;
    v3 = v112;
    v2 = v126;
    v1 = v141;
    a1 = v157;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v142 = v1;
    v158 = a1;
    v113 = v3;
    v127 = v2;
    v88 = v5;
    v100 = v4;
    v77 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::HasWeights<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::HasWeights>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v144 = v1;
    v160 = a1;
    v115 = v3;
    v129 = v2;
    v90 = v5;
    v102 = v4;
    v79 = v6;
    v60 = v8;
    v69 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v60;
    v7 = v69;
    v6 = v79;
    v5 = v90;
    v4 = v102;
    v3 = v115;
    v2 = v129;
    v1 = v144;
    a1 = v160;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::VerifyAttributesWithFamilyInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v11 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ANECompilerVerifierInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
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
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v15 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, (mlir::anec::Linear::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    {
      mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v6 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Log2>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec4Log2EJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSG_20ReshapeSwapInterface5TraitENSG_22TransposeSwapInterface5TraitENSS_13NeuronOpTraitENST_ILSU_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1L_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec4Log2EJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSG_20ReshapeSwapInterface5TraitENSG_22TransposeSwapInterface5TraitENSS_13NeuronOpTraitENST_ILSU_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1L_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::Log2>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec4Log2EJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENS7_20ReshapeSwapInterface5TraitENS7_22TransposeSwapInterface5TraitENSJ_13NeuronOpTraitENSK_ILSL_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS1C_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec4Log2EJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENS7_20ReshapeSwapInterface5TraitENS7_22TransposeSwapInterface5TraitENSJ_13NeuronOpTraitENSK_ILSL_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS1C_vE9CallbacksE[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec4Log2EJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSB_20ReshapeSwapInterface5TraitENSB_22TransposeSwapInterface5TraitENSN_13NeuronOpTraitENSO_ILSP_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1G_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec4Log2EJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSB_20ReshapeSwapInterface5TraitENSB_22TransposeSwapInterface5TraitENSN_13NeuronOpTraitENSO_ILSP_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1G_vE9CallbacksE[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Log2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Log2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Log2>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Log2>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Log2>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Log2>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Log2>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Log2>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.log2";
      v18 = 9;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::Log2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::anec::Log2>,mlir::OpTrait::OneResult<mlir::anec::Log2>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::Log2>,mlir::OpTrait::ZeroSuccessors<mlir::anec::Log2>,mlir::OpTrait::OneOperand<mlir::anec::Log2>,mlir::OpTrait::OpInvariants<mlir::anec::Log2>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::anec::Log2>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::Log2>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::Log2>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::Log2>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::Log2>,mlir::anec::ReshapeSwapInterface::Trait<mlir::anec::Log2>,mlir::anec::TransposeSwapInterface::Trait<mlir::anec::Log2>,mlir::OpTrait::anec::NeuronOpTrait<mlir::anec::Log2>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::Log2>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::Log2>,mlir::InferTypeOpInterface::Trait<mlir::anec::Log2>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::Log2>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::Log2>>(a1, a2))
  {
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::MatMul>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MatMul>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.matmul";
      v18 = 11;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v152;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v137 = v1;
    v153 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v137;
    a1 = v153;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v138 = v1;
    v154 = a1;
    v123 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v123;
    v1 = v138;
    a1 = v154;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v139 = v1;
    v155 = a1;
    v110 = v3;
    v124 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v110;
    v2 = v124;
    v1 = v139;
    a1 = v155;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v140 = v1;
    v156 = a1;
    v111 = v3;
    v125 = v2;
    v98 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v141 = v1;
    v157 = a1;
    v112 = v3;
    v126 = v2;
    v87 = v5;
    v99 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v87;
    v4 = v99;
    v3 = v112;
    v2 = v126;
    v1 = v141;
    a1 = v157;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v142 = v1;
    v158 = a1;
    v113 = v3;
    v127 = v2;
    v88 = v5;
    v100 = v4;
    v77 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v144 = v1;
    v160 = a1;
    v115 = v3;
    v129 = v2;
    v90 = v5;
    v102 = v4;
    v79 = v6;
    v60 = v8;
    v69 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v60;
    v7 = v69;
    v6 = v79;
    v5 = v90;
    v4 = v102;
    v3 = v115;
    v2 = v129;
    v1 = v144;
    a1 = v160;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v11 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ANECompilerVerifierInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v12 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::VerifyAttributesWithFamilyInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v15 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, (mlir::anec::MatMul::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    {
      mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v6 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.max_pool", 13, a2, &mlir::detail::TypeIDResolver<mlir::anec::MaxPool,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B31D18;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::MaxPool>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MaxPool>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.max_pool";
      v18 = 13;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, mlir::anec::L2NormPool::verifyInvariantsImpl(&v8)))
  {
    {
      mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v6 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
      LOBYTE(v6) = mlir::anec::verifyANECMaxPoolOp(a1);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::NRelu>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.n_relu";
      v18 = 11;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::anec::NRelu::verifyInvariantsImpl(&v9)))
  {
    {
      mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v7 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Padding>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::Padding>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Padding>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Padding>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Padding>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Padding>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Padding>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Padding>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Padding>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Padding>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.padding";
      v18 = 12;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v152;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v137 = v1;
    v153 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v137;
    a1 = v153;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v138 = v1;
    v154 = a1;
    v123 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v123;
    v1 = v138;
    a1 = v154;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v139 = v1;
    v155 = a1;
    v110 = v3;
    v124 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v110;
    v2 = v124;
    v1 = v139;
    a1 = v155;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v140 = v1;
    v156 = a1;
    v111 = v3;
    v125 = v2;
    v98 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v141 = v1;
    v157 = a1;
    v112 = v3;
    v126 = v2;
    v87 = v5;
    v99 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v87;
    v4 = v99;
    v3 = v112;
    v2 = v126;
    v1 = v141;
    a1 = v157;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v142 = v1;
    v158 = a1;
    v113 = v3;
    v127 = v2;
    v88 = v5;
    v100 = v4;
    v77 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v144 = v1;
    v160 = a1;
    v115 = v3;
    v129 = v2;
    v90 = v5;
    v102 = v4;
    v79 = v6;
    v60 = v8;
    v69 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v60;
    v7 = v69;
    v6 = v79;
    v5 = v90;
    v4 = v102;
    v3 = v115;
    v2 = v129;
    v1 = v144;
    a1 = v160;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v11 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ANECompilerVerifierInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v12 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::VerifyAttributesWithFamilyInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v15 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::anec::Padding::verifyInvariantsImpl(&v9)))
  {
    {
      mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v7 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::PixelShuffle>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelShuffle>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.pixel_shuffle";
      v18 = 18;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::anec::BatchToSpace::verifyInvariantsImpl(&v9)))
  {
    {
      mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v7 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::PixelUnshuffle>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelUnshuffle>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.pixel_unshuffle";
      v18 = 20;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::anec::BatchToSpace::verifyInvariantsImpl(&v9)))
  {
    {
      mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v7 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Quant>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::Quant>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Quant>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Quant>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Quant>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Quant>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Quant>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Quant>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Quant>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Quant>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Quant>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.quant";
      v18 = 10;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Quant>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::Quant,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::SupportConstantOperands,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::anec::DeQuant::verifyInvariantsImpl(&v9)))
  {
    {
      mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
    }

    if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || (v7 = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1)) != 0)
    {
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceAvgEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceAvgEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceAvgEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceAvgEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceAvgEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceAvgEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::ReduceAvg,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::ReduceAvg,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceAvg>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::verifyWithANEC(int a1, uint64_t a2, mlir::CallableOpInterface *this, unint64_t a4)
{
  mlir::CallableOpInterface::getArgAttrsAttr(this);
  return mlir::anec::verifyReductionWithANEC(v9, a2, this, a4);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ReduceAvg>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceAvg>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.reduce_avg";
      v18 = 15;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceAvg>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v170 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v170;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v154 = v1;
    v171 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v154;
    a1 = v171;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v155 = v1;
    v172 = a1;
    v139 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v139;
    v1 = v155;
    a1 = v172;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v156 = v1;
    v173 = a1;
    v125 = v3;
    v140 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v125;
    v2 = v140;
    v1 = v156;
    a1 = v173;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v157 = v1;
    v174 = a1;
    v126 = v3;
    v141 = v2;
    v112 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v112;
    v3 = v126;
    v2 = v141;
    v1 = v157;
    a1 = v174;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v158 = v1;
    v175 = a1;
    v127 = v3;
    v142 = v2;
    v100 = v5;
    v113 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v100;
    v4 = v113;
    v3 = v127;
    v2 = v142;
    v1 = v158;
    a1 = v175;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v159 = v1;
    v176 = a1;
    v128 = v3;
    v143 = v2;
    v101 = v5;
    v114 = v4;
    v89 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v6 = v89;
    v5 = v101;
    v4 = v114;
    v3 = v128;
    v2 = v143;
    v1 = v159;
    a1 = v176;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v160 = v1;
    v177 = a1;
    v129 = v3;
    v144 = v2;
    v102 = v5;
    v115 = v4;
    v79 = v7;
    v90 = v6;
    mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>();
    v7 = v79;
    v6 = v90;
    v5 = v102;
    v4 = v115;
    v3 = v129;
    v2 = v144;
    v1 = v160;
    a1 = v177;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v161 = v1;
    v178 = a1;
    v130 = v3;
    v145 = v2;
    v103 = v5;
    v116 = v4;
    v80 = v7;
    v91 = v6;
    v70 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v70;
    v7 = v80;
    v6 = v91;
    v5 = v103;
    v4 = v116;
    v3 = v130;
    v2 = v145;
    v1 = v161;
    a1 = v178;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v162 = v1;
    v179 = a1;
    v131 = v3;
    v146 = v2;
    v104 = v5;
    v117 = v4;
    v81 = v7;
    v92 = v6;
    v62 = v9;
    v71 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v62;
    v8 = v71;
    v7 = v81;
    v6 = v92;
    v5 = v104;
    v4 = v117;
    v3 = v131;
    v2 = v146;
    v1 = v162;
    a1 = v179;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v163 = v1;
    v180 = a1;
    v132 = v3;
    v147 = v2;
    v105 = v5;
    v118 = v4;
    v82 = v7;
    v93 = v6;
    v63 = v9;
    v72 = v8;
    v55 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v10 = v55;
    v9 = v63;
    v8 = v72;
    v7 = v82;
    v6 = v93;
    v5 = v105;
    v4 = v118;
    v3 = v132;
    v2 = v147;
    v1 = v163;
    a1 = v180;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ANECompilerVerifierInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v164 = v1;
    v181 = a1;
    v133 = v3;
    v148 = v2;
    v106 = v5;
    v119 = v4;
    v83 = v7;
    v94 = v6;
    v64 = v9;
    v73 = v8;
    v49 = v11;
    v56 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v11 = v49;
    v10 = v56;
    v9 = v64;
    v8 = v73;
    v7 = v83;
    v6 = v94;
    v5 = v106;
    v4 = v119;
    v3 = v133;
    v2 = v148;
    v1 = v164;
    a1 = v181;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::VerifyAttributesWithFamilyInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v165 = v1;
    v182 = a1;
    v134 = v3;
    v149 = v2;
    v107 = v5;
    v120 = v4;
    v84 = v7;
    v95 = v6;
    v65 = v9;
    v74 = v8;
    v50 = v11;
    v57 = v10;
    v44 = v12;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v12 = v44;
    v11 = v50;
    v10 = v57;
    v9 = v65;
    v8 = v74;
    v7 = v84;
    v6 = v95;
    v5 = v107;
    v4 = v120;
    v3 = v134;
    v2 = v149;
    v1 = v165;
    a1 = v182;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v166 = v1;
    v183 = a1;
    v135 = v3;
    v150 = v2;
    v108 = v5;
    v121 = v4;
    v85 = v7;
    v96 = v6;
    v66 = v9;
    v75 = v8;
    v51 = v11;
    v58 = v10;
    v40 = v13;
    v45 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v13 = v40;
    v12 = v45;
    v11 = v51;
    v10 = v58;
    v9 = v66;
    v8 = v75;
    v7 = v85;
    v6 = v96;
    v5 = v108;
    v4 = v121;
    v3 = v135;
    v2 = v150;
    v1 = v166;
    a1 = v183;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v167 = v1;
    v184 = a1;
    v136 = v3;
    v151 = v2;
    v109 = v5;
    v122 = v4;
    v86 = v7;
    v97 = v6;
    v67 = v9;
    v76 = v8;
    v52 = v11;
    v59 = v10;
    v41 = v13;
    v46 = v12;
    v37 = v14;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v37;
    v13 = v41;
    v12 = v46;
    v11 = v52;
    v10 = v59;
    v9 = v67;
    v8 = v76;
    v7 = v86;
    v6 = v97;
    v5 = v109;
    v4 = v122;
    v3 = v136;
    v2 = v151;
    v1 = v167;
    a1 = v184;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v168 = v1;
    v185 = a1;
    v137 = v3;
    v152 = v2;
    v110 = v5;
    v123 = v4;
    v87 = v7;
    v98 = v6;
    v68 = v9;
    v77 = v8;
    v53 = v11;
    v60 = v10;
    v42 = v13;
    v47 = v12;
    v35 = v15;
    v38 = v14;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v15 = v35;
    v14 = v38;
    v13 = v42;
    v12 = v47;
    v11 = v53;
    v10 = v60;
    v9 = v68;
    v8 = v77;
    v7 = v87;
    v6 = v98;
    v5 = v110;
    v4 = v123;
    v3 = v137;
    v2 = v152;
    v1 = v168;
    a1 = v185;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v169 = v1;
    v186 = a1;
    v138 = v3;
    v153 = v2;
    v111 = v5;
    v124 = v4;
    v88 = v7;
    v99 = v6;
    v69 = v9;
    v78 = v8;
    v54 = v11;
    v61 = v10;
    v43 = v13;
    v48 = v12;
    v36 = v15;
    v39 = v14;
    v34 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v16 = v34;
    v15 = v36;
    v14 = v39;
    v13 = v43;
    v12 = v48;
    v11 = v54;
    v10 = v61;
    v9 = v69;
    v8 = v78;
    v7 = v88;
    v6 = v99;
    v5 = v111;
    v4 = v124;
    v3 = v138;
    v2 = v153;
    v1 = v169;
    a1 = v186;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::ReduceAvg,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::anec::ReduceAvg>,mlir::OpTrait::OneResult<mlir::anec::ReduceAvg>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ReduceAvg>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ReduceAvg>,mlir::OpTrait::OneOperand<mlir::anec::ReduceAvg>,mlir::OpTrait::OpInvariants<mlir::anec::ReduceAvg>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::anec::ReduceAvg>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ReduceAvg>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ReduceAvg>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::InferTypeOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ReduceAvg>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ReduceAvg>>(a1, a2))
  {
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceMaxEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceMaxEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMaxEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMaxEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMaxEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMaxEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::ReduceMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::ReduceMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMax>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::verifyWithANEC(int a1, uint64_t a2, mlir::CallableOpInterface *this, unint64_t a4)
{
  mlir::CallableOpInterface::getArgAttrsAttr(this);
  return mlir::anec::verifyReductionWithANEC(v9, a2, this, a4);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ReduceMax>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMax>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.reduce_max";
      v18 = 15;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMax>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::ReduceMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::anec::ReduceAvg>,mlir::OpTrait::OneResult<mlir::anec::ReduceAvg>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ReduceAvg>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ReduceAvg>,mlir::OpTrait::OneOperand<mlir::anec::ReduceAvg>,mlir::OpTrait::OpInvariants<mlir::anec::ReduceAvg>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::anec::ReduceAvg>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ReduceAvg>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ReduceAvg>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::InferTypeOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ReduceAvg>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ReduceAvg>>(a1, a2))
  {
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceMinEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceMinEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMinEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMinEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMinEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceMinEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::ReduceMin,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::ReduceMin,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceMin>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::verifyWithANEC(int a1, uint64_t a2, mlir::CallableOpInterface *this, unint64_t a4)
{
  mlir::CallableOpInterface::getArgAttrsAttr(this);
  return mlir::anec::verifyReductionWithANEC(v9, a2, this, a4);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ReduceMin>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMin>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.reduce_min";
      v18 = 15;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceMin>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::ReduceMin,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::anec::ReduceAvg>,mlir::OpTrait::OneResult<mlir::anec::ReduceAvg>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ReduceAvg>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ReduceAvg>,mlir::OpTrait::OneOperand<mlir::anec::ReduceAvg>,mlir::OpTrait::OpInvariants<mlir::anec::ReduceAvg>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::anec::ReduceAvg>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ReduceAvg>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ReduceAvg>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::InferTypeOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ReduceAvg>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ReduceAvg>>(a1, a2))
  {
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceSumEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9ReduceSumEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_23PlistGeneratorInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceSumEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceSumEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_23PlistGeneratorInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceSumEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9ReduceSumEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_23PlistGeneratorInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::ReduceSum,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::ReduceSum,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::ReduceSum>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::verifyWithANEC(int a1, uint64_t a2, mlir::CallableOpInterface *this, unint64_t a4)
{
  mlir::CallableOpInterface::getArgAttrsAttr(this);
  return mlir::anec::verifyReductionWithANEC(v9, a2, this, a4);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::ReduceSum>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceSum>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.reduce_sum";
      v18 = 15;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ReduceSum>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::ReduceSum,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::anec::ReduceAvg>,mlir::OpTrait::OneResult<mlir::anec::ReduceAvg>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::ReduceAvg>,mlir::OpTrait::ZeroSuccessors<mlir::anec::ReduceAvg>,mlir::OpTrait::OneOperand<mlir::anec::ReduceAvg>,mlir::OpTrait::OpInvariants<mlir::anec::ReduceAvg>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::anec::ReduceAvg>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::anec::ReduceAvg>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::ReduceAvg>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::InferTypeOpInterface::Trait<mlir::anec::ReduceAvg>,mlir::anec::InferReturnTypesInterface::Trait<mlir::anec::ReduceAvg>,mlir::CompatibleReturnTypesInterface::Trait<mlir::anec::ReduceAvg>>(a1, a2))
  {
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.region_return", 18, a2, &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B324E8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::RegionReturn>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::RegionReturn>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
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

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  mlir::Op<mlir::anec::RegionReturn,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(a1, &v6);
  return v6;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Relu>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::Relu>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Relu>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Relu>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Relu>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits::Model<mlir::anec::Relu>::verifyWithANEC;
  {
    v5 = v2;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Relu>::verifyAttributesWithFamily;
  v2[1] = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::Relu>::getParentFamily;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Relu>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Relu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Relu>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "anec.relu";
      v18 = 9;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Relu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::Relu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::anec::_anonymous_namespace_ *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::anec::Broadcast>,mlir::OpTrait::OneResult<mlir::anec::Broadcast>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::anec::Broadcast>,mlir::OpTrait::ZeroSuccessors<mlir::anec::Broadcast>,mlir::OpTrait::OneOperand<mlir::anec::Broadcast>,mlir::OpTrait::OpInvariants<mlir::anec::Broadcast>,mlir::OpTrait::anec::SupportConstantOperands<mlir::anec::Broadcast>,mlir::MemoryEffectOpInterface::Trait<mlir::anec::Broadcast>,mlir::anec::PlistGeneratorInterface::Trait<mlir::anec::Broadcast>,mlir::anec::ANECompilerVerifierInterface::Trait<mlir::anec::Broadcast>,mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::anec::Broadcast>,mlir::OpTrait::TypeChanger<mlir::anec::Broadcast>,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::anec::Broadcast>,mlir::ExecutionCostOpInterface::Trait<mlir::anec::Broadcast>>(a1, a2))
  {
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::Resample>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec8ResampleEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_9NOperandsILj2EE4ImplENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSI_11TypeChangerENSI_4anec13MinimumFamilyILNSG_6FamilyE3EE4ImplENS16_ILS17_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1L_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec8ResampleEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_9NOperandsILj2EE4ImplENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_35VerifyAttributesWithFamilyInterface5TraitENSG_28ANECompilerVerifierInterface5TraitENSI_11TypeChangerENSI_4anec13MinimumFamilyILNSG_6FamilyE3EE4ImplENS16_ILS17_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1L_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::Resample>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec8ResampleEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_9NOperandsILj2EE4ImplENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS9_11TypeChangerENS9_4anec13MinimumFamilyILNS7_6FamilyE3EE4ImplENSX_ILSY_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS1C_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec8ResampleEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_9NOperandsILj2EE4ImplENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_35VerifyAttributesWithFamilyInterface5TraitENS7_28ANECompilerVerifierInterface5TraitENS9_11TypeChangerENS9_4anec13MinimumFamilyILNS7_6FamilyE3EE4ImplENSX_ILSY_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS1C_vE9CallbacksE[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec8ResampleEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_9NOperandsILj2EE4ImplENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSD_11TypeChangerENSD_4anec13MinimumFamilyILNSB_6FamilyE3EE4ImplENS11_ILS12_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1G_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec8ResampleEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_9NOperandsILj2EE4ImplENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_35VerifyAttributesWithFamilyInterface5TraitENSB_28ANECompilerVerifierInterface5TraitENSD_11TypeChangerENSD_4anec13MinimumFamilyILNSB_6FamilyE3EE4ImplENS11_ILS12_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1G_vE9CallbacksE[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Resample,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::Resample,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::OpTrait::TypeChanger,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::Resample>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Resample>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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