uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ReturnOp>,mlir::OpTrait::ZeroResults<mlir::func::ReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ReturnOp>,mlir::OpTrait::VariadicOperands<mlir::func::ReturnOp>,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>,mlir::OpTrait::OpInvariants<mlir::func::ReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::ReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::ReturnLike<mlir::func::ReturnOp>,mlir::OpTrait::IsTerminator<mlir::func::ReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getEffects;
  {
    v10 = v4;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getMutableSuccessorOperands;
  v6[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions;
  {
    v11 = v6;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
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
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
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
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<Empty>]";
  v6 = 107;
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

const char *llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionBranchTerminatorOpInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ReturnLike<Empty>]";
  v6 = 82;
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

BOOL mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>::verifyTrait(a1) & 1) == 0 || !mlir::OpTrait::impl::verifyIsTerminator(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::func::ReturnOp::verify(&v7);
}

uint64_t mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>::verifyTrait(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        return 1;
      }
    }
  }

  v30 = 257;
  mlir::Operation::emitOpError(a1, &v29, &v36);
  if (!v36)
  {
    goto LABEL_12;
  }

  LODWORD(v31) = 3;
  v32 = "expects parent op ";
  v33 = 18;
  v3 = &v31;
  v4 = v38;
  if (v39 >= v40)
  {
    if (v38 <= &v31 && v38 + 24 * v39 > &v31)
    {
      v26 = &v31 - v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v4 = v38;
      v3 = (v38 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v3 = &v31;
      v4 = v38;
    }
  }

  v5 = &v4[24 * v39];
  v6 = *v3;
  *(v5 + 2) = v3[2];
  *v5 = v6;
  v7 = ++v39;
  if (v36)
  {
    LODWORD(v31) = 3;
    v32 = "'";
    v33 = 1;
    v8 = &v31;
    v9 = v38;
    if (v7 >= v40)
    {
      if (v38 <= &v31 && v38 + 24 * v7 > &v31)
      {
        v27 = &v31 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v9 = v38;
        v8 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v8 = &v31;
        v9 = v38;
      }
    }

    v10 = &v9[24 * v39];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v39;
    v34 = "func.func";
    v35 = 9;
    if (v36)
    {
      v31 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v37, v37, &v31);
      if (v36)
      {
        LODWORD(v31) = 3;
        v32 = "'";
        v33 = 1;
        v12 = &v31;
        v13 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v31 && v38 + 24 * v39 > &v31)
          {
            v28 = &v31 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v13 = v38;
            v12 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = &v31;
            v13 = v38;
          }
        }

        v14 = &v13[24 * v39];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v39;
      }
    }
  }

  else
  {
LABEL_12:
    v34 = "func.func";
    v35 = 9;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v20 = v42;
    if (v42)
    {
      v21 = v43;
      v22 = v42;
      if (v43 != v42)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v21 != v20);
        v22 = v42;
      }

      v43 = v20;
      operator delete(v22);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v16;
}

uint64_t llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (result != a2)
  {
    v28 = v5;
    v29 = v6;
    v27 = 262;
    v11 = *(result + 8);
    v24 = *result;
    v25 = v11;
    v12 = result;
    result = mlir::Diagnostic::operator<<(a3, &v24);
    for (i = v12 + 16; i != a2; result = mlir::Diagnostic::operator<<(a3, &v24))
    {
      v14 = *a5;
      if (*a5)
      {
        v15 = strlen(*a5);
        LODWORD(v24) = 3;
        v25 = v14;
        v26 = v15;
        v16 = *(a4 + 24);
        v17 = *(a4 + 16);
        if (v16 < *(a4 + 28))
        {
          goto LABEL_7;
        }
      }

      else
      {
        LODWORD(v24) = 3;
        v25 = 0;
        v26 = 0;
        v16 = *(a4 + 24);
        v17 = *(a4 + 16);
        if (v16 < *(a4 + 28))
        {
          goto LABEL_7;
        }
      }

      if (v17 <= &v24 && v17 + 24 * v16 > &v24)
      {
        v23 = &v24 - v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, a4 + 32, v16 + 1, 24);
        v17 = *(a4 + 16);
        v18 = &v23[v17];
        goto LABEL_8;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, a4 + 32, v16 + 1, 24);
      v17 = *(a4 + 16);
LABEL_7:
      v18 = &v24;
LABEL_8:
      v19 = v17 + 24 * *(a4 + 24);
      v20 = *v18;
      *(v19 + 16) = *(v18 + 2);
      *v19 = v20;
      ++*(a4 + 24);
      v27 = 262;
      v21 = *i;
      v22 = *(i + 8);
      i += 16;
      v24 = v21;
      v25 = v22;
    }
  }

  return result;
}

__n128 llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char **a7)
{
  if (a2 != a4)
  {
    v41 = v7;
    v42 = v8;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(a1, a2);
    v16 = &v38;
    mlir::DiagnosticArgument::DiagnosticArgument(&v38, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    v18 = (a5 + 16);
    v17 = *(a5 + 16);
    v19 = *(a5 + 24);
    if (v19 >= *(a5 + 28))
    {
      if (v17 <= &v38 && v17 + 24 * v19 > &v38)
      {
        v37 = &v38 - v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, a5 + 32, v19 + 1, 24);
        v17 = *(a5 + 16);
        v16 = &v37[v17];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, a5 + 32, v19 + 1, 24);
        v17 = *(a5 + 16);
        v16 = &v38;
      }
    }

    v20 = (v17 + 24 * *(a5 + 24));
    result = *v16;
    v20[1].n128_u64[0] = v16[1].n128_u64[0];
    *v20 = result;
    ++*(a5 + 24);
    for (i = a2 + 1; a4 != i; ++i)
    {
      v23 = *a7;
      if (*a7)
      {
        v24 = strlen(*a7);
        v38 = 3;
        v39 = v23;
        v40 = v24;
        v25 = *(a6 + 24);
        v26 = *(a6 + 16);
        if (v25 < *(a6 + 28))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v38 = 3;
        v39 = 0;
        v40 = 0;
        v25 = *(a6 + 24);
        v26 = *(a6 + 16);
        if (v25 < *(a6 + 28))
        {
          goto LABEL_9;
        }
      }

      if (v26 <= &v38 && v26 + 24 * v25 > &v38)
      {
        v35 = &v38 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6 + 16, a6 + 32, v25 + 1, 24);
        v26 = *(a6 + 16);
        v27 = &v35[v26];
        goto LABEL_10;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a6 + 16, a6 + 32, v25 + 1, 24);
      v26 = *(a6 + 16);
LABEL_9:
      v27 = &v38;
LABEL_10:
      v28 = v26 + 24 * *(a6 + 24);
      v29 = *v27;
      *(v28 + 16) = *(v27 + 2);
      *v28 = v29;
      ++*(a6 + 24);
      v30 = mlir::detail::OpResultImpl::getNextResultAtOffset(a1, i);
      v31 = &v38;
      mlir::DiagnosticArgument::DiagnosticArgument(&v38, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
      v32 = *(a5 + 24);
      v33 = *(a5 + 16);
      if (v32 >= *(a5 + 28))
      {
        if (v33 <= &v38 && v33 + 24 * v32 > &v38)
        {
          v36 = &v38 - v33;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, a5 + 32, v32 + 1, 24);
          v33 = *v18;
          v31 = &v36[*v18];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, a5 + 32, v32 + 1, 24);
          v33 = *v18;
          v31 = &v38;
        }
      }

      v34 = (v33 + 24 * *(a5 + 24));
      result = *v31;
      v34[1].n128_u64[0] = v31[1].n128_u64[0];
      *v34 = result;
      ++*(a5 + 24);
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::SymbolRefAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(v22, &v24, v23);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  NextResultAtOffset = *a4;
  v15 = a4[1];
  v16 = a4[3];
  if (v15)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v15);
  }

  mlir::ValueRange::ValueRange(&v24, NextResultAtOffset, v16 - v15);
  mlir::TypeRange::TypeRange(v23, v24, v25);
  v17 = mlir::ValueRange::ValueRange(&v24, *a5, *(a5 + 8));
  mlir::func::CallOp::build(v17, v22, v13, v23[0], v23[1], v24, v25);
  v18 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v19;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::func::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = *result + 16 * v8;
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
      v9 = v6 + 16 * (v16 & v7);
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
        *(v9 + 8) = *a3;
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
    llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::grow(result, v5);
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

void *llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::grow(uint64_t a1, int a2)
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
          v22 = *a1 + 16 * v25;
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
              v22 = *a1 + 16 * (v30 & v24);
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
          *(v22 + 8) = *(v16 + 2);
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

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::StringAttr,mlir::Attribute>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::StringAttr&&>,std::tuple<mlir::Attribute&&>>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a3;
  v5 = **a4;
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    v9 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 16);
    a1 = v9;
    LODWORD(v6) = *(v9 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = v4;
  v7[1] = v5;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 16 * v7 - 16;
}

void *mlir::RewritePatternSet::add<mlir::func::CallIndirectOp>(llvm::LogicalResult (*)(mlir::func::CallIndirectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::func::CallIndirectOp>(llvm::LogicalResult (*)(mlir::func::CallIndirectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::func::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::CallOpGenericAdaptorBase::Properties]";
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

uint64_t mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v23 = 0;
  if (((*(*a1 + 440))(a1, &v23, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v23;
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v24[0] = v8;
  if (v8)
  {
    mlir::OpaqueAttr::getAttrData(v24);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    *a2 = v10;
    if (v10)
    {
      return 1;
    }
  }

  else
  {
    *a2 = 0;
  }

  v21 = "invalid kind of attribute specified";
  v22 = 259;
  (*(*a1 + 24))(v24, a1, v6, &v21);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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

    v12 = __p;
    if (__p)
    {
      v13 = v30;
      v14 = __p;
      if (v30 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v30 = v12;
      operator delete(v14);
    }

    v15 = v27;
    if (v27)
    {
      v16 = v28;
      v17 = v27;
      if (v28 != v27)
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
        v17 = v27;
      }

      v28 = v15;
      operator delete(v17);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v11;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::ConstantOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::FuncOpGenericAdaptorBase::Properties]";
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

__n128 OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24)
{
  v26 = (v24 + 24 * a24);
  result = *v25;
  v26[1].n128_u64[0] = v25[1].n128_u64[0];
  *v26 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_3_2@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

void OUTLINED_FUNCTION_10_4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, va, a1 + 1, 24);
}

__n128 OUTLINED_FUNCTION_14_4@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v18 = (a1 + 24 * a17);
  result = *v17;
  v18[1].n128_u64[0] = v17[1].n128_u64[0];
  *v18 = result;
  return result;
}

void OUTLINED_FUNCTION_32_2(uint64_t a1, unint64_t a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2 + 1, 24);
}

void *OUTLINED_FUNCTION_42_0()
{

  return llvm::raw_ostream::write(v0, v1, 2uLL);
}

void OUTLINED_FUNCTION_43_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, va, a1 + 1, 24);
}

size_t *mlir::func::registerInlinerExtension(mlir::DialectRegistry &)::$_0::__invoke(uint64_t *a1, int32x2_t *a2)
{
  v4 = operator new(0x18uLL);
  {
    v8 = v4;
    mlir::arith::ArithDialect::initialize();
    v4 = v8;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v4[1] = a2;
  v4[2] = v5;
  *v4 = &unk_1F5AF5390;
  v9 = v4;
  mlir::Dialect::addInterface(a2, &v9);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v9 = a1;
  return mlir::MLIRContext::getOrLoadDialect(a1, "cf", 2, &mlir::detail::TypeIDResolver<mlir::cf::ControlFlowDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::cf::ControlFlowDialect * mlir::MLIRContext::getOrLoadDialect<mlir::cf::ControlFlowDialect>(void)::{lambda(void)#1}>, &v9);
}

void anonymous namespace::FuncInlinerInterface::~FuncInlinerInterface(_anonymous_namespace_::FuncInlinerInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t anonymous namespace::FuncInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

void anonymous namespace::FuncInlinerInterface::handleTerminator(_anonymous_namespace_::FuncInlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v12 = a3;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v11 = v3;
  if (v3)
  {
    v10[0] = mlir::Attribute::getContext((a2 + 24));
    v10[1] = 0;
    v10[2] = *(a2 + 2);
    v10[3] = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v5);
    v6 = *(a2 + 3);
    ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v11, 0);
    if ((*(v11 + 46) & 0x80) != 0)
    {
      v8 = *(v11 + 9);
    }

    else
    {
      v8 = 0;
    }

    v9[0] = v8 + 32 * ODSOperandIndexAndLength;
    v9[1] = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength;
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(v10, v6, &v12, v9);
    mlir::Operation::erase(a2);
  }
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::cf::BranchOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

int32x2_t *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::cf::ControlFlowDialect * mlir::MLIRContext::getOrLoadDialect<mlir::cf::ControlFlowDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, int32x2_t **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::cf::ControlFlowDialect::ControlFlowDialect(v4, v3);
  *a2 = result;
  return result;
}

uint64_t mlir::function_interface_impl::getArgAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 24))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

uint64_t mlir::function_interface_impl::getResultAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 32))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

void mlir::function_interface_impl::setAllArgAttrDicts(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24[8] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v23 = 0x800000000;
  v8 = (8 * a4) >> 3;
  if (v8 < 9)
  {
    v9 = 0;
    v10 = v24;
    v11 = 8 * a4;
    if (!a4)
    {
LABEL_3:
      v12 = v9 + (v11 >> 3);
      LODWORD(v23) = v9 + (v11 >> 3);
      if (!v23)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v8, 8);
    v9 = v23;
    v10 = v22;
    v11 = 8 * a4;
    if (!a4)
    {
      goto LABEL_3;
    }
  }

  v13 = &v10[v9];
  v14 = v11;
  do
  {
    v15 = *a3;
    if (!*a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v15 = mlir::DictionaryAttr::get(Context, 0, 0);
    }

    *v13++ = v15;
    ++a3;
    v14 -= 8;
  }

  while (v14);
  v10 = v22;
  v12 = v23 + (v11 >> 3);
  LODWORD(v23) = v23 + (v11 >> 3);
  if (!v23)
  {
LABEL_14:
    (*(*(a2 + 48) + 56))();
    v19 = v22;
    if (v22 == v24)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_11:
  v17 = 8 * v12;
  v18 = v10;
  while (1)
  {
    v21 = *v18;
    if (mlir::AffineBinaryOpExpr::getLHS(&v21))
    {
      break;
    }

    ++v18;
    v17 -= 8;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v20 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v20, v10, v12);
  (*(*(a2 + 48) + 40))();
  v19 = v22;
  if (v22 != v24)
  {
LABEL_15:
    free(v19);
  }
}

void mlir::function_interface_impl::setAllResultAttrDicts(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24[8] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v23 = 0x800000000;
  v8 = (8 * a4) >> 3;
  if (v8 < 9)
  {
    v9 = 0;
    v10 = v24;
    v11 = 8 * a4;
    if (!a4)
    {
LABEL_3:
      v12 = v9 + (v11 >> 3);
      LODWORD(v23) = v9 + (v11 >> 3);
      if (!v23)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v8, 8);
    v9 = v23;
    v10 = v22;
    v11 = 8 * a4;
    if (!a4)
    {
      goto LABEL_3;
    }
  }

  v13 = &v10[v9];
  v14 = v11;
  do
  {
    v15 = *a3;
    if (!*a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v15 = mlir::DictionaryAttr::get(Context, 0, 0);
    }

    *v13++ = v15;
    ++a3;
    v14 -= 8;
  }

  while (v14);
  v10 = v22;
  v12 = v23 + (v11 >> 3);
  LODWORD(v23) = v23 + (v11 >> 3);
  if (!v23)
  {
LABEL_14:
    (*(*(a2 + 48) + 64))();
    v19 = v22;
    if (v22 == v24)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_11:
  v17 = 8 * v12;
  v18 = v10;
  while (1)
  {
    v21 = *v18;
    if (mlir::AffineBinaryOpExpr::getLHS(&v21))
    {
      break;
    }

    ++v18;
    v17 -= 8;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v20 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v20, v10, v12);
  (*(*(a2 + 48) + 48))();
  v19 = v22;
  if (v22 != v24)
  {
LABEL_15:
    free(v19);
  }
}

void setArgResAttrDict<true>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v48[8] = *MEMORY[0x1E69E9840];
  v45 = a5;
  v44 = (*(*(a2 + 48) + 24))();
  if (!v44)
  {
    if (!mlir::AffineBinaryOpExpr::getLHS(&v45))
    {
      return;
    }

    Context = mlir::Attribute::getContext((a1 + 24));
    v19 = mlir::DictionaryAttr::get(Context, 0, 0);
    v20 = v19;
    v46 = v48;
    HIDWORD(v47) = 8;
    if (a3 >= 9)
    {
      LODWORD(v47) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, a3, 8);
      v21 = v46;
      v22 = a3 & 0xFFFFFFFC;
      v23 = a3 & 3;
      v24 = vdupq_n_s64(v20);
      v25 = (v46 + 16);
      v26 = a3 & 0xFFFFFFFC;
      do
      {
        v25[-1] = v24;
        *v25 = v24;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if ((a3 & 0xFFFFFFFC) != a3)
      {
        do
        {
          v21[v22++] = v20;
          --v23;
        }

        while (v23);
      }

LABEL_54:
      LODWORD(v47) = a3;
      v21[a4] = v45;
      v43 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v43, v46, v47);
      (*(*(a2 + 48) + 40))();
      v28 = v46;
      if (v46 == v48)
      {
        return;
      }

      goto LABEL_55;
    }

    if (!a3)
    {
      goto LABEL_53;
    }

    v36 = vdupq_n_s64(a3 - 1);
    v37 = a3 + 1;
    v38 = vmovn_s64(vcgeq_u64(v36, xmmword_1E09700F0));
    if (v38.i8[0])
    {
      v48[0] = v19;
      v39 = v37 & 0x1E;
      if ((v38.i8[4] & 1) == 0)
      {
LABEL_33:
        if (v39 == 2)
        {
          goto LABEL_53;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v39 = v37 & 0x1E;
      if ((v38.i8[4] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v48[1] = v19;
    if (v39 == 2)
    {
      goto LABEL_53;
    }

LABEL_37:
    v40 = vmovn_s64(vcgtq_u64(v36, xmmword_1E0970220));
    if (v40.i8[0])
    {
      v48[2] = v19;
      if ((v40.i8[4] & 1) == 0)
      {
LABEL_39:
        if (v39 == 4)
        {
          goto LABEL_53;
        }

LABEL_43:
        v41 = vmovn_s64(vcgtq_u64(v36, xmmword_1E0970230));
        if (v41.i8[0])
        {
          v48[4] = v19;
          if ((v41.i8[4] & 1) == 0)
          {
LABEL_45:
            if (v39 == 6)
            {
              goto LABEL_53;
            }

LABEL_49:
            v42 = vmovn_s64(vcgtq_u64(v36, xmmword_1E0971C10));
            if (v42.i8[0])
            {
              v48[6] = v19;
            }

            if (v42.i8[4])
            {
              v48[7] = v19;
            }

            goto LABEL_53;
          }
        }

        else if ((v41.i8[4] & 1) == 0)
        {
          goto LABEL_45;
        }

        v48[5] = v19;
        if (v39 != 6)
        {
          goto LABEL_49;
        }

LABEL_53:
        v21 = v48;
        goto LABEL_54;
      }
    }

    else if ((v40.i8[4] & 1) == 0)
    {
      goto LABEL_39;
    }

    v48[3] = v19;
    if (v39 == 4)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  Value = mlir::ArrayAttr::getValue(&v44);
  if (*(Value + 8 * a4) == v45)
  {
    return;
  }

  v10 = a4;
  v11 = mlir::ArrayAttr::getValue(&v44);
  v13 = v12;
  if (!mlir::AffineBinaryOpExpr::getLHS(&v45))
  {
    if (v13 >= a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = v13;
    }

    if (v29)
    {
      v30 = 8 * v29;
      v31 = v11;
      while (1)
      {
        v46 = *v31;
        if (mlir::AffineBinaryOpExpr::getLHS(&v46))
        {
          break;
        }

        ++v31;
        v30 -= 8;
        if (!v30)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v32 = a4 + 1;
      if (v13 == v32)
      {
LABEL_29:
        (*(*(a2 + 48) + 56))();
        return;
      }

      v33 = v32;
      v34 = &v11[v33];
      v35 = 8 * v13 - v33 * 8;
      while (1)
      {
        v46 = *v34;
        if (mlir::AffineBinaryOpExpr::getLHS(&v46))
        {
          break;
        }

        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v46 = v48;
  v47 = 0x800000000;
  v14 = (8 * v13) >> 3;
  if (v14 < 9)
  {
    v15 = 0;
    v16 = v48;
    v17 = 8 * v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v14, 8);
  v15 = v47;
  v16 = v46;
  v17 = 8 * v13;
  if (v13)
  {
LABEL_15:
    memcpy(&v16[v15], v11, v17);
    v15 = v47;
    v16 = v46;
  }

LABEL_16:
  LODWORD(v47) = v15 + (v17 >> 3);
  v16[v10] = v45;
  v27 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v27, v46, v47);
  (*(*(a2 + 48) + 40))();
  v28 = v46;
  if (v46 != v48)
  {
LABEL_55:
    free(v28);
  }
}

void mlir::function_interface_impl::setArgAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 8))();
  v9 = v8;
  if (!a4)
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    a4 = mlir::DictionaryAttr::get(Context, 0, 0);
  }

  setArgResAttrDict<true>(a1, a2, v9, a3, a4);
}

void setArgResAttrDict<false>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v48[8] = *MEMORY[0x1E69E9840];
  v45 = a5;
  v44 = (*(*(a2 + 48) + 32))();
  if (!v44)
  {
    if (!mlir::AffineBinaryOpExpr::getLHS(&v45))
    {
      return;
    }

    Context = mlir::Attribute::getContext((a1 + 24));
    v19 = mlir::DictionaryAttr::get(Context, 0, 0);
    v20 = v19;
    v46 = v48;
    HIDWORD(v47) = 8;
    if (a3 >= 9)
    {
      LODWORD(v47) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, a3, 8);
      v21 = v46;
      v22 = a3 & 0xFFFFFFFC;
      v23 = a3 & 3;
      v24 = vdupq_n_s64(v20);
      v25 = (v46 + 16);
      v26 = a3 & 0xFFFFFFFC;
      do
      {
        v25[-1] = v24;
        *v25 = v24;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if ((a3 & 0xFFFFFFFC) != a3)
      {
        do
        {
          v21[v22++] = v20;
          --v23;
        }

        while (v23);
      }

LABEL_54:
      LODWORD(v47) = a3;
      v21[a4] = v45;
      v43 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v43, v46, v47);
      (*(*(a2 + 48) + 48))();
      v28 = v46;
      if (v46 == v48)
      {
        return;
      }

      goto LABEL_55;
    }

    if (!a3)
    {
      goto LABEL_53;
    }

    v36 = vdupq_n_s64(a3 - 1);
    v37 = a3 + 1;
    v38 = vmovn_s64(vcgeq_u64(v36, xmmword_1E09700F0));
    if (v38.i8[0])
    {
      v48[0] = v19;
      v39 = v37 & 0x1E;
      if ((v38.i8[4] & 1) == 0)
      {
LABEL_33:
        if (v39 == 2)
        {
          goto LABEL_53;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v39 = v37 & 0x1E;
      if ((v38.i8[4] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v48[1] = v19;
    if (v39 == 2)
    {
      goto LABEL_53;
    }

LABEL_37:
    v40 = vmovn_s64(vcgtq_u64(v36, xmmword_1E0970220));
    if (v40.i8[0])
    {
      v48[2] = v19;
      if ((v40.i8[4] & 1) == 0)
      {
LABEL_39:
        if (v39 == 4)
        {
          goto LABEL_53;
        }

LABEL_43:
        v41 = vmovn_s64(vcgtq_u64(v36, xmmword_1E0970230));
        if (v41.i8[0])
        {
          v48[4] = v19;
          if ((v41.i8[4] & 1) == 0)
          {
LABEL_45:
            if (v39 == 6)
            {
              goto LABEL_53;
            }

LABEL_49:
            v42 = vmovn_s64(vcgtq_u64(v36, xmmword_1E0971C10));
            if (v42.i8[0])
            {
              v48[6] = v19;
            }

            if (v42.i8[4])
            {
              v48[7] = v19;
            }

            goto LABEL_53;
          }
        }

        else if ((v41.i8[4] & 1) == 0)
        {
          goto LABEL_45;
        }

        v48[5] = v19;
        if (v39 != 6)
        {
          goto LABEL_49;
        }

LABEL_53:
        v21 = v48;
        goto LABEL_54;
      }
    }

    else if ((v40.i8[4] & 1) == 0)
    {
      goto LABEL_39;
    }

    v48[3] = v19;
    if (v39 == 4)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  Value = mlir::ArrayAttr::getValue(&v44);
  if (*(Value + 8 * a4) == v45)
  {
    return;
  }

  v10 = a4;
  v11 = mlir::ArrayAttr::getValue(&v44);
  v13 = v12;
  if (!mlir::AffineBinaryOpExpr::getLHS(&v45))
  {
    if (v13 >= a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = v13;
    }

    if (v29)
    {
      v30 = 8 * v29;
      v31 = v11;
      while (1)
      {
        v46 = *v31;
        if (mlir::AffineBinaryOpExpr::getLHS(&v46))
        {
          break;
        }

        ++v31;
        v30 -= 8;
        if (!v30)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v32 = a4 + 1;
      if (v13 == v32)
      {
LABEL_29:
        (*(*(a2 + 48) + 64))();
        return;
      }

      v33 = v32;
      v34 = &v11[v33];
      v35 = 8 * v13 - v33 * 8;
      while (1)
      {
        v46 = *v34;
        if (mlir::AffineBinaryOpExpr::getLHS(&v46))
        {
          break;
        }

        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v46 = v48;
  v47 = 0x800000000;
  v14 = (8 * v13) >> 3;
  if (v14 < 9)
  {
    v15 = 0;
    v16 = v48;
    v17 = 8 * v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v14, 8);
  v15 = v47;
  v16 = v46;
  v17 = 8 * v13;
  if (v13)
  {
LABEL_15:
    memcpy(&v16[v15], v11, v17);
    v15 = v47;
    v16 = v46;
  }

LABEL_16:
  LODWORD(v47) = v15 + (v17 >> 3);
  v16[v10] = v45;
  v27 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v27, v46, v47);
  (*(*(a2 + 48) + 48))();
  v28 = v46;
  if (v46 != v48)
  {
LABEL_55:
    free(v28);
  }
}

void mlir::function_interface_impl::setResultAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  if (!a4)
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    a4 = mlir::DictionaryAttr::get(Context, 0, 0);
  }

  setArgResAttrDict<false>(a1, a2, v9, a3, a4);
}

void mlir::function_interface_impl::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73[6] = *MEMORY[0x1E69E9840];
  (*(*(a2 + 48) + 8))();
  v7 = v6;
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  v10 = mlir::TypeAttr::get(a3);
  (*(a2 + 8))(a2, a1, v10);
  (*(*(a2 + 48) + 8))();
  LODWORD(v12) = v11;
  (*(*(a2 + 48) + 16))();
  LODWORD(v14) = v13;
  Context = mlir::Attribute::getContext((a1 + 24));
  v16 = mlir::DictionaryAttr::get(Context, 0, 0);
  if (v7 == v12)
  {
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v69 = (*(*(a2 + 48) + 24))();
  if (!v69)
  {
    goto LABEL_13;
  }

  if (v12 < v7)
  {
    Value = mlir::ArrayAttr::getValue(&v69);
    if (v18 >= v12)
    {
      v12 = v12;
    }

    else
    {
      v12 = v18;
    }

    if (v18)
    {
      v19 = Value;
      v20 = 8 * v12;
      v21 = Value;
      while (1)
      {
        v71 = *v21;
        if (mlir::AffineBinaryOpExpr::getLHS(&v71))
        {
          break;
        }

        ++v21;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_12;
        }
      }

      v53 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v53, v19, v12);
      (*(*(a2 + 48) + 40))();
      goto LABEL_13;
    }

LABEL_12:
    (*(*(a2 + 48) + 56))();
    goto LABEL_13;
  }

  v27 = mlir::ArrayAttr::getValue(&v69);
  v28 = mlir::ArrayAttr::getValue(&v69);
  v30 = (v28 + 8 * v29);
  v71 = v73;
  v72 = 0x600000000;
  v31 = (v30 - v27) >> 3;
  if (v31 < 7)
  {
    v32 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v31, 8);
    v32 = v72;
  }

  if (v30 != v27)
  {
    memcpy(v71 + 8 * v32, v27, v30 - v27);
    v32 = v72;
  }

  v39 = v32 + ((v30 - v27) >> 3);
  LODWORD(v72) = v39;
  v40 = v12;
  if (v39 == v12)
  {
LABEL_36:
    v41 = v71;
    v42 = v71 + 8 * v40;
    v43 = v71;
    goto LABEL_37;
  }

  if (v39 > v12)
  {
    LODWORD(v72) = v12;
    goto LABEL_36;
  }

  v55 = v12 - v39;
  if (HIDWORD(v72) < v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v12, 8);
    v39 = v72;
    v41 = v71;
    if (!v55)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v41 = v71;
    if (!v55)
    {
      goto LABEL_65;
    }
  }

  v56 = &v41[v39];
  v57 = v56;
  v58 = v55;
  if (v55 < 4)
  {
    goto LABEL_82;
  }

  v57 = v56 + (v55 & 0xFFFFFFFFFFFFFFFCLL);
  v58 = v55 & 3;
  v59 = vdupq_n_s64(v16);
  v60 = v56 + 1;
  v61 = v55 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v60[-1] = v59;
    *v60 = v59;
    v60 += 2;
    v61 -= 4;
  }

  while (v61);
  if (v55 != (v55 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_82:
    do
    {
      *v57++ = v16;
      --v58;
    }

    while (v58);
  }

LABEL_65:
  v40 = (v39 + v55);
  LODWORD(v72) = v39 + v55;
  if (!(v39 + v55))
  {
LABEL_39:
    (*(*(a2 + 48) + 56))();
    v44 = v71;
    if (v71 == v73)
    {
      goto LABEL_13;
    }

LABEL_53:
    free(v44);
    goto LABEL_13;
  }

  v42 = &v41[v40];
  v43 = v41;
LABEL_37:
  while (1)
  {
    v70 = *v43;
    if (mlir::AffineBinaryOpExpr::getLHS(&v70))
    {
      break;
    }

    if (++v43 == v42)
    {
      goto LABEL_39;
    }
  }

  v51 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v51, v41, v40);
  (*(*(a2 + 48) + 40))();
  v44 = v71;
  if (v71 != v73)
  {
    goto LABEL_53;
  }

LABEL_13:
  if (v9 == v14)
  {
    return;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v69 = (*(*(a2 + 48) + 32))();
  if (!v69)
  {
    return;
  }

  if (v14 < v9)
  {
    v22 = mlir::ArrayAttr::getValue(&v69);
    if (v23 >= v14)
    {
      v14 = v14;
    }

    else
    {
      v14 = v23;
    }

    if (v23)
    {
      v24 = v22;
      v25 = 8 * v14;
      v26 = v22;
      while (1)
      {
        v71 = *v26;
        if (mlir::AffineBinaryOpExpr::getLHS(&v71))
        {
          break;
        }

        ++v26;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      v54 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v54, v24, v14);
      (*(*(a2 + 48) + 48))();
      return;
    }

LABEL_24:
    (*(*(a2 + 48) + 64))();
    return;
  }

  v33 = mlir::ArrayAttr::getValue(&v69);
  v34 = mlir::ArrayAttr::getValue(&v69);
  v36 = (v34 + 8 * v35);
  v71 = v73;
  v72 = 0x600000000;
  v37 = (v36 - v33) >> 3;
  if (v37 < 7)
  {
    v38 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v37, 8);
    v38 = v72;
  }

  if (v36 != v33)
  {
    memcpy(v71 + 8 * v38, v33, v36 - v33);
    v38 = v72;
  }

  v45 = v38 + ((v36 - v33) >> 3);
  LODWORD(v72) = v45;
  v46 = v14;
  if (v45 == v14)
  {
LABEL_47:
    v47 = v71;
    v48 = v71 + 8 * v46;
    v49 = v71;
    goto LABEL_48;
  }

  if (v45 > v14)
  {
    LODWORD(v72) = v14;
    goto LABEL_47;
  }

  v62 = v14 - v45;
  if (HIDWORD(v72) < v14)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v14, 8);
    v45 = v72;
    v47 = v71;
    if (!v62)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v47 = v71;
    if (!v62)
    {
      goto LABEL_74;
    }
  }

  v63 = &v47[v45];
  v64 = v63;
  v65 = v62;
  if (v62 < 4)
  {
    goto LABEL_83;
  }

  v64 = v63 + (v62 & 0xFFFFFFFFFFFFFFFCLL);
  v65 = v62 & 3;
  v66 = vdupq_n_s64(v16);
  v67 = v63 + 1;
  v68 = v62 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v67[-1] = v66;
    *v67 = v66;
    v67 += 2;
    v68 -= 4;
  }

  while (v68);
  if (v62 != (v62 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_83:
    do
    {
      *v64++ = v16;
      --v65;
    }

    while (v65);
  }

LABEL_74:
  v46 = (v45 + v62);
  LODWORD(v72) = v45 + v62;
  if (!(v45 + v62))
  {
LABEL_50:
    (*(*(a2 + 48) + 64))();
    v50 = v71;
    if (v71 == v73)
    {
      return;
    }

LABEL_55:
    free(v50);
    return;
  }

  v48 = &v47[v46];
  v49 = v47;
LABEL_48:
  while (1)
  {
    v70 = *v49;
    if (mlir::AffineBinaryOpExpr::getLHS(&v70))
    {
      break;
    }

    if (++v49 == v48)
    {
      goto LABEL_50;
    }
  }

  v52 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v52, v47, v46);
  (*(*(a2 + 48) + 48))();
  v50 = v71;
  if (v71 != v73)
  {
    goto LABEL_55;
  }
}

uint64_t mlir::function_interface_impl::parseFunctionSignature(char *a1, char a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v17 = a2;
  *a4 = 0;
  v13 = a4;
  v14 = a1;
  v15 = &v17;
  v16 = a3;
  if (((*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>, &v13, 0, 0) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    return 1;
  }

  if ((*(*a1 + 288))(a1))
  {
    if ((*(*a1 + 304))(a1))
    {
      return 1;
    }

    v13 = a5;
    v14 = a6;
    v15 = a1;
    if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionResultList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>, &v13, 0, 0))
    {
      return (*(*a1 + 296))(a1);
    }

    return 0;
  }

  v13 = 0;
  if (((*(*a1 + 536))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v10 = v13;
  v11 = *(a5 + 8);
  if (v11 >= *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v11 + 1, 8);
    LODWORD(v11) = *(a5 + 8);
  }

  *(*a5 + 8 * v11) = v10;
  ++*(a5 + 8);
  v12 = *(a6 + 8);
  if (v12 >= *(a6 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(a6);
  }

  else
  {
    *(*a6 + 8 * v12) = 0;
    *(a6 + 8) = v12 + 1;
  }

  return 1;
}

uint64_t mlir::function_interface_impl::addArgAndResultAttrs(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v31[6] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v14 = a3;
    v15 = 8 * a4;
    v16 = 8 * a4;
    v17 = a3;
    while (1)
    {
      v29 = *v17;
      if (v29)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v29);
        if (result)
        {
          break;
        }
      }

      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v18) = 0;
    v29 = v31;
    v30 = 0x600000000;
    do
    {
      DictionaryAttr = *v14;
      if (!*v14)
      {
        DictionaryAttr = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v18) = v30;
      }

      if (v18 >= HIDWORD(v30))
      {
        v20 = DictionaryAttr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v18 + 1, 8);
        DictionaryAttr = v20;
        LODWORD(v18) = v30;
      }

      *(v29 + v18) = DictionaryAttr;
      v18 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      ++v14;
      v15 -= 8;
    }

    while (v15);
    ArrayAttr = mlir::Builder::getArrayAttr(v12, v29, v18);
    if (v29 != v31)
    {
      free(v29);
    }

    mlir::NamedAttribute::NamedAttribute(&v29, a7, ArrayAttr);
    result = mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  }

LABEL_15:
  if (a6)
  {
    v22 = 8 * a6;
    v23 = 8 * a6;
    for (i = a5; ; ++i)
    {
      v29 = *i;
      if (v29)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v29);
        if (result)
        {
          break;
        }
      }

      v23 -= 8;
      if (!v23)
      {
        return result;
      }
    }

    LODWORD(v25) = 0;
    v29 = v31;
    v30 = 0x600000000;
    do
    {
      v26 = *a5;
      if (!*a5)
      {
        v26 = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v25) = v30;
      }

      if (v25 >= HIDWORD(v30))
      {
        v27 = v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v25 + 1, 8);
        v26 = v27;
        LODWORD(v25) = v30;
      }

      *(v29 + v25) = v26;
      v25 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      ++a5;
      v22 -= 8;
    }

    while (v22);
    v28 = mlir::Builder::getArrayAttr(v12, v29, v25);
    if (v29 != v31)
    {
      free(v29);
    }

    mlir::NamedAttribute::NamedAttribute(&v29, a8, v28);
    return mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  }

  return result;
}

void mlir::function_interface_impl::addArgAndResultAttrs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[6] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x600000000;
  if (!a4)
  {
    mlir::function_interface_impl::addArgAndResultAttrs(a1, a2, v21, 0, a5, a6, a7, a8);
    v18 = v19;
    if (v19 == v21)
    {
      return;
    }

    goto LABEL_7;
  }

  v8 = a4;
  LODWORD(a4) = 0;
  v9 = (a3 + 40);
  v10 = v8 << 6;
  do
  {
    v11 = *v9;
    if (a4 >= HIDWORD(v20))
    {
      v12 = a1;
      v13 = a2;
      v14 = a8;
      v15 = a7;
      v16 = a6;
      v17 = a5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, a4 + 1, 8);
      a1 = v12;
      a2 = v13;
      a5 = v17;
      a6 = v16;
      a7 = v15;
      a8 = v14;
      LODWORD(a4) = v20;
    }

    *(v19 + a4) = v11;
    a4 = (v20 + 1);
    LODWORD(v20) = v20 + 1;
    v9 += 8;
    v10 -= 64;
  }

  while (v10);
  mlir::function_interface_impl::addArgAndResultAttrs(a1, a2, v19, a4, a5, a6, a7, a8);
  v18 = v19;
  if (v19 != v21)
  {
LABEL_7:
    free(v18);
  }
}

BOOL mlir::function_interface_impl::parseFunctionOp(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *, void, void *, void, void, void **), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v119[8] = *MEMORY[0x1E69E9840];
  v85 = a4;
  v117 = v119;
  v118 = 0x100000000;
  v114 = v116;
  v115 = 0x600000000;
  v111 = v113;
  v112 = 0x600000000;
  v14 = (*(*a1 + 32))(a1);
  mlir::impl::parseOptionalVisibilityKeyword(a1, a2 + 112);
  v84 = 0;
  if (mlir::AsmParser::parseSymbolName(a1, &v84))
  {
    v76 = a8;
    mlir::NamedAttrList::append(a2 + 112, "sym_name", 8, v84);
    v15 = (*(*a1 + 40))(a1);
    v83 = 0;
    v16 = 0;
    if ((mlir::function_interface_impl::parseFunctionSignature(a1, a3, &v117, &v83, &v111, &v114) & 1) == 0)
    {
      goto LABEL_60;
    }

    v80 = 0;
    v81 = 0;
    v82 = 0;
    v108 = v110;
    v109 = 0x600000000;
    v17 = v118;
    if (v118 < 7)
    {
      v18 = 0;
      if (!v118)
      {
        goto LABEL_13;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v118, 8);
      v17 = v118;
      v18 = v109;
      if (!v118)
      {
        goto LABEL_13;
      }
    }

    v20 = (v117 + 32);
    v21 = v17 << 6;
    do
    {
      v22 = *v20;
      if (v18 >= HIDWORD(v109))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v18 + 1, 8);
        v18 = v109;
      }

      *(v108 + v18) = v22;
      v18 = v109 + 1;
      LODWORD(v109) = v109 + 1;
      v20 += 8;
      v21 -= 64;
    }

    while (v21);
LABEL_13:
    v23 = a5(a6, v14, v108, v18, v111, v112, v83, &v80);
    if (!v23)
    {
      v89 = 257;
      (*(*a1 + 24))(&v95, a1, v15, &v86);
      if (v95)
      {
        LODWORD(__src) = 3;
        v91 = "failed to construct function type";
        v92[0] = 33;
        p_src = &__src;
        v37 = v98;
        if (v99 >= v100)
        {
          if (v98 <= &__src && v98 + 24 * v99 > &__src)
          {
            v73 = &__src - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v37 = v98;
            p_src = (v98 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            p_src = &__src;
            v37 = v98;
          }
        }

        v38 = &v37[24 * v99];
        v39 = *p_src;
        *(v38 + 2) = p_src[2];
        *v38 = v39;
        ++v99;
        if (v95)
        {
          v40 = HIBYTE(v82);
          if (v82 < 0)
          {
            v40 = v81;
          }

          v41 = v40 == 0;
          v42 = 2 * (v40 != 0);
          v43 = ": ";
          if (v41)
          {
            v43 = "";
          }

          LODWORD(__src) = 3;
          v91 = v43;
          v92[0] = v42;
          v44 = &__src;
          v45 = v98;
          if (v99 >= v100)
          {
            if (v98 <= &__src && v98 + 24 * v99 > &__src)
            {
              v74 = &__src - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
              v45 = v98;
              v44 = (v98 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
              v44 = &__src;
              v45 = v98;
            }
          }

          v46 = &v45[24 * v99];
          v47 = *v44;
          *(v46 + 2) = v44[2];
          *v46 = v47;
          ++v99;
          if (v95)
          {
            v93 = 260;
            __src = &v80;
            mlir::Diagnostic::operator<<(&v96, &__src);
          }
        }
      }

      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v107 == 1)
      {
        if (v106 != &v107)
        {
          free(v106);
        }

        v48 = __p;
        if (__p)
        {
          v49 = v105;
          v50 = __p;
          if (v105 != __p)
          {
            do
            {
              v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
            }

            while (v49 != v48);
            v50 = __p;
          }

          v105 = v48;
          operator delete(v50);
        }

        v51 = v102;
        if (v102)
        {
          v52 = v103;
          v53 = v102;
          if (v103 != v102)
          {
            do
            {
              v55 = *--v52;
              v54 = v55;
              *v52 = 0;
              if (v55)
              {
                operator delete[](v54);
              }
            }

            while (v52 != v51);
            v53 = v102;
          }

          v103 = v51;
          operator delete(v53);
        }

        if (v98 != v101)
        {
          free(v98);
        }
      }

      v56 = v108;
      if (v108 == v110)
      {
        goto LABEL_58;
      }

LABEL_57:
      free(v56);
LABEL_58:
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v80);
      }

LABEL_60:
      v19 = v111;
      if (v111 == v113)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v24 = v85;
    v25 = mlir::TypeAttr::get(v23);
    mlir::NamedAttribute::NamedAttribute(&v95, v24, v25);
    mlir::NamedAttrList::push_back(a2 + 112, v95, v96);
    __src = v92;
    v91 = 0x400000000;
    v94 = 4;
    v26 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 496))(a1, &__src) & 1) == 0)
    {
      v16 = 0;
      goto LABEL_54;
    }

    AttrData = mlir::OpaqueAttr::getAttrData(&v85);
    v29 = v28;
    v30 = "sym_visibility";
    v31 = 14;
    if (!mlir::NamedAttrList::get(&__src, "sym_visibility", 0xEuLL))
    {
      v30 = "sym_name";
      v31 = 8;
      if (!mlir::NamedAttrList::get(&__src, "sym_name", 8uLL))
      {
        if (!mlir::NamedAttrList::get(&__src, AttrData, v29))
        {
          v58 = __src;
          v59 = v91;
          *(a2 + 192) = 0;
          v60 = *(a2 + 120);
          if (v60 + v59 > *(a2 + 124))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, v60 + v59, 16);
            LODWORD(v60) = *(a2 + 120);
          }

          if (v59)
          {
            memcpy((*(a2 + 112) + 16 * v60), v58, 16 * v59);
            LODWORD(v60) = *(a2 + 120);
          }

          *(a2 + 120) = v60 + v59;
          v61 = v114;
          v62 = v115;
          v95 = &v97;
          v96 = 0x600000000;
          if (v118)
          {
            LODWORD(v63) = 0;
            v64 = v118 << 6;
            v65 = (v117 + 40);
            do
            {
              v66 = *v65;
              if (v63 >= HIDWORD(v96))
              {
                v67 = v61;
                v68 = v62;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, &v97, v63 + 1, 8);
                v62 = v68;
                v61 = v67;
                LODWORD(v63) = v96;
              }

              *(v95 + v63) = v66;
              v63 = (v96 + 1);
              LODWORD(v96) = v96 + 1;
              v65 += 8;
              v64 -= 64;
            }

            while (v64);
            v69 = v95;
          }

          else
          {
            v63 = 0;
            v69 = &v97;
          }

          mlir::function_interface_impl::addArgAndResultAttrs(v14, a2, v69, v63, v61, v62, a7, v76);
          if (v95 != &v97)
          {
            free(v95);
          }

          v70 = mlir::OperationState::addRegion(a2);
          v71 = (*(*a1 + 40))(a1);
          v72 = (*(*a1 + 784))(a1, v70, v117, v118, 0);
          if ((v72 & 0x100) == 0)
          {
            goto LABEL_89;
          }

          if ((v72 & 1) == 0)
          {
            v16 = 0;
            goto LABEL_54;
          }

          if (*v70 != v70)
          {
LABEL_89:
            v16 = 1;
            goto LABEL_54;
          }

          v86 = "expected non-empty function body";
          v89 = 259;
          (*(*a1 + 24))(&v95, a1, v71, &v86);
          v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v95);
LABEL_54:
          if (__src != v92)
          {
            free(__src);
          }

          v56 = v108;
          if (v108 == v110)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        v30 = AttrData;
        v31 = v29;
      }
    }

    v78 = "'";
    v79 = 259;
    (*(*a1 + 24))(&v95, a1, v26, &v78);
    if (v95)
    {
      v89 = 261;
      v86 = v30;
      v87 = v31;
      mlir::Diagnostic::operator<<(&v96, &v86);
      if (v95)
      {
        LODWORD(v86) = 3;
        v87 = "' is an inferred attribute and should not be specified in the explicit attribute dictionary";
        v88 = 91;
        v32 = &v86;
        v33 = v98;
        if (v99 >= v100)
        {
          if (v98 <= &v86 && v98 + 24 * v99 > &v86)
          {
            v75 = &v86 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v33 = v98;
            v32 = (v98 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v32 = &v86;
            v33 = v98;
          }
        }

        v34 = &v33[24 * v99];
        v35 = *v32;
        *(v34 + 2) = v32[2];
        *v34 = v35;
        ++v99;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v107 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v96);
    }

    goto LABEL_54;
  }

  v16 = 0;
  v19 = v111;
  if (v111 != v113)
  {
LABEL_61:
    free(v19);
  }

LABEL_62:
  if (v114 != v116)
  {
    free(v114);
  }

  if (v117 != v119)
  {
    free(v117);
  }

  return v16;
}

llvm::raw_ostream *mlir::function_interface_impl::printFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, void *a7, uint64_t a8)
{
  v60[0] = a2;
  v60[1] = a3;
  v14 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  v15 = *v14;
  v16 = (*(*a1 + 16))(a1);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 40);
    ArgAttrsAttr = mlir::FunctionOpInterface::getArgAttrsAttr(v60);
    v59 = ArgAttrsAttr;
    v19 = a5;
    if (!a5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 40;
    ArgAttrsAttr = mlir::FunctionOpInterface::getArgAttrsAttr(v60);
    v59 = ArgAttrsAttr;
    v19 = a5;
    if (!a5)
    {
      goto LABEL_23;
    }
  }

  if (v15 != v14)
  {
    if (ArgAttrsAttr)
    {
      v62 = *mlir::ArrayAttr::getValue(&v59);
      Value = mlir::ArrayAttr::getValue(&v62);
      v22 = v21;
    }

    else
    {
      v22 = 0;
      Value = 0;
    }

    v30 = v14[1];
    if (v30)
    {
      v31 = v30 - 8;
    }

    else
    {
      v31 = 0;
    }

    (*(*a1 + 152))(a1, **(v31 + 48), Value, v22, 0);
    if (v19 == 1)
    {
      goto LABEL_23;
    }

    v34 = 1;
    while (1)
    {
      v40 = (*(*a1 + 16))(a1);
      v41 = v40[4];
      if (v40[3] - v41 > 1uLL)
      {
        *v41 = 8236;
        v40[4] += 2;
        if (!v59)
        {
          goto LABEL_36;
        }
      }

      else
      {
        llvm::raw_ostream::write(v40, ", ", 2uLL);
        if (!v59)
        {
LABEL_36:
          v37 = 0;
          v35 = 0;
          goto LABEL_30;
        }
      }

      v62 = *(mlir::ArrayAttr::getValue(&v59) + 8 * v34);
      v35 = mlir::ArrayAttr::getValue(&v62);
      v37 = v36;
LABEL_30:
      v38 = v14[1];
      if (v38)
      {
        v39 = v38 - 8;
      }

      else
      {
        v39 = 0;
      }

      (*(*a1 + 152))(a1, *(*(v39 + 48) + 8 * v34++), v35, v37, 0);
      if (v19 == v34)
      {
        goto LABEL_23;
      }
    }
  }

  (*(*a1 + 32))(a1, *a4);
  if (v59)
  {
    v62 = *mlir::ArrayAttr::getValue(&v59);
    v23 = mlir::ArrayAttr::getValue(&v62);
    (*(*a1 + 192))(a1, v23, v24, 0, 0);
  }

  if (v19 != 1)
  {
    for (i = 1; i != v19; ++i)
    {
      v26 = (*(*a1 + 16))(a1);
      v27 = v26[4];
      if (v26[3] - v27 >= 2uLL)
      {
        *v27 = 8236;
        v26[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v26, ", ", 2uLL);
      }

      (*(*a1 + 32))(a1, a4[i]);
      if (v59)
      {
        v62 = *(mlir::ArrayAttr::getValue(&v59) + 8 * i);
        v28 = mlir::ArrayAttr::getValue(&v62);
        (*(*a1 + 192))(a1, v28, v29, 0, 0);
      }
    }
  }

LABEL_23:
  if (a6)
  {
    if (a5)
    {
      v32 = (*(*a1 + 16))(a1);
      v33 = v32[4];
      if (v32[3] - v33 > 1uLL)
      {
        *v33 = 8236;
        v32[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v32, ", ", 2uLL);
      }
    }

    v42 = (*(*a1 + 16))(a1);
    v43 = v42[4];
    if ((v42[3] - v43) > 2)
    {
      *(v43 + 2) = 46;
      *v43 = 11822;
      v42[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v42, "...", 3uLL);
    }
  }

  result = (*(*a1 + 16))(a1);
  v45 = *(result + 4);
  if (v45 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
    if (!a8)
    {
      return result;
    }
  }

  else
  {
    *(result + 4) = v45 + 1;
    *v45 = 41;
    if (!a8)
    {
      return result;
    }
  }

  v46 = (*(*a1 + 16))(a1);
  v47 = v46[4];
  if (v46[3] - v47 > 3uLL)
  {
    *v47 = 540945696;
    v46[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v46, " -> ", 4uLL);
  }

  ResAttrsAttr = mlir::FunctionOpInterface::getResAttrsAttr(v60);
  v61 = ResAttrsAttr;
  v49 = (*(*a1 + 16))(a1);
  if (a8 != 1 || *(**a7 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id || ResAttrsAttr && (v62 = *mlir::ArrayAttr::getValue(&v61), mlir::AffineBinaryOpExpr::getLHS(&v62)))
  {
    v50 = *(v49 + 4);
    if (v50 >= *(v49 + 3))
    {
      llvm::raw_ostream::write(v49, 40);
    }

    else
    {
      *(v49 + 4) = v50 + 1;
      *v50 = 40;
    }

    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  result = (*(*a1 + 32))(a1, *a7);
  if (v61)
  {
    v62 = *mlir::ArrayAttr::getValue(&v61);
    v52 = mlir::ArrayAttr::getValue(&v62);
    result = (*(*a1 + 192))(a1, v52, v53, 0, 0);
  }

  if (a8 != 1)
  {
    v55 = 1;
    do
    {
      v56 = *(v49 + 4);
      if (*(v49 + 3) - v56 > 1uLL)
      {
        *v56 = 8236;
        *(v49 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v49, ", ", 2uLL);
      }

      result = (*(*a1 + 32))(a1, a7[v55]);
      if (v61)
      {
        v62 = *(mlir::ArrayAttr::getValue(&v61) + 8 * v55);
        v57 = mlir::ArrayAttr::getValue(&v62);
        result = (*(*a1 + 192))(a1, v57, v58, 0, 0);
      }

      ++v55;
    }

    while (a8 != v55);
  }

  if (v51)
  {
    v54 = *(v49 + 4);
    if (v54 >= *(v49 + 3))
    {
      return llvm::raw_ostream::write(v49, 41);
    }

    else
    {
      *(v49 + 4) = v54 + 1;
      *v54 = 41;
    }
  }

  return result;
}

void mlir::function_interface_impl::printFunctionAttributes(uint64_t a1, mlir::Operation *a2, const void *a3, uint64_t a4)
{
  v16[16] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v16[0] = "sym_name";
  v16[1] = 8;
  v15 = 0x800000001;
  v8 = ((16 * a4) >> 4) + 1;
  if (v8 < 9)
  {
    v9 = 1;
    v10 = 16 * a4;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v8, 16);
  v9 = v15;
  v10 = 16 * a4;
  if (a4)
  {
LABEL_5:
    memcpy(v14 + 16 * v9, a3, v10);
    v9 = v15;
  }

LABEL_6:
  LODWORD(v15) = v9 + (v10 >> 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a1 + 200))(a1, Value, v12, v14, v15);
  if (v14 != v16)
  {
    free(v14);
  }
}

void mlir::function_interface_impl::printFunctionOp(uint64_t a1, unsigned int *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48[8] = *MEMORY[0x1E69E9840];
  v46 = a2;
  v47 = a3;
  v44 = a8;
  v45 = a7;
  if (!*(a2 + 47) || (v49.var0 = "sym_name", v49.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a2, v49), (v14 & 1) == 0))
  {
    v50.var0 = "sym_name";
    v50.var1 = 8;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 14), v50);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v15 = InherentAttr;
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

  v48[0] = v15;
  AttrData = mlir::OpaqueAttr::getAttrData(v48);
  v18 = v17;
  v19 = (*(*a1 + 16))(a1);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
    if (!*(a2 + 47))
    {
LABEL_14:
      v52.var0 = "sym_visibility";
      v52.var1 = 14;
      v21 = mlir::DictionaryAttr::get((a2 + 14), v52);
      goto LABEL_15;
    }
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
    if (!*(a2 + 47))
    {
      goto LABEL_14;
    }
  }

  v51.var0 = "sym_visibility";
  v51.var1 = 14;
  v21 = mlir::Operation::getInherentAttr(a2, v51);
  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v21)
  {
    v23 = *(*v21 + 136);
    v24 = v23 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
    v25 = v23 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? v21 : 0;
    v48[0] = v25;
    if (v24)
    {
      v26 = mlir::OpaqueAttr::getAttrData(v48);
      v28 = v27;
      v29 = (*(*a1 + 16))(a1);
      if (v28 <= *(v29 + 24) - *(v29 + 32))
      {
        if (v28)
        {
          v30 = v29;
          memcpy(*(v29 + 32), v26, v28);
          *(v30 + 32) += v28;
        }
      }

      else
      {
        llvm::raw_ostream::write(v29, v26, v28);
      }

      v31 = (*(*a1 + 16))(a1);
      v32 = *(v31 + 4);
      if (v32 >= *(v31 + 3))
      {
        llvm::raw_ostream::write(v31, 32);
      }

      else
      {
        *(v31 + 4) = v32 + 1;
        *v32 = 32;
      }
    }
  }

  (*(*a1 + 88))(a1, AttrData, v18);
  ArgumentTypes = mlir::FunctionOpInterface::getArgumentTypes(&v46);
  v35 = v34;
  ResultTypes = mlir::FunctionOpInterface::getResultTypes(&v46);
  mlir::function_interface_impl::printFunctionSignature(a1, v46, v47, ArgumentTypes, v35, a4, ResultTypes, v37);
  v38 = v46;
  v48[0] = "sym_visibility";
  v48[1] = 14;
  v48[2] = a5;
  v48[3] = a6;
  v48[4] = mlir::OpaqueAttr::getAttrData(&v45);
  v48[5] = v39;
  v48[6] = mlir::OpaqueAttr::getAttrData(&v44);
  v48[7] = v40;
  mlir::function_interface_impl::printFunctionAttributes(a1, v38, v48, 4);
  v41 = (((&v46[4 * ((v46[11] >> 23) & 1) + 17] + ((v46[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v46[10]);
  if (*v41 != v41)
  {
    v42 = (*(*a1 + 16))(a1);
    v43 = *(v42 + 4);
    if (v43 >= *(v42 + 3))
    {
      llvm::raw_ostream::write(v42, 32);
    }

    else
    {
      *(v42 + 4) = v43 + 1;
      *v43 = 32;
    }

    (*(*a1 + 224))(a1, v41, 0, 1, 0);
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (**a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = (*(*v2 + 40))(v2);
    v37[0] = "variadic arguments must be in the end of the argument list";
    LOWORD(v38) = 259;
    (*(*v2 + 24))(&v41, v2, v3, v37);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
    if (v41)
    {
      mlir::InFlightDiagnostic::report(&v41);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v49;
        v7 = __p;
        if (v49 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v49 = v5;
        operator delete(v7);
      }

      v8 = v46;
      if (!v46)
      {
        goto LABEL_57;
      }

      v9 = v47;
      v10 = v46;
      if (v47 == v46)
      {
LABEL_56:
        v47 = v8;
        operator delete(v10);
LABEL_57:
        if (v44 != v45)
        {
          free(v44);
        }

        return v4;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          operator delete[](v11);
        }
      }

      while (v9 != v8);
LABEL_55:
      v10 = v46;
      goto LABEL_56;
    }

    return v4;
  }

  if (**(a1 + 16) == 1 && ((*(**(a1 + 8) + 352))(*(a1 + 8)) & 1) != 0)
  {
    v13 = *a1;
    v4 = 1;
    *v13 = 1;
    return v4;
  }

  memset(v37, 0, 24);
  v40[8] = 0;
  v38 = 0;
  Dictionary = 0;
  v40[0] = 0;
  v14 = (*(**(a1 + 8) + 760))();
  if ((v14 & 0x100) != 0)
  {
    if (v14)
    {
      v23 = *(a1 + 24);
      v24 = *(v23 + 2);
      if (v24 && !*(*v23 + (v24 << 6) - 48))
      {
        (*(**(a1 + 8) + 24))(&v41);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
        if (v41)
        {
          mlir::InFlightDiagnostic::report(&v41);
        }

        if (v51 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v42);
        }

        return v4;
      }

LABEL_53:
      v26 = *v23;
      v27 = v37;
      if (v24 >= *(v23 + 3))
      {
        v33 = v23;
        v34 = v24;
        v35 = v26 + (v24 << 6) > v37;
        if (v26 <= v37 && v35)
        {
          v36 = v37 - v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v33, (v33 + 2), v34 + 1, 64);
          v23 = v33;
          v26 = *v33;
          v27 = &v36[*v33];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v33, (v33 + 2), v34 + 1, 64);
          v23 = v33;
          v26 = *v33;
          v27 = v37;
        }
      }

      v28 = (v26 + (*(v23 + 2) << 6));
      v29 = *v27;
      v30 = *(v27 + 1);
      v31 = *(v27 + 3);
      v28[2] = *(v27 + 2);
      v28[3] = v31;
      *v28 = v29;
      v28[1] = v30;
      ++*(v23 + 2);
      return 1;
    }

    return 0;
  }

  v37[0] = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v15 = *(a1 + 24);
  v16 = *(v15 + 8);
  if (!v16 || !*(*v15 + (v16 << 6) - 48))
  {
    v41 = &v43;
    v42 = 0x400000000;
    v45[5] = 4;
    if ((*(**(a1 + 8) + 536))(*(a1 + 8), &v38) & 1) != 0 && ((*(**(a1 + 8) + 488))(*(a1 + 8), &v41) & 1) != 0 && ((*(**(a1 + 8) + 656))(*(a1 + 8), v40))
    {
      Context = mlir::AsmParser::getContext(*(a1 + 8));
      Dictionary = mlir::NamedAttrList::getDictionary(&v41, Context);
      if (v41 != &v43)
      {
        free(v41);
      }

      v23 = *(a1 + 24);
      LODWORD(v24) = *(v23 + 2);
      goto LABEL_53;
    }

    if (v41 != &v43)
    {
      free(v41);
    }

    return 0;
  }

  (*(**(a1 + 8) + 24))(&v41);
  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v49;
      v19 = __p;
      if (v49 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v49 = v17;
      operator delete(v19);
    }

    v8 = v46;
    if (!v46)
    {
      goto LABEL_57;
    }

    v20 = v47;
    v10 = v46;
    if (v47 == v46)
    {
      goto LABEL_56;
    }

    do
    {
      v22 = *--v20;
      v21 = v22;
      *v20 = 0;
      if (v22)
      {
        operator delete[](v21);
      }
    }

    while (v20 != v8);
    goto LABEL_55;
  }

  return v4;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    v4 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v1 + 1, 8);
    a1 = v4;
    LODWORD(v1) = *(v4 + 8);
  }

  *(*a1 + 8 * v1) = 0;
  v2 = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  return *a1 + 8 * v2 - 8;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionResultList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>(uint64_t a1)
{
  v11[9] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v2 + 2);
  if (v3 >= *(v2 + 3))
  {
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(v2);
    v4 = *(a1 + 8);
    v5 = *(v4 + 8);
    if (v5 < *(v4 + 12))
    {
      goto LABEL_3;
    }

LABEL_12:
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(v4);
    goto LABEL_4;
  }

  *(*v2 + 8 * v3) = 0;
  *(v2 + 2) = v3 + 1;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    goto LABEL_12;
  }

LABEL_3:
  *(*v4 + 8 * v5) = 0;
  *(v4 + 8) = v5 + 1;
LABEL_4:
  v10[0] = v11;
  v10[1] = 0x400000000;
  v11[8] = 4;
  if ((*(**(a1 + 16) + 536))(*(a1 + 16), **a1 + 8 * *(*a1 + 8) - 8) & 1) != 0 && ((*(**(a1 + 16) + 488))(*(a1 + 16), v10))
  {
    Context = mlir::AsmParser::getContext(*(a1 + 16));
    *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = mlir::NamedAttrList::getDictionary(v10, Context);
    v7 = 1;
    v8 = v10[0];
    if (v10[0] == v11)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = v10[0];
  if (v10[0] != v11)
  {
LABEL_9:
    free(v8);
  }

  return v7;
}

BOOL mlir::AsmParser::parseSymbolName(mlir::AsmParser *this, mlir::StringAttr *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(*this + 528))(this, a2))
  {
    return 1;
  }

  v4 = (*(*this + 40))(this);
  v20 = 257;
  (*(*this + 24))(v24, this, v4, v19);
  if (v24[0])
  {
    v21 = 3;
    v22 = "expected valid '@'-identifier for symbol name";
    v23 = 45;
    v5 = &v21;
    v6 = v25;
    if (v26 >= v27)
    {
      if (v25 <= &v21 && v25 + 24 * v26 > &v21)
      {
        v18 = &v21 - v25;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v6 = v25;
        v5 = (v25 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v5 = &v21;
        v6 = v25;
      }
    }

    v7 = &v6[24 * v26];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v26;
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v32;
      v11 = __p;
      if (v32 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v32 = v9;
      operator delete(v11);
    }

    v12 = v29;
    if (v29)
    {
      v13 = v30;
      v14 = v29;
      if (v30 != v29)
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
        v14 = v29;
      }

      v30 = v12;
      operator delete(v14);
    }

    if (v25 != v28)
    {
      free(v25);
    }
  }

  return v3;
}

uint64_t mlir::ub::UBDialect::initialize(int32x2_t *this)
{
  mlir::RegisteredOperationName::insert<mlir::ub::PoisonOp>(this);
  mlir::Dialect::addAttribute<mlir::ub::PoisonAttr>(this);
  v2 = operator new(0x18uLL);
  {
    v6 = v2;
    mlir::arith::ArithDialect::initialize();
    v2 = v6;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v2[1] = this;
  v2[2] = v3;
  *v2 = &unk_1F5AF5590;
  v8[0] = v2;
  mlir::Dialect::addInterface(this, v8);
  v4 = v8[0];
  v8[0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  {
    mlir::arith::ArithDialect::initialize();
  }

  v7[0] = &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id;
  v7[1] = mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(&this[9], v7, v8);
}

mlir::ub::UBDialect *mlir::ub::UBDialect::UBDialect(mlir::ub::UBDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "ub", 2, a2, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id);
  *v3 = &unk_1F5AF5418;
  mlir::ub::UBDialect::initialize(v3);
  return this;
}

void sub_1DFB44930(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::ub::UBDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ub::UBDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v44 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v48) = 0;
  v46 = 0;
  v47 = 0;
  v45 = v5;
  LOBYTE(v48) = 0;
  if (((*(*a2 + 640))(a2, &v46) & 1) == 0)
  {
    SingletonImpl = 0;
    LOWORD(v48) = 256;
    if ((v48 & 0x10000) != 0)
    {
      v40 = "poison";
    }

    else
    {
      BYTE2(v48) = 1;
    }

    goto LABEL_15;
  }

  v40 = "poison";
  v41 = 6;
  if ((v48 & 0x10000) != 0)
  {
    SingletonImpl = 0;
LABEL_15:
    v7 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v7 = v47;
  if (v47)
  {
    if (v47 == 6 && *v46 == 1936289648 && *(v46 + 4) == 28271)
    {
      Context = mlir::AsmParser::getContext(a2);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id);
      LOBYTE(v48) = SingletonImpl != 0;
      *(&v48 + 1) = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v44 + 648))(v44, &v40, 1);
    if ((v48 & 0x10000) != 0)
    {
      v7 = 0;
      v11 = 0;
      SingletonImpl = 0;
      goto LABEL_16;
    }

    v7 = v47;
  }

  SingletonImpl = 0;
  v11 = v46;
  LOWORD(v48) = 0;
  BYTE2(v48) = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v44) & 0x100) == 0)
  {
    v39 = 257;
    (*(*a2 + 24))(&v44, a2, v4, v38);
    if (v44)
    {
      LODWORD(v40) = 3;
      v42 = 19;
      v12 = &v40;
      v13 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v40 && v47 + 24 * v48 > &v40)
        {
          v35 = &v40 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v13 = v47;
          v12 = (v47 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v12 = &v40;
          v13 = v47;
        }
      }

      v14 = &v13[24 * v48];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      ++v48;
      if (v44)
      {
        v43 = 261;
        v40 = v11;
        v41 = v7;
        mlir::Diagnostic::operator<<(&v45, &v40);
        if (v44)
        {
          LODWORD(v40) = 3;
          v42 = 14;
          v16 = &v40;
          v17 = v47;
          if (v48 >= v49)
          {
            if (v47 <= &v40 && v47 + 24 * v48 > &v40)
            {
              v36 = &v40 - v47;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v17 = v47;
              v16 = (v47 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v16 = &v40;
              v17 = v47;
            }
          }

          v18 = &v17[24 * v48];
          v19 = *v16;
          *(v18 + 2) = v16[2];
          *v18 = v19;
          ++v48;
          if (v44)
          {
            v20 = *(a1 + 8);
            v21 = *(a1 + 16);
            v43 = 261;
            v40 = v20;
            v41 = v21;
            mlir::Diagnostic::operator<<(&v45, &v40);
            if (v44)
            {
              LODWORD(v40) = 3;
              v42 = 1;
              v22 = &v40;
              v23 = v47;
              if (v48 >= v49)
              {
                if (v47 <= &v40 && v47 + 24 * v48 > &v40)
                {
                  v37 = &v40 - v47;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v23 = v47;
                  v22 = (v47 + v37);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v22 = &v40;
                  v23 = v47;
                }
              }

              v24 = &v23[24 * v48];
              v25 = *v22;
              *(v24 + 2) = v22[2];
              *v24 = v25;
              ++v48;
              if (v44)
              {
                mlir::InFlightDiagnostic::report(&v44);
              }
            }
          }
        }
      }
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v54;
        v28 = __p;
        if (v54 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v54 = v26;
        operator delete(v28);
      }

      v29 = v51;
      if (v51)
      {
        v30 = v52;
        v31 = v51;
        if (v52 != v51)
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
          v31 = v51;
        }

        v52 = v29;
        operator delete(v31);
      }

      if (v47 != v50)
      {
        free(v47);
      }
    }

    return 0;
  }

  return SingletonImpl;
}

void mlir::ub::UBDialect::printAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = (*(*a3 + 16))(a3);
    v4 = v3[4];
    if ((v3[3] - v4) > 5)
    {
      *(v4 + 4) = 28271;
      *v4 = 1936289648;
      v3[4] += 6;
    }

    else
    {

      llvm::raw_ostream::write(v3, "poison", 6uLL);
    }
  }
}

uint64_t mlir::ub::PoisonOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v42 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      v43 = 3;
      v44 = "expected DictionaryAttr to set properties";
      v45 = 41;
      v13 = &v43;
      v14 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v39 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v14 = v47;
          v13 = (v47 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v13 = &v43;
          v14 = v47;
        }
      }

      v15 = &v14[24 * v48];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v54;
      v19 = __p;
      if (v54 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v54 = v17;
      operator delete(v19);
    }

    v20 = v51;
    if (!v51)
    {
      goto LABEL_49;
    }

    v21 = v52;
    v22 = v51;
    if (v52 == v51)
    {
      goto LABEL_48;
    }

    do
    {
      v24 = *--v21;
      v23 = v24;
      *v21 = 0;
      if (v24)
      {
        operator delete[](v23);
      }
    }

    while (v21 != v20);
    goto LABEL_47;
  }

  v58.var0 = "value";
  v58.var1 = 5;
  v8 = mlir::DictionaryAttr::get(&v42, v58);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
  }

  a3(v46, a4);
  if (v46[0])
  {
    v43 = 3;
    v45 = 50;
    v25 = &v43;
    v26 = v47;
    if (v48 >= v49)
    {
      if (v47 <= &v43 && v47 + 24 * v48 > &v43)
      {
        v40 = &v43 - v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v26 = v47;
        v25 = (v47 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v25 = &v43;
        v26 = v47;
      }
    }

    v27 = &v26[24 * v48];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    ++v48;
    if (v46[0])
    {
      v29 = &v43;
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v9);
      v30 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v41 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v30 = v47;
          v29 = (v47 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v29 = &v43;
          v30 = v47;
        }
      }

      v31 = &v30[24 * v48];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v54;
      v35 = __p;
      if (v54 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v54 = v33;
      operator delete(v35);
    }

    v20 = v51;
    if (!v51)
    {
      goto LABEL_49;
    }

    v36 = v52;
    v22 = v51;
    if (v52 == v51)
    {
LABEL_48:
      v52 = v20;
      operator delete(v22);
LABEL_49:
      if (v47 != v50)
      {
        free(v47);
      }

      return 0;
    }

    do
    {
      v38 = *--v36;
      v37 = v38;
      *v36 = 0;
      if (v38)
      {
        operator delete[](v37);
      }
    }

    while (v36 != v20);
LABEL_47:
    v22 = v51;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(uint64_t *a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v7 = *a1;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v37 = a5;
    v38 = a4;
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    a5 = v37;
    a4 = v38;
    v8 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
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
  if (v11 != &v9[2 * v10] && *v11 == v8 && v11[1])
  {
    return 1;
  }

LABEL_14:
  a4(&v43, a5);
  if (v43)
  {
    LODWORD(v39) = 3;
    v40 = "attribute '";
    v41 = 11;
    v17 = &v39;
    v18 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v39 && v45 + 24 * v46 > &v39)
      {
        v35 = &v39 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v18 = v45;
        v17 = v45 + v35;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v17 = &v39;
        v18 = v45;
      }
    }

    v19 = &v18[24 * v46];
    v20 = *v17;
    *(v19 + 2) = *(v17 + 2);
    *v19 = v20;
    ++v46;
    if (v43)
    {
      v42 = 261;
      v39 = a2;
      v40 = a3;
      mlir::Diagnostic::operator<<(&v44, &v39);
      if (v43)
      {
        LODWORD(v39) = 3;
        v40 = "' failed to satisfy constraint: PoisonAttrInterface instance";
        v41 = 60;
        v21 = &v39;
        v22 = v45;
        if (v46 >= v47)
        {
          if (v45 <= &v39 && v45 + 24 * v46 > &v39)
          {
            v36 = &v39 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v22 = v45;
            v21 = v45 + v36;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v21 = &v39;
            v22 = v45;
          }
        }

        v23 = &v22[24 * v46];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        ++v46;
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
  if (v43)
  {
    mlir::InFlightDiagnostic::report(&v43);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
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
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

BOOL mlir::ub::PoisonOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ub::PoisonAttrInterface>(a1, v3);
  }

  v6 = operator new(0x10uLL);
  *v6 = 0;
  v6[1] = 0;
  a2[32] = v6;
  a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  a2[35] = &v8;
  a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  a2[37] = &v7;
  {
    mlir::ub::PoisonOp::readProperties();
  }

  a2[33] = mlir::detail::TypeIDResolver<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ub::PoisonAttrInterface>(a1, a2[32]);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ub::PoisonAttrInterface>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  if (!v36)
  {
    return 1;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v36);
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface]";
  v38 = 79;
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

void mlir::ub::PoisonOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      v8 = a4;
      v9 = a5;
      v10 = operator new(0x10uLL);
      *v10 = 0;
      v10[1] = 0;
      *(a2 + 256) = v10;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v12;
      {
        mlir::ub::PoisonOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v7 = *(a2 + 256);
      a5 = v9;
      a4 = v8;
    }

    *v7 = a4;
    v7[1] = a5;
  }

  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
}

mlir::MLIRContext *mlir::ub::PoisonOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v18 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v18);
  if (*a2)
  {
    return result;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
  result = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id);
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = *result;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    *a2 = result;
    a2[1] = 0;
    return result;
  }

  v16 = v5;
  v17 = result;
  mlir::ub::PoisonOp::populateDefaultProperties();
  result = v17;
  v6 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
  v7 = *(v16 + 8);
  v8 = *(v16 + 16);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_5:
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
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
    goto LABEL_15;
  }

  v15 = v9[1];
  *a2 = result;
  a2[1] = v15;
  return result;
}

uint64_t mlir::ub::PoisonOp::parse(uint64_t a1, uint64_t a2)
{
  v13 = 0uLL;
  v12 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v11[0] = a1;
  v11[1] = &v12;
  v11[2] = a2;
  v5 = mlir::NamedAttrList::get(a2 + 112, **(v4 + 96));
  if (v5)
  {
    if ((mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v5, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v11) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*a1 + 160))(a1))
  {
    if (!mlir::AsmParser::parseAttribute<mlir::ub::PoisonAttrInterface>(a1, &v13, 0))
    {
      return 0;
    }

    if (v13)
    {
      v6 = *(a2 + 256);
      if (!v6)
      {
        v7 = operator new(0x10uLL);
        *v7 = 0;
        v7[1] = 0;
        *(a2 + 256) = v7;
        *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
        *(a2 + 280) = v11;
        *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
        *(a2 + 296) = v11;
        {
          mlir::ub::PoisonOp::readProperties();
        }

        *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
        v6 = *(a2 + 256);
      }

      *v6 = v13;
    }

    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v11[0] = 0;
  if (((*(*a1 + 536))(a1, v11) & 1) == 0)
  {
    return 0;
  }

  v8 = v11[0];
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = v8;
  ++*(a2 + 72);
  return 1;
}

void mlir::ub::PoisonOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v34[0] = "value";
  v34[1] = 5;
  v33 = 0x200000001;
  Context = mlir::Attribute::getContext((*this + 24));
  v5 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v5)
  {
    v6 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(v5);
    if (v6)
    {
      v7 = v6;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      if (mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id) == v7)
      {
        v9 = v32 + 16 * v33;
        *v9 = "value";
        v9[1] = 5;
        LODWORD(v33) = v33 + 1;
      }
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v32, v33);
  v12 = *this;
  v13 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v13)
  {
    v14 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(v13);
    v12 = *this;
  }

  else
  {
    v14 = 0;
  }

  v15 = mlir::Attribute::getContext((v12 + 24));
  v16 = mlir::MLIRContext::getAttributeUniquer(v15);
  if (v14 != mlir::StorageUniquer::getSingletonImpl(v16, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id))
  {
    v17 = (*(*a2 + 16))(a2);
    v18 = v17[4];
    if (v17[3] == v18)
    {
      llvm::raw_ostream::write(v17, "<", 1uLL);
      v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v18 = 60;
      ++v17[4];
      v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      if (v19)
      {
LABEL_11:
        v20 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(v19);
        goto LABEL_14;
      }
    }

    v20 = 0;
LABEL_14:
    (*(*a2 + 40))(a2, v20);
    v21 = (*(*a2 + 16))(a2);
    v22 = v21[4];
    if (v21[3] == v22)
    {
      llvm::raw_ostream::write(v21, ">", 1uLL);
    }

    else
    {
      *v22 = 62;
      ++v21[4];
    }
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  if (*(*this + 9))
  {
    v29 = *this - 16;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32 != v34)
  {
    free(v32);
  }
}

void *llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
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
    v12 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
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
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
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

void *llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      v11 = v1;
      v12 = result;
      mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
      result = v12;
      v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
      v3 = *(v11 + 8);
      v4 = *(v11 + 16);
      if (!v4)
      {
        return result;
      }
    }

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
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ub::PoisonOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "ub.poison", 9, a1, &mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF54B0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::ub::PoisonOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v9, a2);
  v6 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v7 = v9[0];
      if ((v10 & 2) != 0)
      {
        v7 = v9;
      }

      v8 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v3, v4, v5);
      result = v8;
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  v5 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      if ((v8 & 2) != 0)
      {
        v6 = v7;
      }

      else
      {
        v6 = v7[0];
      }

      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v6);
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 5 && (*a3 == 1970037110 ? (v7 = *(a3 + 4) == 101) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 5 && *result == 1970037110 && *(result + 4) == 101)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      result = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(a4);
      *(v10 + 64) = result;
      *(v10 + 72) = v11;
    }

    else
    {
      result = 0;
      *(v10 + 64) = 0;
      *(v10 + 72) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "value", 5, v5);
  }
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

  return mlir::ub::PoisonOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::ConstantOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::writeProperties;
  {
    v9 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>::getSpeculatability;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::getEffects;
  {
    v11 = v6;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::ub::PoisonOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v8 = a1 + 64;
  v9 = *(a1 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a1 + 64 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v16, v11, v10);
  v16[2] = a2;
  v16[3] = a3;
  result = *(v8 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (result)
  {
    v13 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(result);
    if (v13 < 8)
    {
      return 0;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFFFBLL;
      v15 = *(a4 + 8);
      if (v15 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v15 + 1, 8);
        LODWORD(v15) = *(a4 + 8);
      }

      *(*a4 + 8 * v15) = v14;
      ++*(a4 + 8);
      return 1;
    }
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ub::PoisonOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if (!mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    return 0;
  }

  v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  v9 = a1;
  if ((mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v6, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return 1;
}

uint64_t mlir::Dialect::addAttribute<mlir::ub::PoisonAttr>(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(a1, &v13);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, &v13);
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

  if (v4 != &v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_2ub10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc(1uLL);
  v5 = v4;
  {
    v10 = v4;
    mlir::ub::PoisonOp::populateDefaultProperties();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJNSD_19PoisonAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJNSC_19PoisonAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  *(a2 + 144) = "ub.poison";
  *(a2 + 152) = 9;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface::Trait<Empty>]";
  v6 = 93;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 0;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 0;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

void anonymous namespace::UBInlinerInterface::~UBInlinerInterface(_anonymous_namespace_::UBInlinerInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseAttribute<mlir::ub::PoisonAttrInterface>(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v21);
  *a2 = v7;
  a2[1] = v8;
  if (v7)
  {
    return 1;
  }

  v19 = "invalid kind of attribute specified";
  v20 = 259;
  (*(*a1 + 24))(v22, a1, v6, &v19);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v10 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v10;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v28;
      v13 = __p;
      if (v28 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v28 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v25;
    if (v25)
    {
      v15 = v26;
      v16 = v25;
      if (v26 != v25)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            operator delete[](v17);
          }
        }

        while (v15 != v14);
        v16 = v25;
      }

      v26 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v10;
    }
  }

  return result;
}

uint64_t mlir::AffineExpr::walk<void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(v4, a1);
}

uint64_t mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) <= 4u)
  {
    mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(a1, *(a2 + 16));
    mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(a1, *(a2 + 24));
  }

  v5 = *a1;
  v4 = *(a1 + 8);

  return v5(v4, a2);
}

uint64_t mlir::getAffineBinaryOpExpr(int a1, mlir::MLIRContext **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return mlir::AffineExpr::ceilDiv(&v4, a3);
      }

      return mlir::AffineExpr::operator%(&v4, a3);
    }

    return mlir::AffineExpr::floorDiv(&v4, a3);
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return mlir::AffineExpr::operator*(&v4, a3);
      }

      return mlir::AffineExpr::operator%(&v4, a3);
    }

    return mlir::AffineExpr::operator+(&v4, a3);
  }
}

uint64_t mlir::AffineExpr::operator+(uint64_t *a1, uint64_t a2)
{
  v44 = a2;
  v45 = a2;
  result = *a1;
  v46 = result;
  v4 = *(result + 8);
  if (v4 == 5)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6 == 5)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v11 = *(v5 + 16);
    v12 = *(v7 + 16);
    v13 = __OFADD__(v11, v12);
    v14 = (v11 + v12);
    if (v13)
    {
      goto LABEL_20;
    }

    v47 = *result;
    v48 = v14;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v47);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v47, &v48);
LABEL_17:
    if (result)
    {
      return result;
    }

    result = *a1;
LABEL_20:
    v16 = mlir::MLIRContext::getAffineUniquer(*result);
    LODWORD(v48) = 0;
    return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v48, a1, &v44);
  }

  v9 = result;
  if (v4 == 5 || mlir::AffineExpr::isSymbolicOrConstant(&v46) && (mlir::AffineExpr::isSymbolicOrConstant(&v45) & 1) == 0)
  {
    v10 = &v45;
LABEL_14:
    result = mlir::AffineExpr::operator+(v10, v9);
    goto LABEL_17;
  }

  if (!v7)
  {
    result = v9;
    v25 = v4 > 4 || v9 == 0;
    v23 = a2;
    if (v25)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_54;
    }

    v27 = *(v9 + 8);
LABEL_45:
    if (v27 == 1)
    {
      v28 = *(result + 24);
      v22 = 1;
      v21 = 1;
      if (v28)
      {
        v20 = result;
        v9 = result;
        if (*(v28 + 8) == 5)
        {
          v22 = *(v28 + 16);
          v9 = *(result + 16);
          v21 = 1;
          v20 = result;
          if (v6 >= 5)
          {
            v24 = 0;
          }

          else
          {
            v24 = v23;
          }

          if (!v24)
          {
            goto LABEL_64;
          }

          goto LABEL_59;
        }

        goto LABEL_55;
      }

      goto LABEL_97;
    }

    v21 = 1;
    v20 = result;
LABEL_54:
    v22 = 1;
    v9 = result;
    goto LABEL_55;
  }

  v18 = *(v7 + 16);
  result = v9;
  if (v18)
  {
    if (v4 > 4 || v9 == 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v23 = a2;
      if (v6 >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = a2;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v27 = *(v9 + 8);
    v23 = a2;
    if (!v27)
    {
      v26 = *(v9 + 24);
      v22 = 1;
      v21 = 1;
      if (v26)
      {
        v20 = v9;
        if (*(v26 + 8) == 5)
        {
          v48 = *(v9 + 16);
          result = mlir::AffineExpr::operator+(&v48, v18 + *(v26 + 16));
          goto LABEL_17;
        }

LABEL_55:
        if (v6 >= 5)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        if (!v24)
        {
          goto LABEL_64;
        }

LABEL_59:
        if (*(v24 + 8) == 1)
        {
          v29 = *(v24 + 24);
          if (v29 && *(v29 + 8) == 5)
          {
            v31 = *(v29 + 16);
            if (v9 != *(v24 + 16))
            {
              goto LABEL_65;
            }

            goto LABEL_93;
          }
        }

LABEL_64:
        v31 = 1;
        if (v9 != v23)
        {
LABEL_65:
          if (v21)
          {
            if (!*(v20 + 8))
            {
              v9 = *(v20 + 24);
              if (v9)
              {
                if (*(v9 + 8) == 5)
                {
                  v47 = *(v20 + 16);
                  v48 = mlir::AffineExpr::operator+(&v47, v23);
                  v10 = &v48;
                  goto LABEL_14;
                }
              }
            }
          }

          if (!v24)
          {
            goto LABEL_20;
          }

          v32 = *(v24 + 16);
          v33 = *(v24 + 24);
          v48 = v33;
          if (*(v32 + 8) >= 5)
          {
            v32 = 0;
          }

          if (v33 && *(v33 + 8) == 5 && *(v33 + 16) == -1)
          {
            if (!v32)
            {
              goto LABEL_112;
            }

            v35 = *(v32 + 8);
            if (v35 == 1)
            {
              v42 = *(v32 + 16);
              if (v42)
              {
                v43 = *(v42 + 8) == 3;
              }

              else
              {
                v43 = 0;
              }

              if (!v43)
              {
                goto LABEL_112;
              }

              v36 = *(v32 + 24);
              if (*(v42 + 24) == v36 && result == *(v42 + 16))
              {
LABEL_91:
                result = mlir::AffineExpr::operator%(&v46, v36);
                goto LABEL_17;
              }
            }

            if (v6 != 1)
            {
LABEL_112:
              result = 0;
              goto LABEL_17;
            }
          }

          else
          {
            if (v32)
            {
              v34 = v6 == 1;
            }

            else
            {
              v34 = 0;
            }

            if (!v34)
            {
              goto LABEL_112;
            }

            v35 = *(v32 + 8);
          }

          if (v35 == 3)
          {
            v36 = *(v32 + 24);
            if (v36 && *(v36 + 8) == 5)
            {
              v38 = *(v32 + 16);
              v39 = *(v36 + 16) >= 1 && result == v38;
              if (v39 && v36 == mlir::AffineExpr::operator-(&v48))
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_112;
        }

LABEL_93:
        v47 = *result;
        v48 = (v31 + v22);
        v40 = mlir::MLIRContext::getAffineUniquer(v47);
        v41 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v40, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v47, &v48);
        v48 = v9;
        result = mlir::AffineExpr::operator*(&v48, v41);
        goto LABEL_17;
      }

LABEL_97:
      v20 = result;
      v9 = result;
      if (v6 >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t mlir::AffineExpr::operator*(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v20 = a2;
  v3 = *a1;
  v21 = v3;
  v4 = *(v3 + 8);
  if (v4 == 5)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 8) == 5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if ((mlir::AffineExpr::isSymbolicOrConstant(&v21) & 1) == 0 && !mlir::AffineExpr::isSymbolicOrConstant(&v20))
    {
      goto LABEL_31;
    }

    isSymbolicOrConstant = mlir::AffineExpr::isSymbolicOrConstant(&v20);
    if (v4 != 5 && (isSymbolicOrConstant & 1) != 0)
    {
      if (v6)
      {
        v10 = *(v6 + 16);
        if (!v10)
        {
          return a2;
        }

        if (v10 == 1)
        {
          return v3;
        }

        if (v4 > 4 || !v3 || *(v3 + 8) != 1)
        {
          goto LABEL_31;
        }

        v11 = *(v3 + 24);
        if (v11 && *(v11 + 8) == 5)
        {
          v23 = *(v3 + 16);
          v3 = mlir::AffineExpr::operator*(&v23, v10 * *(v11 + 16));
          if (!v3)
          {
            goto LABEL_30;
          }

          return v3;
        }
      }

      else
      {
        v17 = v4 > 4 || v3 == 0;
        if (v17 || *(v3 + 8) != 1)
        {
          goto LABEL_31;
        }
      }

      v18 = *(v3 + 24);
      if (!v18 || *(v18 + 8) != 5)
      {
        goto LABEL_31;
      }

      v22 = *(v3 + 16);
      v23 = mlir::AffineExpr::operator*(&v22, a2);
      v3 = mlir::AffineExpr::operator*(&v23, v18);
      if (v3)
      {
        return v3;
      }

      goto LABEL_30;
    }

    v3 = mlir::AffineExpr::operator*(&v20, v3);
    if (!v3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = *(v6 + 16);
    if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
    {
LABEL_31:
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(*v3);
      LODWORD(v23) = 1;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(AffineUniquer, 0, 0, &v23, a1, &v19);
    }

    v22 = *v3;
    v23 = v12 * v13;
    v14 = mlir::MLIRContext::getAffineUniquer(v22);
    v3 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v14, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v22, &v23);
    if (!v3)
    {
LABEL_30:
      v3 = *a1;
      goto LABEL_31;
    }
  }

  return v3;
}

{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator*(a1, v4);
}

uint64_t mlir::AffineExpr::floorDiv(mlir::MLIRContext ***a1, uint64_t a2)
{
  v22 = a2;
  if (*(*a1 + 2) == 5)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_27;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    v7 = *a1;
    v24 = *a2;
    v25 = 1;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v24);
    if (mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v24, &v25) == a2)
    {
      return v7;
    }

    v10 = *(v7 + 2);
    if (v10 <= 4)
    {
      if (!v10)
      {
        v17 = v7[2];
        v25 = v17;
        LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v25);
        v25 = v7[3];
        v19 = mlir::AffineExpr::getLargestKnownDivisor(&v25);
        v20 = *(a2 + 16);
        if (LargestKnownDivisor % v20 && v19 % v20)
        {
          goto LABEL_27;
        }

        v24 = v17;
        v25 = mlir::AffineExpr::floorDiv(&v24, v20);
        v23 = v7[3];
        v21 = mlir::AffineExpr::floorDiv(&v23, *(a2 + 16));
        result = mlir::AffineExpr::operator+(&v25, v21);
        if (!result)
        {
          goto LABEL_27;
        }

        return result;
      }

      if (v10 == 1)
      {
        v11 = v7[3];
        if (v11)
        {
          if (*(v11 + 2) == 5)
          {
            v12 = *(v11 + 2);
            v13 = *(a2 + 16);
            if (!(v12 % v13))
            {
              v25 = v7[2];
              result = mlir::AffineExpr::operator*(&v25, v12 / v13);
              if (result)
              {
                return result;
              }
            }
          }
        }
      }
    }

LABEL_27:
    v16 = mlir::MLIRContext::getAffineUniquer(**a1);
    LODWORD(v25) = 3;
    return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v25, a1, &v22);
  }

  v5 = v3[2];
  if (v4 == -1 && v5 == 0x8000000000000000)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    v6 = ((v5 ^ v4) & 0x8000000000000000) != 0 ? (v5 + ((v4 >> 63) | 1)) / v4 - 1 : v5 / v4;
  }

  else
  {
    v6 = 0;
  }

  v24 = **a1;
  v25 = v6;
  v15 = mlir::MLIRContext::getAffineUniquer(v24);
  result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v15, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v24, &v25);
  if (!result)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t mlir::AffineExpr::ceilDiv(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  result = *a1;
  v4 = *(result + 8);
  if (v4 == 5)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_31;
  }

  if (v5)
  {
    v7 = *(v5 + 16);
    if (v6 == -1 && v7 == 0x8000000000000000)
    {
      goto LABEL_31;
    }

    if (v7)
    {
      if ((v7 ^ v6) < 0)
      {
        v9 = v7 / v6;
      }

      else
      {
        if (v6 < 0)
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = v7 - 1;
        }

        v9 = v8 / v6 + 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = *result;
    v17 = v9;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v16);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v16, &v17);
  }

  else
  {
    if (v6 == 1)
    {
      return result;
    }

    if (v4 != 1 || ((v10 = *(result + 24)) != 0 ? (v11 = *(v10 + 8) == 5) : (v11 = 0), !v11 || (v12 = *(v10 + 16), v12 % v6)))
    {
LABEL_31:
      v14 = mlir::MLIRContext::getAffineUniquer(*result);
      LODWORD(v17) = 4;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v14, 0, 0, &v17, a1, &v15);
    }

    v17 = *(result + 16);
    result = mlir::AffineExpr::operator*(&v17, v12 / v6);
  }

  if (!result)
  {
    result = *a1;
    goto LABEL_31;
  }

  return result;
}

uint64_t mlir::AffineExpr::operator%(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v17 = a2;
  v18 = v3;
  v4 = *(v3 + 8);
  if (v4 == 5)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_27;
  }

  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    v7 = *v3;
    v20 = ((v6 & ((*(v5 + 16) % v6) >> 63)) + *(v5 + 16) % v6);
    goto LABEL_9;
  }

  if (!(mlir::AffineExpr::getLargestKnownDivisor(&v18) % v6))
  {
    v7 = *v3;
    v20 = 0;
LABEL_9:
    v19 = v7;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v7);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v19, &v20);
    if (result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v4 > 4)
  {
    goto LABEL_27;
  }

  if (v4 == 2)
  {
    v14 = *(v3 + 24);
    if (!v14)
    {
      goto LABEL_27;
    }

    if (*(v14 + 8) != 5)
    {
      goto LABEL_27;
    }

    v15 = *(v14 + 16);
    if (v15 < 1 || v15 % v6)
    {
      goto LABEL_27;
    }

    v20 = *(v3 + 16);
  }

  else
  {
    if (v4)
    {
      goto LABEL_27;
    }

    v10 = *(v3 + 16);
    v20 = v10;
    LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    v12 = *(v3 + 24);
    v20 = v12;
    v13 = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    if (LargestKnownDivisor % v6)
    {
      if (!(v13 % v6))
      {
        v20 = v10;
        goto LABEL_25;
      }

LABEL_27:
      v16 = mlir::MLIRContext::getAffineUniquer(*v3);
      LODWORD(v20) = 2;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v20, a1, &v17);
    }

    v20 = v12;
  }

LABEL_25:
  result = mlir::AffineExpr::operator%(&v20, v6);
  if (!result)
  {
LABEL_26:
    v3 = *a1;
    goto LABEL_27;
  }

  return result;
}

uint64_t mlir::AffineExpr::replaceDimsAndSymbols(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = *a1;
  v7 = *(result + 8);
  if (v7 > 4)
  {
    if (v7 != 5)
    {
      if (v7 == 7)
      {
        v14 = *(result + 16);
        v15 = (a4 + 8 * v14);
        v16 = a5 > v14;
      }

      else
      {
        v17 = *(result + 16);
        v15 = (a2 + 8 * v17);
        v16 = a3 > v17;
      }

      if (v16)
      {
        v18 = v15;
      }

      else
      {
        v18 = a1;
      }

      return *v18;
    }
  }

  else
  {
    v8 = *(result + 16);
    v9 = *(result + 24);
    v19 = v9;
    v20 = v8;
    v10 = mlir::AffineExpr::replaceDimsAndSymbols(&v20);
    v11 = mlir::AffineExpr::replaceDimsAndSymbols(&v19);
    result = *a1;
    if (v8 != v10 || v9 != v11)
    {
      v13 = *(result + 8);
      v21 = v10;
      if (v13 > 2)
      {
        if (v13 != 3)
        {
          if (v13 == 4)
          {
            return mlir::AffineExpr::ceilDiv(&v21, v11);
          }

          return mlir::AffineExpr::operator%(&v21, v11);
        }

        return mlir::AffineExpr::floorDiv(&v21, v11);
      }

      else
      {
        if (v13)
        {
          if (v13 == 1)
          {
            return mlir::AffineExpr::operator*(&v21, v11);
          }

          return mlir::AffineExpr::operator%(&v21, v11);
        }

        return mlir::AffineExpr::operator+(&v21, v11);
      }
    }
  }

  return result;
}

uint64_t mlir::AffineExpr::shiftDims(mlir::MLIRContext ***this, unsigned int a2, int a3, unsigned int a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v27 = v29;
  v28 = 0x400000000;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v9 = **this;
      v26 = i;
      v25 = v9;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v9);
      v24 = 6;
      v11 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v25, &v24, &v26);
      v12 = v28;
      if (v28 >= HIDWORD(v28))
      {
        v14 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v11 = v14;
        v12 = v28;
      }

      *(v27 + v12) = v11;
      v13 = v28 + 1;
      LODWORD(v28) = v28 + 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = a2 - a4;
  if (a2 > a4)
  {
    v16 = a4 + a3;
    do
    {
      v17 = **this;
      v26 = v16;
      v25 = v17;
      v18 = mlir::MLIRContext::getAffineUniquer(v17);
      v24 = 6;
      v19 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v18, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v25, &v24, &v26);
      v20 = v28;
      if (v28 >= HIDWORD(v28))
      {
        v21 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v19 = v21;
        v20 = v28;
      }

      *(v27 + v20) = v19;
      v13 = v28 + 1;
      LODWORD(v28) = v28 + 1;
      ++v16;
      --v15;
    }

    while (v15);
  }

  result = mlir::AffineExpr::replaceDimsAndSymbols(this, v27, v13, 0, 0);
  if (v27 != v29)
  {
    v23 = result;
    free(v27);
    return v23;
  }

  return result;
}

uint64_t mlir::getAffineDimExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v7 = this;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  v5 = 6;
  return mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v6, &v5, &v7);
}

uint64_t mlir::AffineExpr::shiftSymbols(mlir::MLIRContext ***this, unsigned int a2, int a3, unsigned int a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v27 = v29;
  v28 = 0x400000000;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v9 = **this;
      v26 = i;
      v25 = v9;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v9);
      v24 = 7;
      v11 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v25, &v24, &v26);
      v12 = v28;
      if (v28 >= HIDWORD(v28))
      {
        v14 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v11 = v14;
        v12 = v28;
      }

      *(v27 + v12) = v11;
      v13 = v28 + 1;
      LODWORD(v28) = v28 + 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = a2 - a4;
  if (a2 > a4)
  {
    v16 = a4 + a3;
    do
    {
      v17 = **this;
      v26 = v16;
      v25 = v17;
      v18 = mlir::MLIRContext::getAffineUniquer(v17);
      v24 = 7;
      v19 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v18, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v25, &v24, &v26);
      v20 = v28;
      if (v28 >= HIDWORD(v28))
      {
        v21 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v19 = v21;
        v20 = v28;
      }

      *(v27 + v20) = v19;
      v13 = v28 + 1;
      LODWORD(v28) = v28 + 1;
      ++v16;
      --v15;
    }

    while (v15);
  }

  result = mlir::AffineExpr::replaceDimsAndSymbols(this, 0, 0, v27, v13);
  if (v27 != v29)
  {
    v23 = result;
    free(v27);
    return v23;
  }

  return result;
}

uint64_t mlir::getAffineSymbolExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v7 = this;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  v5 = 7;
  return mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v6, &v5, &v7);
}

uint64_t mlir::AffineExpr::replace(unint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = *a2;
    v4 = HIDWORD(*a1);
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v4);
    v6 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5)))) & (v2 - 1);
    v7 = *(*a2 + 16 * v6);
    if (*a1 == v7)
    {
LABEL_3:
      if (v6 != v2)
      {
        return *(v3 + 16 * v6 + 8);
      }
    }

    else
    {
      v18 = 1;
      while (v7 != -4096)
      {
        v19 = v6 + v18++;
        v6 = v19 & (v2 - 1);
        v7 = *(v3 + 16 * v6);
        if (*a1 == v7)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v8 = *a1;
  if (*(*a1 + 8) <= 4u)
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v20 = v10;
    v21 = v9;
    v12 = mlir::AffineExpr::replace(&v21);
    v13 = mlir::AffineExpr::replace(&v20);
    v8 = *a1;
    if (v9 != v12 || v10 != v13)
    {
      v15 = *(v8 + 8);
      v22 = v12;
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          return mlir::AffineExpr::floorDiv(&v22, v13);
        }

        if (v15 == 4)
        {
          return mlir::AffineExpr::ceilDiv(&v22, v13);
        }
      }

      else
      {
        if (!v15)
        {
          return mlir::AffineExpr::operator+(&v22, v13);
        }

        if (v15 == 1)
        {
          return mlir::AffineExpr::operator*(&v22, v13);
        }
      }

      return mlir::AffineExpr::operator%(&v22, v13);
    }
  }

  return v8;
}

void mlir::AffineExpr::replace(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v5 = a2;
  v6 = a3;
  llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v7, &v5, &v6, &v4);
  mlir::AffineExpr::replace(a1, v7);
  llvm::deallocate_buffer(v7[0], (16 * v8));
}

uint64_t mlir::AffineExpr::isSymbolicOrConstant(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return v2 == 5 || v2 == 7;
  }

  v6 = *(v1 + 16);
  result = mlir::AffineExpr::isSymbolicOrConstant(&v6);
  if (result)
  {
    v5 = *(v1 + 24);
    return mlir::AffineExpr::isSymbolicOrConstant(&v5);
  }

  return result;
}

uint64_t mlir::AffineExpr::isPureAffine(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return 1;
  }

  if ((v2 - 2) < 3)
  {
    v8 = *(v1 + 16);
    result = mlir::AffineExpr::isPureAffine(&v8);
    if (result)
    {
      v4 = *(*(v1 + 24) + 8);
      return v4 == 5;
    }

    return result;
  }

  if (!v2)
  {
    v8 = *(v1 + 16);
    result = mlir::AffineExpr::isPureAffine(&v8);
    if (result)
    {
      v7 = *(v1 + 24);
      return mlir::AffineExpr::isPureAffine(&v7);
    }

    return result;
  }

  v5 = *(v1 + 16);
  v8 = v5;
  result = mlir::AffineExpr::isPureAffine(&v8);
  if (result)
  {
    v6 = *(v1 + 24);
    v7 = v6;
    result = mlir::AffineExpr::isPureAffine(&v7);
    if (result)
    {
      if (*(v5 + 8) != 5)
      {
        v4 = *(v6 + 8);
        return v4 == 5;
      }

      return 1;
    }
  }

  return result;
}

unint64_t mlir::AffineExpr::getLargestKnownDivisor(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 2)
  {
    if ((v2 - 3) < 2)
    {
      v13 = *(v1 + 24);
      if (v13)
      {
        v14 = *(v13 + 8) == 5;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        return 1;
      }

      v16 = *(v13 + 16);
      if (!v16)
      {
        return 1;
      }

      v19 = *(v1 + 16);
      LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v15 = LargestKnownDivisor / v16;
      if (LargestKnownDivisor % v16)
      {
        return 1;
      }
    }

    else
    {
      if ((v2 - 6) < 2)
      {
        return 1;
      }

      v15 = *(v1 + 16);
    }

    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    if (v2)
    {
      v3 = v2 == 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v19 = *(v1 + 16);
      v12 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v18 = *(v1 + 24);
      return mlir::AffineExpr::getLargestKnownDivisor(&v18) * v12;
    }

    else
    {
      v19 = *(v1 + 16);
      v4 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v18 = *(v1 + 24);
      result = mlir::AffineExpr::getLargestKnownDivisor(&v18);
      v6 = result;
      v7 = v4 > result;
      if (v4 < result)
      {
        result = v4;
      }

      if (v7)
      {
        v6 = v4;
      }

      if (result)
      {
        v8 = v6 % result;
        if (v8)
        {
          v9 = v8 >> __clz(__rbit64(v8));
          v10 = result;
          do
          {
            v11 = v10 >> __clz(__rbit64(v10));
            v10 = v11 - v9;
            if (v9 > v11)
            {
              v10 = v9 - v11;
            }

            if (v9 >= v11)
            {
              v9 = v11;
            }
          }

          while (v10);
          return v9 << __clz(__rbit64(v8 | result));
        }
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

BOOL mlir::AffineExpr::operator==(mlir::MLIRContext ***a1, uint64_t a2)
{
  v5 = **a1;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
  return *a1 == mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
}

uint64_t mlir::getAffineConstantExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v5 = a2;
  v6 = this;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineConstantExprStorage,void>::resolveTypeID(void)::id, 37 * v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::AffineExpr::operator+(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator+(a1, v4);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, void *a6)
{
  v6 = a2;
  {
    v18 = a5;
    v19 = a1;
    v15 = a4;
    v16 = a6;
    v17 = a3;
    mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>();
    v6 = a2;
    a4 = v15;
    a3 = v17;
    a5 = v18;
    a6 = v16;
    a1 = v19;
  }

  v25[0] = v6;
  v25[1] = a3;
  v22 = *a4;
  v7 = *a6;
  v23 = *a5;
  v24 = v7;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v23 - 0xAE502812AA7333) ^ HIDWORD(v23));
  v9 = HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v11 = (1400339394 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) | (0xEB382D6900000000 * ((((0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (HIDWORD(v23) ^ (v8 >> 47) ^ v8))));
  v12 = 0xBF58476D1CE4E5B9 * (((0xBF58476D1CE4E5B9 * v11) >> 31) ^ (484763065 * v11) | ((37 * v22) << 32));
  v21 = &v22;
  v20[0] = &v22;
  v20[1] = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID(void)::id, (v12 >> 31) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
}

uint64_t mlir::AffineExpr::operator-(uint64_t *a1)
{
  v5 = **a1;
  v6 = -1;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
  v3 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
  return mlir::AffineExpr::operator*(a1, v3);
}

uint64_t mlir::AffineExpr::operator-(uint64_t *a1, mlir::MLIRContext **a2)
{
  v7 = a2;
  v8 = *a2;
  v9 = -1;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v8);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v8, &v9);
  v5 = mlir::AffineExpr::operator*(&v7, v4);
  return mlir::AffineExpr::operator+(a1, v5);
}

uint64_t mlir::AffineExpr::floorDiv(mlir::MLIRContext ***this, uint64_t a2)
{
  v6 = **this;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::floorDiv(this, v4);
}

uint64_t mlir::AffineExpr::operator%(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator%(a1, v4);
}

uint64_t mlir::AffineExpr::compose(uint64_t *a1, uint64_t a2)
{
  v15[8] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Results = mlir::AffineMap::getResults(&v12);
  v5 = v4;
  v13 = v15;
  v14 = 0x800000000;
  v6 = (8 * v4) >> 3;
  if (v6 < 9)
  {
    v7 = 0;
    v8 = v15;
    v9 = 8 * v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, v6, 8);
  v7 = v14;
  v8 = v13;
  v9 = 8 * v5;
  if (v5)
  {
LABEL_5:
    memcpy(&v8[v7], Results, v9);
    v7 = v14;
    v8 = v13;
  }

LABEL_6:
  LODWORD(v14) = v7 + (v9 >> 3);
  result = mlir::AffineExpr::replaceDimsAndSymbols(a1, v8, v14, 0, 0);
  if (v13 != v15)
  {
    v11 = result;
    free(v13);
    return v11;
  }

  return result;
}

mlir::MLIRContext **mlir::getAffineExprFromFlatForm(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t *a5, int a6, mlir::MLIRContext *this)
{
  v34 = this;
  v35 = 0;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(this);
  result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
  v33 = result;
  v14 = a4 + a3;
  if (a4 + a3)
  {
    v15 = 0;
    v16 = a3;
    v17 = -a3;
    do
    {
      if (*(a1 + 8 * v15))
      {
        if (v15 >= v16)
        {
          LODWORD(v34) = v17 + v15;
          v35 = this;
          v18 = mlir::MLIRContext::getAffineUniquer(this);
          LODWORD(v32) = 7;
        }

        else
        {
          LODWORD(v34) = v15;
          v35 = this;
          v18 = mlir::MLIRContext::getAffineUniquer(this);
          LODWORD(v32) = 6;
        }

        v32 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v18, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v35, &v32, &v34);
        v19 = *(a1 + 8 * v15);
        v34 = *v32;
        v35 = v19;
        v20 = mlir::MLIRContext::getAffineUniquer(v34);
        v21 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v20, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
        v22 = mlir::AffineExpr::operator*(&v32, v21);
        result = mlir::AffineExpr::operator+(&v33, v22);
        v33 = result;
      }

      ++v15;
    }

    while (v14 != v15);
  }

  v23 = (a2 - 1);
  if (v14 < v23)
  {
    do
    {
      v24 = *(a1 + 8 * v14);
      if (v24)
      {
        v34 = **a5;
        v35 = v24;
        v25 = mlir::MLIRContext::getAffineUniquer(v34);
        v26 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v25, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
        v27 = mlir::AffineExpr::operator*(a5, v26);
        result = mlir::AffineExpr::operator+(&v33, v27);
        v33 = result;
      }

      ++v14;
      ++a5;
    }

    while (v14 < v23);
  }

  v28 = *(a1 + 8 * a2 - 8);
  if (v28)
  {
    v34 = *result;
    v35 = v28;
    v29 = mlir::MLIRContext::getAffineUniquer(v34);
    v30 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v29, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
    return mlir::AffineExpr::operator+(&v33, v30);
  }

  return result;
}