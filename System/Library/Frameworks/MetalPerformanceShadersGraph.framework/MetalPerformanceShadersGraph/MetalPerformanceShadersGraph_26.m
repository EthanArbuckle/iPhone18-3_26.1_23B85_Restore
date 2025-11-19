const char *llvm::getTypeName<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NSuccessors<2>::Impl<Empty>]";
  v6 = 92;
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

const char *llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AtLeastNOperands<1>::Impl<Empty>]";
  v6 = 97;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::cf::CondBranchOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::cf::CondBranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::CondBranchOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::CondBranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::CondBranchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::CondBranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::CondBranchOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyNSuccessors(a1, 2) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) || (mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) & 1) == 0)
  {
    return 0;
  }

  mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::cf::CondBranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::CondBranchOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::CondBranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::CondBranchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::CondBranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::CondBranchOp>>(a1, &v5);
  return v5;
}

uint64_t mlir::op_definition_impl::verifyTrait<mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>>(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  while (1)
  {
    mlir::cf::CondBranchOp::getSuccessorOperands(&v6, v3, v7);
    v4 = mlir::detail::verifyBranchSuccessorOperands(a1, v3, v7);
    if (v8 != v9)
    {
      free(v8);
    }

    if ((v4 & 1) == 0)
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::printAssembly(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::cf::SwitchOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "case_operand_segments", 21, v7);
  }

  v10 = *(v8 + 8);
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "case_values", 11, v10);
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v8 + 16), 3);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v11);
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::get(a3, **(a2 + 96));
  result = 0;
  if (!v9 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v9, "case_operand_segments", 0x15, a4, a5) & 1) != 0)
  {
    v10 = mlir::NamedAttrList::get(a3, *(*(a2 + 96) + 8));
    if (!v10 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v10, "case_values", 0xB, a4, a5) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::cf::SwitchOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (*(a3 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a3 + 16) == *(a2 + 16) && *(a3 + 24) == *(a2 + 24);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::hashProperties(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = HIDWORD(a2[1]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = *(a2 + 20);
  v9 = __ROR8__(v8 + 12, 12);
  v10 = 0x9DDFEA08EB382D69 * (a2[2] ^ 0xFF51AFD7ED558CCDLL ^ v9);
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12[0] = v4;
  v12[1] = v7;
  v12[2] = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47))) ^ v8;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, 0, v13, &v13[2] + 8);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::SwitchOp>,mlir::OpTrait::ZeroResults<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::SwitchOp>,mlir::OpTrait::OpInvariants<mlir::cf::SwitchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::SwitchOp>,mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::SwitchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::IsTerminator<mlir::cf::SwitchOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::writeProperties;
  {
    v11 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(0x20uLL);
  v5 = v4;
  *v4 = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorOperands;
  v4[1] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorBlockArgument;
  v4[2] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorForOperands;
  v4[3] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::areTypesCompatible;
  {
    v12 = v4;
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::cf::SwitchOp>::getSpeculatability;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getEffects;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorBlockArgument(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = a2[10];
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 + 16;
  for (i = 24; ; i += 32)
  {
    v14 = a2;
    mlir::cf::SwitchOp::getSuccessorOperands(&v14, v6, v15);
    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v15, a3, *(((&v7[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + i));
    v11 = v10;
    if (v16 != v17)
    {
      free(v16);
    }

    if (v11)
    {
      break;
    }

    if (v3 == ++v6)
    {
      v12 = 0;
      return BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00 | v12;
    }
  }

  v12 = BranchSuccessorArgument;
  return BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00 | v12;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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

const char *llvm::getTypeName<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AtLeastNSuccessors<1>::Impl<Empty>]";
  v6 = 99;
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

BOOL mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::cf::SwitchOp>,mlir::OpTrait::ZeroResults<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::SwitchOp>,mlir::OpTrait::OpInvariants<mlir::cf::SwitchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::SwitchOp>,mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::SwitchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::IsTerminator<mlir::cf::SwitchOp>>(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::cf::SwitchOp::verify(&v4);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::cf::SwitchOp>,mlir::OpTrait::ZeroResults<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::SwitchOp>,mlir::OpTrait::OpInvariants<mlir::cf::SwitchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::SwitchOp>,mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::SwitchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::IsTerminator<mlir::cf::SwitchOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) && (mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) & 1) != 0 && (v6 = a1, mlir::cf::SwitchOp::verifyInvariantsImpl(&v6)) && (mlir::op_definition_impl::verifyTrait<mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>>(a1) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyIsTerminator(a1, v4);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::op_definition_impl::verifyTrait<mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>>(mlir::Operation *a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v1 = *(a1 + 10);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  while (1)
  {
    mlir::cf::SwitchOp::getSuccessorOperands(&v6, v3, v7);
    v4 = mlir::detail::verifyBranchSuccessorOperands(a1, v3, v7);
    if (v8 != v9)
    {
      free(v8);
    }

    if ((v4 & 1) == 0)
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 1;
    }
  }

  return 0;
}

void anonymous namespace::ControlFlowInlinerInterface::~ControlFlowInlinerInterface(_anonymous_namespace_::ControlFlowInlinerInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *>(uint64_t a1, uint64_t *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  {
    v13 = a1;
    llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>();
    a1 = v13;
  }

  v14[0] = v2;
  v14[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v14[2] = 0;
  v15[0] = 0;
  *(v15 + 5) = 0;
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = v14;
  if (v3 >= *(a1 + 12))
  {
    if (v4 <= v14 && v4 + 40 * v3 > v14)
    {
      v11 = v14 - v4;
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 40);
      a1 = v12;
      v4 = *v12;
      v5 = &v11[*v12];
    }

    else
    {
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 40);
      a1 = v10;
      v4 = *v10;
      v5 = v14;
    }
  }

  v6 = v4 + 40 * *(a1 + 8);
  v7 = *v5;
  v8 = *(v5 + 1);
  *(v6 + 32) = *(v5 + 4);
  *v6 = v7;
  *(v6 + 16) = v8;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 40 * v6 - 40;
}

void anonymous namespace::SimplifyConstCondBranchPred::~SimplifyConstCondBranchPred(_anonymous_namespace_::SimplifyConstCondBranchPred *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::SimplifyConstCondBranchPred::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v39);
  if (!DefiningOp)
  {
    goto LABEL_31;
  }

  v6 = DefiningOp;
  LODWORD(v42) = 1;
  p_p = &__p;
  __p = 0;
  v43 = &v44;
  v44 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, DefiningOp))
  {
    v7 = *(*(*(v6 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v9 = v8 || v7 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v9 || v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v11 = mlir::detail::constant_int_value_binder::match(&p_p, v44);
      v12 = v42;
      if (v11)
      {
        if (v42 >= 0x41)
        {
          if (v12 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
          {
            if (__p)
            {
              operator delete[](__p);
            }

            goto LABEL_28;
          }

          v13 = __p;
        }

        else
        {
          v13 = &__p;
        }

        v14 = *v13 != 0;
        if (v12 >= 0x41)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v14 = 0;
        if (v42 >= 0x41)
        {
          goto LABEL_24;
        }
      }

LABEL_27:
      if (v14)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  v14 = 0;
  if (v42 < 0x41)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (!__p)
  {
    goto LABEL_27;
  }

  operator delete[](__p);
  if (v14)
  {
LABEL_28:
    v15 = *(a2 + 44);
    v16 = a2 + 16 * ((v15 >> 23) & 1);
    v44 = *(((v16 + 64 + ((v15 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    v17 = *(v16 + 64);
    v18 = *(v16 + 68);
    if ((v15 & 0x800000) != 0)
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = 0;
    }

    v20 = (v18 + v17);
    v21 = (v19 + 32 * v17);
LABEL_62:
    __p = v21;
    v42 = v20 - v17;
    v38 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v44, &__p);
    (*(*a3 + 8))(a3, a2, v38);
    return 1;
  }

LABEL_31:
  v39 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v39);
  if (!result)
  {
    return result;
  }

  v23 = result;
  LODWORD(v42) = 1;
  p_p = &__p;
  __p = 0;
  v43 = &v44;
  v44 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, result) && ((v24 = *(*(*(v23 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v24 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v25 = v24 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v25 = 1), !v25 ? (v26 = v24 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v26 = 1), !v26 ? (v27 = v24 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v27 = 1), v27))
  {
    v28 = mlir::detail::constant_int_value_binder::match(&p_p, v44);
    v29 = v42;
    if (v28)
    {
      if (v42 >= 0x41)
      {
        if (v29 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
        {
          result = __p;
          if (__p)
          {
            operator delete[](__p);
            return 0;
          }

          return result;
        }

        v30 = __p;
      }

      else
      {
        v30 = &__p;
      }

      v31 = *v30 == 0;
      if (v29 < 0x41)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v31 = 0;
      if (v42 < 0x41)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    v31 = 0;
    if (v42 < 0x41)
    {
      goto LABEL_58;
    }
  }

  if (!__p)
  {
LABEL_58:
    if (v31)
    {
      goto LABEL_59;
    }

    return 0;
  }

  operator delete[](__p);
  if (v31)
  {
LABEL_59:
    v32 = *(a2 + 44);
    v33 = (a2 + 16 * ((v32 >> 23) & 1));
    v44 = *(((v33 + ((v32 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 56);
    v34 = v33[16];
    v35 = v33[17];
    v36 = v33[18];
    if ((v32 & 0x800000) != 0)
    {
      v37 = *(a2 + 72);
    }

    else
    {
      v37 = 0;
    }

    v17 = (v35 + v34);
    v20 = (v36 + v17);
    v21 = (v37 + 32 * v17);
    goto LABEL_62;
  }

  return 0;
}

void anonymous namespace::SimplifyPassThroughCondBranch::~SimplifyPassThroughCondBranch(_anonymous_namespace_::SimplifyPassThroughCondBranch *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpBuilder::create<mlir::cf::CondBranchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *&,mlir::ValueRange &,mlir::Block *&,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::CondBranchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *&,mlir::ValueRange &,mlir::Block *&,mlir::ValueRange &>(v24, v23, v22);
  }

  mlir::OperationState::OperationState(v24, a2, v15);
  mlir::cf::CondBranchOp::build(v17, v24, *a3, *a5, *(a5 + 8), *a7, *(a7 + 8), *a4, *a6);
  v18 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v19;
}

void anonymous namespace::SimplifyCondBranchIdenticalSuccessors::~SimplifyCondBranchIdenticalSuccessors(_anonymous_namespace_::SimplifyCondBranchIdenticalSuccessors *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::SimplifyCondBranchIdenticalSuccessors::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[8] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 44);
  v4 = (a2 + 16 * ((v3 >> 23) & 1) + 64);
  v5 = (v4 + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 24);
  v36 = v6;
  if (v6 != *(v5 + 56))
  {
    return 0;
  }

  v10 = *v4;
  v11 = *(a2 + 16 * ((v3 >> 23) & 1) + 68);
  if ((v3 & 0x800000) != 0)
  {
    v12 = *(a2 + 72);
    v13 = (v11 + v10);
    v14 = v12 + 32 * v10;
  }

  else
  {
    v12 = 0;
    v13 = (v11 + v10);
    v14 = 32 * v10;
  }

  v15 = v13 - v10;
  v35[0] = v14;
  v35[1] = v13 - v10;
  v16 = *(a2 + 16 * ((v3 >> 23) & 1) + 72);
  v17 = (v16 + v13);
  if (v13 - v10 == v17 - v13)
  {
    if (!v11)
    {
LABEL_10:
      v21 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v36, v35);
      (*(*a3 + 8))(a3, a2, v21);
      return 1;
    }

    v18 = (v12 + 32 * v13 + 24);
    v19 = (v14 + 24);
    v20 = v15;
    while (*v19 == *v18)
    {
      v18 += 4;
      v19 += 4;
      if (!--v20)
      {
        goto LABEL_10;
      }
    }
  }

  if (mlir::Block::getUniquePredecessor(v6) != *(a2 + 16))
  {
    return 0;
  }

  v37 = v39;
  v38 = 0x800000000;
  if (v15 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v15, 8);
  }

  v34 = *(*(a2 + 72) + 24);
  if (v11 && v16)
  {
    v22 = (v14 + 24);
    v23 = (v12 + 32 * v13 + 24);
    v24 = v15 - 1;
    v25 = ~v13 + v17;
    do
    {
      v26 = *v22;
      v27 = *v23;
      v32 = v26;
      v33 = v27;
      if (v26 != v27)
      {
        v26 = mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v34, &v32, &v33) - 16;
      }

      v28 = v38;
      if (v38 >= HIDWORD(v38))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 8);
        v28 = v38;
      }

      *(v37 + v28) = v26;
      LODWORD(v38) = v38 + 1;
      v29 = v25-- != 0;
      v30 = v29;
      v29 = v24-- != 0;
      if (!v29)
      {
        break;
      }

      v22 += 4;
      v23 += 4;
    }

    while ((v30 & 1) != 0);
  }

  v31 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,llvm::SmallVector<mlir::Value,8u> &>((a3 + 8), *(a2 + 24), &v36, &v37);
  (*(*a3 + 8))(a3, a2, v31);
  if (v37 != v39)
  {
    free(v37);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,llvm::SmallVector<mlir::Value,8u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>(v22, &v27, v21);
  }

  mlir::OperationState::OperationState(v22, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(&v27, *a4, *(a4 + 8));
  v12 = v27;
  v13 = v28;
  v14 = v24;
  if (v24 >= v25)
  {
    v18 = v27;
    v19 = v28;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v13 = v19;
    v12 = v18;
    v14 = v24;
  }

  *(v23 + 8 * v14) = v11;
  ++v24;
  mlir::OperationState::addOperands(v22, v12, v13);
  v15 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v16;
}

void anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition::~SimplifyCondBranchFromCondBranchOnSameCondition(_anonymous_namespace_::SimplifyCondBranchFromCondBranchOnSameCondition *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  result = mlir::Block::getSinglePredecessor(v5);
  if (result)
  {
    Terminator = mlir::Block::getTerminator(result, v7);
    if (Terminator)
    {
      v9 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *(a2 + 72);
      if (*(v10 + 24) == *(*(Terminator + 72) + 24))
      {
        v11 = (a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
        if (v5 == *(((Terminator + ((*(Terminator + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24))
        {
          v16 = *(v11 + 24);
          v12 = *(a2 + 80);
          v13 = (*(a2 + 84) + v12);
        }

        else
        {
          v16 = *(v11 + 56);
          v12 = (*(a2 + 84) + *(a2 + 80));
          v13 = (*(a2 + 88) + v12);
        }

        v15[0] = v10 + 32 * v12;
        v15[1] = v13 - v12;
        v14 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v16, v15);
        (*(*a3 + 8))(a3, a2, v14);
        return 1;
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

  return result;
}

void anonymous namespace::CondBranchTruthPropagation::~CondBranchTruthPropagation(_anonymous_namespace_::CondBranchTruthPropagation *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::CondBranchTruthPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  I1Type = mlir::Builder::getI1Type(a3 + 1);
  v5 = a2 + 64;
  SinglePredecessor = mlir::Block::getSinglePredecessor(*(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24));
  v7 = *(a2 + 44);
  if (SinglePredecessor && (v8 = **(*(a2 + 72) + 24)) != 0)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *v8;
      v12 = v8[2];
      if (*(v12 + 16) == *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24))
      {
        if (!v10)
        {
          v13 = *(a2 + 24);
          BoolAttr = mlir::Builder::getBoolAttr(a3 + 1, 1);
          v10 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>((a3 + 1), v13, &I1Type, &BoolAttr) - 16);
          v12 = v8[2];
        }

        ((*a3)[5])(a3, v12);
        v14 = v8[1];
        if (v14)
        {
          v15 = *v8;
          *v14 = *v8;
          if (v15)
          {
            v15[1] = v14;
          }
        }

        v8[3] = v10;
        v8[1] = v10;
        v16 = *v10;
        *v8 = *v10;
        if (v16)
        {
          *(v16 + 8) = v8;
        }

        *v10 = v8;
        ((*a3)[6])(a3, v12);
        v9 = 1;
      }

      v8 = v11;
    }

    while (v11);
    v7 = *(a2 + 44);
  }

  else
  {
    v9 = 0;
  }

  if (mlir::Block::getSinglePredecessor(*(((v5 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56)))
  {
    v17 = **(*(a2 + 72) + 24);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = *v17;
        v20 = v17[2];
        if (*(v20 + 16) == *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56))
        {
          if (!v18)
          {
            v21 = *(a2 + 24);
            BoolAttr = mlir::Builder::getBoolAttr(a3 + 1, 0);
            v18 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>((a3 + 1), v21, &I1Type, &BoolAttr) - 16);
            v20 = v17[2];
          }

          ((*a3)[5])(a3, v20);
          v22 = v17[1];
          if (v22)
          {
            v23 = *v17;
            *v22 = *v17;
            if (v23)
            {
              v23[1] = v22;
            }
          }

          v17[3] = v18;
          v17[1] = v18;
          v24 = *v18;
          *v17 = *v18;
          if (v24)
          {
            *(v24 + 8) = v17;
          }

          *v18 = v17;
          ((*a3)[6])(a3, v20);
          v9 = 1;
        }

        v17 = v19;
      }

      while (v19);
    }
  }

  return v9 & 1;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  v11 = *a3;
  v12 = mlir::BoolAttr::operator mlir::TypedAttr(a4);
  mlir::arith::ConstantOp::build(a1, v20, v11, v12, v13);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

void *mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(llvm::LogicalResult (*)(mlir::cf::SwitchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(llvm::LogicalResult (*)(mlir::cf::SwitchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

char *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(char *a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return (__dst + 1);
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 8 - v8;
    v32 = &a1[8 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 8 - v8;
  v32 = &a1[8 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::cf::detail::AssertOpGenericAdaptorBase::Properties]";
  v6 = 106;
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

void *mlir::RewritePatternSet::add<mlir::cf::AssertOp>(llvm::LogicalResult (*)(mlir::cf::AssertOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::cf::AssertOp>(llvm::LogicalResult (*)(mlir::cf::AssertOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

BOOL mlir::AsmParser::parseAttribute<mlir::StringAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::AssertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void *mlir::RewritePatternSet::add<mlir::cf::BranchOp>(llvm::LogicalResult (*)(mlir::cf::BranchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::cf::BranchOp>(llvm::LogicalResult (*)(mlir::cf::BranchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

const char *llvm::getTypeName<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties]";
  v6 = 106;
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

BOOL mlir::AsmParser::parseType<mlir::IntegerType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = v2;
  ++*(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_2@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *(result + 32) = a2 + 1;
  *a2 = 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(mlir::SideEffects::DefaultResource::~DefaultResource, v3, a3);
}

void OUTLINED_FUNCTION_14_3(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = (a12 + (a1 << 6));
  *v13 = v13 + 2;
  v13[1] = v12;
}

uint64_t mlir::SuccessorOperands::SuccessorOperands(uint64_t result, __int128 *a2)
{
  *result = 0;
  v2 = *a2;
  *(result + 24) = result + 40;
  *(result + 8) = v2;
  *(result + 32) = 0x100000000;
  if (*(a2 + 6))
  {
    v3 = result;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(result + 24, a2 + 2);
    return v3;
  }

  return result;
}

uint64_t mlir::detail::getBranchSuccessorArgument(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v9 = mlir::MutableOperandRange::operator mlir::OperandRange((a1 + 2));
  v10 = v6;
  if (v6 && (BeginOperandIndex = mlir::OperandRange::getBeginOperandIndex(&v9), a2 >= BeginOperandIndex) && v10 + BeginOperandIndex > a2)
  {
    return *(*(a3 + 48) + 8 * (a2 - BeginOperandIndex + *a1));
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::verifyBranchSuccessorOperands(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = a3[5];
  v6 = a2;
  v7 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * a2 + 24);
  if (v5 + *a3 == ((*(v7 + 56) - *(v7 + 48)) >> 3))
  {
    if (!v5)
    {
      return 1;
    }

    while (1)
    {
      InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
      v10 = mlir::MutableOperandRange::operator[](a3 + 2, v4 - *a3);
      if (((*(InterfaceFor + 24))(InterfaceFor, a1, *(*(v10 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v7 + 48) + 8 * v4) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
      {
        break;
      }

      ++v4;
      if (!--v5)
      {
        return 1;
      }
    }

    v86 = 257;
    mlir::Operation::emitError(a1, v85, v90);
    if (v90[0])
    {
      v87 = 3;
      v88 = "type mismatch for bb argument #";
      v89 = 31;
      v49 = &v87;
      v50 = v91;
      if (v92 >= v93)
      {
        if (v91 <= &v87 && v91 + 24 * v92 > &v87)
        {
          v78 = &v87 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
          v50 = v91;
          v49 = (v91 + v78);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
          v49 = &v87;
          v50 = v91;
        }
      }

      v51 = &v50[24 * v92];
      v52 = *v49;
      *(v51 + 2) = *(v49 + 2);
      *v51 = v52;
      v53 = ++v92;
      if (v90[0])
      {
        v87 = 5;
        v88 = v4;
        v54 = &v87;
        v55 = v91;
        if (v53 >= v93)
        {
          if (v91 <= &v87 && v91 + 24 * v53 > &v87)
          {
            v80 = &v87 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v53 + 1, 24);
            v55 = v91;
            v54 = (v91 + v80);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v53 + 1, 24);
            v54 = &v87;
            v55 = v91;
          }
        }

        v56 = &v55[24 * v92];
        v57 = *v54;
        *(v56 + 2) = *(v54 + 2);
        *v56 = v57;
        v58 = ++v92;
        if (v90[0])
        {
          v87 = 3;
          v88 = " of successor #";
          v89 = 15;
          v59 = &v87;
          v60 = v91;
          if (v58 >= v93)
          {
            if (v91 <= &v87 && v91 + 24 * v58 > &v87)
            {
              v82 = &v87 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v58 + 1, 24);
              v60 = v91;
              v59 = (v91 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v58 + 1, 24);
              v59 = &v87;
              v60 = v91;
            }
          }

          v61 = &v60[24 * v92];
          v62 = *v59;
          *(v61 + 2) = *(v59 + 2);
          *v61 = v62;
          v63 = ++v92;
          if (v90[0])
          {
            v87 = 5;
            v88 = v6;
            v64 = &v87;
            v65 = v91;
            if (v63 >= v93)
            {
              if (v91 <= &v87 && v91 + 24 * v63 > &v87)
              {
                v84 = &v87 - v91;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v63 + 1, 24);
                v65 = v91;
                v64 = (v91 + v84);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v63 + 1, 24);
                v64 = &v87;
                v65 = v91;
              }
            }

            v66 = &v65[24 * v92];
            v67 = *v64;
            *(v66 + 2) = *(v64 + 2);
            *v66 = v67;
            ++v92;
          }
        }
      }
    }

    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
    if (v90[0])
    {
      mlir::InFlightDiagnostic::report(v90);
    }

    if (v100)
    {
      if (v99 != &v100)
      {
        free(v99);
      }

      v68 = __p;
      if (__p)
      {
        v69 = v98;
        v70 = __p;
        if (v98 != __p)
        {
          do
          {
            v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
          }

          while (v69 != v68);
          v70 = __p;
        }

        v98 = v68;
        operator delete(v70);
      }

      v44 = v95;
      if (!v95)
      {
        goto LABEL_62;
      }

      v71 = v96;
      v46 = v95;
      if (v96 == v95)
      {
LABEL_61:
        v96 = v44;
        operator delete(v46);
LABEL_62:
        if (v91 != v94)
        {
          free(v91);
        }

        return v11;
      }

      do
      {
        v73 = *--v71;
        v72 = v73;
        *v71 = 0;
        if (v73)
        {
          operator delete[](v72);
        }
      }

      while (v71 != v44);
LABEL_60:
      v46 = v95;
      goto LABEL_61;
    }
  }

  else
  {
    v86 = 257;
    mlir::Operation::emitError(a1, v85, v90);
    if (v90[0])
    {
      v87 = 3;
      v88 = "branch has ";
      v89 = 11;
      v12 = &v87;
      v13 = v91;
      if (v92 >= v93)
      {
        if (v91 <= &v87 && v91 + 24 * v92 > &v87)
        {
          v75 = &v87 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
          v13 = v91;
          v12 = (v91 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
          v12 = &v87;
          v13 = v91;
        }
      }

      v14 = &v13[24 * v92];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v92;
      if (v90[0])
      {
        v87 = 5;
        v88 = (v5 + v4);
        v17 = &v87;
        v18 = v91;
        if (v16 >= v93)
        {
          if (v91 <= &v87 && v91 + 24 * v16 > &v87)
          {
            v76 = &v87 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v16 + 1, 24);
            v18 = v91;
            v17 = (v91 + v76);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v16 + 1, 24);
            v17 = &v87;
            v18 = v91;
          }
        }

        v19 = &v18[24 * v92];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        v21 = ++v92;
        if (v90[0])
        {
          v87 = 3;
          v88 = " operands for successor #";
          v89 = 25;
          v22 = &v87;
          v23 = v91;
          if (v21 >= v93)
          {
            if (v91 <= &v87 && v91 + 24 * v21 > &v87)
            {
              v77 = &v87 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v21 + 1, 24);
              v23 = v91;
              v22 = (v91 + v77);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v21 + 1, 24);
              v22 = &v87;
              v23 = v91;
            }
          }

          v24 = &v23[24 * v92];
          v25 = *v22;
          *(v24 + 2) = *(v22 + 2);
          *v24 = v25;
          v26 = ++v92;
          if (v90[0])
          {
            v87 = 5;
            v88 = v6;
            v27 = &v87;
            v28 = v91;
            if (v26 >= v93)
            {
              if (v91 <= &v87 && v91 + 24 * v26 > &v87)
              {
                v79 = &v87 - v91;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v26 + 1, 24);
                v28 = v91;
                v27 = (v91 + v79);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v26 + 1, 24);
                v27 = &v87;
                v28 = v91;
              }
            }

            v29 = &v28[24 * v92];
            v30 = *v27;
            *(v29 + 2) = *(v27 + 2);
            *v29 = v30;
            v31 = ++v92;
            if (v90[0])
            {
              v87 = 3;
              v88 = ", but target block has ";
              v89 = 23;
              v32 = &v87;
              v33 = v91;
              if (v31 >= v93)
              {
                if (v91 <= &v87 && v91 + 24 * v31 > &v87)
                {
                  v81 = &v87 - v91;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v31 + 1, 24);
                  v33 = v91;
                  v32 = (v91 + v81);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v31 + 1, 24);
                  v32 = &v87;
                  v33 = v91;
                }
              }

              v34 = &v33[24 * v92];
              v35 = *v32;
              *(v34 + 2) = *(v32 + 2);
              *v34 = v35;
              ++v92;
              if (v90[0])
              {
                v36 = *(v7 + 56) - *(v7 + 48);
                v87 = 5;
                v88 = (v36 >> 3);
                v37 = &v87;
                v38 = v91;
                if (v92 >= v93)
                {
                  if (v91 <= &v87 && v91 + 24 * v92 > &v87)
                  {
                    v83 = &v87 - v91;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
                    v38 = v91;
                    v37 = (v91 + v83);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
                    v37 = &v87;
                    v38 = v91;
                  }
                }

                v39 = &v38[24 * v92];
                v40 = *v37;
                *(v39 + 2) = *(v37 + 2);
                *v39 = v40;
                ++v92;
              }
            }
          }
        }
      }
    }

    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
    if (v90[0])
    {
      mlir::InFlightDiagnostic::report(v90);
    }

    if (v100 == 1)
    {
      if (v99 != &v100)
      {
        free(v99);
      }

      v41 = __p;
      if (__p)
      {
        v42 = v98;
        v43 = __p;
        if (v98 != __p)
        {
          do
          {
            v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v98 = v41;
        operator delete(v43);
      }

      v44 = v95;
      if (!v95)
      {
        goto LABEL_62;
      }

      v45 = v96;
      v46 = v95;
      if (v96 == v95)
      {
        goto LABEL_61;
      }

      do
      {
        v48 = *--v45;
        v47 = v48;
        *v45 = 0;
        if (v48)
        {
          operator delete[](v47);
        }
      }

      while (v45 != v44);
      goto LABEL_60;
    }
  }

  return v11;
}

uint64_t mlir::detail::verifyTypesAlongControlFlowEdges(mlir::detail *this, mlir::Operation *a2)
{
  v2 = this;
  v26[6] = *MEMORY[0x1E69E9840];
  v23 = this;
  if (this)
  {
    this = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  v22[0] = v2;
  v22[1] = this;
  v21 = v22;
  if (!verifyTypesAlongAllEdges(v2, 0, llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_0>, &v21))
  {
    return 0;
  }

  v20 = v22;
  v4 = *(v2 + 11);
  v5 = 1;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = (((v2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10));
    v7 = (v6 + 24 * (v4 & 0x7FFFFF));
    while (1)
    {
      v24 = v26;
      v25 = 0x300000000;
      v8 = *(v6 + 1);
      if (v8 == v6)
      {
        break;
      }

      do
      {
        v11 = (v8 - 8);
        if (!v8)
        {
          v11 = 0;
        }

        v12 = v11[4];
        if (v12 != v11 + 4)
        {
          v13 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v12, v3);
          if (mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v13))
          {
            InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v13);
            if (v13)
            {
              v9 = v25;
              if (v25 >= HIDWORD(v25))
              {
                v18 = InterfaceFor;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 16);
                InterfaceFor = v18;
                v9 = v25;
              }

              v10 = (v24 + 16 * v9);
              *v10 = v13;
              v10[1] = InterfaceFor;
              LODWORD(v25) = v25 + 1;
            }
          }
        }

        v8 = *(v8 + 1);
      }

      while (v8 != v6);
      if (!v25)
      {
        break;
      }

      v19[0] = &v24;
      v19[1] = &v20;
      v19[2] = &v23;
      v19[3] = v6;
      v15 = !verifyTypesAlongAllEdges(v23, v6, llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_2>, v19);
      v16 = v24;
      if (v24 != v26)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v15 != 3 && v15)
      {
        return 0;
      }

      v6 = (v6 + 24);
      if (v6 == v7)
      {
        return 1;
      }
    }

    v15 = 3;
    v16 = v24;
    if (v24 == v26)
    {
      goto LABEL_25;
    }

LABEL_24:
    free(v16);
    goto LABEL_25;
  }

  return v5;
}

BOOL verifyTypesAlongAllEdges(uint64_t a1, mlir::Region *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, unint64_t), uint64_t a4)
{
  v129[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  v127 = v129;
  v128 = 0x200000000;
  (*(InterfaceFor + 16))(InterfaceFor, a1, a2, &v127);
  if (v128)
  {
    v7 = v127;
    v104 = &v127[3 * v128];
    while (1)
    {
      a3(&v124, a4, *v7);
      if ((v126 & 1) == 0)
      {
        v54 = 0;
        goto LABEL_82;
      }

      v121 = *(v7 + 1);
      mlir::ValueRange::getTypes(&v121, &v110);
      v9 = v110.n128_u64[1];
      v8 = v110.n128_u64[0];
      v10 = v111;
      v107 = v110;
      if (v110.n128_u64[1])
      {
        v8 = mlir::ValueRange::offset_base(&v107, v110.n128_i64[1]);
        v9 = v107.n128_u64[1];
      }

      mlir::TypeRange::TypeRange(&v122, v8, v10 - v9);
      v11 = v125;
      if (v125 != v123)
      {
        break;
      }

      if (v125)
      {
        v12 = 0;
        v13 = v124;
        v14 = v122;
        while (v11 != v12)
        {
          v15 = mlir::TypeRange::dereference_iterator(v13, v12);
          v16 = mlir::TypeRange::dereference_iterator(v14, v12);
          if (((*(InterfaceFor + 32))(InterfaceFor, a1, v15, v16) & 1) == 0)
          {
            v107.n128_u64[0] = " along control flow edge ";
            v109 = 259;
            mlir::Operation::emitOpError(a1, &v107, &v110);
            printRegionEdgeName(&v110, a2, *v7);
            if (v110.n128_u64[0])
            {
              v107.n128_u32[0] = 3;
              v107.n128_u64[1] = ": source type #";
              v108 = 15;
              v17 = &v107;
              v18 = v111;
              if (v112 >= v113)
              {
                if (v111 <= &v107 && v111 + 24 * v112 > &v107)
                {
                  v92 = &v107 - v111;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
                  v18 = v111;
                  v17 = (v111 + v92);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
                  v17 = &v107;
                  v18 = v111;
                }
              }

              v19 = &v18[24 * v112];
              v20 = *v17;
              *(v19 + 2) = v17[1].n128_u64[0];
              *v19 = v20;
              v21 = ++v112;
              if (v110.n128_u64[0])
              {
                v107.n128_u32[0] = 5;
                v107.n128_u64[1] = v12;
                v22 = &v107;
                v23 = v111;
                if (v21 >= v113)
                {
                  if (v111 <= &v107 && v111 + 24 * v21 > &v107)
                  {
                    v93 = &v107 - v111;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v21 + 1, 24);
                    v23 = v111;
                    v22 = (v111 + v93);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v21 + 1, 24);
                    v22 = &v107;
                    v23 = v111;
                  }
                }

                v24 = &v23[24 * v112];
                v25 = *v22;
                *(v24 + 2) = v22[1].n128_u64[0];
                *v24 = v25;
                v26 = ++v112;
                if (v110.n128_u64[0])
                {
                  v107.n128_u32[0] = 3;
                  v107.n128_u64[1] = " ";
                  v108 = 1;
                  v27 = &v107;
                  v28 = v111;
                  if (v26 >= v113)
                  {
                    if (v111 <= &v107 && v111 + 24 * v26 > &v107)
                    {
                      v94 = &v107 - v111;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v26 + 1, 24);
                      v28 = v111;
                      v27 = (v111 + v94);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v26 + 1, 24);
                      v27 = &v107;
                      v28 = v111;
                    }
                  }

                  v29 = &v28[24 * v112];
                  v30 = *v27;
                  *(v29 + 2) = v27[1].n128_u64[0];
                  *v29 = v30;
                  ++v112;
                  if (v110.n128_u64[0])
                  {
                    v31 = &v107;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v107, v15);
                    v32 = v111;
                    if (v112 >= v113)
                    {
                      if (v111 <= &v107 && v111 + 24 * v112 > &v107)
                      {
                        v95 = &v107 - v111;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
                        v32 = v111;
                        v31 = (v111 + v95);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
                        v31 = &v107;
                        v32 = v111;
                      }
                    }

                    v33 = &v32[24 * v112];
                    v34 = *v31;
                    *(v33 + 2) = v31[1].n128_u64[0];
                    *v33 = v34;
                    v35 = ++v112;
                    if (v110.n128_u64[0])
                    {
                      v107.n128_u32[0] = 3;
                      v107.n128_u64[1] = " should match input type #";
                      v108 = 26;
                      v36 = &v107;
                      v37 = v111;
                      if (v35 >= v113)
                      {
                        if (v111 <= &v107 && v111 + 24 * v35 > &v107)
                        {
                          v97 = &v107 - v111;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v35 + 1, 24);
                          v37 = v111;
                          v36 = (v111 + v97);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v35 + 1, 24);
                          v36 = &v107;
                          v37 = v111;
                        }
                      }

                      v38 = &v37[24 * v112];
                      v39 = *v36;
                      *(v38 + 2) = v36[1].n128_u64[0];
                      *v38 = v39;
                      v40 = ++v112;
                      if (v110.n128_u64[0])
                      {
                        v107.n128_u32[0] = 5;
                        v107.n128_u64[1] = v12;
                        v41 = &v107;
                        v42 = v111;
                        if (v40 >= v113)
                        {
                          if (v111 <= &v107 && v111 + 24 * v40 > &v107)
                          {
                            v99 = &v107 - v111;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v40 + 1, 24);
                            v42 = v111;
                            v41 = (v111 + v99);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v40 + 1, 24);
                            v41 = &v107;
                            v42 = v111;
                          }
                        }

                        v43 = &v42[24 * v112];
                        v44 = *v41;
                        *(v43 + 2) = v41[1].n128_u64[0];
                        *v43 = v44;
                        v45 = ++v112;
                        if (v110.n128_u64[0])
                        {
                          v107.n128_u32[0] = 3;
                          v107.n128_u64[1] = " ";
                          v108 = 1;
                          v46 = &v107;
                          v47 = v111;
                          if (v45 >= v113)
                          {
                            if (v111 <= &v107 && v111 + 24 * v45 > &v107)
                            {
                              v101 = &v107 - v111;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v45 + 1, 24);
                              v47 = v111;
                              v46 = (v111 + v101);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v45 + 1, 24);
                              v46 = &v107;
                              v47 = v111;
                            }
                          }

                          v48 = &v47[24 * v112];
                          v49 = *v46;
                          *(v48 + 2) = v46[1].n128_u64[0];
                          *v48 = v49;
                          ++v112;
                          if (v110.n128_u64[0])
                          {
                            v50 = &v107;
                            mlir::DiagnosticArgument::DiagnosticArgument(&v107, v16);
                            v51 = v111;
                            if (v112 >= v113)
                            {
                              if (v111 <= &v107 && v111 + 24 * v112 > &v107)
                              {
                                v103 = &v107 - v111;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
                                v51 = v111;
                                v50 = (v111 + v103);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
                                v50 = &v107;
                                v51 = v111;
                              }
                            }

                            v52 = &v51[24 * v112];
                            v53 = *v50;
                            *(v52 + 2) = v50[1].n128_u64[0];
                            *v52 = v53;
                            ++v112;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v110);
            if (v110.n128_u64[0])
            {
              mlir::InFlightDiagnostic::report(&v110);
            }

            if ((v120 & 1) == 0)
            {
              goto LABEL_82;
            }

            if (v119 != &v120)
            {
              free(v119);
            }

            v55 = __p;
            if (__p)
            {
              v56 = v118;
              v57 = __p;
              if (v118 != __p)
              {
                do
                {
                  v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
                }

                while (v56 != v55);
                v57 = __p;
              }

              v118 = v55;
              operator delete(v57);
            }

            v58 = v115;
            if (v115)
            {
              v59 = v116;
              v60 = v115;
              if (v116 != v115)
              {
                do
                {
                  v62 = *--v59;
                  v61 = v62;
                  *v59 = 0;
                  if (v62)
                  {
                    operator delete[](v61);
                  }
                }

                while (v59 != v58);
                v60 = v115;
              }

              v116 = v58;
              operator delete(v60);
            }

            v63 = v111;
            if (v111 == v114)
            {
              goto LABEL_82;
            }

            goto LABEL_54;
          }

          if (v11 == ++v12)
          {
            break;
          }
        }
      }

      v7 += 3;
      if (v7 == v104)
      {
        v54 = 1;
        goto LABEL_82;
      }
    }

    v107.n128_u64[0] = " region control flow edge ";
    v109 = 259;
    mlir::Operation::emitOpError(a1, &v107, &v110);
    printRegionEdgeName(&v110, a2, *v7);
    if (v110.n128_u64[0])
    {
      v107.n128_u32[0] = 3;
      v107.n128_u64[1] = ": source has ";
      v108 = 13;
      v64 = &v107;
      v65 = v111;
      if (v112 >= v113)
      {
        if (v111 <= &v107 && v111 + 24 * v112 > &v107)
        {
          v96 = &v107 - v111;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
          v65 = v111;
          v64 = (v111 + v96);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
          v64 = &v107;
          v65 = v111;
        }
      }

      v66 = &v65[24 * v112];
      v67 = *v64;
      *(v66 + 2) = v64[1].n128_u64[0];
      *v66 = v67;
      v68 = ++v112;
      if (v110.n128_u64[0])
      {
        v107.n128_u32[0] = 5;
        v107.n128_u64[1] = v125;
        v69 = &v107;
        v70 = v111;
        if (v68 >= v113)
        {
          if (v111 <= &v107 && v111 + 24 * v68 > &v107)
          {
            v98 = &v107 - v111;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v68 + 1, 24);
            v70 = v111;
            v69 = (v111 + v98);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v68 + 1, 24);
            v69 = &v107;
            v70 = v111;
          }
        }

        v71 = &v70[24 * v112];
        v72 = *v69;
        *(v71 + 2) = v69[1].n128_u64[0];
        *v71 = v72;
        v73 = ++v112;
        if (v110.n128_u64[0])
        {
          v107.n128_u32[0] = 3;
          v107.n128_u64[1] = " operands, but target successor needs ";
          v108 = 38;
          v74 = &v107;
          v75 = v111;
          if (v73 >= v113)
          {
            if (v111 <= &v107 && v111 + 24 * v73 > &v107)
            {
              v100 = &v107 - v111;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v73 + 1, 24);
              v75 = v111;
              v74 = (v111 + v100);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v73 + 1, 24);
              v74 = &v107;
              v75 = v111;
            }
          }

          v76 = &v75[24 * v112];
          v77 = *v74;
          *(v76 + 2) = v74[1].n128_u64[0];
          *v76 = v77;
          v78 = ++v112;
          if (v110.n128_u64[0])
          {
            v107.n128_u32[0] = 5;
            v107.n128_u64[1] = v123;
            v79 = &v107;
            v80 = v111;
            if (v78 >= v113)
            {
              if (v111 <= &v107 && v111 + 24 * v78 > &v107)
              {
                v102 = &v107 - v111;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v78 + 1, 24);
                v80 = v111;
                v79 = (v111 + v102);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v78 + 1, 24);
                v79 = &v107;
                v80 = v111;
              }
            }

            v81 = &v80[24 * v112];
            v82 = *v79;
            *(v81 + 2) = v79[1].n128_u64[0];
            *v81 = v82;
            ++v112;
          }
        }
      }
    }

    v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v110);
    if (v110.n128_u64[0])
    {
      mlir::InFlightDiagnostic::report(&v110);
    }

    if (v120 == 1)
    {
      if (v119 != &v120)
      {
        free(v119);
      }

      v83 = __p;
      if (__p)
      {
        v84 = v118;
        v85 = __p;
        if (v118 != __p)
        {
          do
          {
            v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
          }

          while (v84 != v83);
          v85 = __p;
        }

        v118 = v83;
        operator delete(v85);
      }

      v86 = v115;
      if (v115)
      {
        v87 = v116;
        v88 = v115;
        if (v116 != v115)
        {
          do
          {
            v90 = *--v87;
            v89 = v90;
            *v87 = 0;
            if (v90)
            {
              operator delete[](v89);
            }
          }

          while (v87 != v86);
          v88 = v115;
        }

        v116 = v86;
        operator delete(v88);
      }

      v63 = v111;
      if (v111 != v114)
      {
LABEL_54:
        free(v63);
      }
    }
  }

  else
  {
    v54 = 1;
  }

LABEL_82:
  if (v127 != v129)
  {
    free(v127);
  }

  return v54;
}

uint64_t mlir::RegionBranchOpInterface::hasLoop(mlir::RegionBranchOpInterface *this)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v6 = v8;
  v7 = 0x200000000;
  (*(*(this + 1) + 16))(*(this + 1), *this, 0, &v6);
  v1 = v6;
  if (v7)
  {
    v2 = 24 * v7;
    do
    {
      if (*v1 && (traverseRegionGraph(*v1, llvm::function_ref<BOOL ()(mlir::Region *,llvm::ArrayRef<BOOL>)>::callback_fn<mlir::RegionBranchOpInterface::hasLoop(void)::$_0>, &v5) & 1) != 0)
      {
        v3 = 1;
        v1 = v6;
        if (v6 != v8)
        {
          goto LABEL_9;
        }

        return v3;
      }

      v1 += 3;
      v2 -= 24;
    }

    while (v2);
    v3 = 0;
    v1 = v6;
    if (v6 == v8)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    if (v6 == v8)
    {
      return v3;
    }
  }

LABEL_9:
  free(v1);
  return v3;
}

uint64_t traverseRegionGraph(unint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void *, unint64_t), uint64_t a3)
{
  v38[6] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (v6)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(a1 + 16));
  }

  else
  {
    InterfaceFor = 0;
  }

  v8 = *(v6 + 44) & 0x7FFFFF;
  v32 = v35;
  v34 = 40;
  if (v8 < 0x29)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = v35;
  }

  else
  {
    v33 = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v32, v35, v8, 1);
    v9 = v32;
  }

  bzero(v9, v8);
LABEL_9:
  v33 = v8;
  RegionNumber = mlir::Region::getRegionNumber(a1);
  *(v32 + RegionNumber) = 1;
  v29 = v31;
  v30 = 0x600000000;
  v36 = v38;
  v37 = 0x200000000;
  (*(InterfaceFor + 16))(InterfaceFor, v6, a1, &v36);
  v11 = v36;
  if (v37)
  {
    v12 = 24 * v37;
    do
    {
      v13 = *v11;
      if (*v11)
      {
        v14 = v30;
        if (v30 >= HIDWORD(v30))
        {
          v15 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
          v11 = v15;
          v14 = v30;
        }

        *&v29[8 * v14] = v13;
        LODWORD(v30) = v30 + 1;
      }

      v11 += 3;
      v12 -= 24;
    }

    while (v12);
    v11 = v36;
  }

  if (v11 != v38)
  {
    free(v11);
  }

  v16 = v30;
  if (v30)
  {
    while (1)
    {
      v17 = *&v29[8 * v16 - 8];
      LODWORD(v30) = v16 - 1;
      v18 = a2(a3, v17, v32, v33);
      if (v18)
      {
        break;
      }

      v19 = v18;
      v20 = mlir::Region::getRegionNumber(v17);
      if ((*(v32 + v20) & 1) == 0)
      {
        v21 = mlir::Region::getRegionNumber(v17);
        *(v32 + v21) = 1;
        v36 = v38;
        v37 = 0x200000000;
        (*(InterfaceFor + 16))(InterfaceFor, v6, v17, &v36);
        v22 = v36;
        if (v37)
        {
          v23 = 24 * v37;
          do
          {
            v24 = *v22;
            if (*v22)
            {
              v25 = v30;
              if (v30 >= HIDWORD(v30))
              {
                v28 = v22;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
                v22 = v28;
                v25 = v30;
              }

              *&v29[8 * v25] = v24;
              LODWORD(v30) = v30 + 1;
            }

            v22 += 3;
            v23 -= 24;
          }

          while (v23);
          v22 = v36;
        }

        if (v22 != v38)
        {
          free(v22);
        }
      }

      v16 = v30;
      if (!v30)
      {
        goto LABEL_37;
      }
    }

    v19 = 1;
LABEL_37:
    v26 = v29;
    if (v29 != v31)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v19 = 0;
    v26 = v29;
    if (v29 != v31)
    {
LABEL_38:
      free(v26);
    }
  }

  if (v32 != v35)
  {
    free(v32);
  }

  return v19;
}

uint64_t llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(uint64_t result, void *a2)
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
        v13 = v2 + 24 * v7;
        do
        {
          *v12 = *v2;
          *(v12 + 8) = *(v2 + 8);
          v2 += 24;
          v12 += 24;
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
        v14 = v2 + 24 * v8;
        v10 = result;
        v15 = *result;
        do
        {
          *v15 = *v2;
          *(v15 + 8) = *(v2 + 8);
          v2 += 24;
          v15 += 24;
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
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 24);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }

    memcpy((*v10 + 24 * v8), (*a2 + 24 * v8), 24 * v11);
LABEL_19:
    result = v10;
    *(v10 + 8) = v7;
LABEL_20:
    *v6 = 0;
  }

  return result;
}

uint64_t *printRegionEdgeName(uint64_t *a1, mlir::Region *this, unint64_t a3)
{
  if (*a1)
  {
    v5 = (a1 + 3);
    v6 = a1[3];
    v70 = 3;
    v71 = "from ";
    v72 = 5;
    v7 = *(a1 + 8);
    v8 = &v70;
    if (v7 >= *(a1 + 9))
    {
      v60 = this;
      if (v6 <= &v70 && v6 + 24 * v7 > &v70)
      {
        v62 = &v70 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 5), v7 + 1, 24);
        v6 = a1[3];
        v8 = &v62[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 5), v7 + 1, 24);
        v6 = a1[3];
        v8 = &v70;
      }

      this = v60;
    }

    v9 = v6 + 24 * *(a1 + 8);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 2);
    *v9 = v10;
    ++*(a1 + 8);
  }

  v11 = *a1;
  if (this)
  {
    if (v11)
    {
      v12 = (a1 + 3);
      v13 = a1[3];
      v70 = 3;
      v71 = "Region #";
      v72 = 8;
      v14 = *(a1 + 8);
      v15 = &v70;
      if (v14 >= *(a1 + 9))
      {
        v61 = this;
        if (v13 <= &v70 && v13 + 24 * v14 > &v70)
        {
          v63 = &v70 - v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a1 + 5), v14 + 1, 24);
          v13 = a1[3];
          v15 = &v63[v13];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a1 + 5), v14 + 1, 24);
          v13 = a1[3];
          v15 = &v70;
        }

        this = v61;
      }

      v16 = v13 + 24 * *(a1 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      ++*(a1 + 8);
    }

    RegionNumber = mlir::Region::getRegionNumber(this);
    if (!*a1)
    {
      goto LABEL_17;
    }

    v19 = RegionNumber;
    v20 = (a1 + 3);
    v21 = a1[3];
    v70 = 5;
    v71 = v19;
    v22 = *(a1 + 8);
    v23 = &v70;
    if (v22 >= *(a1 + 9))
    {
      if (v21 <= &v70 && v21 + 24 * v22 > &v70)
      {
        v64 = &v70 - v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20, (a1 + 5), v22 + 1, 24);
        v21 = a1[3];
        v23 = &v64[v21];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20, (a1 + 5), v22 + 1, 24);
        v21 = a1[3];
        v23 = &v70;
      }
    }

    v24 = v21 + 24 * *(a1 + 8);
    v25 = *v23;
    *(v24 + 16) = *(v23 + 2);
    *v24 = v25;
    v26 = *(a1 + 8) + 1;
    *(a1 + 8) = v26;
    if (!*a1)
    {
      goto LABEL_17;
    }

LABEL_15:
    v33 = (a1 + 3);
    v34 = a1[3];
    v70 = 3;
    v71 = " to ";
    v72 = 4;
    v35 = &v70;
    if (v26 >= *(a1 + 9))
    {
      if (v34 <= &v70 && v34 + 24 * v26 > &v70)
      {
        v65 = &v70 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v33, (a1 + 5), v26 + 1, 24);
        v34 = a1[3];
        v35 = &v65[v34];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v33, (a1 + 5), v26 + 1, 24);
        v34 = a1[3];
        v35 = &v70;
      }
    }

    v36 = v34 + 24 * *(a1 + 8);
    v37 = *v35;
    *(v36 + 16) = *(v35 + 2);
    *v36 = v37;
    ++*(a1 + 8);
    goto LABEL_17;
  }

  if (v11)
  {
    v27 = (a1 + 3);
    v28 = a1[3];
    v70 = 3;
    v71 = "parent operands";
    v72 = 15;
    v29 = *(a1 + 8);
    v30 = &v70;
    if (v29 >= *(a1 + 9))
    {
      if (v28 <= &v70 && v28 + 24 * v29 > &v70)
      {
        v68 = &v70 - v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27, (a1 + 5), v29 + 1, 24);
        v28 = a1[3];
        v30 = &v68[v28];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27, (a1 + 5), v29 + 1, 24);
        v28 = a1[3];
        v30 = &v70;
      }
    }

    v31 = v28 + 24 * *(a1 + 8);
    v32 = *v30;
    *(v31 + 16) = *(v30 + 2);
    *v31 = v32;
    v26 = *(a1 + 8) + 1;
    *(a1 + 8) = v26;
    if (*a1)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v38 = *a1;
  if (a3)
  {
    if (v38)
    {
      v39 = (a1 + 3);
      v40 = a1[3];
      v70 = 3;
      v71 = "Region #";
      v72 = 8;
      v41 = *(a1 + 8);
      v42 = &v70;
      if (v41 >= *(a1 + 9))
      {
        if (v40 <= &v70 && v40 + 24 * v41 > &v70)
        {
          v66 = &v70 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39, (a1 + 5), v41 + 1, 24);
          v40 = a1[3];
          v42 = &v66[v40];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39, (a1 + 5), v41 + 1, 24);
          v40 = a1[3];
          v42 = &v70;
        }
      }

      v43 = v40 + 24 * *(a1 + 8);
      v44 = *v42;
      *(v43 + 16) = *(v42 + 2);
      *v43 = v44;
      ++*(a1 + 8);
    }

    v45 = mlir::Region::getRegionNumber(a3);
    if (*a1)
    {
      v46 = v45;
      v47 = (a1 + 3);
      v48 = a1[3];
      v70 = 5;
      v71 = v46;
      v49 = *(a1 + 8);
      v50 = &v70;
      if (v49 >= *(a1 + 9))
      {
        if (v48 <= &v70 && v48 + 24 * v49 > &v70)
        {
          v67 = &v70 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, (a1 + 5), v49 + 1, 24);
          v48 = a1[3];
          v50 = &v67[v48];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, (a1 + 5), v49 + 1, 24);
          v48 = a1[3];
          v50 = &v70;
        }
      }

      v51 = v48 + 24 * *(a1 + 8);
      v52 = *v50;
      *(v51 + 16) = *(v50 + 2);
      *v51 = v52;
LABEL_27:
      ++*(a1 + 8);
    }
  }

  else if (v38)
  {
    v53 = (a1 + 3);
    v54 = a1[3];
    v70 = 3;
    v71 = "parent results";
    v72 = 14;
    v55 = *(a1 + 8);
    v56 = &v70;
    if (v55 >= *(a1 + 9))
    {
      if (v54 <= &v70 && v54 + 24 * v55 > &v70)
      {
        v69 = &v70 - v54;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v53, (a1 + 5), v55 + 1, 24);
        v54 = a1[3];
        v56 = &v69[v54];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v53, (a1 + 5), v55 + 1, 24);
        v54 = a1[3];
        v56 = &v70;
      }
    }

    v57 = v54 + 24 * *(a1 + 8);
    v58 = *v56;
    *(v57 + 16) = *(v56 + 2);
    *v57 = v58;
    goto LABEL_27;
  }

  return a1;
}

double llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_0>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5[0] = (**(*a1 + 8))();
  v5[1] = v3;
  mlir::OperandRange::getTypes(v5, &v6);
  mlir::ValueRange::ValueRange(v10, v6 + 32 * v7, v8 - v7);
  mlir::TypeRange::TypeRange(v9, v10[0], v10[1]);
  result = *v9;
  *a2 = *v9;
  *(a2 + 16) = 1;
  return result;
}

void llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_2>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  LOBYTE(v34) = 0;
  v35 = 0;
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
LABEL_20:
    mlir::OperandRange::getTypes(&v34, &v40);
    mlir::ValueRange::ValueRange(&v36, v40 + 32 * v41, v43 - v41);
    *(mlir::TypeRange::TypeRange(a3, v36, v37) + 16) = 1;
    return;
  }

  v6 = *v3;
  v7 = *v3 + 16 * v4;
  while (1)
  {
    (**(v6 + 8))(&v40);
    v8 = mlir::MutableOperandRange::operator mlir::OperandRange(&v40);
    v10 = v9;
    if (v42 != v44)
    {
      free(v42);
    }

    *&v33 = v8;
    *(&v33 + 1) = v10;
    if ((v35 & 1) == 0)
    {
      v34 = v33;
      v35 = 1;
      goto LABEL_4;
    }

    v11 = *(a1 + 8);
    mlir::OperandRange::getTypes(&v34, &v40);
    mlir::ValueRange::ValueRange(&v36, v40 + 32 * v41, v43 - v41);
    mlir::TypeRange::TypeRange(&v53, v36, v37);
    mlir::OperandRange::getTypes(&v33, &v40);
    mlir::ValueRange::ValueRange(&v36, v40 + 32 * v41, v43 - v41);
    mlir::TypeRange::TypeRange(v52, v36, v37);
    v12 = v54;
    if (v54 != v52[1])
    {
      goto LABEL_14;
    }

    if (v54)
    {
      break;
    }

LABEL_4:
    v6 += 16;
    if (v6 == v7)
    {
      goto LABEL_20;
    }
  }

  v13 = 0;
  v14 = v53;
  v15 = v52[0];
  while (1)
  {
    mlir::TypeRange::dereference_iterator(v14, v13);
    mlir::TypeRange::dereference_iterator(v15, v13);
    if (!(*(*(*v11 + 8) + 32))())
    {
      break;
    }

    if (v12 == ++v13)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  v16 = **(a1 + 16);
  v36 = " along control flow edge";
  v39 = 259;
  mlir::Operation::emitOpError(v16, &v36, &v40);
  printRegionEdgeName(&v40, *(a1 + 24), a2);
  if (!v40)
  {
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v51 != 1)
    {
      return;
    }

    goto LABEL_22;
  }

  LODWORD(v36) = 3;
  v37 = " operands mismatch between return-like terminators";
  v38 = 50;
  v17 = &v36;
  v18 = v43;
  if (v44[0] >= v44[1])
  {
    if (v43 <= &v36 && v43 + 24 * v44[0] > &v36)
    {
      v30 = &v36 - v43;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44[0] + 1, 24);
      v18 = v43;
      v17 = (v43 + v30);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44[0] + 1, 24);
      v17 = &v36;
      v18 = v43;
    }
  }

  v19 = &v18[24 * v44[0]];
  v20 = *v17;
  *(v19 + 2) = v17[2];
  *v19 = v20;
  ++v44[0];
  v21 = v40;
  *a3 = 0;
  *(a3 + 16) = 0;
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v51 == 1)
  {
LABEL_22:
    if (v50 != &v51)
    {
      free(v50);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v49;
      v24 = __p;
      if (v49 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v49 = v22;
      operator delete(v24);
    }

    v25 = v46;
    if (v46)
    {
      v26 = v47;
      v27 = v46;
      if (v47 != v46)
      {
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
        v27 = v46;
      }

      v47 = v25;
      operator delete(v27);
    }

    if (v43 != v45)
    {
      free(v43);
    }
  }
}

uint64_t mlir::OpTrait::util::staticallyKnownBroadcastable(const void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v48[14] = *MEMORY[0x1E69E9840];
  v44 = &v46;
  v45 = 0x200000000;
  v46 = v48;
  v47 = 0x600000000;
  v9 = (8 * a2) >> 3;
  if (v9 < 7)
  {
    v10 = 0;
    v11 = 8 * a2;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v9, 8);
  v10 = v47;
  v11 = 8 * a2;
  if (a2)
  {
LABEL_5:
    memcpy(&v46[v10], a1, v11);
    v10 = v47;
  }

LABEL_6:
  v12 = (v45 + 1);
  LODWORD(v47) = v10 + (v11 >> 3);
  LODWORD(v45) = v12;
  v42 = &a3[8 * a4];
  v43 = a3;
  if (v12 < HIDWORD(v45))
  {
    v13 = v44 + 64 * v12;
    *v13 = v13 + 2;
    v13[1] = 0x600000000;
    v14 = (8 * a4) >> 3;
    if (v14 < 7)
    {
      v15 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v13 + 2), v14, 8);
      v15 = *(v13 + 2);
      if (!a4)
      {
LABEL_12:
        *(v13 + 2) = v15 + a4;
        LODWORD(v45) = v45 + 1;
        v16 = v44;
        v17 = v45;
        v18 = *(v44 + 2);
        v19 = v45 << 6;
        if (v45 == 1)
        {
          goto LABEL_13;
        }

LABEL_16:
        v21 = v17 - 1;
        if ((v17 - 1) > 1)
        {
          v22 = v21 | 1;
          v4 = (v16 + 34);
          v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
          v24 = v18;
          do
          {
            v25 = *(v4 - 64);
            v27 = *v4;
            v4 += 128;
            v26 = v27;
            if (v18 <= v25)
            {
              v18 = v25;
            }

            if (v24 <= v26)
            {
              v24 = v26;
            }

            v23 -= 2;
          }

          while (v23);
          if (v18 <= v24)
          {
            v18 = v24;
          }

          if (v21 == (v21 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_31;
          }
        }

        else
        {
          v22 = 1;
        }

        v28 = v17 - v22;
        v29 = &v16[16 * v22 + 2];
        do
        {
          v31 = *v29;
          v29 += 16;
          v30 = v31;
          if (v18 <= v31)
          {
            v18 = v30;
          }

          --v28;
        }

        while (v28);
LABEL_31:
        if (!v18)
        {
LABEL_46:
          v20 = 1;
          if (!v17)
          {
            goto LABEL_52;
          }

          goto LABEL_47;
        }

        if (!v17)
        {
          v20 = 1;
          if (v16 == &v46)
          {
            return v20;
          }

          goto LABEL_53;
        }

LABEL_33:
        v32 = 0;
LABEL_35:
        v33 = 0;
        v34 = 0;
        v4 &= 0xFFFFFFFFFFFFFF00;
        v35 = v19;
        v36 = v16 + 2;
        while (1)
        {
          v37 = *v36;
          if (v32 < v37)
          {
            v38 = *(*(v36 - 1) + 8 * v37 + 8 * ~v32);
            if (v38 != 1)
            {
              if (v38 == 0x8000000000000000)
              {
                if ((v33 | v34))
                {
LABEL_44:
                  v20 = 0;
                  if (!v17)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_47;
                }

                v33 = 1;
              }

              if ((v34 & (v38 != v4)) != 0)
              {
                goto LABEL_44;
              }

              v34 = 1;
              v4 = v38;
            }
          }

          v36 += 16;
          v35 -= 64;
          if (!v35)
          {
            if (++v32 == v18)
            {
              goto LABEL_46;
            }

            goto LABEL_35;
          }
        }
      }
    }

    memcpy((*v13 + 8 * v15), a3, 8 * a4);
    v15 = *(v13 + 2);
    goto LABEL_12;
  }

  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long const*,long long const*>(&v44, &v43, &v42);
  v16 = v44;
  v17 = v45;
  v18 = *(v44 + 2);
  v19 = v45 << 6;
  if (v45 != 1)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v18)
  {
    goto LABEL_33;
  }

  v20 = 1;
LABEL_47:
  v39 = (v16 + v19 - 64);
  v40 = -v19;
  do
  {
    if (v39 + 2 != *v39)
    {
      free(*v39);
    }

    v39 -= 8;
    v40 += 64;
  }

  while (v40);
  v16 = v44;
LABEL_52:
  if (v16 != &v46)
  {
LABEL_53:
    free(v16);
  }

  return v20;
}

uint64_t mlir::OpTrait::util::getBroadcastedShape(void *a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 8) = 0;
  if (a2 <= a4)
  {
    if (!a4)
    {
      return 1;
    }

    v5 = 0;
    v14 = 8 * a4;
    v15 = a3;
    do
    {
      v16 = *v15;
      if (v5 >= *(a5 + 12))
      {
        v17 = a2;
        v18 = a3;
        v19 = a1;
        v20 = a4;
        v21 = a5;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v5 + 1, 8);
        a2 = v17;
        a4 = v20;
        a1 = v19;
        a3 = v18;
        a5 = v21;
        v5 = *(v21 + 8);
      }

      *(*a5 + 8 * v5) = v16;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++v15;
      v14 -= 8;
    }

    while (v14);
  }

  else
  {
    v5 = 0;
    v6 = 8 * a2;
    v7 = a1;
    do
    {
      v8 = *v7;
      if (v5 >= *(a5 + 12))
      {
        v9 = a2;
        v10 = a3;
        v11 = a1;
        v12 = a4;
        v13 = a5;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v5 + 1, 8);
        a2 = v9;
        a4 = v12;
        a1 = v11;
        a3 = v10;
        a5 = v13;
        v5 = *(v13 + 8);
      }

      *(*a5 + 8 * v5) = v8;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++v7;
      v6 -= 8;
    }

    while (v6);
  }

  v22 = 1;
  if (a2 && a4)
  {
    v23 = 8 * a2 - 8;
    v24 = (*a5 + 8 * v5 - 8);
    v25 = 8 * a4 - 8;
    while (1)
    {
      v26 = *(a1 + v23);
      v27 = *(a3 + v25);
      if (v26 == 0x8000000000000000)
      {
        break;
      }

      if (v27 == 0x8000000000000000)
      {
        v28 = *(a1 + v23);
        if (v26 > 1)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      v29 = v26 == v27 || v27 == 1;
      v28 = *(a1 + v23);
      if (!v29)
      {
        v28 = *(a3 + v25);
        if (v26 != 1)
        {
          v22 = 0;
          *(a5 + 8) = 0;
          return v22;
        }
      }

LABEL_27:
      *v24-- = v28;
      v22 = 1;
      if (v23)
      {
        v23 -= 8;
        v30 = v25;
        v25 -= 8;
        if (v30)
        {
          continue;
        }
      }

      return v22;
    }

    v28 = *(a3 + v25);
    if (v27 > 1)
    {
      goto LABEL_27;
    }

    v28 = *(a1 + v23);
    if (v27 == 1)
    {
      goto LABEL_27;
    }

LABEL_21:
    v28 = 0x8000000000000000;
    goto LABEL_27;
  }

  return v22;
}

uint64_t mlir::OpTrait::util::getBroadcastedType(void *a1, void *a2, uint64_t a3)
{
  ElementTypeOrSelf = a3;
  v28[4] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = a1;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
    v6 = mlir::getElementTypeOrSelf(a2);
    a1 = v5;
    if (ElementTypeOrSelf != v6)
    {
      return 0;
    }
  }

  v7 = *(*a1 + 136);
  v8 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      return 0;
    }
  }

  else
  {
    if (v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v9 = v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
      v10 = v9;
      if (v9)
      {
        v11 = *(*a2 + 136);
      }

      else
      {
        v11 = 0;
      }

      v12 = (v7 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) | v10;
      if (v7 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v13 = v11;
      }

      else
      {
        v13 = *(*a1 + 136);
      }

      if (v7 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || !v10)
      {
LABEL_21:
        v26 = v28;
        v27 = 0x400000000;
        v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
        v25 = v14;
        if (v24)
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v24);
          v17 = v16;
          v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
          v25 = v18;
          if (v24)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v17 = 0;
          ArgAttrsAttr = 0;
          v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
          v25 = v23;
          if (v24)
          {
LABEL_23:
            v19 = mlir::CallableOpInterface::getArgAttrsAttr(&v24);
            if (mlir::OpTrait::util::getBroadcastedShape(ArgAttrsAttr, v17, v19, v20, &v26))
            {
              goto LABEL_24;
            }

            goto LABEL_34;
          }
        }

        if (mlir::OpTrait::util::getBroadcastedShape(ArgAttrsAttr, v17, 0, 0, &v26))
        {
LABEL_24:
          if (v13 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || (v12 & 1) == 0)
          {
            if (v13 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v12 & 1) == 0)
            {
              goto LABEL_38;
            }

            v21 = mlir::RankedTensorType::get(v26, v27, ElementTypeOrSelf, 0);
          }

          else
          {
            v21 = mlir::VectorType::get(v26, v27, ElementTypeOrSelf, 0, 0);
          }

          ElementTypeOrSelf = v21;
LABEL_38:
          if (v26 != v28)
          {
            free(v26);
          }

          return ElementTypeOrSelf;
        }

LABEL_34:
        ElementTypeOrSelf = 0;
        goto LABEL_38;
      }

      if (v7 == v8)
      {
        v12 = 1;
        v13 = *(*a1 + 136);
        goto LABEL_21;
      }

      return 0;
    }

    if (v7 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      return 0;
    }
  }

  return mlir::UnrankedTensorType::get(ElementTypeOrSelf);
}

void getShapeString(void *a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v14 = 0;
  v18 = 0;
  v19 = 1;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v13 = &unk_1F5B3FB30;
  v20 = a1;
  llvm::raw_ostream::SetBufferAndMode(&v13, 0, 0, 0);
  v5 = v17;
  if (v17 >= v16)
  {
    llvm::raw_ostream::write(&v13, 39);
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  ++v17;
  *v5 = 39;
  if (a3)
  {
LABEL_5:
    if (*a2 == 0x8000000000000000)
    {
      v6 = v17;
      if (v17 >= v16)
      {
        llvm::raw_ostream::write(&v13, 63);
        if (a3 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        ++v17;
        *v6 = 63;
        if (a3 == 1)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      llvm::raw_ostream::operator<<(&v13, *a2);
      if (a3 == 1)
      {
        goto LABEL_12;
      }
    }

    v8 = 8 * a3;
    v9 = a2 + 1;
    for (i = v8 - 8; i; i -= 8)
    {
      if (v16 == v17)
      {
        llvm::raw_ostream::write(&v13, "x", 1uLL);
        v11 = *v9;
        if (*v9 == 0x8000000000000000)
        {
LABEL_23:
          v12 = v17;
          if (v17 >= v16)
          {
            llvm::raw_ostream::write(&v13, 63);
          }

          else
          {
            ++v17;
            *v12 = 63;
          }

          goto LABEL_18;
        }
      }

      else
      {
        *v17++ = 120;
        v11 = *v9;
        if (*v9 == 0x8000000000000000)
        {
          goto LABEL_23;
        }
      }

      llvm::raw_ostream::operator<<(&v13, v11);
LABEL_18:
      ++v9;
    }
  }

LABEL_12:
  v7 = v17;
  if (v17 >= v16)
  {
    llvm::raw_ostream::write(&v13, 39);
  }

  else
  {
    ++v17;
    *v7 = 39;
  }

  llvm::raw_ostream::~raw_ostream(&v13);
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long const*,long long const*>(uint64_t a1, const void **a2, const void **a3)
{
  v25 = 0;
  v6 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v25);
  v8 = v7;
  v9 = &v7[8 * *(a1 + 8)];
  v10 = *a2;
  v11 = *a3;
  *v9 = v9 + 2;
  v9[1] = 0x600000000;
  v12 = (v11 - v10) >> 3;
  if (v12 < 7)
  {
    v13 = 0;
    if (v10 == v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 2), v12, 8);
  v13 = *(v9 + 2);
  if (v10 != v11)
  {
LABEL_5:
    memcpy((*v9 + 8 * v13), v10, v11 - v10);
    v13 = *(v9 + 2);
  }

LABEL_6:
  *(v9 + 2) = v13 + ((v11 - v10) >> 3);
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = v15 << 6;
    v17 = v8;
    do
    {
      *v17 = v17 + 2;
      v17[1] = 0x600000000;
      if (*(v14 + 8))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v17, v14);
      }

      v17 += 8;
      v14 += 64;
      v16 -= 64;
    }

    while (v16);
    v14 = *a1;
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = v18 << 6;
      v20 = (v19 + v14 - 64);
      v21 = -v19;
      do
      {
        if (v20 + 2 != *v20)
        {
          free(*v20);
        }

        v20 -= 8;
        v21 += 64;
      }

      while (v21);
      v14 = *a1;
    }
  }

  v22 = v25;
  if (v14 != v6)
  {
    free(v14);
  }

  *a1 = v8;
  v23 = (*(a1 + 8) + 1);
  *(a1 + 8) = v23;
  *(a1 + 12) = v22;
  return &v8[8 * v23 - 8];
}

__n128 OUTLINED_FUNCTION_1_1@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  v35 = (a1 + 24 * a34);
  result = *v34;
  v35[1].n128_u64[0] = v34[1].n128_u64[0];
  *v35 = result;
  return result;
}

void OUTLINED_FUNCTION_3_1(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2 + 40, v2 + 1, 24);
}

void mlir::invertPermutationVector(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (a2)
  {
    if (a2 < 7)
    {
      v6 = 0;
      v7 = a2;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 2), a2, 8);
      v6 = *(a3 + 2);
      v7 = a2 - v6;
      if (a2 == v6)
      {
LABEL_7:
        v8 = 0;
        *(a3 + 2) = a2;
        v9 = *a3;
        v10 = 8 * a2;
        do
        {
          *(v9 + 8 * *(a1 + 8 * v8)) = v8;
          ++v8;
          v10 -= 8;
        }

        while (v10);
        return;
      }
    }

    bzero((*a3 + 8 * v6), 8 * v7);
    goto LABEL_7;
  }
}

uint64_t mlir::isIdentityPermutation(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2 == *(a1 + 8 * v2);
    v4 = v2 != *(a1 + 8 * v2) || a2 - 1 == v2;
    ++v2;
  }

  while (!v4);
  return v3;
}

void mlir::applyPermutationToVector<long long,6u>(uint64_t a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 8);
  v15 = v17;
  v16 = 0x600000000;
  if (v5 < 7)
  {
    v6 = 0;
    v7 = v17;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v5, 8);
    v6 = v16;
    v7 = v15;
  }

  v8 = v6;
  v9 = v5;
  do
  {
    v10 = *a2++;
    v7[v8++] = v4[v10];
    --v9;
  }

  while (v9);
LABEL_6:
  v11 = v6 + v5;
  LODWORD(v16) = v11;
  if (&v15 == a1)
  {
    goto LABEL_22;
  }

  if (v7 != v17)
  {
    if (*a1 != a1 + 16)
    {
      free(*a1);
      v7 = v15;
      LODWORD(v11) = v16;
    }

    *a1 = v7;
    v12 = HIDWORD(v16);
    *(a1 + 8) = v11;
    *(a1 + 12) = v12;
    v15 = v17;
    HIDWORD(v16) = 0;
    goto LABEL_21;
  }

  v13 = *(a1 + 8);
  if (v13 >= v11)
  {
    if (v11)
    {
      memmove(*a1, v7, 8 * v11);
    }

    goto LABEL_20;
  }

  if (*(a1 + 12) < v11)
  {
    *(a1 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v11, 8);
    v13 = 0;
    v14 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!v13)
  {
    v13 = 0;
    v14 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  memmove(*a1, v7, 8 * v13);
  v14 = v16 - v13;
  if (v16 != v13)
  {
LABEL_19:
    memcpy((*a1 + 8 * v13), &v15[v13], 8 * v14);
  }

LABEL_20:
  *(a1 + 8) = v11;
LABEL_21:
  LODWORD(v16) = 0;
  v7 = v15;
LABEL_22:
  if (v7 != v17)
  {
    free(v7);
  }
}

void *llvm::SmallVectorImpl<long long>::insert<long long const*,void>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v6 = *a1;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = a4 - __src;
  v12 = (a4 - __src) >> 3;
  v13 = v12 + v9;
  if (*a1 + 8 * v9 == a2)
  {
    if (v13 > v10)
    {
      v23 = a4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v13, 8);
      a4 = v23;
      LODWORD(v9) = *(a1 + 8);
      v7 = *a1;
    }

    if (__src != a4)
    {
      memcpy((v7 + 8 * v9), __src, v11);
      LODWORD(v9) = *(a1 + 8);
      v7 = *a1;
    }

    *(a1 + 8) = v9 + (v11 >> 3);
    return (v7 + v8);
  }

  __len = v11;
  v46 = __src;
  v48 = a4;
  if (v13 > v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v13, 8);
    v7 = *a1;
    v9 = *(a1 + 8);
  }

  __srca = (v7 + v8);
  v15 = 8 * v9;
  v16 = (v7 + 8 * v9);
  v17 = 8 * v9 - v8;
  v18 = v17 >> 3;
  if (v17 >> 3 < v12)
  {
    v19 = v9 + (__len >> 3);
    *(a1 + 8) = v19;
    if (v15 == v8)
    {
      v20 = v46;
      v21 = v7 + v8;
      v22 = v48;
LABEL_34:
      if (v20 != v22)
      {
        memcpy(v16, v20, v22 - v20);
      }

      return v21;
    }

    v21 = v7 + v8;
    memcpy((v7 + 8 * v19 - 8 * v18), __srca, v17);
    if (v18 > 7)
    {
      if ((v7 + a2 - &v46[v6]) >= 0x20)
      {
        v40 = 8 * (v18 & 0xFFFFFFFFFFFFFFFCLL);
        v28 = &__srca[v40];
        v29 = (v17 >> 3) & 3;
        v20 = &v46[v40];
        v41 = (v46 + 16);
        v42 = (v8 + v7 + 16);
        v43 = v18 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v44 = *v41;
          *(v42 - 1) = *(v41 - 1);
          *v42 = v44;
          v41 += 2;
          v42 += 2;
          v43 -= 4;
        }

        while (v43);
        v22 = v48;
        if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v28 = (v7 + v8);
      v29 = v17 >> 3;
      v20 = v46;
    }

    else
    {
      v28 = (v7 + v8);
      v29 = v17 >> 3;
      v20 = v46;
    }

    v22 = v48;
    do
    {
LABEL_33:
      v39 = *v20;
      v20 += 8;
      *v28 = v39;
      v28 += 8;
      --v29;
    }

    while (v29);
    goto LABEL_34;
  }

  v24 = 8 * v12;
  if (v12 + v9 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v12 + v9, 8);
    LODWORD(v9) = *(a1 + 8);
  }

  v25 = &v16[-v24];
  v21 = v7 + v8;
  if (v48 != v46)
  {
    v26 = (*a1 + 8 * v9);
    if (v24 - 8 < 0x38)
    {
      v27 = &v16[-v24];
      do
      {
LABEL_23:
        v37 = *v27;
        v27 += 8;
        *v26++ = v37;
      }

      while (v27 != v16);
      goto LABEL_24;
    }

    v30 = 8 * v9 + *a1;
    v27 = &v16[-v24];
    if ((v30 - v25) < 0x20)
    {
      goto LABEL_23;
    }

    v31 = ((v24 - 8) >> 3) + 1;
    v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
    v26 = (v26 + v32);
    v27 = &v25[v32];
    v33 = (v15 - v24 + v7 + 16);
    v34 = (v30 + 16);
    v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v33;
      *(v34 - 1) = *(v33 - 1);
      *v34 = v36;
      v33 += 2;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  *(a1 + 8) = v9 + (v24 >> 3);
  if (v25 != __srca)
  {
    memmove(&__srca[v24], __srca, &v16[-v24] - __srca);
  }

  if (v48 == v46)
  {
    return v21;
  }

  return memmove(__srca, v46, __len);
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 8);
  }

  v8 = v6 - 1;
  v9 = (37 * *a2) & (v6 - 1);
  v10 = (v7 + 8 * v9);
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 8);
      v12 = *(result + 16);
    }

    *a3 = v10;
    *(a3 + 8) = v4 + 8 * v12;
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == 0x8000000000000000;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = (v7 + 8 * (v18 & v8));
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = *(result + 16);
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - *(result + 4) <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    --*(result + 4);
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 8);
    v14 = *(result + 16);
  }

  *a3 = v10;
  *(a3 + 8) = v4 + 8 * v14;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (37 * *a2) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(uint64_t a1, unsigned int a2)
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      v15 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    v17 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(a1, v5, &v17[v5]);

    llvm::deallocate_buffer(v5, v17);
  }

  v7 = &v18;
  if ((*(a1 + 8) - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    v18 = *(a1 + 8);
    v7 = v19;
    v8 = *(a1 + 16);
    if ((v8 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
LABEL_10:
      v9 = *(a1 + 24);
      if ((v9 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if ((v8 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
      goto LABEL_10;
    }
  }

  *v7++ = v8;
  v9 = *(a1 + 24);
  if ((v9 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
LABEL_11:
    v10 = *(a1 + 32);
    if ((v10 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7++ = v10;
    if (a2 < 5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7++ = v9;
  v10 = *(a1 + 32);
  if ((v10 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

LABEL_14:
  llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(a1, &v18, v7);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v8 = 4;
    v9 = a1 + 2;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = *(a1 + 1);
  }

  memset_pattern16(v9, &unk_1E0970A00, 8 * v8);
LABEL_6:
  if (a2 != a3)
  {
    while (1)
    {
      v15 = *a2;
      if ((*a2 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
      {
        break;
      }

LABEL_14:
      if (++a2 == a3)
      {
        return;
      }
    }

    if (*a1)
    {
      v11 = 3;
      v10 = v7;
      v12 = (37 * v15) & 3;
      v13 = &v7[2 * v12];
      v14 = *v13;
      if (v15 == *v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = *(a1 + 1);
      v11 = a1[4] - 1;
      v12 = v11 & (37 * v15);
      v13 = &v10[2 * v12];
      v14 = *v13;
      if (v15 == *v13)
      {
LABEL_13:
        *v13 = v15;
        *a1 += 2;
        goto LABEL_14;
      }
    }

    v16 = 0;
    v17 = 1;
    while (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 == 0x8000000000000000;
      }

      if (v18)
      {
        v16 = v13;
      }

      v19 = v12 + v17++;
      v12 = v19 & v11;
      v13 = &v10[2 * (v19 & v11)];
      v14 = *v13;
      if (v15 == *v13)
      {
        goto LABEL_13;
      }
    }

    if (v16)
    {
      v13 = v16;
    }

    goto LABEL_13;
  }
}

void mlir::getReassociationIndicesForCollapse(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45[4] = *MEMORY[0x1E69E9840];
  if (a2 <= a4)
  {
    *a5 = 0;
    *(a5 + 48) = 0;
    return;
  }

  v43 = v45;
  v44 = 0x100000000;
  if (a4 >= 2)
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v43, a4);
  }

  LODWORD(v9) = 0;
  v40 = v42;
  v41 = 0x200000000;
  while (1)
  {
    v10 = v44;
    if (a4 == v44)
    {
      break;
    }

    v11 = *(a3 + 8 * v44);
    v12 = v9;
    if (a2 <= v9)
    {
      v15 = 1;
LABEL_19:
      v18 = *(a1 + 8 * v12);
      if (v18 != 0x8000000000000000)
      {
LABEL_24:
        if (v11 == 0x8000000000000000)
        {
          goto LABEL_57;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v13 = 1;
      while (1)
      {
        v14 = *(a1 + 8 * v12);
        v15 = v14 * v13;
        if (v14 == 0x8000000000000000 || v15 >= v11)
        {
          break;
        }

        v17 = v41;
        if (v41 >= HIDWORD(v41))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v41 + 1, 8);
          v17 = v41;
        }

        v9 = (v9 + 1);
        *(v40 + v17) = v12;
        LODWORD(v41) = v41 + 1;
        v12 = v9;
        v13 = v15;
        if (a2 <= v9)
        {
          goto LABEL_19;
        }
      }

      v15 = v13;
      v18 = *(a1 + 8 * v12);
      if (v18 != 0x8000000000000000)
      {
        goto LABEL_24;
      }
    }

    if (v11 != 0x8000000000000000 || v15 != 1)
    {
      goto LABEL_57;
    }

LABEL_25:
    if (v18 * v15 != v11)
    {
      goto LABEL_57;
    }

    v19 = v41;
    if (v41 >= HIDWORD(v41))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v41 + 1, 8);
      v19 = v41;
    }

    *(v40 + v19) = v12;
    LODWORD(v41) = v41 + 1;
    __src = v39;
    v38 = 0x200000000;
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>(&v43, &__src);
      v24 = __src;
      if (__src == v39)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v20 = (v43 + 32 * v44);
      *v20 = v20 + 2;
      v20[1] = 0x200000000;
      if (v20 != &__src)
      {
        v21 = v38;
        if (v38)
        {
          if (__src == v39)
          {
            v23 = v38;
            if (v38 < 3uLL || (llvm::SmallVectorBase<unsigned int>::grow_pod(v20, (v20 + 2), v38, 8), v23 = v38, v38))
            {
              memcpy(*v20, __src, 8 * v23);
            }

            *(v20 + 2) = v21;
          }

          else
          {
            *v20 = __src;
            v22 = HIDWORD(v38);
            *(v20 + 2) = v21;
            *(v20 + 3) = v22;
            __src = v39;
            HIDWORD(v38) = 0;
          }

          LODWORD(v38) = 0;
        }
      }

      LODWORD(v44) = v44 + 1;
      v24 = __src;
      if (__src == v39)
      {
        goto LABEL_5;
      }
    }

    free(v24);
LABEL_5:
    LODWORD(v9) = v9 + 1;
    llvm::SmallVectorImpl<long long>::swap(v43 + 32 * v44 - 32, &v40);
    if (a2 <= v9)
    {
      v10 = v44;
      break;
    }
  }

  if (a4 != v10)
  {
LABEL_57:
    *a5 = 0;
    *(a5 + 48) = 0;
    v31 = v40;
    if (v40 == v42)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v25 = v9;
  if (a2 > v9)
  {
    v26 = v9 + 1;
    while (1)
    {
      v27 = *(a1 + 8 * v25);
      if (v27 != 0x8000000000000000 && v27 != 1)
      {
        goto LABEL_57;
      }

      if (v44)
      {
        v29 = v43 + 32 * v44;
        v30 = *(v29 - 6);
        if (v30 >= *(v29 - 5))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((v29 - 32), (v29 - 16), v30 + 1, 8);
          v30 = *(v29 - 6);
        }

        *(*(v29 - 4) + 8 * v30) = v25;
        ++*(v29 - 6);
      }

      v25 = v26++;
      if (a2 <= v25)
      {
        LODWORD(v10) = v44;
        break;
      }
    }
  }

  *a5 = a5 + 16;
  *(a5 + 8) = 0x100000000;
  if (v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v43);
  }

  *(a5 + 48) = 1;
  v31 = v40;
  if (v40 != v42)
  {
LABEL_58:
    free(v31);
  }

LABEL_59:
  v32 = v43;
  if (v44)
  {
    v33 = v43 + 32 * v44 - 16;
    v34 = -32 * v44;
    do
    {
      v35 = *(v33 - 2);
      if (v33 != v35)
      {
        free(v35);
      }

      v33 -= 32;
      v34 += 32;
    }

    while (v34);
    v32 = v43;
  }

  if (v32 != v45)
  {
    free(v32);
  }
}

void mlir::composeReassociationIndices(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v43 = v45;
  v44 = 0x100000000;
  if (a2 == a4)
  {
    goto LABEL_43;
  }

  if (a2 < a4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a4;
  }

  if (a2 < a4)
  {
    v7 = a1;
  }

  else
  {
    v7 = a3;
  }

  if (a2 < a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (a2 < a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  if (!v6)
  {
    *a5 = a5 + 16;
    *(a5 + 8) = 0x100000000;
    *(a5 + 48) = 1;
    return;
  }

  v10 = v7 + 32 * v6;
  v11 = 0;
  v12 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v16 = v7;
    do
    {
LABEL_22:
      v11 += *(v16 + 8);
      v16 += 32;
    }

    while (v16 != v10);
    goto LABEL_23;
  }

  v13 = 0;
  v14 = v12 + 1;
  v15 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
  v16 = v7 + 32 * v15;
  v17 = (v7 + 40);
  v18 = v15;
  do
  {
    v19 = *(v17 - 8);
    v20 = *v17;
    v17 += 16;
    v11 += v19;
    v13 += v20;
    v18 -= 2;
  }

  while (v18);
  v11 += v13;
  if (v14 != v15)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v9 != v11)
  {
LABEL_43:
    *a5 = 0;
    *(a5 + 48) = 0;
    return;
  }

  do
  {
    v21 = *v7;
    v22 = *(v7 + 8);
    v40 = v42;
    v41 = 0x200000000;
    if (v22)
    {
      v23 = 0;
      v24 = 8 * v22;
      do
      {
        v25 = v8 + 32 * *v21;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = v27 + v23;
        if (v28 > HIDWORD(v41))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v28, 8);
          v23 = v41;
        }

        if (v27)
        {
          memcpy(v40 + 8 * v23, v26, 8 * v27);
          v23 = v41;
        }

        v23 += v27;
        LODWORD(v41) = v23;
        ++v21;
        v24 -= 8;
      }

      while (v24);
    }

    v29 = v43;
    if (v44 >= HIDWORD(v44))
    {
      if (v43 <= &v40 && v43 + 32 * v44 > &v40)
      {
        v32 = &v40 - v43;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v43, v44 + 1);
        v29 = v43;
        v30 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v43, v44 + 1);
        v30 = &v40;
        v29 = v43;
      }
    }

    else
    {
      v30 = &v40;
    }

    v31 = &v29[32 * v44];
    *v31 = v31 + 16;
    *(v31 + 1) = 0x200000000;
    if (*(v30 + 2))
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(v31, v30);
    }

    LODWORD(v44) = v44 + 1;
    if (v40 != v42)
    {
      free(v40);
    }

    v7 += 32;
  }

  while (v7 != v10);
  v33 = v44;
  *a5 = a5 + 16;
  *(a5 + 8) = 0x100000000;
  if (v33)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v43);
    v34 = v44;
    *(a5 + 48) = 1;
    v35 = v43;
    if (!v34)
    {
      goto LABEL_53;
    }

    v36 = 32 * v34;
    v37 = v43 + v36 - 16;
    v38 = -v36;
    do
    {
      v39 = *(v37 - 2);
      if (v37 != v39)
      {
        free(v39);
      }

      v37 -= 32;
      v38 += 32;
    }

    while (v38);
  }

  else
  {
    *(a5 + 48) = 1;
  }

  v35 = v43;
LABEL_53:
  if (v35 != v45)
  {
    free(v35);
  }
}

void mlir::convertReassociationIndicesToExprs(mlir::MLIRContext *a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[2] = *MEMORY[0x1E69E9840];
  *a4 = a4 + 16;
  *(a4 + 8) = 0x200000000;
  if (a3)
  {
    v5 = a2;
    v7 = &a2[4 * a3];
    do
    {
      v19 = v21;
      v20 = 0x200000000;
      v8 = *(v5 + 2);
      if (v8 >= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v8, 8);
        v8 = *(v5 + 2);
      }

      if (v8)
      {
        v9 = *v5;
        v10 = 8 * v8;
        do
        {
          AffineDimExpr = mlir::getAffineDimExpr(*v9, a1, v8);
          v12 = v20;
          if (v20 >= HIDWORD(v20))
          {
            v13 = AffineDimExpr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 8);
            AffineDimExpr = v13;
            v12 = v20;
          }

          *(v19 + v12) = AffineDimExpr;
          LODWORD(v20) = v20 + 1;
          v9 += 2;
          v10 -= 8;
        }

        while (v10);
      }

      v14 = *(a4 + 8);
      v15 = *a4;
      if (v14 >= *(a4 + 12))
      {
        if (v15 <= &v19 && v15 + 32 * v14 > &v19)
        {
          v18 = &v19 - v15;
          llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a4, v14 + 1);
          v15 = *a4;
          v16 = &v18[*a4];
          goto LABEL_13;
        }

        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a4, v14 + 1);
        v15 = *a4;
      }

      v16 = &v19;
LABEL_13:
      v17 = (v15 + 32 * *(a4 + 8));
      *v17 = v17 + 2;
      v17[1] = 0x200000000;
      if (*(v16 + 2))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v17, v16);
      }

      ++*(a4 + 8);
      if (v19 != v21)
      {
        free(v19);
      }

      v5 += 4;
    }

    while (v5 != v7);
  }
}

uint64_t mlir::getReassociationIndicesAttribute(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x400000000;
  v6 = (32 * a3) >> 5;
  if (v6 < 5)
  {
    v7 = 0;
    v9 = 0;
    v8 = v17;
    v10 = 32 * a3;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_5:
    v11 = a2 + v10;
    v12 = &v8[2 * v7];
    do
    {
      *v12++ = mlir::Builder::getI64ArrayAttr(a1, *a2, *(a2 + 8));
      a2 += 32;
    }

    while (a2 != v11);
    v9 = v16;
    v8 = v15;
    goto LABEL_8;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
  v7 = v16;
  v8 = v15;
  v9 = v16;
  v10 = 32 * a3;
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_8:
  LODWORD(v16) = v9 + (v10 >> 5);
  result = mlir::Builder::getArrayAttr(a1, v8, v16);
  if (v15 != v17)
  {
    v14 = result;
    free(v15);
    return v14;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 >= *(a1 + 12))
  {
    v11 = a2;
    if (v4 <= a2 && v4 + 32 * v3 > a2)
    {
      v13 = a2 - v4;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v3 + 1);
      v4 = *a1;
      a2 = *a1 + v13;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v3 + 1);
      v4 = *a1;
      a2 = v11;
    }
  }

  v5 = (v4 + 32 * *(a1 + 8));
  v6 = v5 + 2;
  *v5 = v5 + 2;
  v5[1] = 0x200000000;
  v7 = *(a2 + 8);
  if (v5 != a2 && v7 != 0)
  {
    if (v7 < 3)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v9 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 2), v7, 8);
      v10 = *(v9 + 8);
      if (!v10)
      {
LABEL_11:
        *(v5 + 2) = v7;
        goto LABEL_12;
      }

      a2 = v9;
      v6 = *v5;
    }

    memcpy(v6, *a2, 8 * v10);
    goto LABEL_11;
  }

LABEL_12:
  ++*(a1 + 8);
}

uint64_t mlir::getSymbolLessAffineMaps@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = 0;
  if (a2)
  {
    v5 = result;
    v6 = result + 32 * a2;
    v7 = result;
    do
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *v7;
        v10 = 8 * v8;
        do
        {
          v11 = *v9++;
          v18 = &v19;
          mlir::AffineExpr::walk<void>(v11, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>, &v18);
          v10 -= 8;
        }

        while (v10);
      }

      v7 += 32;
    }

    while (v7 != v6);
    v12 = v19;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, a2, 8);
    }

    do
    {
      v14 = *v5;
      v15 = *(v5 + 8);
      DesiredBytecodeVersion = mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*v5);
      result = mlir::AffineMap::get(v12 + 1, 0, v14, v15, DesiredBytecodeVersion);
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 12))
      {
        v13 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v17 + 1, 8);
        result = v13;
        v17 = *(a3 + 8);
      }

      *(*a3 + 8 * v17) = result;
      ++*(a3 + 8);
      v5 += 32;
    }

    while (v5 != v6);
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
  }

  return result;
}

uint64_t mlir::isReassociationValid(mlir::AffineMap *a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 1;
  }

  v5 = a1;
  NumDims = mlir::AffineMap::getNumDims(a1);
  v7 = 0;
  v8 = 0;
  v9 = (v5 + 8 * a2);
  do
  {
    v17 = *v5;
    if (mlir::AffineMap::getNumDims(&v17) != NumDims || mlir::AffineMap::getNumSymbols(&v17))
    {
      goto LABEL_15;
    }

    Results = mlir::AffineMap::getResults(&v17);
    if (v11)
    {
      v12 = Results;
      v13 = 8 * v11;
      while (1)
      {
        v14 = *v12;
        v18 = *v12;
        if (mlir::arith::FastMathFlagsAttr::getValue(&v18) == 6)
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v18, v14);
          v16 = v18;
          if (!v18)
          {
            break;
          }
        }

        else
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v18, 0);
          v16 = v18;
          if (!v18)
          {
            break;
          }
        }

        if (v7 != mlir::AffineDimExpr::getPosition(&v16))
        {
          break;
        }

        ++v7;
        ++v12;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_3;
        }
      }

LABEL_15:
      if (a3)
      {
        *a3 = v8;
      }

      return 0;
    }

LABEL_3:
    ++v8;
    v5 = (v5 + 8);
  }

  while (v5 != v9);
  if (v7 == NumDims)
  {
    return 1;
  }

  result = 0;
  if (a3)
  {
    *a3 = a2 - 1;
  }

  return result;
}

uint64_t mlir::reshapeLikeShapesAreCompatible(uint64_t (*a1)(uint64_t, void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = a7 + 32 * a8;
  while (1)
  {
    v27 = 1;
    v11 = *(a7 + 8);
    v12 = 1;
    if (!v11)
    {
      break;
    }

    v13 = 0;
    v14 = (a5 + 8 * v8);
    v15 = &v14[v11];
    v12 = 1;
    do
    {
      while (*v14 == 0x8000000000000000)
      {
        ++v14;
        v13 = 1;
        if (v14 == v15)
        {
          goto LABEL_13;
        }
      }

      v12 *= *v14;
      v27 = v12;
      ++v14;
    }

    while (v14 != v15);
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_13:
    if (*(a3 + 8 * v9) != 0x8000000000000000)
    {
      v19[0] = v9;
      v21[0] = "expected dimension ";
      v22 = v19;
      v23 = 2819;
      v24 = v21;
      v25 = " of collapsed type to be dynamic since one or more of the corresponding dimensions in the expanded type is dynamic";
      v16 = 770;
      goto LABEL_18;
    }

LABEL_4:
    v8 += v11;
    ++v9;
    a7 += 32;
    if (a7 == v10)
    {
      return 1;
    }
  }

  if (*(a3 + 8 * v9) == v12)
  {
    goto LABEL_4;
  }

  v18 = v9;
  v19[0] = "expected dimension ";
  v19[2] = &v18;
  v20 = 2819;
  v21[0] = v19;
  v22 = " of collapsed type to be static value of ";
  v23 = 770;
  v24 = v21;
  v25 = &v27;
  v16 = 3586;
LABEL_18:
  v26 = v16;
  return a1(a2, &v24);
}

uint64_t mlir::hasNonIdentityLayout(uint64_t a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (!v1)
  {
    return 0;
  }

  v4[0] = mlir::DenseElementsAttr::getRawStringData(&v5);
  v4[1] = v2;
  return mlir::ElementsAttr::isSplat(v4) ^ 1;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 16;
    v5 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = 32 * v7;
        v9 = &v6[v8 - 16];
        v10 = -v8;
        do
        {
          v11 = *(v9 - 16);
          if (v9 != v11)
          {
            free(v11);
          }

          v9 -= 32;
          v10 += 32;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v12 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v4;
      *(a2 + 12) = 0;
LABEL_12:
      *v12 = 0;
      return a1;
    }

    v12 = (a2 + 8);
    v14 = *(a2 + 8);
    v15 = *(a1 + 8);
    if (v15 < v14)
    {
      if (*(a1 + 12) >= v14)
      {
        if (!v15)
        {
          v15 = 0;
          v24 = *a2;
          v25 = *(a2 + 8);
          if (*(a2 + 8))
          {
LABEL_32:
            v26 = *a1;
            v27 = 32 * v15;
            v28 = 32 * v25;
            do
            {
              v29 = &v26[v27];
              *v29 = &v26[v27 + 16];
              *(v29 + 1) = 0x200000000;
              if (LODWORD(v24[v27 / 8 + 1]))
              {
                llvm::SmallVectorImpl<unsigned long long>::operator=(v29, &v24[v27 / 8]);
              }

              v26 += 32;
              v28 -= 32;
              v24 += 4;
            }

            while (v27 != v28);
            v24 = *a2;
          }

LABEL_37:
          *(a1 + 8) = v14;
          v30 = *v12;
          if (v30)
          {
            v31 = 4 * v30;
            v32 = &v24[v31 - 2];
            v33 = -(v31 * 8);
            do
            {
              v34 = *(v32 - 16);
              if (v32 != v34)
              {
                free(v34);
              }

              v32 -= 32;
              v33 += 32;
            }

            while (v33);
          }

          goto LABEL_12;
        }

        v22 = *a1;
        v23 = 32 * v15;
        do
        {
          llvm::SmallVectorImpl<unsigned long long>::operator=(v22, v5);
          v5 += 4;
          v22 += 32;
          v23 -= 32;
        }

        while (v23);
      }

      else
      {
        if (v15)
        {
          v16 = 32 * v15 + *a1 - 16;
          v17 = -32 * v15;
          do
          {
            v18 = *(v16 - 16);
            if (v16 != v18)
            {
              free(v18);
            }

            v16 -= 32;
            v17 += 32;
          }

          while (v17);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v14);
        v15 = 0;
      }

      v24 = *a2;
      v25 = *(a2 + 8);
      if (v15 != v25)
      {
        goto LABEL_32;
      }

      goto LABEL_37;
    }

    v19 = *a1;
    if (v14)
    {
      v20 = 32 * v14;
      do
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v19, v5);
        v5 += 4;
        v19 += 32;
        v20 -= 32;
      }

      while (v20);
      v21 = *a1 + 32 * *(a1 + 8);
      if (v21 == v19)
      {
LABEL_47:
        *(a1 + 8) = v14;
        v38 = *(a2 + 8);
        if (v38)
        {
          v39 = 32 * v38;
          v40 = v39 + *a2 - 16;
          v41 = -v39;
          do
          {
            v42 = *(v40 - 16);
            if (v40 != v42)
            {
              free(v42);
            }

            v40 -= 32;
            v41 += 32;
          }

          while (v41);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v21 = v19 + 32 * v15;
      if (v21 == v19)
      {
        goto LABEL_47;
      }
    }

    v35 = (v21 - 16);
    do
    {
      v37 = *(v35 - 2);
      if (v35 != v37)
      {
        free(v37);
      }

      v36 = v35 - 16;
      v35 -= 32;
    }

    while (v36 != v19);
    goto LABEL_47;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v16);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x200000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v9, v6);
      }

      v9 += 4;
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 32 * v10;
      v12 = v11 + v6 - 16;
      v13 = -v11;
      do
      {
        v14 = *(v12 - 16);
        if (v12 != v14)
        {
          free(v14);
        }

        v12 -= 32;
        v13 += 32;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v15 = v16;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v15;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v4 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v21);
  v5 = a2;
  v7 = v6;
  v8 = &v6[4 * *(a1 + 8)];
  *v8 = v8 + 2;
  v8[1] = 0x200000000;
  if (*(v5 + 8))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(v8, v5);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = 32 * v10;
    v12 = v7;
    do
    {
      *v12 = v12 + 2;
      v12[1] = 0x200000000;
      if (*(v9 + 8))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v12, v9);
      }

      v12 += 4;
      v9 += 32;
      v11 -= 32;
    }

    while (v11);
    v9 = *a1;
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = 32 * v13;
      v15 = v14 + v9 - 16;
      v16 = -v14;
      do
      {
        v17 = *(v15 - 16);
        if (v15 != v17)
        {
          free(v17);
        }

        v15 -= 32;
        v16 += 32;
      }

      while (v16);
      v9 = *a1;
    }
  }

  v18 = v21;
  if (v9 != v4)
  {
    free(v9);
  }

  *a1 = v7;
  v19 = (*(a1 + 8) + 1);
  *(a1 + 8) = v19;
  *(a1 + 12) = v18;
  return &v7[4 * v19 - 4];
}

void llvm::SmallVectorImpl<long long>::swap(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1 != a1 + 16 && *a2 != a2 + 16)
    {
      *a1 = *a2;
      *a2 = v4;
      v5 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v5;
      v6 = *(a1 + 12);
      *(a1 + 12) = *(a2 + 12);
      *(a2 + 12) = v6;
      return;
    }

    v7 = *(a2 + 8);
    if (*(a1 + 12) < v7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v7, 8);
      v8 = *(a1 + 8);
      if (*(a2 + 12) >= v8)
      {
LABEL_7:
        v9 = v8;
        v10 = *(a2 + 8);
        if (v8 >= v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v8;
        }

        if (!v11)
        {
          goto LABEL_30;
        }

LABEL_17:
        v13 = *a1;
        v14 = *a2;
        if (v11 > 3 && (v13 < v14 + 8 * v11 ? (v15 = v14 >= v13 + 8 * v11) : (v15 = 1), v15))
        {
          v16 = v11 & 0xFFFFFFFC;
          v17 = (v13 + 16);
          v18 = (v14 + 16);
          v19 = v16;
          do
          {
            v20 = *(v17 - 1);
            v21 = *v17;
            v22 = *v18;
            *(v17 - 1) = *(v18 - 1);
            *v17 = v22;
            *(v18 - 1) = v20;
            *v18 = v21;
            v17 += 2;
            v18 += 2;
            v19 -= 4;
          }

          while (v19);
          if (v16 == v11)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v16 = 0;
        }

        v23 = v11 - v16;
        v24 = 8 * v16;
        v25 = (v13 + v24);
        v26 = (v14 + v24);
        do
        {
          v27 = *v25;
          *v25++ = *v26;
          *v26++ = v27;
          --v23;
        }

        while (v23);
LABEL_30:
        if (v10 >= v9)
        {
          if (v10 > v9)
          {
            v29 = v10 - v9;
            memcpy((*a1 + 8 * v9), (*a2 + 8 * v11), 8 * (v10 - v11));
            *(a1 + 8) += v29;
            *(a2 + 8) = v11;
          }
        }

        else
        {
          v28 = v9 - v10;
          memcpy((*a2 + 8 * v10), (*a1 + 8 * v11), 8 * (v9 - v11));
          *(a2 + 8) += v28;
          *(a1 + 8) = v11;
        }

        return;
      }
    }

    else
    {
      v8 = *(a1 + 8);
      if (*(a2 + 12) >= v8)
      {
        goto LABEL_7;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v8, 8);
    v12 = *(a1 + 8);
    v9 = v12;
    v10 = *(a2 + 8);
    if (v12 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v12;
    }

    if (!v11)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v16);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x200000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v9, v6);
      }

      v9 += 4;
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 32 * v10;
      v12 = v11 + v6 - 16;
      v13 = -v11;
      do
      {
        v14 = *(v12 - 16);
        if (v12 != v14)
        {
          free(v14);
        }

        v12 -= 32;
        v13 += 32;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v15 = v16;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v15;
}

void *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>(int **a1, uint64_t a2)
{
  v7 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v7) == 6)
  {
    result = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v7, a2);
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    result = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v7, 0);
    if (!v7)
    {
      return result;
    }
  }

  v5 = *a1;
  result = mlir::AffineDimExpr::getPosition(&v7);
  v6 = *v5;
  if (*v5 <= result)
  {
    v6 = result;
  }

  **a1 = v6;
  return result;
}

void mlir::clone(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v12 = *(a2 + 24);
  v13 = *(a2 + 48);
  v31[0] = mlir::Operation::getAttrDictionary(a2);
  Value = mlir::ArrayAttr::getValue(v31);
  v16 = v15;
  mlir::BlockRange::BlockRange(v30, 0, 0);
  mlir::OperationState::OperationState(v31, v12, v13, a5, a6, a3, a4, v17, Value, v16, v30[0], v30[1], 0, 0);
  v18 = *(a2 + 44);
  if ((v18 & 0x7FFFFF) != 0)
  {
    v19 = (((a2 + 16 * ((v18 >> 23) & 1) + ((v18 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    v20 = 24 * (v18 & 0x7FFFFF);
    do
    {
      v21 = mlir::OperationState::addRegion(v31);
      mlir::OpBuilder::cloneRegionBefore(a1, v19, v21, *(v21 + 8), v22);
      v19 = (v19 + 24);
      v20 -= 24;
    }

    while (v20);
  }

  mlir::OpBuilder::create(a1, v31);
  mlir::OperationState::~OperationState(v31);
  llvm::deallocate_buffer(v27, (16 * v29));
}

void mlir::getPrunedAttributeList(mlir::Operation *a1@<X0>, uint64_t a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = 0;
  v30 = 0;
  v31 = 0x800000000;
  if (a3)
  {
    v6 = a2;
    v7 = a2 + 16 * a3;
    do
    {
      v8 = *v6;
      v9 = *(v6 + 8);
      v6 += 16;
      v10 = llvm::StringMapImpl::hash(v8, v9, a3);
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(&v29, v8, v9, v10);
    }

    while (v6 != v7);
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x300000000;
  *&v28 = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&v28);
  if (v12)
  {
    v13 = Value;
    v14 = 16 * v12;
    do
    {
      v28 = *v13;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(&v28);
      AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
      v19 = v18;
      v21 = llvm::StringMapImpl::hash(AttrData, v18, v20);
      Key = llvm::StringMapImpl::FindKey(&v29, AttrData, v19, v21);
      if (Key == -1 || Key == v30)
      {
        v15 = v28;
        v16 = *(a4 + 8);
        if (v16 >= *(a4 + 12))
        {
          v26 = v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v16 + 1, 16);
          v15 = v26;
          v16 = *(a4 + 8);
        }

        *(*a4 + 16 * v16) = v15;
        ++*(a4 + 8);
      }

      ++v13;
      v14 -= 16;
    }

    while (v14);
  }

  if (HIDWORD(v30) && v30)
  {
    v23 = 0;
    do
    {
      v24 = *(v29 + v23);
      if (v24 != -8 && v24 != 0)
      {
        llvm::deallocate_buffer(v24, (*v24 + 9));
      }

      v23 += 8;
    }

    while (8 * v30 != v23);
  }

  free(v29);
}

BOOL mlir::isZeroIndex(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0;
  }

  v1 = mlir::getConstantIntValue(a1) == 0;
  return (v2 & 1) != 0 && v1;
}

unint64_t mlir::getConstantIntValue(uint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v1)
  {
    v12 = 1;
    v13 = 0;
    p_p = &__p;
    __p = 0;
    v14 = a1 & 0xFFFFFFFFFFFFFFF8;
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    if (DefiningOp)
    {
      v15 = &v16;
      v16 = 0;
      if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v15, DefiningOp))
      {
        v3 = *(*(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
        v5 = v4 || v3 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
        v6 = v5 || v3 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
        if (v6 && mlir::detail::constant_int_value_binder::match(&p_p, v16))
        {
          if (v12 > 0x40)
          {
            DefiningOp = *__p;
          }

          else if (v12)
          {
            DefiningOp = (__p << -v12) >> -v12;
          }

          else
          {
            DefiningOp = 0;
          }

          v8 = DefiningOp & 0xFFFFFFFFFFFFFF00;
          if (v12 < 0x41)
          {
            return v8 | DefiningOp;
          }

LABEL_29:
          if (__p)
          {
            operator delete[](__p);
          }

          return v8 | DefiningOp;
        }
      }

      LOBYTE(DefiningOp) = 0;
    }

    v8 = 0;
    if (v12 < 0x41)
    {
      return v8 | DefiningOp;
    }

    goto LABEL_29;
  }

  if (!v1 || (a1 & 4) != 0)
  {
    goto LABEL_26;
  }

  v7 = *(*v1 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v1 = 0;
  }

  v16 = v1;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    mlir::IntegerAttr::getValue(&v16, &__p);
    if (v12 > 0x40)
    {
      DefiningOp = *__p;
      operator delete[](__p);
    }

    else if (v12)
    {
      DefiningOp = (__p << -v12) >> -v12;
    }

    else
    {
      DefiningOp = 0;
    }

    v8 = DefiningOp & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_26:
    LOBYTE(DefiningOp) = 0;
    v8 = 0;
  }

  return v8 | DefiningOp;
}

void mlir::dispatchIndexOpFoldResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v4)
  {
    v5 = *(a2 + 8);
    if (v5 >= *(a2 + 12))
    {
      v9 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v5 + 1, 8);
      a2 = v9;
      LODWORD(v5) = *(v9 + 8);
    }

    *(*a2 + 8 * v5) = v4;
    ++*(a2 + 8);
    v6 = *(a3 + 8);
    if (v6 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v6 + 1, 8);
      LODWORD(v6) = *(a3 + 8);
    }

    *(*a3 + 8 * v6) = 0x8000000000000000;
    ++*(a3 + 8);
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFFFF8;
    mlir::IntegerAttr::getValue(&v10, &__p);
    if (v12 > 0x40)
    {
      v7 = *__p;
    }

    else if (v12)
    {
      v7 = (__p << -v12) >> -v12;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a3 + 8);
    if (v8 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v8 + 1, 8);
      LODWORD(v8) = *(a3 + 8);
    }

    *(*a3 + 8 * v8) = v7;
    ++*(a3 + 8);
    if (v12 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }
}

void mlir::dispatchIndexOpFoldResults(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = 8 * a2;
    do
    {
      v8 = *a1++;
      mlir::dispatchIndexOpFoldResult(v8, a3, a4);
      v7 -= 8;
    }

    while (v7);
  }
}

unint64_t mlir::getAsOpFoldResult(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = &v4;
    v4 = 0;
    v5 = result;
    DefiningOp = mlir::Value::getDefiningOp(&v5);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::Attribute>::match(&v3, DefiningOp))
    {
      return v4 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      return v1 | 4;
    }
  }

  return result;
}

uint64_t mlir::getAsOpFoldResult@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  v17 = *MEMORY[0x1E69E9840];
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (a2 < 7)
  {
    v15 = result;
    v16 = xmmword_1E0971960;
    if (!a2)
    {
      v11 = 0;
      goto LABEL_14;
    }

    v6 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 2), a2, 8);
    v6 = *(a3 + 2);
    v15 = v4;
    v16 = xmmword_1E0971960;
  }

  v7 = 0;
  v8 = (*a3 + 8 * v6);
  do
  {
    result = mlir::ValueRange::dereference_iterator(&v15, v7);
    if (result)
    {
      v10 = result;
      v12 = &v13;
      v13 = 0;
      v14 = result;
      result = mlir::Value::getDefiningOp(&v14);
      if (result && (result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, result), result))
      {
        v9 = v13 & 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v9 = v10 | 4;
      }
    }

    else
    {
      v9 = 0;
    }

    *v8++ = v9;
    v7 = v16 + 1;
    *&v16 = v7;
  }

  while (v7 != a2);
  v11 = *(a3 + 2);
LABEL_14:
  *(a3 + 2) = v11 + a2;
  return result;
}

uint64_t mlir::isEqualConstantIntOrValue(uint64_t a1, uint64_t a2)
{
  ConstantIntValue = mlir::getConstantIntValue(a1);
  v6 = v5;
  v7 = mlir::getConstantIntValue(a2);
  if ((v6 & 1) != 0 && (v8 & 1) != 0 && ConstantIntValue == v7)
  {
    return 1;
  }

  v10 = (a1 & 0xFFFFFFFFFFFFFFF8) != 0 && (a1 & 0xFFFFFFFFFFFFFFF8) == (a2 & (a2 << 61 >> 63) & 0xFFFFFFFFFFFFFFF8);
  return (a1 & 4) != 0 && v10;
}

void mlir::getMixedValues(void **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v7) = a2;
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a3;
  v16[1] = a4;
  v10 = a6 + 16;
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, v10, a2, 8);
  }

  v7 = v7;
  if (v7)
  {
    v11 = 0;
    do
    {
      v13 = *a1++;
      v12 = v13;
      if (v13 == 0x8000000000000000)
      {
        v14 = mlir::ValueRange::dereference_iterator(v16, v11++) | 4;
      }

      else
      {
        v14 = mlir::Builder::getI64IntegerAttr(a5, v12) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v15 = *(a6 + 8);
      if (v15 >= *(a6 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6, v10, v15 + 1, 8);
        v15 = *(a6 + 8);
      }

      *(*a6 + 8 * v15) = v14;
      ++*(a6 + 8);
      --v7;
    }

    while (v7);
  }
}

void mlir::decomposeMixedValues(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[6] = *MEMORY[0x1E69E9840];
  __src = v24;
  v23 = 0x600000000;
  v19 = v21;
  v20 = 0x600000000;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      while ((*v4 & 4) != 0)
      {
        v9 = v23;
        if (v23 >= HIDWORD(v23))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v23 + 1, 8);
          v9 = v23;
        }

        *(__src + v9) = 0x8000000000000000;
        LODWORD(v23) = v23 + 1;
        v10 = *v4;
        v11 = v20;
        if (v20 >= HIDWORD(v20))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 8);
          v11 = v20;
        }

        *(v19 + v11) = v10 & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v20) = v20 + 1;
        ++v4;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      v18 = *v4 & 0xFFFFFFFFFFFFFFF8;
      Int = mlir::IntegerAttr::getInt(&v18);
      v7 = v23;
      if (v23 >= HIDWORD(v23))
      {
        v8 = Int;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v23 + 1, 8);
        Int = v8;
        v7 = v23;
      }

      *(__src + v7) = Int;
      LODWORD(v23) = v23 + 1;
      ++v4;
      v5 -= 8;
    }

    while (v5);
LABEL_12:
    v12 = v23;
    v13 = (a2 + 16);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (&__src != a2 && v12)
    {
      if (v12 < 7)
      {
        v14 = v12;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v12, 8);
        v14 = v23;
        if (!v23)
        {
LABEL_20:
          *(a2 + 8) = v12;
          goto LABEL_21;
        }

        v13 = *a2;
      }

      memcpy(v13, __src, 8 * v14);
      goto LABEL_20;
    }
  }

  else
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
  }

LABEL_21:
  v15 = (a2 + 80);
  *(a2 + 64) = a2 + 80;
  *(a2 + 72) = 0x600000000;
  if ((a2 + 64) != &v19)
  {
    v16 = v20;
    if (v20)
    {
      if (v20 < 7)
      {
        v17 = v20;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20, 8);
        v17 = v20;
        if (!v20)
        {
LABEL_28:
          *(a2 + 72) = v16;
          goto LABEL_29;
        }

        v15 = *(a2 + 64);
      }

      memcpy(v15, v19, 8 * v17);
      goto LABEL_28;
    }
  }

LABEL_29:
  if (v19 != v21)
  {
    free(v19);
  }

  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::constantTripCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  ConstantIntValue = mlir::getConstantIntValue(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = ConstantIntValue;
  v9 = mlir::getConstantIntValue(a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = mlir::getConstantIntValue(a3);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v11 - v8;
  if (v11 != v8)
  {
    if ((v12 ^ v14) < 0)
    {
      v14 /= v12;
    }

    else
    {
      if (v12 < 0)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v14 - 1;
      }

      return v15 / v12 + 1;
    }
  }

  return v14;
}

BOOL mlir::hasValidSizesOffsets(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = *a1;
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    result = v4 < 0x8000000000000001;
    v6 = v4 > 0x8000000000000000 || v3 == 0;
    v3 -= 8;
  }

  while (!v6);
  return result;
}

BOOL mlir::hasValidStrides(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = *a1;
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    result = v4 != 0;
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    v3 -= 8;
  }

  while (!v6);
  return result;
}

uint64_t mlir::foldDynamicIndexList(uint64_t a1, int a2, char a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = 0;
    v6 = 8 * v3;
    if (a2)
    {
      if (a3)
      {
        do
        {
          v7 = *v4;
          if ((*v4 & 4) != 0)
          {
            v16 = &v17;
            v17 = 0;
            v18 = v7 & 0xFFFFFFFFFFFFFFF8;
            DefiningOp = mlir::Value::getDefiningOp(&v18);
            if (DefiningOp)
            {
              if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, DefiningOp) && (mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0 && mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL))
              {
                *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
                v5 = 1;
              }
            }
          }

          ++v4;
          v6 -= 8;
        }

        while (v6);
      }

      else
      {
        do
        {
          v9 = *v4;
          if ((*v4 & 4) != 0)
          {
            v16 = &v17;
            v17 = 0;
            v18 = v9 & 0xFFFFFFFFFFFFFFF8;
            v10 = mlir::Value::getDefiningOp(&v18);
            if (v10)
            {
              if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v10) && (mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0)
              {
                *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
                v5 = 1;
              }
            }
          }

          ++v4;
          v6 -= 8;
        }

        while (v6);
      }
    }

    else if (a3)
    {
      do
      {
        v12 = *v4;
        if ((*v4 & 4) != 0)
        {
          v16 = &v17;
          v17 = 0;
          v18 = v12 & 0xFFFFFFFFFFFFFFF8;
          v13 = mlir::Value::getDefiningOp(&v18);
          if (v13)
          {
            if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v13) && mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL))
            {
              *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
              v5 = 1;
            }
          }
        }

        ++v4;
        v6 -= 8;
      }

      while (v6);
    }

    else
    {
      do
      {
        v14 = *v4;
        if ((*v4 & 4) != 0)
        {
          v16 = &v17;
          v17 = 0;
          v18 = v14 & 0xFFFFFFFFFFFFFFF8;
          v15 = mlir::Value::getDefiningOp(&v18);
          if (v15)
          {
            if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v15))
            {
              *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
              v5 = 1;
            }
          }
        }

        ++v4;
        v6 -= 8;
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::foldDynamicOffsetSizeList(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = 8 * v1;
    do
    {
      v5 = *v3;
      if ((*v3 & 4) != 0)
      {
        v8 = &v9;
        v9 = 0;
        v10 = v5 & 0xFFFFFFFFFFFFFFF8;
        DefiningOp = mlir::Value::getDefiningOp(&v10);
        if (DefiningOp)
        {
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v8, DefiningOp) && (mlir::getConstantIntValue(v9 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0)
          {
            *v3 = v9 & 0xFFFFFFFFFFFFFFFBLL;
            v2 = 1;
          }
        }
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t mlir::foldDynamicStrideList(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = 8 * v1;
    do
    {
      v5 = *v3;
      if ((*v3 & 4) != 0)
      {
        v8 = &v9;
        v9 = 0;
        v10 = v5 & 0xFFFFFFFFFFFFFFF8;
        DefiningOp = mlir::Value::getDefiningOp(&v10);
        if (DefiningOp)
        {
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v8, DefiningOp) && mlir::getConstantIntValue(v9 & 0xFFFFFFFFFFFFFFFBLL))
          {
            *v3 = v9 & 0xFFFFFFFFFFFFFFFBLL;
            v2 = 1;
          }
        }
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t mlir::func::FuncDialect::initialize(mlir::func::FuncDialect *this)
{
  mlir::RegisteredOperationName::insert<mlir::func::CallIndirectOp>(this);
  mlir::RegisteredOperationName::insert<mlir::func::CallOp>(this);
  mlir::RegisteredOperationName::insert<mlir::func::ConstantOp>(this);
  mlir::RegisteredOperationName::insert<mlir::func::FuncOp>(this);
  mlir::RegisteredOperationName::insert<mlir::func::ReturnOp>(this);
  {
    mlir::arith::ArithDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 72, &v3, v5);
  {
    mlir::arith::ArithDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 72, &v3, v5);
  return mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::func::CallOp,mlir::func::FuncOp,mlir::func::ReturnOp>(this);
}

mlir::func::FuncDialect *mlir::func::FuncDialect::FuncDialect(mlir::func::FuncDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "func", 4, a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id);
  *v3 = &unk_1F5AF4DF8;
  mlir::func::FuncDialect::initialize(v3);
  return this;
}

void sub_1DFB2E70C(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::func::CallOp,mlir::func::FuncOp,mlir::func::ReturnOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::func::FuncDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v13 = v5;
  if (!v5)
  {
    return 0;
  }

  mlir::OpaqueAttr::getAttrData(&v13);
  if (v10 || *(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    return 0;
  }

  v13 = a3;
  return mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(a2, a5, &v12, &v13);
}

uint64_t mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::func::ConstantOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id)
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

uint64_t mlir::func::CallOp::verifySymbolUses(mlir::Operation **a1, uint64_t a2)
{
  v134 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!*(*a1 + 47) || (v135.var0 = "callee", v135.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(*a1, v135), (v6 & 1) == 0))
  {
    v136.var0 = "callee";
    v136.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((v4 + 56), v136);
  }

  if (!InherentAttr || (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v7 = 0) : (v7 = InherentAttr), (v122 = v7) == 0))
  {
    v117 = 0;
    goto LABEL_39;
  }

  v8 = InherentAttr;
  mlir::OpaqueAttr::getAttrData(&v122);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v117 = v10;
  if (!v10)
  {
LABEL_39:
    Value = "requires a 'callee' symbol reference attribute";
    v121 = 259;
    mlir::OpState::emitOpError(a1, &Value, &v122);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v122);
    if (v122)
    {
      mlir::InFlightDiagnostic::report(&v122);
    }

    if (v133 == 1)
    {
      if (v132 != &v133)
      {
        free(v132);
      }

      v31 = v130;
      if (v130)
      {
        v32 = v131;
        v33 = v130;
        if (v131 != v130)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = v130;
        }

        v131 = v31;
        operator delete(v33);
      }

      v26 = v128;
      if (!v128)
      {
        goto LABEL_141;
      }

      v34 = v129;
      v28 = v128;
      if (v129 == v128)
      {
        goto LABEL_140;
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

      while (v34 != v26);
      goto LABEL_139;
    }

    return v22;
  }

  v11 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, *a1, v10);
  if (!v11 || *(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v116 = 257;
    mlir::OpState::emitOpError(a1, &v113, &v122);
    if (v122)
    {
      LODWORD(Value) = 3;
      v119 = "'";
      v120 = 1;
      v12 = &Value;
      v13 = v124;
      if (v125 >= v126)
      {
        if (v124 <= &Value && &v124[3 * v125] > &Value)
        {
          v104 = &Value - v124;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v125 + 1, 24);
          v13 = v124;
          v12 = (v124 + v104);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v125 + 1, 24);
          v12 = &Value;
          v13 = v124;
        }
      }

      v14 = &v13[3 * v125];
      v15 = *v12;
      v14[2] = v12[2];
      *v14 = v15;
      ++v125;
    }

    Value = mlir::AffineMapAttr::getValue(&v117);
    AttrData = mlir::OpaqueAttr::getAttrData(&Value);
    if (v122)
    {
      v121 = 261;
      Value = AttrData;
      v119 = v17;
      mlir::Diagnostic::operator<<(v123, &Value);
      if (v122)
      {
        LODWORD(Value) = 3;
        v119 = "' does not reference a valid function";
        v120 = 37;
        p_Value = &Value;
        v19 = v124;
        if (v125 >= v126)
        {
          if (v124 <= &Value && &v124[3 * v125] > &Value)
          {
            v105 = &Value - v124;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v125 + 1, 24);
            v19 = v124;
            p_Value = (v124 + v105);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v125 + 1, 24);
            p_Value = &Value;
            v19 = v124;
          }
        }

        v20 = &v19[3 * v125];
        v21 = *p_Value;
        v20[2] = p_Value[2];
        *v20 = v21;
        ++v125;
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v122);
    if (v122)
    {
      mlir::InFlightDiagnostic::report(&v122);
    }

    if (v133 == 1)
    {
      if (v132 != &v133)
      {
        free(v132);
      }

      v23 = v130;
      if (v130)
      {
        v24 = v131;
        v25 = v130;
        if (v131 != v130)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = v130;
        }

        v131 = v23;
        operator delete(v25);
      }

      v26 = v128;
      if (!v128)
      {
        goto LABEL_141;
      }

      v27 = v129;
      v28 = v128;
      if (v129 == v128)
      {
LABEL_140:
        v129 = v26;
        operator delete(v28);
LABEL_141:
        if (v124 != v127)
        {
          free(v124);
        }

        return v22;
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
LABEL_139:
      v28 = v128;
      goto LABEL_140;
    }

    return v22;
  }

  v122 = *(v11 + 16 * ((*(v11 + 44) >> 23) & 1) + 72);
  v112 = mlir::AffineMapAttr::getValue(&v122);
  v37 = mlir::arith::FastMathFlagsAttr::getValue(&v112);
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    if (v37 == *(*a1 + 17))
    {
      goto LABEL_57;
    }

LABEL_123:
    Value = "incorrect number of operands for callee";
    v121 = 259;
    mlir::OpState::emitOpError(a1, &Value, &v122);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v122);
    if (v122)
    {
      mlir::InFlightDiagnostic::report(&v122);
    }

    if (v133 == 1)
    {
      if (v132 != &v133)
      {
        free(v132);
      }

      v97 = v130;
      if (v130)
      {
        v98 = v131;
        v99 = v130;
        if (v131 != v130)
        {
          do
          {
            v98 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v98 - 1);
          }

          while (v98 != v97);
          v99 = v130;
        }

        v131 = v97;
        operator delete(v99);
      }

      v26 = v128;
      if (!v128)
      {
        goto LABEL_141;
      }

      v100 = v129;
      v28 = v128;
      if (v129 == v128)
      {
        goto LABEL_140;
      }

      do
      {
        v102 = *--v100;
        v101 = v102;
        *v100 = 0;
        if (v102)
        {
          operator delete[](v101);
        }
      }

      while (v100 != v26);
      goto LABEL_139;
    }

    return v22;
  }

  if (v37)
  {
    goto LABEL_123;
  }

LABEL_57:
  v38 = mlir::arith::FastMathFlagsAttr::getValue(&v112);
  if (!v38)
  {
LABEL_61:
    if (mlir::FunctionType::getNumResults(&v112) != *(*a1 + 9))
    {
      Value = "incorrect number of results for callee";
      v121 = 259;
      mlir::OpState::emitOpError(a1, &Value, &v122);
      v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v122);
      if (v122)
      {
        mlir::InFlightDiagnostic::report(&v122);
      }

      if (v133 == 1)
      {
        mlir::Diagnostic::~Diagnostic(v123);
      }

      return v22;
    }

    v111 = 0;
    NumResults = mlir::FunctionType::getNumResults(&v112);
    if (NumResults)
    {
      v44 = NumResults;
      v45 = *(*a1 - 1) & 0xFFFFFFFFFFFFFFF8;
      if (*mlir::FunctionType::getResults(&v112) != v45)
      {
LABEL_64:
        v113 = "result type mismatch at index ";
        v116 = 259;
        mlir::OpState::emitOpError(a1, &v113, &Value);
        mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&Value, &v111);
        mlir::InFlightDiagnostic::InFlightDiagnostic(&v122, v46);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
        v47 = mlir::Diagnostic::attachNote(v123, 0, 0);
        mlir::Diagnostic::operator<<(v47, "      op result types: ");
        v49 = v48;
        v50 = *(*a1 + 9);
        v51 = *a1 - 16;
        if (!v50)
        {
          v51 = 0;
        }

        v113 = v51;
        v114 = v50;
        mlir::OperandRange::getTypes(&v113, &Value);
        mlir::Diagnostic::operator<<<mlir::ValueTypeRange<mlir::ResultRange>,mlir::Type>(v49, &Value);
        v52 = mlir::Diagnostic::attachNote(v123, 0, 0);
        mlir::Diagnostic::operator<<(v52, "function result types: ");
        v54 = v53;
        Results = mlir::FunctionType::getResults(&v112);
        Value = ", ";
        llvm::interleave<mlir::Type const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(llvm::SmallVector<mlir::Type,4u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(void)#1},void>(Results, &Results[v56], v54, v54, &Value);
        v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v122);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v122);
        return v22;
      }

      v111 = 1;
      if (v44 != 1)
      {
        v88 = *(*a1 - 3) & 0xFFFFFFFFFFFFFFF8;
        if (*(mlir::FunctionType::getResults(&v112) + 8) != v88)
        {
          goto LABEL_64;
        }

        v111 = 2;
        if (v44 != 2)
        {
          v89 = *(*a1 - 5) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::FunctionType::getResults(&v112) + 16) != v89)
          {
            goto LABEL_64;
          }

          v111 = 3;
          if (v44 != 3)
          {
            v90 = *(*a1 - 7) & 0xFFFFFFFFFFFFFFF8;
            if (*(mlir::FunctionType::getResults(&v112) + 24) != v90)
            {
              goto LABEL_64;
            }

            v111 = 4;
            if (v44 != 4)
            {
              v91 = *(*a1 - 9) & 0xFFFFFFFFFFFFFFF8;
              if (*(mlir::FunctionType::getResults(&v112) + 32) != v91)
              {
                goto LABEL_64;
              }

              v111 = 5;
              if (v44 != 5)
              {
                v92 = *(*a1 - 11) & 0xFFFFFFFFFFFFFFF8;
                if (*(mlir::FunctionType::getResults(&v112) + 40) != v92)
                {
                  goto LABEL_64;
                }

                v111 = 6;
                if (v44 != 6)
                {
                  v93 = 6;
                  while (1)
                  {
                    v94 = v93 + 1;
                    v95 = *a1 - 16 * v93 - 16;
                    if (v93 > 5)
                    {
                      v95 = *a1 - 24 * v93 + 24;
                    }

                    v96 = *(v95 + 8) & 0xFFFFFFFFFFFFFFF8;
                    if (*(mlir::FunctionType::getResults(&v112) + 8 * v93) != v96)
                    {
                      break;
                    }

                    v111 = ++v93;
                    if (v44 == v94)
                    {
                      return 1;
                    }
                  }

                  goto LABEL_64;
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  v39 = 0;
  v40 = v38;
  v41 = 24;
  while (1)
  {
    v42 = *(*(*(*a1 + 9) + v41) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::FunctionType::getInputs(&v112) + 8 * v39) != v42)
    {
      break;
    }

    ++v39;
    v41 += 32;
    if (v40 == v39)
    {
      goto LABEL_61;
    }
  }

  Value = "operand type mismatch: expected operand type ";
  v121 = 259;
  mlir::OpState::emitOpError(a1, &Value, &v122);
  Inputs = mlir::FunctionType::getInputs(&v112);
  if (v122)
  {
    v58 = &v113;
    mlir::DiagnosticArgument::DiagnosticArgument(&v113, *(Inputs + 8 * v39));
    v59 = v124;
    if (v125 >= v126)
    {
      if (v124 <= &v113 && &v124[3 * v125] > &v113)
      {
        v106 = &v113 - v124;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v125 + 1, 24);
        v59 = v124;
        v58 = (v124 + v106);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v125 + 1, 24);
        v58 = &v113;
        v59 = v124;
      }
    }

    v60 = &v59[3 * v125];
    v61 = *v58;
    v60[2] = v58[2];
    *v60 = v61;
    v62 = ++v125;
    if (v122)
    {
      LODWORD(v113) = 3;
      v114 = ", but provided ";
      v115 = 15;
      v63 = &v113;
      v64 = v124;
      if (v62 >= v126)
      {
        if (v124 <= &v113 && &v124[3 * v62] > &v113)
        {
          v107 = &v113 - v124;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v62 + 1, 24);
          v64 = v124;
          v63 = (v124 + v107);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v62 + 1, 24);
          v63 = &v113;
          v64 = v124;
        }
      }

      v65 = &v64[3 * v125];
      v66 = *v63;
      v65[2] = v63[2];
      *v65 = v66;
      ++v125;
      if (v122)
      {
        v67 = *(*(*(*a1 + 9) + v41) + 8);
        v68 = &v113;
        mlir::DiagnosticArgument::DiagnosticArgument(&v113, v67 & 0xFFFFFFFFFFFFFFF8);
        v69 = v124;
        if (v125 >= v126)
        {
          if (v124 <= &v113 && &v124[3 * v125] > &v113)
          {
            v108 = &v113 - v124;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v125 + 1, 24);
            v69 = v124;
            v68 = (v124 + v108);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v125 + 1, 24);
            v68 = &v113;
            v69 = v124;
          }
        }

        v70 = &v69[3 * v125];
        v71 = *v68;
        v70[2] = v68[2];
        *v70 = v71;
        v72 = ++v125;
        if (v122)
        {
          LODWORD(v113) = 3;
          v114 = " for operand number ";
          v115 = 20;
          v73 = &v113;
          v74 = v124;
          if (v72 >= v126)
          {
            if (v124 <= &v113 && &v124[3 * v72] > &v113)
            {
              v109 = &v113 - v124;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v72 + 1, 24);
              v74 = v124;
              v73 = (v124 + v109);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v72 + 1, 24);
              v73 = &v113;
              v74 = v124;
            }
          }

          v75 = &v74[3 * v125];
          v76 = *v73;
          v75[2] = v73[2];
          *v75 = v76;
          v77 = ++v125;
          if (v122)
          {
            LODWORD(v113) = 5;
            v114 = v39;
            v78 = &v113;
            v79 = v124;
            if (v77 >= v126)
            {
              if (v124 <= &v113 && &v124[3 * v77] > &v113)
              {
                v110 = &v113 - v124;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v77 + 1, 24);
                v79 = v124;
                v78 = (v124 + v110);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v127, v77 + 1, 24);
                v78 = &v113;
                v79 = v124;
              }
            }

            v80 = &v79[3 * v125];
            v81 = *v78;
            v80[2] = v78[2];
            *v80 = v81;
            ++v125;
          }
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v122);
  if (v122)
  {
    mlir::InFlightDiagnostic::report(&v122);
  }

  if (v133)
  {
    if (v132 != &v133)
    {
      free(v132);
    }

    v82 = v130;
    if (v130)
    {
      v83 = v131;
      v84 = v130;
      if (v131 != v130)
      {
        do
        {
          v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
        }

        while (v83 != v82);
        v84 = v130;
      }

      v131 = v82;
      operator delete(v84);
    }

    v26 = v128;
    if (!v128)
    {
      goto LABEL_141;
    }

    v85 = v129;
    v28 = v128;
    if (v129 == v128)
    {
      goto LABEL_140;
    }

    do
    {
      v87 = *--v85;
      v86 = v87;
      *v85 = 0;
      if (v87)
      {
        operator delete[](v86);
      }
    }

    while (v85 != v26);
    goto LABEL_139;
  }

  return v22;
}

uint64_t mlir::Diagnostic::operator<<<mlir::ValueTypeRange<mlir::ResultRange>,mlir::Type>(uint64_t a1, uint64_t *a2)
{
  v4 = ", ";
  llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(*a2, a2[1], a2[2], a2[3], a1, a1, &v4);
  return a1;
}

uint64_t mlir::func::CallIndirectOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = *(*(a1 + 72) + 24);
  v13 = &v12;
  v11[0] = v4;
  result = mlir::Value::getDefiningOp(v11);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::SymbolRefAttr>::match(&v13, result);
    if (result)
    {
      v6 = *(a1 + 36);
      v7 = (a1 - 16);
      if (!v6)
      {
        v7 = 0;
      }

      v13 = v7;
      v14 = v6;
      mlir::OperandRange::getTypes(&v13, v11);
      if ((*(a1 + 46) & 0x80) != 0)
      {
        v8 = *(a1 + 72);
        v9 = *(a1 + 68) - 1;
      }

      else
      {
        v8 = 0;
        v9 = -1;
      }

      v13 = (v8 + 32);
      v14 = v9;
      v10 = mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v12, v11, &v13);
      (*(*a2 + 8))(a2, a1, v10);
      return 1;
    }
  }

  return result;
}

uint64_t mlir::func::ConstantOp::verifySymbolUses(uint64_t *a1, mlir::SymbolTableCollection *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v40 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v40);
  AttrData = mlir::OpaqueAttr::getAttrData(&Value);
  v6 = v5;
  v7 = *a1;
  v8 = *(*a1 - 8);
  Context = mlir::Attribute::getContext((*a1 + 24));
  LOWORD(v47) = 261;
  Value = AttrData;
  v45 = v6;
  v10 = mlir::StringAttr::get(Context, &Value);
  v11 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, v7, v10);
  if (v11 && *(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    Value = *(v11 + 2 * ((*(v11 + 11) >> 23) & 1) + 9);
    if (mlir::AffineMapAttr::getValue(&Value) == (v8 & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v40 = "reference to function with mismatched type";
    v43 = 259;
    mlir::OpState::emitOpError(a1, &v40, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v53;
        v31 = __p;
        if (v53 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v53 = v29;
        operator delete(v31);
      }

      v24 = v50;
      if (!v50)
      {
        goto LABEL_45;
      }

      v32 = v51;
      v26 = v50;
      if (v51 == v50)
      {
        goto LABEL_44;
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
      goto LABEL_43;
    }
  }

  else
  {
    v39 = 257;
    mlir::OpState::emitOpError(a1, &v38, &Value);
    if (Value)
    {
      LODWORD(v40) = 3;
      v41 = "reference to undefined function '";
      v42 = 33;
      v12 = &v40;
      v13 = v46;
      if (v47 >= v48)
      {
        if (v46 <= &v40 && v46 + 24 * v47 > &v40)
        {
          v36 = &v40 - v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
          v13 = v46;
          v12 = (v46 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
          v12 = &v40;
          v13 = v46;
        }
      }

      v14 = &v13[24 * v47];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      ++v47;
      if (Value)
      {
        v43 = 261;
        v40 = AttrData;
        v41 = v6;
        mlir::Diagnostic::operator<<(&v45, &v40);
        if (Value)
        {
          LODWORD(v40) = 3;
          v41 = "'";
          v42 = 1;
          v16 = &v40;
          v17 = v46;
          if (v47 >= v48)
          {
            if (v46 <= &v40 && v46 + 24 * v47 > &v40)
            {
              v37 = &v40 - v46;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
              v17 = v46;
              v16 = (v46 + v37);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
              v16 = &v40;
              v17 = v46;
            }
          }

          v18 = &v17[24 * v47];
          v19 = *v16;
          *(v18 + 2) = v16[2];
          *v18 = v19;
          ++v47;
        }
      }
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v53;
        v23 = __p;
        if (v53 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v53 = v21;
        operator delete(v23);
      }

      v24 = v50;
      if (!v50)
      {
        goto LABEL_45;
      }

      v25 = v51;
      v26 = v50;
      if (v51 == v50)
      {
LABEL_44:
        v51 = v24;
        operator delete(v26);
LABEL_45:
        if (v46 != v49)
        {
          free(v46);
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
LABEL_43:
      v26 = v50;
      goto LABEL_44;
    }
  }

  return v20;
}