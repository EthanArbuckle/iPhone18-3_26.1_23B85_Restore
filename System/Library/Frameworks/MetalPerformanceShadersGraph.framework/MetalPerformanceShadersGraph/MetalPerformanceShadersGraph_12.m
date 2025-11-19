void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::NegFOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::NegFOp>,mlir::OpTrait::OneResult<mlir::arith::NegFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::NegFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::NegFOp>,mlir::OpTrait::OneOperand<mlir::arith::NegFOp>,mlir::OpTrait::OpInvariants<mlir::arith::NegFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::NegFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::NegFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::NegFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::NegFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::NegFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::NegFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::NegFOp>,mlir::OpTrait::Elementwise<mlir::arith::NegFOp>,mlir::OpTrait::Scalarizable<mlir::arith::NegFOp>,mlir::OpTrait::Vectorizable<mlir::arith::NegFOp>,mlir::OpTrait::Tensorizable<mlir::arith::NegFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::NegFOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::arith::NegFOp::verifyInvariantsImpl(&v9)) && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v6) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v7) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::OrIOp>,mlir::OpTrait::OneResult<mlir::arith::OrIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::OrIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::OrIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::OrIOp>,mlir::OpTrait::OpInvariants<mlir::arith::OrIOp>,mlir::OpTrait::IsCommutative<mlir::arith::OrIOp>,mlir::OpTrait::IsIdempotent<mlir::arith::OrIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::OrIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::OrIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::OrIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::OrIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::OrIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::OrIOp>,mlir::OpTrait::Elementwise<mlir::arith::OrIOp>,mlir::OpTrait::Scalarizable<mlir::arith::OrIOp>,mlir::OpTrait::Vectorizable<mlir::arith::OrIOp>,mlir::OpTrait::Tensorizable<mlir::arith::OrIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::OrIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::OrIOp>::getSpeculatability;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::getEffects;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::inferResultRangesFromOptional;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::getShapeForUnroll;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x18uLL);
  v11 = v10;
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::isCompatibleReturnTypes;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::OrIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.ori";
    v24 = 9;
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

BOOL mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::OrIOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v21 = a1;
  v22[0] = v8;
  v22[1] = v9;
  v23 = 1;
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

  mlir::ValueRange::ValueRange(v24, v12, v11);
  v24[2] = a2;
  v24[3] = a3;
  v13 = mlir::arith::OrIOp::fold(&v21, v22);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    if (*(a4 + 8))
    {
      return v13 > 7;
    }

    v16 = v13;
    if (mlir::OpTrait::impl::foldCommutative(a1, a2, a3))
    {
      return 1;
    }

    v13 = v16;
    if (*(a4 + 8))
    {
      return v13 > 7;
    }

    v18 = mlir::OpTrait::impl::foldIdempotent(a1, v17);
    v13 = v16;
    if (v18 < 8)
    {
      return v13 > 7;
    }

    if (a1 - 16 == (v18 & ((v18 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v19 = *(a4 + 8);
    if (v19 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v19 + 1, 8);
      LODWORD(v19) = *(a4 + 8);
    }

    *(*a4 + 8 * v19) = v18;
  }

  else
  {
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 12))
    {
      v20 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
      v13 = v20;
      LODWORD(v14) = *(a4 + 8);
    }

    *(*a4 + 8 * v14) = v13;
  }

  ++*(a4 + 8);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::RemFOp>,mlir::OpTrait::OneResult<mlir::arith::RemFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::RemFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::RemFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::RemFOp>,mlir::OpTrait::OpInvariants<mlir::arith::RemFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::RemFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::RemFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::RemFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::RemFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::RemFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::RemFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::RemFOp>,mlir::OpTrait::Elementwise<mlir::arith::RemFOp>,mlir::OpTrait::Scalarizable<mlir::arith::RemFOp>,mlir::OpTrait::Vectorizable<mlir::arith::RemFOp>,mlir::OpTrait::Tensorizable<mlir::arith::RemFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::RemFOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::writeProperties;
  {
    v15 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::RemFOp>::getSpeculatability;
  {
    v16 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::getEffects;
  {
    v17 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x10uLL);
  v9 = v8;
  *v8 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::getFastMathFlagsAttr;
  v8[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::getFastMathAttrName;
  {
    v18 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(8uLL);
  v11 = v10;
  *v10 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::getShapeForUnroll;
  {
    v19 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(0x18uLL);
  v13 = v12;
  *v12 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::inferReturnTypes;
  v12[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::refineReturnTypes;
  v12[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::isCompatibleReturnTypes;
  {
    v20 = v12;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v13 = v20;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v14, v13);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::RemFOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.remf";
    v24 = 10;
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

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::arith::RemFOp::fold(&v13, v14);
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::RemSIOp>,mlir::OpTrait::OneResult<mlir::arith::RemSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::RemSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::RemSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::RemSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::RemSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::RemSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::RemSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::RemSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::RemSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::RemSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::RemSIOp>,mlir::OpTrait::Elementwise<mlir::arith::RemSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::RemSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::RemSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::RemSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::RemSIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::RemSIOp>::getSpeculatability;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::getEffects;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::inferResultRangesFromOptional;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::getShapeForUnroll;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x18uLL);
  v11 = v10;
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::isCompatibleReturnTypes;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::RemSIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.remsi";
    v24 = 11;
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

BOOL mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::RemSIOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
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
  v13 = mlir::arith::RemSIOp::fold(&v17, v18);
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::RemUIOp>,mlir::OpTrait::OneResult<mlir::arith::RemUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::RemUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::RemUIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::RemUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::RemUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::RemUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::RemUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::RemUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::RemUIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::RemUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::RemUIOp>,mlir::OpTrait::Elementwise<mlir::arith::RemUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::RemUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::RemUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::RemUIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::RemUIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::RemUIOp>::getSpeculatability;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::getEffects;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::inferResultRangesFromOptional;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::getShapeForUnroll;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x18uLL);
  v11 = v10;
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::isCompatibleReturnTypes;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::RemUIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.remui";
    v24 = 11;
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

BOOL mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::RemUIOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
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
  v13 = mlir::arith::RemUIOp::fold(&v17, v18);
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SIToFPOp>,mlir::OpTrait::OneResult<mlir::arith::SIToFPOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SIToFPOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SIToFPOp>,mlir::OpTrait::OneOperand<mlir::arith::SIToFPOp>,mlir::OpTrait::OpInvariants<mlir::arith::SIToFPOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SIToFPOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::SIToFPOp>,mlir::CastOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::Elementwise<mlir::arith::SIToFPOp>,mlir::OpTrait::Scalarizable<mlir::arith::SIToFPOp>,mlir::OpTrait::Vectorizable<mlir::arith::SIToFPOp>,mlir::OpTrait::Tensorizable<mlir::arith::SIToFPOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::SIToFPOp>::getSpeculatability;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::SIToFPOp>::getEffects;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::CastOpInterfaceInterfaceTraits::Model<mlir::arith::SIToFPOp>::areCastCompatible;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::SIToFPOp>::getShapeForUnroll;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

BOOL mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::foldSingleResultHook<mlir::arith::SIToFPOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v19 = a1;
  v20[0] = v8;
  v20[1] = v9;
  v21 = 1;
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

  mlir::ValueRange::ValueRange(v22, v12, v11);
  v22[2] = a2;
  v22[3] = a3;
  v13 = mlir::arith::SIToFPOp::fold(&v19, v20);
  if (v13 >= 8 && a1 - 16 != (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 12))
    {
      v18 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
      v13 = v18;
      LODWORD(v14) = *(a4 + 8);
    }

    *(*a4 + 8 * v14) = v13;
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v15 = v13;
    v16 = mlir::impl::foldCastInterfaceOp(a1, a2, a3, a4);
    v13 = v15;
    if (v16)
    {
      return 1;
    }
  }

  return v13 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::BitcastOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::SIToFPOp>,mlir::OpTrait::OneResult<mlir::arith::SIToFPOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SIToFPOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SIToFPOp>,mlir::OpTrait::OneOperand<mlir::arith::SIToFPOp>,mlir::OpTrait::OpInvariants<mlir::arith::SIToFPOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SIToFPOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::SIToFPOp>,mlir::CastOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::Elementwise<mlir::arith::SIToFPOp>,mlir::OpTrait::Scalarizable<mlir::arith::SIToFPOp>,mlir::OpTrait::Vectorizable<mlir::arith::SIToFPOp>,mlir::OpTrait::Tensorizable<mlir::arith::SIToFPOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v10 = a1, mlir::arith::SIToFPOp::verifyInvariantsImpl(&v10)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && mlir::impl::verifyCastInterfaceOp(a1, v7))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v8) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddIOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddIOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddIOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddIOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ShLIOp>,mlir::OpTrait::OneResult<mlir::arith::ShLIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ShLIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ShLIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::ShLIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ShLIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::ShLIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ShLIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ShLIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ShLIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ShLIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::ShLIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::ShLIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ShLIOp>,mlir::OpTrait::Elementwise<mlir::arith::ShLIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ShLIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ShLIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ShLIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::ShLIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::writeProperties;
  {
    v17 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::ShLIOp>::getSpeculatability;
  {
    v18 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::getEffects;
  {
    v19 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x10uLL);
  v9 = v8;
  *v8 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::inferResultRanges;
  v8[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::inferResultRangesFromOptional;
  {
    v20 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v9 = v20;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x20uLL);
  v11 = v10;
  *v10 = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::getOverflowAttr;
  v10[1] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::hasNoUnsignedWrap;
  v10[2] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::hasNoSignedWrap;
  v10[3] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::getIntegerOverflowAttrName;
  {
    v21 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v11 = v21;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(8uLL);
  v13 = v12;
  *v12 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::getShapeForUnroll;
  {
    v22 = v12;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v13 = v22;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v13);
  v14 = malloc(0x18uLL);
  v15 = v14;
  *v14 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::inferReturnTypes;
  v14[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::refineReturnTypes;
  v14[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::isCompatibleReturnTypes;
  {
    v23 = v14;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v15 = v23;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v16, v15);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::ShLIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.shli";
    v24 = 10;
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

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::arith::ShLIOp::fold(&v13, v14);
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    a1 = v38;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_79;
    }
  }

  v209 = a1;
  v39 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v1 = v39;
  a1 = v209;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_80;
  }

LABEL_79:
  v192 = v2;
  v210 = a1;
  v40 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v192;
  a1 = v210;
  v1 = v40;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_81;
  }

LABEL_80:
  v193 = v2;
  v211 = a1;
  v41 = v1;
  v176 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v3 = v176;
  v2 = v193;
  v1 = v41;
  a1 = v211;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_82;
  }

LABEL_81:
  v194 = v2;
  v212 = a1;
  v42 = v1;
  v161 = v4;
  v177 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v4 = v161;
  v3 = v177;
  v2 = v194;
  a1 = v212;
  v1 = v42;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_83;
  }

LABEL_82:
  v195 = v2;
  v213 = a1;
  v43 = v1;
  v162 = v4;
  v178 = v3;
  v147 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v5 = v147;
  v4 = v162;
  v3 = v178;
  v2 = v195;
  v1 = v43;
  a1 = v213;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_83:
  v196 = v2;
  v214 = a1;
  v44 = v1;
  v163 = v4;
  v179 = v3;
  v134 = v6;
  v148 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v6 = v134;
  v5 = v148;
  v4 = v163;
  v3 = v179;
  v2 = v196;
  a1 = v214;
  v1 = v44;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_85;
  }

LABEL_84:
  v197 = v2;
  v215 = a1;
  v45 = v1;
  v164 = v4;
  v180 = v3;
  v135 = v6;
  v149 = v5;
  v122 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v122;
  v6 = v135;
  v5 = v149;
  v4 = v164;
  v3 = v180;
  v2 = v197;
  v1 = v45;
  a1 = v215;
  v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_86;
  }

LABEL_85:
  v198 = v2;
  v216 = a1;
  v46 = v1;
  v165 = v4;
  v181 = v3;
  v136 = v6;
  v150 = v5;
  v123 = v7;
  v111 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v8 = v111;
  v7 = v123;
  v6 = v136;
  v5 = v150;
  v4 = v165;
  v3 = v181;
  v2 = v198;
  v1 = v46;
  a1 = v216;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_87;
  }

LABEL_86:
  v199 = v2;
  v217 = a1;
  v47 = v1;
  v166 = v4;
  v182 = v3;
  v137 = v6;
  v151 = v5;
  v124 = v7;
  v101 = v9;
  v112 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v9 = v101;
  v8 = v112;
  v7 = v124;
  v6 = v137;
  v5 = v151;
  v4 = v166;
  v3 = v182;
  v2 = v199;
  v1 = v47;
  a1 = v217;
  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_88;
  }

LABEL_87:
  v200 = v2;
  v218 = a1;
  v48 = v1;
  v167 = v4;
  v183 = v3;
  v138 = v6;
  v152 = v5;
  v125 = v7;
  v102 = v9;
  v113 = v8;
  v92 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v10 = v92;
  v9 = v102;
  v8 = v113;
  v7 = v125;
  v6 = v138;
  v5 = v152;
  v4 = v167;
  v3 = v183;
  v2 = v200;
  v1 = v48;
  a1 = v218;
  v11 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_89;
  }

LABEL_88:
  v201 = v2;
  v219 = a1;
  v49 = v1;
  v168 = v4;
  v184 = v3;
  v139 = v6;
  v153 = v5;
  v126 = v7;
  v103 = v9;
  v114 = v8;
  v84 = v11;
  v93 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v11 = v84;
  v10 = v93;
  v9 = v103;
  v8 = v114;
  v7 = v126;
  v6 = v139;
  v5 = v153;
  v4 = v168;
  v3 = v184;
  v2 = v201;
  v1 = v49;
  a1 = v219;
  v12 = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_90;
  }

LABEL_89:
  v202 = v2;
  v220 = a1;
  v50 = v1;
  v169 = v4;
  v185 = v3;
  v140 = v6;
  v154 = v5;
  v127 = v7;
  v104 = v9;
  v115 = v8;
  v85 = v11;
  v94 = v10;
  v77 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v77;
  v11 = v85;
  v10 = v94;
  v9 = v104;
  v8 = v115;
  v7 = v127;
  v6 = v140;
  v5 = v154;
  v4 = v169;
  v3 = v185;
  v2 = v202;
  v1 = v50;
  a1 = v220;
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

    goto LABEL_91;
  }

LABEL_90:
  v203 = v2;
  v221 = a1;
  v51 = v1;
  v170 = v4;
  v186 = v3;
  v141 = v6;
  v155 = v5;
  v128 = v7;
  v105 = v9;
  v116 = v8;
  v86 = v11;
  v95 = v10;
  v71 = v13;
  v78 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v13 = v71;
  v12 = v78;
  v11 = v86;
  v10 = v95;
  v9 = v105;
  v8 = v116;
  v7 = v128;
  v6 = v141;
  v5 = v155;
  v4 = v170;
  v3 = v186;
  v2 = v203;
  v1 = v51;
  a1 = v221;
  v14 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_16:
    v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_17;
    }

    goto LABEL_92;
  }

LABEL_91:
  v204 = v2;
  v222 = a1;
  v52 = v1;
  v171 = v4;
  v187 = v3;
  v142 = v6;
  v156 = v5;
  v129 = v7;
  v106 = v9;
  v117 = v8;
  v87 = v11;
  v96 = v10;
  v72 = v13;
  v79 = v12;
  v66 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v14 = v66;
  v13 = v72;
  v12 = v79;
  v11 = v87;
  v10 = v96;
  v9 = v106;
  v8 = v117;
  v7 = v129;
  v6 = v142;
  v5 = v156;
  v4 = v171;
  v3 = v187;
  v2 = v204;
  v1 = v52;
  a1 = v222;
  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_17:
    v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_18;
    }

    goto LABEL_93;
  }

LABEL_92:
  v205 = v2;
  v223 = a1;
  v53 = v1;
  v172 = v4;
  v188 = v3;
  v143 = v6;
  v157 = v5;
  v130 = v7;
  v107 = v9;
  v118 = v8;
  v88 = v11;
  v97 = v10;
  v73 = v13;
  v80 = v12;
  v62 = v15;
  v67 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v15 = v62;
  v14 = v67;
  v13 = v73;
  v12 = v80;
  v11 = v88;
  v10 = v97;
  v9 = v107;
  v8 = v118;
  v7 = v130;
  v6 = v143;
  v5 = v157;
  v4 = v172;
  v3 = v188;
  v2 = v205;
  v1 = v53;
  a1 = v223;
  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_18:
    v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_19;
    }

LABEL_94:
    v207 = v2;
    v225 = a1;
    v55 = v1;
    v174 = v4;
    v190 = v3;
    v145 = v6;
    v159 = v5;
    v132 = v7;
    v109 = v9;
    v120 = v8;
    v90 = v11;
    v99 = v10;
    v75 = v13;
    v82 = v12;
    v64 = v15;
    v69 = v14;
    v57 = v17;
    v60 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v17 = v57;
    v16 = v60;
    v15 = v64;
    v14 = v69;
    v13 = v75;
    v12 = v82;
    v11 = v90;
    v10 = v99;
    v9 = v109;
    v8 = v120;
    v7 = v132;
    v6 = v145;
    v5 = v159;
    v4 = v174;
    v3 = v190;
    v2 = v207;
    v1 = v55;
    a1 = v225;
    v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_95;
  }

LABEL_93:
  v206 = v2;
  v224 = a1;
  v54 = v1;
  v173 = v4;
  v189 = v3;
  v144 = v6;
  v158 = v5;
  v131 = v7;
  v108 = v9;
  v119 = v8;
  v89 = v11;
  v98 = v10;
  v74 = v13;
  v81 = v12;
  v63 = v15;
  v68 = v14;
  v59 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v16 = v59;
  v15 = v63;
  v14 = v68;
  v13 = v74;
  v12 = v81;
  v11 = v89;
  v10 = v98;
  v9 = v108;
  v8 = v119;
  v7 = v131;
  v6 = v144;
  v5 = v158;
  v4 = v173;
  v3 = v189;
  v2 = v206;
  v1 = v54;
  a1 = v224;
  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_94;
  }

LABEL_19:
  v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_95:
  v226 = a1;
  v56 = v1;
  v191 = v3;
  v208 = v2;
  v160 = v5;
  v175 = v4;
  v133 = v7;
  v146 = v6;
  v110 = v9;
  v121 = v8;
  v91 = v11;
  v100 = v10;
  v76 = v13;
  v83 = v12;
  v65 = v15;
  v70 = v14;
  v58 = v17;
  v61 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v17 = v58;
  v16 = v61;
  v15 = v65;
  v14 = v70;
  v13 = v76;
  v12 = v83;
  v11 = v91;
  v10 = v100;
  v9 = v110;
  v8 = v121;
  v7 = v133;
  v6 = v146;
  v5 = v160;
  v4 = v175;
  v3 = v191;
  v2 = v208;
  v1 = v56;
  a1 = v226;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ShRSIOp>,mlir::OpTrait::OneResult<mlir::arith::ShRSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ShRSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ShRSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::ShRSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ShRSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ShRSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ShRSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ShRSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ShRSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::ShRSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ShRSIOp>,mlir::OpTrait::Elementwise<mlir::arith::ShRSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ShRSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ShRSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ShRSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::ShRSIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::ShRSIOp>::getSpeculatability;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::getEffects;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::inferResultRangesFromOptional;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::getShapeForUnroll;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x18uLL);
  v11 = v10;
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::isCompatibleReturnTypes;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::ShRSIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.shrsi";
    v24 = 11;
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

BOOL mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::ShRSIOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
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
  v13 = mlir::arith::ShRSIOp::fold(&v17, v18);
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ShRUIOp>,mlir::OpTrait::OneResult<mlir::arith::ShRUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ShRUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ShRUIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::ShRUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ShRUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ShRUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ShRUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ShRUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ShRUIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::ShRUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ShRUIOp>,mlir::OpTrait::Elementwise<mlir::arith::ShRUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ShRUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ShRUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ShRUIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::ShRUIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::ShRUIOp>::getSpeculatability;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::getEffects;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::inferResultRangesFromOptional;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::getShapeForUnroll;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x18uLL);
  v11 = v10;
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::isCompatibleReturnTypes;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::ShRUIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.shrui";
    v24 = 11;
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

BOOL mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::ShRUIOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
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
  v13 = mlir::arith::ShRUIOp::fold(&v17, v18);
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SubFOp>,mlir::OpTrait::OneResult<mlir::arith::SubFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SubFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SubFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::SubFOp>,mlir::OpTrait::OpInvariants<mlir::arith::SubFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::SubFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SubFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SubFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SubFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::SubFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::SubFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SubFOp>,mlir::OpTrait::Elementwise<mlir::arith::SubFOp>,mlir::OpTrait::Scalarizable<mlir::arith::SubFOp>,mlir::OpTrait::Vectorizable<mlir::arith::SubFOp>,mlir::OpTrait::Tensorizable<mlir::arith::SubFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::SubFOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::writeProperties;
  {
    v15 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::SubFOp>::getSpeculatability;
  {
    v16 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::getEffects;
  {
    v17 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x10uLL);
  v9 = v8;
  *v8 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::getFastMathFlagsAttr;
  v8[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::getFastMathAttrName;
  {
    v18 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(8uLL);
  v11 = v10;
  *v10 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::getShapeForUnroll;
  {
    v19 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(0x18uLL);
  v13 = v12;
  *v12 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::inferReturnTypes;
  v12[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::refineReturnTypes;
  v12[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::isCompatibleReturnTypes;
  {
    v20 = v12;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v13 = v20;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v14, v13);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::SubFOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.subf";
    v24 = 10;
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

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::arith::SubFOp::fold(&v13, v14);
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddIOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddIOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddIOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddIOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SubIOp>,mlir::OpTrait::OneResult<mlir::arith::SubIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SubIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SubIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::SubIOp>,mlir::OpTrait::OpInvariants<mlir::arith::SubIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::SubIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SubIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SubIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SubIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::SubIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::SubIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::SubIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SubIOp>,mlir::OpTrait::Elementwise<mlir::arith::SubIOp>,mlir::OpTrait::Scalarizable<mlir::arith::SubIOp>,mlir::OpTrait::Vectorizable<mlir::arith::SubIOp>,mlir::OpTrait::Tensorizable<mlir::arith::SubIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::SubIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::writeProperties;
  {
    v17 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::SubIOp>::getSpeculatability;
  {
    v18 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::getEffects;
  {
    v19 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x10uLL);
  v9 = v8;
  *v8 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::inferResultRanges;
  v8[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::inferResultRangesFromOptional;
  {
    v20 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v9 = v20;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x20uLL);
  v11 = v10;
  *v10 = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::getOverflowAttr;
  v10[1] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::hasNoUnsignedWrap;
  v10[2] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::hasNoSignedWrap;
  v10[3] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::getIntegerOverflowAttrName;
  {
    v21 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v11 = v21;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(8uLL);
  v13 = v12;
  *v12 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::getShapeForUnroll;
  {
    v22 = v12;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v13 = v22;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v13);
  v14 = malloc(0x18uLL);
  v15 = v14;
  *v14 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::inferReturnTypes;
  v14[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::refineReturnTypes;
  v14[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::isCompatibleReturnTypes;
  {
    v23 = v14;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v15 = v23;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v16, v15);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::SubIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.subi";
    v24 = 10;
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

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::arith::SubIOp::fold(&v13, v14);
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::TruncFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::TruncFOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::TruncFOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::TruncFOp>,mlir::OpTrait::OneResult<mlir::arith::TruncFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::TruncFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::TruncFOp>,mlir::OpTrait::OneOperand<mlir::arith::TruncFOp>,mlir::OpTrait::OpInvariants<mlir::arith::TruncFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::TruncFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::TruncFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::TruncFOp>,mlir::arith::ArithRoundingModeInterface::Trait<mlir::arith::TruncFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::TruncFOp>,mlir::CastOpInterface::Trait<mlir::arith::TruncFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::Elementwise<mlir::arith::TruncFOp>,mlir::OpTrait::Scalarizable<mlir::arith::TruncFOp>,mlir::OpTrait::Vectorizable<mlir::arith::TruncFOp>,mlir::OpTrait::Tensorizable<mlir::arith::TruncFOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::writeProperties;
  {
    v17 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::TruncFOp>::getSpeculatability;
  {
    v18 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::getEffects;
  {
    v19 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x10uLL);
  v9 = v8;
  *v8 = mlir::arith::detail::ArithRoundingModeInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::getRoundingModeAttr;
  v8[1] = mlir::arith::detail::ArithRoundingModeInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::getRoundingModeAttrName;
  {
    v20 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::TruncFOp>,mlir::OpTrait::OneResult<mlir::arith::TruncFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::TruncFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::TruncFOp>,mlir::OpTrait::OneOperand<mlir::arith::TruncFOp>,mlir::OpTrait::OpInvariants<mlir::arith::TruncFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::TruncFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::TruncFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::TruncFOp>,mlir::arith::ArithRoundingModeInterface::Trait<mlir::arith::TruncFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::TruncFOp>,mlir::CastOpInterface::Trait<mlir::arith::TruncFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::Elementwise<mlir::arith::TruncFOp>,mlir::OpTrait::Scalarizable<mlir::arith::TruncFOp>,mlir::OpTrait::Vectorizable<mlir::arith::TruncFOp>,mlir::OpTrait::Tensorizable<mlir::arith::TruncFOp>>();
    v9 = v20;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x10uLL);
  v11 = v10;
  *v10 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::getFastMathFlagsAttr;
  v10[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::getFastMathAttrName;
  {
    v21 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v21;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(8uLL);
  v13 = v12;
  *v12 = mlir::detail::CastOpInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::areCastCompatible;
  {
    v22 = v12;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>();
    v13 = v22;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v13);
  v14 = malloc(8uLL);
  v15 = v14;
  *v14 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::getShapeForUnroll;
  {
    v23 = v14;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v15 = v23;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v16, v15);
}

const char *llvm::getTypeName<mlir::arith::ArithRoundingModeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::ArithRoundingModeInterface]";
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

BOOL mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::foldSingleResultHook<mlir::arith::TruncFOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = a1;
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v15, a1);
  v16 = a2;
  v17 = a3;
  v8 = mlir::arith::TruncFOp::fold(&v14, v15);
  if (v8 >= 8 && a1 - 16 != (v8 & ((v8 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v9 = *(a4 + 8);
    if (v9 >= *(a4 + 12))
    {
      v13 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v9 + 1, 8);
      v8 = v13;
      LODWORD(v9) = *(a4 + 8);
    }

    *(*a4 + 8 * v9) = v8;
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v10 = v8;
    v11 = mlir::impl::foldCastInterfaceOp(a1, a2, a3, a4);
    v8 = v10;
    if (v11)
    {
      return 1;
    }
  }

  return v8 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    a1 = v38;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_79;
    }
  }

  v209 = a1;
  v39 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v1 = v39;
  a1 = v209;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_80;
  }

LABEL_79:
  v192 = v2;
  v210 = a1;
  v40 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v192;
  a1 = v210;
  v1 = v40;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_81;
  }

LABEL_80:
  v193 = v2;
  v211 = a1;
  v41 = v1;
  v176 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v3 = v176;
  v2 = v193;
  v1 = v41;
  a1 = v211;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_82;
  }

LABEL_81:
  v194 = v2;
  v212 = a1;
  v42 = v1;
  v161 = v4;
  v177 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
  v4 = v161;
  v3 = v177;
  v2 = v194;
  a1 = v212;
  v1 = v42;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_83;
  }

LABEL_82:
  v195 = v2;
  v213 = a1;
  v43 = v1;
  v162 = v4;
  v178 = v3;
  v147 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v5 = v147;
  v4 = v162;
  v3 = v178;
  v2 = v195;
  v1 = v43;
  a1 = v213;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_83:
  v196 = v2;
  v214 = a1;
  v44 = v1;
  v163 = v4;
  v179 = v3;
  v134 = v6;
  v148 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v6 = v134;
  v5 = v148;
  v4 = v163;
  v3 = v179;
  v2 = v196;
  a1 = v214;
  v1 = v44;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_85;
  }

LABEL_84:
  v197 = v2;
  v215 = a1;
  v45 = v1;
  v164 = v4;
  v180 = v3;
  v135 = v6;
  v149 = v5;
  v122 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v122;
  v6 = v135;
  v5 = v149;
  v4 = v164;
  v3 = v180;
  v2 = v197;
  v1 = v45;
  a1 = v215;
  v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_86;
  }

LABEL_85:
  v198 = v2;
  v216 = a1;
  v46 = v1;
  v165 = v4;
  v181 = v3;
  v136 = v6;
  v150 = v5;
  v123 = v7;
  v111 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v8 = v111;
  v7 = v123;
  v6 = v136;
  v5 = v150;
  v4 = v165;
  v3 = v181;
  v2 = v198;
  v1 = v46;
  a1 = v216;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_87;
  }

LABEL_86:
  v199 = v2;
  v217 = a1;
  v47 = v1;
  v166 = v4;
  v182 = v3;
  v137 = v6;
  v151 = v5;
  v124 = v7;
  v101 = v9;
  v112 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v9 = v101;
  v8 = v112;
  v7 = v124;
  v6 = v137;
  v5 = v151;
  v4 = v166;
  v3 = v182;
  v2 = v199;
  v1 = v47;
  a1 = v217;
  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_88;
  }

LABEL_87:
  v200 = v2;
  v218 = a1;
  v48 = v1;
  v167 = v4;
  v183 = v3;
  v138 = v6;
  v152 = v5;
  v125 = v7;
  v102 = v9;
  v113 = v8;
  v92 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
  v10 = v92;
  v9 = v102;
  v8 = v113;
  v7 = v125;
  v6 = v138;
  v5 = v152;
  v4 = v167;
  v3 = v183;
  v2 = v200;
  v1 = v48;
  a1 = v218;
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_89;
  }

LABEL_88:
  v201 = v2;
  v219 = a1;
  v49 = v1;
  v168 = v4;
  v184 = v3;
  v139 = v6;
  v153 = v5;
  v126 = v7;
  v103 = v9;
  v114 = v8;
  v84 = v11;
  v93 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
  v11 = v84;
  v10 = v93;
  v9 = v103;
  v8 = v114;
  v7 = v126;
  v6 = v139;
  v5 = v153;
  v4 = v168;
  v3 = v184;
  v2 = v201;
  v1 = v49;
  a1 = v219;
  v12 = mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_90;
  }

LABEL_89:
  v202 = v2;
  v220 = a1;
  v50 = v1;
  v169 = v4;
  v185 = v3;
  v140 = v6;
  v154 = v5;
  v127 = v7;
  v104 = v9;
  v115 = v8;
  v85 = v11;
  v94 = v10;
  v77 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v77;
  v11 = v85;
  v10 = v94;
  v9 = v104;
  v8 = v115;
  v7 = v127;
  v6 = v140;
  v5 = v154;
  v4 = v169;
  v3 = v185;
  v2 = v202;
  v1 = v50;
  a1 = v220;
  v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

    goto LABEL_91;
  }

LABEL_90:
  v203 = v2;
  v221 = a1;
  v51 = v1;
  v170 = v4;
  v186 = v3;
  v141 = v6;
  v155 = v5;
  v128 = v7;
  v105 = v9;
  v116 = v8;
  v86 = v11;
  v95 = v10;
  v71 = v13;
  v78 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
  v13 = v71;
  v12 = v78;
  v11 = v86;
  v10 = v95;
  v9 = v105;
  v8 = v116;
  v7 = v128;
  v6 = v141;
  v5 = v155;
  v4 = v170;
  v3 = v186;
  v2 = v203;
  v1 = v51;
  a1 = v221;
  v14 = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_16:
    v15 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_17;
    }

    goto LABEL_92;
  }

LABEL_91:
  v204 = v2;
  v222 = a1;
  v52 = v1;
  v171 = v4;
  v187 = v3;
  v142 = v6;
  v156 = v5;
  v129 = v7;
  v106 = v9;
  v117 = v8;
  v87 = v11;
  v96 = v10;
  v72 = v13;
  v79 = v12;
  v66 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v14 = v66;
  v13 = v72;
  v12 = v79;
  v11 = v87;
  v10 = v96;
  v9 = v106;
  v8 = v117;
  v7 = v129;
  v6 = v142;
  v5 = v156;
  v4 = v171;
  v3 = v187;
  v2 = v204;
  v1 = v52;
  a1 = v222;
  v15 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_17:
    v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_18;
    }

    goto LABEL_93;
  }

LABEL_92:
  v205 = v2;
  v223 = a1;
  v53 = v1;
  v172 = v4;
  v188 = v3;
  v143 = v6;
  v157 = v5;
  v130 = v7;
  v107 = v9;
  v118 = v8;
  v88 = v11;
  v97 = v10;
  v73 = v13;
  v80 = v12;
  v62 = v15;
  v67 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v15 = v62;
  v14 = v67;
  v13 = v73;
  v12 = v80;
  v11 = v88;
  v10 = v97;
  v9 = v107;
  v8 = v118;
  v7 = v130;
  v6 = v143;
  v5 = v157;
  v4 = v172;
  v3 = v188;
  v2 = v205;
  v1 = v53;
  a1 = v223;
  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_18:
    v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_19;
    }

LABEL_94:
    v207 = v2;
    v225 = a1;
    v55 = v1;
    v174 = v4;
    v190 = v3;
    v145 = v6;
    v159 = v5;
    v132 = v7;
    v109 = v9;
    v120 = v8;
    v90 = v11;
    v99 = v10;
    v75 = v13;
    v82 = v12;
    v64 = v15;
    v69 = v14;
    v57 = v17;
    v60 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v17 = v57;
    v16 = v60;
    v15 = v64;
    v14 = v69;
    v13 = v75;
    v12 = v82;
    v11 = v90;
    v10 = v99;
    v9 = v109;
    v8 = v120;
    v7 = v132;
    v6 = v145;
    v5 = v159;
    v4 = v174;
    v3 = v190;
    v2 = v207;
    v1 = v55;
    a1 = v225;
    v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_95;
  }

LABEL_93:
  v206 = v2;
  v224 = a1;
  v54 = v1;
  v173 = v4;
  v189 = v3;
  v144 = v6;
  v158 = v5;
  v131 = v7;
  v108 = v9;
  v119 = v8;
  v89 = v11;
  v98 = v10;
  v74 = v13;
  v81 = v12;
  v63 = v15;
  v68 = v14;
  v59 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v16 = v59;
  v15 = v63;
  v14 = v68;
  v13 = v74;
  v12 = v81;
  v11 = v89;
  v10 = v98;
  v9 = v108;
  v8 = v119;
  v7 = v131;
  v6 = v144;
  v5 = v158;
  v4 = v173;
  v3 = v189;
  v2 = v206;
  v1 = v54;
  a1 = v224;
  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_94;
  }

LABEL_19:
  v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_95:
  v226 = a1;
  v56 = v1;
  v191 = v3;
  v208 = v2;
  v160 = v5;
  v175 = v4;
  v133 = v7;
  v146 = v6;
  v110 = v9;
  v121 = v8;
  v91 = v11;
  v100 = v10;
  v76 = v13;
  v83 = v12;
  v65 = v15;
  v70 = v14;
  v58 = v17;
  v61 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v17 = v58;
  v16 = v61;
  v15 = v65;
  v14 = v70;
  v13 = v76;
  v12 = v83;
  v11 = v91;
  v10 = v100;
  v9 = v110;
  v8 = v121;
  v7 = v133;
  v6 = v146;
  v5 = v160;
  v4 = v175;
  v3 = v191;
  v2 = v208;
  v1 = v56;
  a1 = v226;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::ArithRoundingModeInterface::Trait<Empty>]";
  v6 = 103;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::TruncFOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::TruncFOp>,mlir::OpTrait::OneResult<mlir::arith::TruncFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::TruncFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::TruncFOp>,mlir::OpTrait::OneOperand<mlir::arith::TruncFOp>,mlir::OpTrait::OpInvariants<mlir::arith::TruncFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::TruncFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::TruncFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::TruncFOp>,mlir::arith::ArithRoundingModeInterface::Trait<mlir::arith::TruncFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::TruncFOp>,mlir::CastOpInterface::Trait<mlir::arith::TruncFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::Elementwise<mlir::arith::TruncFOp>,mlir::OpTrait::Scalarizable<mlir::arith::TruncFOp>,mlir::OpTrait::Vectorizable<mlir::arith::TruncFOp>,mlir::OpTrait::Tensorizable<mlir::arith::TruncFOp>>(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1;
  return mlir::arith::TruncFOp::verify(&v4);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::TruncFOp>,mlir::OpTrait::OneResult<mlir::arith::TruncFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::TruncFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::TruncFOp>,mlir::OpTrait::OneOperand<mlir::arith::TruncFOp>,mlir::OpTrait::OpInvariants<mlir::arith::TruncFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::TruncFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::TruncFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::TruncFOp>,mlir::arith::ArithRoundingModeInterface::Trait<mlir::arith::TruncFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::TruncFOp>,mlir::CastOpInterface::Trait<mlir::arith::TruncFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::Elementwise<mlir::arith::TruncFOp>,mlir::OpTrait::Scalarizable<mlir::arith::TruncFOp>,mlir::OpTrait::Vectorizable<mlir::arith::TruncFOp>,mlir::OpTrait::Tensorizable<mlir::arith::TruncFOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v10 = a1, mlir::arith::TruncFOp::verifyInvariantsImpl(&v10)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && mlir::impl::verifyCastInterfaceOp(a1, v7))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v8) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::TruncIOp>,mlir::OpTrait::OneResult<mlir::arith::TruncIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::TruncIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::TruncIOp>,mlir::OpTrait::OneOperand<mlir::arith::TruncIOp>,mlir::OpTrait::OpInvariants<mlir::arith::TruncIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::TruncIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::TruncIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::TruncIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::TruncIOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::TruncIOp>,mlir::CastOpInterface::Trait<mlir::arith::TruncIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::TruncIOp>,mlir::OpTrait::Elementwise<mlir::arith::TruncIOp>,mlir::OpTrait::Scalarizable<mlir::arith::TruncIOp>,mlir::OpTrait::Vectorizable<mlir::arith::TruncIOp>,mlir::OpTrait::Tensorizable<mlir::arith::TruncIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::TruncIOp>::inferResultRanges;
  v2[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::TruncIOp>::inferResultRangesFromOptional;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::TruncIOp>::getSpeculatability;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::TruncIOp>::getEffects;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::CastOpInterfaceInterfaceTraits::Model<mlir::arith::TruncIOp>::areCastCompatible;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(8uLL);
  v11 = v10;
  *v10 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::TruncIOp>::getShapeForUnroll;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::TruncIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

BOOL mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::foldSingleResultHook<mlir::arith::TruncIOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v19 = a1;
  v20[0] = v8;
  v20[1] = v9;
  v21 = 1;
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

  mlir::ValueRange::ValueRange(v22, v12, v11);
  v22[2] = a2;
  v22[3] = a3;
  v13 = mlir::arith::TruncIOp::fold(&v19, v20);
  if (v13 >= 8 && a1 - 16 != (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 12))
    {
      v18 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
      v13 = v18;
      LODWORD(v14) = *(a4 + 8);
    }

    *(*a4 + 8 * v14) = v13;
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v15 = v13;
    v16 = mlir::impl::foldCastInterfaceOp(a1, a2, a3, a4);
    v13 = v15;
    if (v16)
    {
      return 1;
    }
  }

  return v13 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::BitcastOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::ExtSIOp>,mlir::OpTrait::OneResult<mlir::arith::ExtSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ExtSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ExtSIOp>,mlir::OpTrait::OneOperand<mlir::arith::ExtSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ExtSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ExtSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ExtSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ExtSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ExtSIOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::ExtSIOp>,mlir::CastOpInterface::Trait<mlir::arith::ExtSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ExtSIOp>,mlir::OpTrait::Elementwise<mlir::arith::ExtSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ExtSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ExtSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ExtSIOp>>(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1;
  return mlir::arith::TruncIOp::verify(&v4);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::UIToFPOp>,mlir::OpTrait::OneResult<mlir::arith::UIToFPOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::UIToFPOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::UIToFPOp>,mlir::OpTrait::OneOperand<mlir::arith::UIToFPOp>,mlir::OpTrait::OpInvariants<mlir::arith::UIToFPOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::UIToFPOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::UIToFPOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::UIToFPOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::UIToFPOp>,mlir::CastOpInterface::Trait<mlir::arith::UIToFPOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::UIToFPOp>,mlir::OpTrait::Elementwise<mlir::arith::UIToFPOp>,mlir::OpTrait::Scalarizable<mlir::arith::UIToFPOp>,mlir::OpTrait::Vectorizable<mlir::arith::UIToFPOp>,mlir::OpTrait::Tensorizable<mlir::arith::UIToFPOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::UIToFPOp>::getSpeculatability;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::UIToFPOp>::getEffects;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::CastOpInterfaceInterfaceTraits::Model<mlir::arith::UIToFPOp>::areCastCompatible;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::UIToFPOp>::getShapeForUnroll;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

BOOL mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::foldSingleResultHook<mlir::arith::UIToFPOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v19 = a1;
  v20[0] = v8;
  v20[1] = v9;
  v21 = 1;
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

  mlir::ValueRange::ValueRange(v22, v12, v11);
  v22[2] = a2;
  v22[3] = a3;
  v13 = mlir::arith::UIToFPOp::fold(&v19, v20);
  if (v13 >= 8 && a1 - 16 != (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 12))
    {
      v18 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
      v13 = v18;
      LODWORD(v14) = *(a4 + 8);
    }

    *(*a4 + 8 * v14) = v13;
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v15 = v13;
    v16 = mlir::impl::foldCastInterfaceOp(a1, a2, a3, a4);
    v13 = v15;
    if (v16)
    {
      return 1;
    }
  }

  return v13 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::BitcastOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::XOrIOp>,mlir::OpTrait::OneResult<mlir::arith::XOrIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::XOrIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::XOrIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::XOrIOp>,mlir::OpTrait::OpInvariants<mlir::arith::XOrIOp>,mlir::OpTrait::IsCommutative<mlir::arith::XOrIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::XOrIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::XOrIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::XOrIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::XOrIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::XOrIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::XOrIOp>,mlir::OpTrait::Elementwise<mlir::arith::XOrIOp>,mlir::OpTrait::Scalarizable<mlir::arith::XOrIOp>,mlir::OpTrait::Vectorizable<mlir::arith::XOrIOp>,mlir::OpTrait::Tensorizable<mlir::arith::XOrIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::XOrIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::XOrIOp>::getSpeculatability;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::getEffects;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::inferResultRangesFromOptional;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::getShapeForUnroll;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x18uLL);
  v11 = v10;
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::isCompatibleReturnTypes;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::XOrIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.xori";
    v24 = 10;
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

BOOL mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::XOrIOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v19 = a1;
  v20[0] = v8;
  v20[1] = v9;
  v21 = 1;
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

  mlir::ValueRange::ValueRange(v22, v12, v11);
  v22[2] = a2;
  v22[3] = a3;
  v13 = mlir::arith::XOrIOp::fold(&v19, v20);
  if (v13 >= 8 && a1 - 16 != (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 12))
    {
      v18 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
      v13 = v18;
      LODWORD(v14) = *(a4 + 8);
    }

    *(*a4 + 8 * v14) = v13;
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v15 = v13;
    v16 = mlir::OpTrait::impl::foldCommutative(a1, a2, a3);
    v13 = v15;
    if (v16)
    {
      return 1;
    }
  }

  return v13 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v7, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

      result = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SelectOp>,mlir::OpTrait::OneResult<mlir::arith::SelectOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SelectOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SelectOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::arith::SelectOp>,mlir::OpTrait::OpInvariants<mlir::arith::SelectOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SelectOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SelectOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SelectOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::SelectOp>,mlir::SelectLikeOpInterface::Trait<mlir::arith::SelectOp>,mlir::OpTrait::Elementwise<mlir::arith::SelectOp>,mlir::OpTrait::Scalarizable<mlir::arith::SelectOp>,mlir::OpTrait::Vectorizable<mlir::arith::SelectOp>,mlir::OpTrait::Tensorizable<mlir::arith::SelectOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SelectOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::SelectOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::SelectOp>::getSpeculatability;
  {
    v15 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::getEffects;
  {
    v16 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::inferResultRangesFromOptional;
  {
    v17 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x18uLL);
  v9 = v8;
  *v8 = mlir::detail::SelectLikeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::getFalseValue;
  v8[1] = mlir::detail::SelectLikeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::getTrueValue;
  v8[2] = mlir::detail::SelectLikeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::getCondition;
  {
    v18 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SelectOp>,mlir::OpTrait::OneResult<mlir::arith::SelectOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SelectOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SelectOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::arith::SelectOp>,mlir::OpTrait::OpInvariants<mlir::arith::SelectOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SelectOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SelectOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SelectOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::SelectOp>,mlir::SelectLikeOpInterface::Trait<mlir::arith::SelectOp>,mlir::OpTrait::Elementwise<mlir::arith::SelectOp>,mlir::OpTrait::Scalarizable<mlir::arith::SelectOp>,mlir::OpTrait::Vectorizable<mlir::arith::SelectOp>,mlir::OpTrait::Tensorizable<mlir::arith::SelectOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SelectOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::SelectOp>>();
    v9 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(8uLL);
  v11 = v10;
  *v10 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::getShapeForUnroll;
  {
    v19 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(0x18uLL);
  v13 = v12;
  *v12 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::inferReturnTypes;
  v12[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::refineReturnTypes;
  v12[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::isCompatibleReturnTypes;
  {
    v20 = v12;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v13 = v20;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v14, v13);
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (a2)
  {
    v5 = a4;
    v6 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v6;
    a4 = v5;
    a2 = InterfaceFor;
  }

  mlir::intrange::detail::defaultInferResultRangesFromOptional(v4, a2, a3, a4);
}

const char *llvm::getTypeName<mlir::SelectLikeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SelectLikeOpInterface]";
  v6 = 77;
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::SelectOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::arith::SelectOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
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

    v23 = "arith.select";
    v24 = 12;
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

BOOL mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::SelectOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
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
  v13 = mlir::arith::SelectOp::fold(&v17, v18);
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v170 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    a1 = v170;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_72;
    }
  }

  v154 = v1;
  v171 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v1 = v154;
  a1 = v171;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_73;
  }

LABEL_72:
  v155 = v1;
  v172 = a1;
  v139 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v139;
  v1 = v155;
  a1 = v172;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_74;
  }

LABEL_73:
  v156 = v1;
  v173 = a1;
  v125 = v3;
  v140 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v3 = v125;
  v2 = v140;
  v1 = v156;
  a1 = v173;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_75;
  }

LABEL_74:
  v157 = v1;
  v174 = a1;
  v126 = v3;
  v141 = v2;
  v112 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v112;
  v3 = v126;
  v2 = v141;
  v1 = v157;
  a1 = v174;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_76;
  }

LABEL_75:
  v158 = v1;
  v175 = a1;
  v127 = v3;
  v142 = v2;
  v100 = v5;
  v113 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v5 = v100;
  v4 = v113;
  v3 = v127;
  v2 = v142;
  v1 = v158;
  a1 = v175;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_77;
  }

LABEL_76:
  v159 = v1;
  v176 = a1;
  v128 = v3;
  v143 = v2;
  v101 = v5;
  v114 = v4;
  v89 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v6 = v89;
  v5 = v101;
  v4 = v114;
  v3 = v128;
  v2 = v143;
  v1 = v159;
  a1 = v176;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_78;
  }

LABEL_77:
  v160 = v1;
  v177 = a1;
  v129 = v3;
  v144 = v2;
  v102 = v5;
  v115 = v4;
  v79 = v7;
  v90 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v79;
  v6 = v90;
  v5 = v102;
  v4 = v115;
  v3 = v129;
  v2 = v144;
  v1 = v160;
  a1 = v177;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_79;
  }

LABEL_78:
  v161 = v1;
  v178 = a1;
  v130 = v3;
  v145 = v2;
  v103 = v5;
  v116 = v4;
  v80 = v7;
  v91 = v6;
  v70 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v8 = v70;
  v7 = v80;
  v6 = v91;
  v5 = v103;
  v4 = v116;
  v3 = v130;
  v2 = v145;
  v1 = v161;
  a1 = v178;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_80;
  }

LABEL_79:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_81;
  }

LABEL_80:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_82;
  }

LABEL_81:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_83;
  }

LABEL_82:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

    goto LABEL_84;
  }

LABEL_83:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_16:
    v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_17;
    }

LABEL_85:
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
    v16 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_86;
  }

LABEL_84:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_85;
  }

LABEL_17:
  v16 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_86:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NOperands<3>::Impl<Empty>]";
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

const char *llvm::getTypeName<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SelectLikeOpInterface::Trait<Empty>]";
  v6 = 91;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::arith::SelectOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  v7 = a1;
  if (!mlir::arith::SelectOp::verifyInvariantsImpl(&v7) || (mlir::OpTrait::impl::verifyElementwise(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::arith::SelectOp::verify(&v7);
}

uint64_t *mlir::Dialect::addAttribute<mlir::arith::FastMathFlagsAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::arith::FastMathFlagsAttr,mlir::Attribute,mlir::arith::detail::FastMathFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith17FastMathFlagsAttrES2_NSD_6detail24FastMathFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith17FastMathFlagsAttrES2_NSC_6detail24FastMathFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  v24 = "arith.fastmath";
  v25 = 14;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::arith::IntegerOverflowFlagsAttr,mlir::Attribute,mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith24IntegerOverflowFlagsAttrES2_NSD_6detail31IntegerOverflowFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith24IntegerOverflowFlagsAttrES2_NSC_6detail31IntegerOverflowFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  v24 = "arith.overflow";
  v25 = 14;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith17FastMathFlagsAttrES2_NSC_6detail24FastMathFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail24FastMathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastMathFlagsAttrEJNS2_13FastMathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith24IntegerOverflowFlagsAttrES2_NSC_6detail31IntegerOverflowFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void anonymous namespace::ArithInlinerInterface::~ArithInlinerInterface(_anonymous_namespace_::ArithInlinerInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

const char *llvm::getTypeName<mlir::DialectInlinerInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectInlinerInterface]";
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v4 = *result;
  v5 = a2[1];
  v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 4) ^ (v5 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v7 = v3 - 1;
  v8 = (v3 - 1) & ((v6 >> 31) ^ v6);
  v9 = (*result + 16 * v8);
  v11 = *v9;
  v10 = v9[1];
  if (*a2 != *v9 || v5 != v10)
  {
    v15 = 0;
    v16 = 1;
    while (v11 != -4096 || v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17 && v11 == -8192)
      {
        v15 = v9;
      }

      v19 = v8 + v16++;
      v8 = v19 & v7;
      v9 = (v4 + 16 * (v19 & v7));
      v11 = *v9;
      v10 = v9[1];
      if (*a2 == *v9 && v5 == v10)
      {
        goto LABEL_7;
      }
    }

    if (v15)
    {
      v9 = v15;
    }

LABEL_9:
    v24 = v9;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v3)
    {
      v3 *= 2;
    }

    else if (v3 + ~v14 - *(result + 12) > v3 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v9 != -4096)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v21 = result;
    v22 = a2;
    v23 = a3;
    llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::grow(result, v3);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(v21, v22, &v24);
    a2 = v22;
    result = v21;
    a3 = v23;
    v9 = v24;
    ++*(v21 + 8);
    if (*v9 != -4096)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (v9[1] == -4096)
    {
LABEL_14:
      *v9 = *a2;
      v9[1] = a2[1];
      v4 = *result;
      v3 = *(result + 16);
      v13 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 12);
    goto LABEL_14;
  }

LABEL_7:
  v13 = 0;
LABEL_15:
  *a3 = v9;
  *(a3 + 8) = v4 + 16 * v3;
  *(a3 + 16) = v13;
  return result;
}