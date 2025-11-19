uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::printAssembly(uint64_t a1, unsigned int *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::mps::serialization::ModuleOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::mps::serialization::ModuleOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::ModuleOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::mps::serialization::ModuleOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::mps::serialization::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::AffineScope<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::mps::serialization::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::mps::serialization::ModuleOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>>(a1);
  v4 = malloc(0x20uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::getDefaultDialect;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GRUGradientOp>,mlir::OpTrait::AtLeastNResults<3u>::Impl<mlir::mps::GRUGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GRUGradientOp>,mlir::OpTrait::AtLeastNOperands<4u>::Impl<mlir::mps::GRUGradientOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::GRUGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::GRUGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::GRUGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GRUGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GRUGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GRUGradientOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::GRUGradientOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::getRegionKind;
  v6[1] = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::hasSSADominance;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ModuleOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ModuleOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::mps::serialization::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::mps::serialization::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::AffineScope<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::mps::serialization::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::mps::serialization::ModuleOp>>(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::ModuleOp::verify(&v4);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::mps::serialization::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::AffineScope<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::mps::serialization::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::mps::serialization::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::mps::serialization::ModuleOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6) && (mlir::OpTrait::SingleBlock<mlir::ModuleOp>::verifyTrait(a1) & 1) != 0 && (v8 = a1, (mlir::mps::serialization::ModuleOp::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    return mlir::detail::SymbolOpInterfaceTrait<mlir::ModuleOp>::verifyTrait(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::ReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::ZeroResults<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::VariadicOperands<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::OpInvariants<mlir::mps::serialization::ReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::mps::serialization::ReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::MemRefsNormalizable<mlir::mps::serialization::ReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::ReturnLike<mlir::mps::serialization::ReturnOp>,mlir::OpTrait::IsTerminator<mlir::mps::serialization::ReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::mps::serialization::ReturnOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ReturnOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ReturnOp>::getMutableSuccessorOperands;
  v6[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ReturnOp>::getSuccessorRegions;
  {
    v11 = v6;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::ReturnOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl<Empty>]";
  v6 = 121;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::mps::serialization::ReturnOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::mps::serialization::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroResults(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if ((mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl<mlir::mps::serialization::ReturnOp>::verifyTrait(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if ((protocol witness for static Equatable.== infix(_:_:) in conformance MPSGraphDelegateKernelError.CodingKeys() & 1) == 0 || !mlir::OpTrait::impl::verifyIsTerminator(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::func::ReturnOp::verify(&v7);
}

uint64_t mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl<mlir::mps::serialization::ReturnOp>::verifyTrait(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::FuncOp,void>::id)
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
    v34 = "mps.func";
    v35 = 8;
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
    v34 = "mps.func";
    v35 = 8;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects>();
    a1 = v27;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  v22 = v1;
  v28 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v1 = v22;
  a1 = v28;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v23 = v1;
  v29 = a1;
  v18 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v18;
  v1 = v23;
  a1 = v29;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

LABEL_30:
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_31;
  }

LABEL_29:
  v24 = v1;
  v30 = a1;
  v15 = v3;
  v19 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v15;
  v2 = v19;
  v1 = v24;
  a1 = v30;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_30;
  }

LABEL_6:
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_31:
  v26 = v1;
  v32 = a1;
  v17 = v3;
  v21 = v2;
  v12 = v5;
  v14 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v5 = v12;
  v4 = v14;
  v3 = v17;
  v2 = v21;
  v1 = v26;
  a1 = v32;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::mps::serialization::WhileOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(mlir::OpTrait::impl *a1)
{
  if (!mlir::OpTrait::impl::verifyNRegions(a1, 2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2))
  {
    return 0;
  }

  v5 = a1;
  if ((mlir::scf::WhileOp::verifyInvariantsImpl(&v5) & 1) == 0)
  {
    return 0;
  }

  v5 = a1;
  return mlir::mps::serialization::WhileOp::verify(&v5, v3) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v6, a2);
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v6, a2, a3, a4, a5);
  v5 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::serialization::YieldOp>,mlir::OpTrait::ZeroResults<mlir::mps::serialization::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::serialization::YieldOp>,mlir::OpTrait::VariadicOperands<mlir::mps::serialization::YieldOp>,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::mps::serialization::YieldOp>,mlir::OpTrait::OpInvariants<mlir::mps::serialization::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::mps::serialization::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::mps::serialization::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::serialization::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::mps::serialization::YieldOp>,mlir::OpTrait::ReturnLike<mlir::mps::serialization::YieldOp>,mlir::OpTrait::IsTerminator<mlir::mps::serialization::YieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getMutableSuccessorOperands;
  v6[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getSuccessorRegions;
  {
    v11 = v6;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
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
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp, mlir::mps::serialization::IfOp, mlir::mps::serialization::WhileOp>::Impl<Empty>]";
  v6 = 187;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::mps::serialization::ReturnOp::print(&v7, a3);
}

uint64_t mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::mps::serialization::YieldOp>::verifyTrait(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      v3 = *(*(ParentOp + 48) + 16);
      if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ForOp,void>::id)
      {
        return 1;
      }

      if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::serialization::IfOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::mps::serialization::WhileOp,void>::id)
      {
        return 1;
      }
    }
  }

  v32 = 257;
  mlir::Operation::emitOpError(a1, &v31, &v38);
  if (!v38)
  {
    goto LABEL_18;
  }

  LODWORD(v34) = 3;
  *(&v34 + 1) = "expects parent op ";
  *&v35 = 18;
  v6 = &v34;
  v7 = v40;
  if (v41 >= v42)
  {
    if (v40 <= &v34 && v40 + 24 * v41 > &v34)
    {
      v28 = &v34 - v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
      v7 = v40;
      v6 = (v40 + v28);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
      v6 = &v34;
      v7 = v40;
    }
  }

  v8 = &v7[24 * v41];
  v9 = *v6;
  *(v8 + 2) = *(v6 + 2);
  *v8 = v9;
  v10 = ++v41;
  if (v38)
  {
    LODWORD(v34) = 3;
    *(&v34 + 1) = "to be one of '";
    *&v35 = 14;
    v11 = &v34;
    v12 = v40;
    if (v10 >= v42)
    {
      if (v40 <= &v34 && v40 + 24 * v10 > &v34)
      {
        v29 = &v34 - v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v10 + 1, 24);
        v12 = v40;
        v11 = (v40 + v29);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v10 + 1, 24);
        v11 = &v34;
        v12 = v40;
      }
    }

    v13 = &v12[24 * v41];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    ++v41;
    v34 = xmmword_1E86D35F0;
    v35 = *&off_1E86D3600;
    v36 = xmmword_1E86D3610;
    if (v38)
    {
      v33[0] = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v37, v39, v39, v33);
      if (v38)
      {
        LODWORD(v33[0]) = 3;
        v33[1] = "'";
        v33[2] = 1;
        v15 = v33;
        v16 = v40;
        if (v41 >= v42)
        {
          if (v40 <= v33 && v40 + 24 * v41 > v33)
          {
            v30 = v33 - v40;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
            v16 = v40;
            v15 = (v40 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
            v15 = v33;
            v16 = v40;
          }
        }

        v17 = &v16[24 * v41];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v41;
      }
    }
  }

  else
  {
LABEL_18:
    v34 = xmmword_1E86D35F0;
    v35 = *&off_1E86D3600;
    v36 = xmmword_1E86D3610;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    mlir::InFlightDiagnostic::report(&v38);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v47;
      v21 = __p;
      if (v47 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v47 = v19;
      operator delete(v21);
    }

    v22 = v44;
    if (v44)
    {
      v23 = v45;
      v24 = v44;
      if (v45 != v44)
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
        v24 = v44;
      }

      v45 = v22;
      operator delete(v24);
    }

    if (v40 != v43)
    {
      free(v40);
    }
  }

  return v5;
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::TensorDataLayoutAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::TensorDataLayoutAttr,mlir::Attribute,mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20TensorDataLayoutAttrES2_NSD_6detail27TensorDataLayoutAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20TensorDataLayoutAttrES2_NSC_6detail27TensorDataLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v24 = "mps.tensor_data_layout";
  v25 = 22;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::ReductionModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::ReductionModeAttr,mlir::Attribute,mlir::mps::detail::ReductionModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17ReductionModeAttrES2_NSD_6detail24ReductionModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17ReductionModeAttrES2_NSC_6detail24ReductionModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v24 = "mps.reduction_mode";
  v25 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::DeviceHintAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::DeviceHintAttr,mlir::Attribute,mlir::mps::detail::DeviceHintAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps14DeviceHintAttrES2_NSD_6detail21DeviceHintAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps14DeviceHintAttrES2_NSC_6detail21DeviceHintAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id;
  v24 = "mps.device_hint";
  v25 = 15;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::ScatterModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::ScatterModeAttr,mlir::Attribute,mlir::mps::detail::ScatterModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15ScatterModeAttrES2_NSD_6detail22ScatterModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15ScatterModeAttrES2_NSC_6detail22ScatterModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v24 = "mps.scatter_mode";
  v25 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::PaddingModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::PaddingModeAttr,mlir::Attribute,mlir::mps::detail::PaddingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15PaddingModeAttrES2_NSD_6detail22PaddingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15PaddingModeAttrES2_NSC_6detail22PaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v24 = "mps.padding_mode";
  v25 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::SamplingModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::SamplingModeAttr,mlir::Attribute,mlir::mps::detail::SamplingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16SamplingModeAttrES2_NSD_6detail23SamplingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16SamplingModeAttrES2_NSC_6detail23SamplingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v24 = "mps.sampling_mode";
  v25 = 17;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::NearestRoundingModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::NearestRoundingModeAttr,mlir::Attribute,mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23NearestRoundingModeAttrES2_NSD_6detail30NearestRoundingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23NearestRoundingModeAttrES2_NSC_6detail30NearestRoundingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id;
  v24 = "mps.nearest_rounding_mode";
  v25 = 25;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::SparseTensorStorageAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::SparseTensorStorageAttr,mlir::Attribute,mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23SparseTensorStorageAttrES2_NSD_6detail30SparseTensorStorageAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23SparseTensorStorageAttrES2_NSC_6detail30SparseTensorStorageAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id;
  v24 = "mps.sparse_tensor_storage";
  v25 = 25;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::MetalPixelFormatAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::MetalPixelFormatAttr,mlir::Attribute,mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20MetalPixelFormatAttrES2_NSD_6detail27MetalPixelFormatAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20MetalPixelFormatAttrES2_NSC_6detail27MetalPixelFormatAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id;
  v24 = "mps.texture_tensor_pixel_format";
  v25 = 31;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::NormalSamplingMethodAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::NormalSamplingMethodAttr,mlir::Attribute,mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps24NormalSamplingMethodAttrES2_NSD_6detail31NormalSamplingMethodAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps24NormalSamplingMethodAttrES2_NSC_6detail31NormalSamplingMethodAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v24 = "mps.random_normal_sampling_method";
  v25 = 33;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::PaddingStyleAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::PaddingStyleAttr,mlir::Attribute,mlir::mps::detail::PaddingStyleAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16PaddingStyleAttrES2_NSD_6detail23PaddingStyleAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16PaddingStyleAttrES2_NSC_6detail23PaddingStyleAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v24 = "mps.padding_style";
  v25 = 17;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::PoolIndicesModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::PoolIndicesModeAttr,mlir::Attribute,mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19PoolIndicesModeAttrES2_NSD_6detail26PoolIndicesModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19PoolIndicesModeAttrES2_NSC_6detail26PoolIndicesModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v24 = "mps.pooling_indices_mode";
  v25 = 24;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::RNNActivationAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::RNNActivationAttr,mlir::Attribute,mlir::mps::detail::RNNActivationAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17RNNActivationAttrES2_NSD_6detail24RNNActivationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17RNNActivationAttrES2_NSC_6detail24RNNActivationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v24 = "mps.rnn_activation";
  v25 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::LSTMGateLayoutAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::LSTMGateLayoutAttr,mlir::Attribute,mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18LSTMGateLayoutAttrES2_NSD_6detail25LSTMGateLayoutAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18LSTMGateLayoutAttrES2_NSC_6detail25LSTMGateLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v24 = "mps.lstm_gate_layout";
  v25 = 20;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::GRUGateLayoutAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::GRUGateLayoutAttr,mlir::Attribute,mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17GRUGateLayoutAttrES2_NSD_6detail24GRUGateLayoutAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17GRUGateLayoutAttrES2_NSC_6detail24GRUGateLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
  v24 = "mps.gru_gate_layout";
  v25 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::StencilPaddingModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::StencilPaddingModeAttr,mlir::Attribute,mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps22StencilPaddingModeAttrES2_NSD_6detail29StencilPaddingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps22StencilPaddingModeAttrES2_NSC_6detail29StencilPaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v24 = "mps.stencil_padding_mode";
  v25 = 24;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::CropResizeAlignmentModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::CropResizeAlignmentModeAttr,mlir::Attribute,mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps27CropResizeAlignmentModeAttrES2_NSD_6detail34CropResizeAlignmentModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps27CropResizeAlignmentModeAttrES2_NSC_6detail34CropResizeAlignmentModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
  v24 = "mps.crop_resize_alignment_mode";
  v25 = 30;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::CropResizeCoordinateModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::CropResizeCoordinateModeAttr,mlir::Attribute,mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps28CropResizeCoordinateModeAttrES2_NSD_6detail35CropResizeCoordinateModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps28CropResizeCoordinateModeAttrES2_NSC_6detail35CropResizeCoordinateModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
  v24 = "mps.crop_resize_coordinate_mode";
  v25 = 31;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::PruningMetricAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::PruningMetricAttr,mlir::Attribute,mlir::mps::detail::PruningMetricAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17PruningMetricAttrES2_NSD_6detail24PruningMetricAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17PruningMetricAttrES2_NSC_6detail24PruningMetricAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v24 = "mps.pruning_metric";
  v25 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::PruningStructureAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::PruningStructureAttr,mlir::Attribute,mlir::mps::detail::PruningStructureAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20PruningStructureAttrES2_NSD_6detail27PruningStructureAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20PruningStructureAttrES2_NSC_6detail27PruningStructureAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v24 = "mps.pruning_structure";
  v25 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::SimilarityTypeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::SimilarityTypeAttr,mlir::Attribute,mlir::mps::detail::SimilarityTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18SimilarityTypeAttrES2_NSD_6detail25SimilarityTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18SimilarityTypeAttrES2_NSC_6detail25SimilarityTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
  v24 = "mps.similarity_type";
  v25 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::FFTScalingModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::FFTScalingModeAttr,mlir::Attribute,mlir::mps::detail::FFTScalingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18FFTScalingModeAttrES2_NSD_6detail25FFTScalingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18FFTScalingModeAttrES2_NSC_6detail25FFTScalingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v24 = "mps.fft_scaling_mode";
  v25 = 20;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::MPSBufferTensorAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::mps::MPSBufferTensorAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps::CallInlineModeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::CallInlineModeAttr,mlir::Attribute,mlir::mps::detail::CallInlineModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18CallInlineModeAttrES2_NSD_6detail25CallInlineModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18CallInlineModeAttrES2_NSC_6detail25CallInlineModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v24 = "mps.call_inline_mode";
  v25 = 20;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20TensorDataLayoutAttrES2_NSC_6detail27TensorDataLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17ReductionModeAttrES2_NSC_6detail24ReductionModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps14DeviceHintAttrES2_NSC_6detail21DeviceHintAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail21DeviceHintAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14DeviceHintAttrEJNS2_10DeviceHintEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::DeviceHintAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::DeviceHintAttrStorage,mlir::mps::DeviceHint>(llvm::function_ref<void ()(mlir::mps::detail::DeviceHintAttrStorage *)>,mlir::TypeID,mlir::mps::DeviceHint &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::DeviceHintAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::DeviceHintAttrStorage,mlir::mps::DeviceHint>(llvm::function_ref<void ()(mlir::mps::detail::DeviceHintAttrStorage *)>,mlir::TypeID,mlir::mps::DeviceHint &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15ScatterModeAttrES2_NSC_6detail22ScatterModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15PaddingModeAttrES2_NSC_6detail22PaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16SamplingModeAttrES2_NSC_6detail23SamplingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23NearestRoundingModeAttrES2_NSC_6detail30NearestRoundingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail30NearestRoundingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_23NearestRoundingModeAttrEJNS2_19NearestRoundingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23SparseTensorStorageAttrES2_NSC_6detail30SparseTensorStorageAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail30SparseTensorStorageAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_23SparseTensorStorageAttrEJNS2_19SparseTensorStorageEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SparseTensorStorageAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::mps::SparseTensorStorage>(llvm::function_ref<void ()(mlir::mps::detail::SparseTensorStorageAttrStorage *)>,mlir::TypeID,mlir::mps::SparseTensorStorage &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SparseTensorStorageAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::mps::SparseTensorStorage>(llvm::function_ref<void ()(mlir::mps::detail::SparseTensorStorageAttrStorage *)>,mlir::TypeID,mlir::mps::SparseTensorStorage &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20MetalPixelFormatAttrES2_NSC_6detail27MetalPixelFormatAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27MetalPixelFormatAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20MetalPixelFormatAttrEJNS2_16MetalPixelFormatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MetalPixelFormatAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::mps::MetalPixelFormat>(llvm::function_ref<void ()(mlir::mps::detail::MetalPixelFormatAttrStorage *)>,mlir::TypeID,mlir::mps::MetalPixelFormat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MetalPixelFormatAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::mps::MetalPixelFormat>(llvm::function_ref<void ()(mlir::mps::detail::MetalPixelFormatAttrStorage *)>,mlir::TypeID,mlir::mps::MetalPixelFormat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps24NormalSamplingMethodAttrES2_NSC_6detail31NormalSamplingMethodAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16PaddingStyleAttrES2_NSC_6detail23PaddingStyleAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19PoolIndicesModeAttrES2_NSC_6detail26PoolIndicesModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17RNNActivationAttrES2_NSC_6detail24RNNActivationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18LSTMGateLayoutAttrES2_NSC_6detail25LSTMGateLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17GRUGateLayoutAttrES2_NSC_6detail24GRUGateLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps22StencilPaddingModeAttrES2_NSC_6detail29StencilPaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps27CropResizeAlignmentModeAttrES2_NSC_6detail34CropResizeAlignmentModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail34CropResizeAlignmentModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27CropResizeAlignmentModeAttrEJNS2_23CropResizeAlignmentModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps28CropResizeCoordinateModeAttrES2_NSC_6detail35CropResizeCoordinateModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail35CropResizeCoordinateModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_28CropResizeCoordinateModeAttrEJNS2_24CropResizeCoordinateModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17PruningMetricAttrES2_NSC_6detail24PruningMetricAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20PruningStructureAttrES2_NSC_6detail27PruningStructureAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18SimilarityTypeAttrES2_NSC_6detail25SimilarityTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25SimilarityTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18SimilarityTypeAttrEJNS2_14SimilarityTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18FFTScalingModeAttrES2_NSC_6detail25FFTScalingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::AbstractAttribute::get<mlir::mps::MPSBufferTensorAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::mps::MPSBufferTensorAttr>,mlir::ElementsAttr::Trait<mlir::mps::MPSBufferTensorAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::mps::MPSBufferTensorAttr,mlir::Attribute,mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19MPSBufferTensorAttrES2_NSD_6detail26MPSBufferTensorAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19MPSBufferTensorAttrES2_NSC_6detail26MPSBufferTensorAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  *(a2 + 144) = "mps.buffer_tensor";
  *(a2 + 152) = 17;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::mps::MPSBufferTensorAttr>,mlir::ElementsAttr::Trait<mlir::mps::MPSBufferTensorAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::getType;
  {
    v4 = v2;
    mlir::BoolAttr::operator mlir::TypedAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::BoolAttr::operator mlir::TypedAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  mlir::mps::ConstantOp::getAsAttribute();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void *mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::getValuesImpl@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(&v8, a2, v9);
  if (v11 == 1)
  {
    v6 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v6 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return result;
    }

    v7 = v10;
    v10 = 0;
    *(a3 + 8) = v7;
    *(a3 + 16) = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<llvm::APInt,llvm::APFloat,std::integral_constant<BOOL,false>>(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      result = v10;
      v10 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (v6)
      {
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
        if (v7 != &v5[2 * v6])
        {
          if (*v7 == v4)
          {
            v13 = v7[1];
          }

          else
          {
            v13 = 0;
          }

          return mlir::ElementsAttr::getNumElements(v2, v13);
        }
      }
    }

    else
    {
      v15 = v3;
      v16 = v2;
      mlir::mps::ConstantOp::getAsAttribute();
      v2 = v16;
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v15 + 8);
      v6 = *(v15 + 16);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v13 = 0;

    return mlir::ElementsAttr::getNumElements(v2, v13);
  }

  v13 = 0;

  return mlir::ElementsAttr::getNumElements(v2, v13);
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<half,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<half,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<half>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = __fp16]";
  v6 = 56;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<__emulated_bf16,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<__emulated_bf16,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<complex_support::complex_fp<float,(void *)0>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return _ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN15complex_support10complex_fpIDhLPv0EEEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<complex_support::complex_fp<float,(void *)0>,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<__emulated_bf16>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = __emulated_bf16]";
  v6 = 65;
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

void **_ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN15complex_support10complex_fpIDhLPv0EEEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1_@<X0>(void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<complex_support::complex_fp<half,(void *)0>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return result;
    }
  }

  else
  {
    v4 = result;
    _ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN15complex_support10complex_fpIDhLPv0EEEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    result = v4;
    if (mlir::detail::TypeIDResolver<complex_support::complex_fp<half,(void *)0>,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v6 = result;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(result);
  if (result)
  {
    v7 = *((*v6)[2] + 16);
    v8 = (*v6)[5];
    v13 = (*v6)[1];
    v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
    mlir::mps::getElementsAttrStorageSize(v9, v10);
    v11 = v8 + v7;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v6);
    v12 = result == 1;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a3 = 1;
  *(a3 + 1) = v12;
  *(a3 + 8) = v11;
  *(a3 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<complex_support::complex_fp<float,(void *)0>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = complex_support::complex_fp<float>]";
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

const char *llvm::getTypeName<complex_support::complex_fp<half,(void *)0>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = complex_support::complex_fp<__fp16>]";
  v6 = 85;
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

void *mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<llvm::APInt,llvm::APFloat,std::integral_constant<BOOL,false>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = *(*a1 + 8);
    v7 = a1;
    v8 = a3;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v15);
    v10 = *((*v7)[2] + 16);
    v11 = (*v7)[5];
    v15 = (*v7)[1];
    v12 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v12, v13);
    v15 = RHS;
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v15);
    LOBYTE(v7) = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v7) == 1;
    result = operator new(0x28uLL);
    *result = &unk_1F5B24AA0;
    result[1] = v11 + v10;
    result[2] = 0;
    result[3] = 0;
    result[4] = IntOrFloatBitWidth;
    *v8 = 0;
    *(v8 + 1) = v7;
    *(v8 + 8) = result;
    *(v8 + 16) = 1;
    return result;
  }

  if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_7;
  }

LABEL_3:

  return _ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN4llvm7APFloatEJENSt3__117integral_constantIbLb0EEEEEDaNS_6TypeIDET1_(a1, a2, a3);
}

uint64_t _ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN4llvm7APFloatEJENSt3__117integral_constantIbLb0EEEEEDaNS_6TypeIDET1_@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return result;
    }
  }

  else
  {
    v8 = result;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    result = v8;
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v5 = result;
  result = mlir::mps::MPSBufferTensorAttr::try_value_begin_impl(result, v9);
  if (v11 == 1)
  {
    v6 = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v5) == 1;
    result = operator new(0x30uLL);
    *result = &unk_1F5B24AE8;
    v7 = v9[1];
    *(result + 8) = v9[0];
    *(result + 24) = v7;
    *(result + 40) = v10;
    *(a3 + 1) = v6;
    *(a3 + 8) = result;
    *a3 = 0;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

__n128 mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::mps::APIntElementIterator,llvm::APInt>::clone@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_1F5B24AA0;
  *(v4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v4 + 24) = result;
  *a2 = v4;
  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::mps::APIntElementIterator,llvm::APInt>::at(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 24) + a2;
  if (v4 == 1)
  {
    if (*(a1 + 16))
    {
      v5 = 0;
    }

    v6 = *(v3 + (v5 >> 3)) >> (v5 & 7);
    *(a3 + 2) = 1;
    *a3 = v6 & 1;
  }

  else
  {
    if (*(a1 + 16))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 24) + a2;
    }

    *(a3 + 2) = v4;
    if (v4 > 0x40)
    {
      v8 = a3;
      llvm::APInt::initSlowCase(a3, 0, 0);
      a3 = v8;
    }

    else
    {
      *a3 = 0;
    }

    if (v4)
    {
      v9 = ((v4 - (v4 != 0)) >> 3) + 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (*(a3 + 2) >= 0x41u)
      {
        v10 = *a3;
      }

      else
      {
        v10 = a3;
      }

      memmove(v10, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v7) >> 3)), v9);
    }
  }
}

uint64_t mlir::mps::MPSBufferTensorAttr::try_value_begin_impl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v14);
  v5 = *(*(*a1 + 16) + 16);
  v6 = *(*a1 + 40);
  v14 = *(*a1 + 8);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v14);
  mlir::mps::getElementsAttrStorageSize(v7, v8);
  v14 = RHS;
  isF16 = mlir::Type::isF16(&v14);
  if (isF16)
  {
    v10 = llvm::APFloatBase::IEEEhalf(isF16);
  }

  else
  {
    isF32 = mlir::Type::isF32(&v14);
    v10 = llvm::APFloatBase::IEEEsingle(isF32);
  }

  v12 = v10;
  v14 = RHS;
  result = mlir::Type::getIntOrFloatBitWidth(&v14);
  *a2 = v6 + v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 32) = v12;
  *(a2 + 40) = 1;
  return result;
}

__n128 mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::mps::APFloatElementIterator,llvm::APFloat>::clone@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_1F5B24AE8;
  *(v4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v4 + 24) = result;
  *(v4 + 5) = *(a1 + 40);
  *a2 = v4;
  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::mps::APFloatElementIterator,llvm::APFloat>::at(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = v3 + a2;
  llvm::mapped_iterator_base<mlir::mps::APFloatElementIterator,mlir::mps::APIntElementIterator,llvm::APFloat>::operator*(&v4, a3);
}

void llvm::mapped_iterator_base<mlir::mps::APFloatElementIterator,mlir::mps::APIntElementIterator,llvm::APFloat>::operator*(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1[3];
  if (v4 == 1)
  {
    v5 = 1;
    if ((a1[1] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = (v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8;
    if ((a1[1] & 1) == 0)
    {
LABEL_3:
      v6 = *a1;
      v7 = a1[2] * v5;
      if (v4 != 1)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = *(v6 + (v7 >> 3)) >> (v7 & 7);
      v14 = 1;
      __p = (v8 & 1);
      goto LABEL_18;
    }
  }

  v6 = *a1;
  v7 = 0;
  if (v4 == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = a1[3];
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, 0, 0);
    v4 = v2[3];
  }

  else
  {
    __p = 0;
  }

  v9 = v4 - (v4 != 0);
  if (v4)
  {
    v10 = (v9 >> 3) + 1;
  }

  else
  {
    v10 = v9 >> 3;
  }

  if (v10)
  {
    if (v14 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    a1 = memmove(p_p, (v6 + (v7 >> 3)), v10);
  }

LABEL_18:
  v12 = v2[4];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v12)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v12, &__p);
    if (v14 < 0x41)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v12, &__p);
    if (v14 < 0x41)
    {
      return;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19MPSBufferTensorAttrES2_NSD_6detail26MPSBufferTensorAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19MPSBufferTensorAttrES2_NSC_6detail26MPSBufferTensorAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::mps::MPSBufferTensorAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::mps::MPSBufferTensorAttr>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(a1 + 8);
  v17 = *(a1 + 16);
  v4 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = a1;
  if (v3)
  {
    v5 = **a3;
  }

  else
  {
    v5 = 0;
  }

  Context = mlir::Attribute::getContext(&v19);
  v24 = v17;
  v25 = v18;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v20[1] = Context;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v27[1] = v20;
  v23 = v5;
  v26 = v4;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v24 - 0xAE502812AA7333) ^ DWORD1(v24));
  v9 = 0x9DDFEA08EB382D69 * (DWORD1(v24) ^ (v8 >> 47) ^ v8);
  v10 = v9 ^ (v9 >> 47);
  v11 = 0x9DDFEA08EB382D69 * v10;
  v12 = 0xB492B66FBE98F273 * ((v5 >> 4) ^ (v5 >> 9));
  v13 = __ROR8__((0x9AE16A3B2F90404FLL * v4) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v10 + __ROR8__(v12 - 0x9DDFEA08EB382D69 * v10, 43);
  v14 = v12 - 0x9AE16A3B2F90404FLL * v4 - 0xAE502812AA7333 + __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) + 24;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)));
  v21[0] = &v23;
  v21[1] = v27;
  v22 = &v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v15 >> 47) ^ v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18CallInlineModeAttrES2_NSC_6detail25CallInlineModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::mps::MPSInlinerInterface::~MPSInlinerInterface(mlir::mps::MPSInlinerInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t mlir::mps::MPSInlinerInterface::materializeCallConversion(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4, uint64_t a5)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v63 = a4;
  v64 = a3;
  if (!a4)
  {
    goto LABEL_14;
  }

  v7 = *a4;
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
    v54 = v7;
    v55 = a4;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a4 = v55;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v54 + 8);
    v10 = *(v54 + 16);
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
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
LABEL_14:
    v61 = a4;
    v62 = 0;
    v17 = (*(v64 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  v28 = v11[1];
  v61 = a4;
  v62 = v28;
  v17 = (*(v64 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_15:
  v18 = *v17;
  {
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v56 = v17;
    v29 = v18;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v17 = v56;
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v29 + 8);
    v21 = *(v29 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  v22 = v20;
  v23 = v21;
  do
  {
    v24 = v23 >> 1;
    v25 = &v22[2 * (v23 >> 1)];
    v27 = *v25;
    v26 = v25 + 2;
    v23 += ~(v23 >> 1);
    if (v27 < v19)
    {
      v22 = v26;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
  if (v22 != &v20[2 * v21] && *v22 == v19)
  {
    v30 = v22[1];
    goto LABEL_30;
  }

LABEL_29:
  v30 = 0;
LABEL_30:
  v60[0] = v17;
  v60[1] = v30;
  mlir::CallableOpInterface::getArgAttrsAttr(&v61);
  v32 = v31;
  mlir::CallableOpInterface::getArgAttrsAttr(v60);
  if (v32 == v33 || (v34 = mlir::CallableOpInterface::getArgAttrsAttr(&v61), NumElements = mlir::ShapedType::getNumElements(v34, v35), v37 = mlir::CallableOpInterface::getArgAttrsAttr(v60), NumElements != mlir::ShapedType::getNumElements(v37, v38)))
  {
    v50 = 0;
  }

  else
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v61);
    v41 = v40;
    isSplat = mlir::ElementsAttr::isSplat(v60);
    v59 = mlir::RankedTensorType::get(ArgAttrsAttr, v41, isSplat, 0);
    mlir::ArrayAttr::getValue(&v59);
    v65[0] = v43;
    IntegerType = mlir::Builder::getIntegerType(a2, 64, 1);
    v58 = mlir::RankedTensorType::get(v65, 1, IntegerType, 0);
    v45 = mlir::TensorType::operator mlir::ShapedType(&v58);
    v47 = v46;
    Value = mlir::ArrayAttr::getValue(&v59);
    v57 = mlir::DenseElementsAttr::getFromRawBuffer(v45, v47, Value, 8 * v49, 8, 1, 1);
    v65[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::RankedTensorType &,mlir::DenseIntElementsAttr>(a2, a5, &v58, &v57) - 16;
    LOBYTE(v57) = 0;
    v50 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,BOOL>(a2, a5, &v59, &v64, v65, &v57);
    v64 = v50 - 16;
  }

  v51 = mlir::ElementsAttr::isSplat(&v61);
  if (v51 != mlir::ElementsAttr::isSplat(v60))
  {
    v52 = mlir::ElementsAttr::isSplat(&v61);
    v59 = mlir::TypeAttr::get(v52);
    return mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Type &,mlir::Value &,mlir::TypeAttr>(a2, a5, &v63, &v64, &v59);
  }

  return v50;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::RankedTensorType &,mlir::DenseIntElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v12 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a4);
  mlir::mps::ConstantOp::build(v12, v19, v11, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReshapeOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Type &,mlir::Value &,mlir::TypeAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  mlir::mps::CastOp::build(v13, v20, *a3, *a4, *a5);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
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

void mlir::mps::MPSOpAsmInterface::~MPSOpAsmInterface(mlir::mps::MPSOpAsmInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t mlir::mps::MPSOpAsmInterface::declareResource@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = mlir::mps::MPSResourceBlobManagerInterface::contains(*(a1 + 24), a2, a3);
  v9 = *(a1 + 24);
  if (v8)
  {
    result = mlir::mps::MPSResourceBlobManagerInterface::lookup(v9, a2, a3);
    v11 = *(a1 + 8);
    {
      v13 = result;
      mlir::mps::MPSOpAsmInterface::declareResource();
      result = v13;
    }

    v12 = mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id;
    *a4 = result;
    *(a4 + 8) = v12;
    *(a4 + 16) = v11;
    *(a4 + 24) = 1;
  }

  else
  {
    result = mlir::mps::MPSResourceBlobManagerInterface::insertUndefinedEntry(v9, a2, a3, a4);
    *(a4 + 24) = 1;
  }

  return result;
}

void mlir::mps::MPSOpAsmInterface::getResourceKey(const void ***a1@<X1>, uint64_t a2@<X8>)
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

uint64_t mlir::mps::MPSOpAsmInterface::parseResource(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = a1;
  (*(*a2 + 56))(&v26, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::mps::MPSOpAsmInterface::parseResource(mlir::AsmParsedResourceEntry &)::{lambda(unsigned long,unsigned long)#1}>, &v19);
  if (v32 != 1)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = (*(*a2 + 16))(a2);
  if ((*(mlir::mps::MPSResourceBlobManagerInterface::lookup(v4, v5, v6) + 96) & 1) == 0)
  {
    v7 = *(a1 + 24);
    v8 = (*(*a2 + 16))(a2);
    v10 = v9;
    v20 = v26;
    v21 = v27;
    v24 = v30;
    if (v30 >= 8)
    {
      if ((v30 & 2) != 0 && (v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 8))(&v22, &v28);
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 16))(&v28);
      }

      else
      {
        v22 = v28;
        v23 = v29;
      }

      v30 = 0;
    }

    v25 = v31;
    mlir::mps::MPSResourceBlobManagerInterface::defineEntryValue(v7, v8, v10, &v20);
    if (v24 >= 8)
    {
      v12 = (v24 & 2) != 0 ? &v22 : v22;
      (*(v24 & 0xFFFFFFFFFFFFFFF8))(v12, v20, *(&v20 + 1), v21);
      v13 = v24;
      if (v24 >= 8)
      {
        if ((v24 & 4) != 0)
        {
          if ((v24 & 2) != 0)
          {
            v14 = &v22;
          }

          else
          {
            v14 = v22;
          }

          (*((v24 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
        }

        if ((v13 & 2) == 0)
        {
          llvm::deallocate_buffer(v22, *(&v22 + 1));
        }
      }
    }
  }

  v11 = 1;
  if (v32 == 1 && v30 >= 8)
  {
    v15 = (v30 & 2) != 0 ? &v28 : v28;
    (*(v30 & 0xFFFFFFFFFFFFFFF8))(v15, v26, *(&v26 + 1), v27);
    v16 = v30;
    if (v30 >= 8)
    {
      if ((v30 & 4) != 0)
      {
        if ((v30 & 2) != 0)
        {
          v17 = &v28;
        }

        else
        {
          v17 = v28;
        }

        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 16))(v17);
      }

      if ((v16 & 2) == 0)
      {
        llvm::deallocate_buffer(v28, *(&v28 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::insertUndefinedEntry@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v8[0]) = 0;
  v11 = 0;
  result = mlir::mps::MPSResourceBlobManagerInterface::insert(a1, a2, a3, v8, a4);
  if (v11 == 1 && v10 >= 8)
  {
    v5 = (v10 & 2) != 0 ? v9 : v9[0];
    result = (*(v10 & 0xFFFFFFFFFFFFFFF8))(v5, v8[0], v8[1], v8[2]);
    v6 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 4) != 0)
      {
        if ((v10 & 2) != 0)
        {
          v7 = v9;
        }

        else
        {
          v7 = v9[0];
        }

        result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
      }

      if ((v6 & 2) == 0)
      {
        llvm::deallocate_buffer(v9[0], v9[1]);
      }
    }
  }

  return result;
}

void mlir::mps::MPSResourceBlobManagerInterface::buildResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 24 * a4;
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      {
        if (v7 == mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = v7;
        mlir::mps::MPSOpAsmInterface::declareResource();
        if (v9 == mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
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

uint64_t mlir::Dialect::addType<mlir::mps::NF4Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::NF4Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps7NF4TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps7NF4TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id;
  v24 = "mps.nf4";
  v25 = 7;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3mps7NF4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3mps7NF4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void *std::__function::__func<mlir::mps::anonymous namespace::$_3,std::allocator<mlir::mps::anonymous namespace::$_3>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B24C20;
  return result;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::$_3,std::allocator<mlir::mps::anonymous namespace::$_3>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4mlir3mps12_GLOBAL__N_13$_3E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4mlir3mps12_GLOBAL__N_13$_3E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4mlir3mps12_GLOBAL__N_13$_3E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4mlir3mps12_GLOBAL__N_13$_3E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::ConstantOp::verify(void)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::OpState::emitOpError(v2, &v3, a2);
}

BOOL mlir::mps::anonymous namespace::inferDepthToSpaceShape(mlir *a1, Location a2, void *__src, int64_t a4, uint64_t a5, char *a6, uint64_t a7, int a8, unsigned int a9, uint64_t a10)
{
  v32 = a6;
  v33 = a5;
  v30 = a4;
  v31 = a7;
  v29 = a9;
  v10 = (a4 & (a5 >> 63)) + a5;
  if (v10 < 0 || a4 <= v10)
  {
    v25 = "invalid width_axis (";
    v26 = &v33;
    return mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a1, a2, v25, v26, ") for shape of rank ", &v30);
  }

  v11 = &a6[a4 & (a6 >> 63)];
  if (v11 < 0 || a4 <= v11)
  {
    return mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a1, a2, "invalid height_axis (", &v32, ") for shape of rank ", &v30);
  }

  v12 = (a4 & (a7 >> 63)) + a7;
  if (v12 < 0 || a4 <= v12)
  {
    v25 = "invalid depth_axis (";
    v26 = &v31;
    return mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a1, a2, v25, v26, ") for shape of rank ", &v30);
  }

  if (!a9)
  {
    return mlir::emitOptionalError<char const(&)[21],long long &,char const(&)[2]>(a1, a2, "invalid block_size (", &v29, ")");
  }

  v14 = *(a10 + 8);
  if (a4 != v14)
  {
    if (a4 >= v14)
    {
      if (a4 > *(a10 + 12))
      {
        v15 = __src;
        v16 = a4;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, a4, 8);
        a4 = v16;
        __src = v15;
        v14 = *(a10 + 8);
      }

      if (a4 != v14)
      {
        v17 = __src;
        v18 = a4;
        bzero((*a10 + 8 * v14), 8 * (a4 - v14));
        a4 = v18;
        __src = v17;
      }
    }

    *(a10 + 8) = a4;
  }

  v19 = __src;
  memmove(*a10, __src, 8 * a4);
  v20 = v19[v10];
  v21 = v19[v11];
  v22 = v19[v12];
  if (a8)
  {
    v23 = v20 == 0x8000000000000000;
    v20 /= a9;
    if (v23)
    {
      v20 = 0x8000000000000000;
    }

    v23 = v21 == 0x8000000000000000;
    v21 /= a9;
    if (v23)
    {
      v21 = 0x8000000000000000;
    }

    if (v22 == 0x8000000000000000)
    {
      v24 = v19[v12];
    }

    else
    {
      v24 = v22 * a9 * a9;
    }
  }

  else
  {
    v24 = 0x8000000000000000;
    if (v20 != 0x8000000000000000)
    {
      v20 *= a9;
    }

    if (v21 != 0x8000000000000000)
    {
      v21 *= a9;
    }

    if (v22 != 0x8000000000000000)
    {
      v24 = v22 / (a9 * a9);
    }
  }

  v28 = *a10;
  *(*a10 + 8 * v10) = v20;
  v28[v11] = v21;
  v28[v12] = v24;
  return 1;
}

BOOL mlir::emitOptionalError<char const(&)[21],long long &,char const(&)[2]>(mlir *a1, Location a2, char *a3, char **a4, char *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v18);
  if (v18)
  {
    mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(&v19, a3, a4, a5);
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v18);
  if (v18)
  {
    mlir::InFlightDiagnostic::report(&v18);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v25;
      v11 = __p;
      if (v25 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v25 = v9;
      operator delete(v11);
    }

    v12 = v22;
    if (v22)
    {
      v13 = v23;
      v14 = v22;
      if (v23 != v22)
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
        v14 = v22;
      }

      v23 = v12;
      operator delete(v14);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v8;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::GetCoordOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::GetCoordOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::GetCoordOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::GetCoordOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

uint64_t mlir::Diagnostic::append<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(uint64_t a1, char *__s, char **a3, char *a4, const char *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 2;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  return mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(v11, a4, a5);
}

void *std::__function::__func<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B24CA0;
  return result;
}

BOOL std::__function::__func<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps8Conv2DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps8Conv2DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps8Conv2DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps8Conv2DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::mps::ShapeWithLayout::ShapeWithLayout(uint64_t result, uint64_t a2, int a3)
{
  v4 = result + 16;
  *result = result + 16;
  *(result + 8) = 0x400000000;
  *(result + 48) = a3;
  v5 = *(a2 + 8);
  if (v5 >= 5)
  {
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v5, 8);
    result = v6;
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v7 = *a2;
    v8 = *(result + 8);
    v9 = 8 * v5;
    do
    {
      v10 = *v7;
      if (v8 >= *(result + 12))
      {
        v11 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, v4, v8 + 1, 8);
        result = v11;
        v8 = *(v11 + 8);
      }

      *(*result + 8 * v8) = v10;
      v8 = *(result + 8) + 1;
      *(result + 8) = v8;
      ++v7;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::inferConv2DTransposeShape(uint64_t a1, uint64_t a2, void **a3, void **a4, void **a5, void **a6, int a7, int a8, uint64_t a9)
{
  v58 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  if (v11 == 3)
  {
    v21 = *a1;
    v12 = &v56;
    __dst = &v56;
    v22 = *v21;
    v56 = vextq_s8(v21[1], v21[1], 8uLL);
    v57 = v22;
LABEL_10:
    v55 = 0x400000004;
    goto LABEL_11;
  }

  if (v11 != 2)
  {
    v12 = &v56;
    __dst = &v56;
    v56 = 0u;
    v57 = 0u;
    goto LABEL_10;
  }

  v12 = &v56;
  __dst = &v56;
  v55 = 0x400000000;
  if (&__dst != a1)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = a3;
      v15 = a4;
      v16 = a5;
      v17 = a6;
      v18 = a7;
      if (v13 < 5)
      {
        v20 = *(a1 + 8);
      }

      else
      {
        v19 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v56, v13, 8);
        v20 = *(v19 + 8);
        if (!v20)
        {
LABEL_36:
          LODWORD(v55) = v13;
          v12 = __dst;
          a7 = v18;
          a6 = v17;
          a5 = v16;
          a4 = v15;
          a3 = v14;
          goto LABEL_11;
        }

        a1 = v19;
        v12 = __dst;
      }

      memcpy(v12, *a1, 8 * v20);
      goto LABEL_36;
    }
  }

LABEL_11:
  v50[0] = &v51;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50[1] = 0x400000004;
  v23 = *a3;
  *&v51 = **a3;
  *(&v51 + 1) = v12->i64[1] * a2;
  v24 = *a4;
  if (a7 > 1)
  {
    if (a7 != 2 && a7 != 4)
    {
      goto LABEL_29;
    }

    v34 = v23[2];
    if (v34 != 0x8000000000000000)
    {
      v34 *= *v24;
    }

    *&v52 = v34;
    v35 = v23[3];
    v36 = v24[1] * v35;
    if (v35 == 0x8000000000000000)
    {
      v27 = v23[3];
    }

    else
    {
      v27 = v36;
    }
  }

  else
  {
    v25 = *a5;
    if (a7)
    {
      if (a7 == 1)
      {
        v26 = v23[2];
        v27 = 0x8000000000000000;
        v28 = 0x8000000000000000;
        if (v26 != 0x8000000000000000)
        {
          v29 = v12[1].i64[0];
          v30 = *v24 * (v26 - 1) + *v25 * (v29 - 1);
          if (v29 == 0x8000000000000000)
          {
            v28 = v12[1].u64[0];
          }

          else
          {
            v28 = v30 + 1;
          }
        }

        *&v52 = v28;
        v31 = v23[3];
        if (v31 != 0x8000000000000000)
        {
          v32 = v12[1].i64[1];
          v33 = v24[1] * (v31 - 1) + v25[1] * (v32 - 1);
          if (v32 == 0x8000000000000000)
          {
            v27 = 0x8000000000000000;
          }

          else
          {
            v27 = v33 + 1;
          }
        }

        goto LABEL_40;
      }

LABEL_29:
      v27 = 0x8000000000000000;
      *&v52 = 0x8000000000000000;
      goto LABEL_40;
    }

    v37 = *a6;
    v38 = v23[2];
    v27 = 0x8000000000000000;
    if (v38 == 0x8000000000000000 || (v39 = v12[1].i64[0], v39 == 0x8000000000000000))
    {
      *&v52 = 0x8000000000000000;
      v40 = v23[3];
      if (v40 == 0x8000000000000000)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *&v52 = *v24 * (v38 - 1) + *v25 * (v39 - 1) - (*v37 + v37[1]) + 1;
      v40 = v23[3];
      if (v40 == 0x8000000000000000)
      {
        goto LABEL_40;
      }
    }

    v41 = v12[1].i64[1];
    if (v41 != 0x8000000000000000)
    {
      v27 = v24[1] * (v40 - 1) + v25[1] * (v41 - 1) - (v37[2] + v37[3]) + 1;
    }
  }

LABEL_40:
  *(&v52 + 1) = v27;
  mlir::mps::ShapeWithLayout::toLayout(v50, a8, &__src);
  v42 = __src;
  if (&__src == a9)
  {
    goto LABEL_56;
  }

  if (__src != v49)
  {
    if (*a9 != a9 + 16)
    {
      free(*a9);
      v42 = __src;
    }

    *a9 = v42;
    *(a9 + 8) = v48;
    __src = v49;
    HIDWORD(v48) = 0;
    goto LABEL_55;
  }

  v43 = v48;
  v44 = *(a9 + 8);
  if (v44 >= v48)
  {
    if (v48)
    {
      memmove(*a9, __src, 8 * v48);
    }

    goto LABEL_54;
  }

  if (*(a9 + 12) < v48)
  {
    *(a9 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a9, a9 + 16, v43, 8);
    v44 = 0;
    v45 = v48;
    if (!v48)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (!v44)
  {
    v44 = 0;
    v45 = v48;
    if (!v48)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  memmove(*a9, __src, 8 * v44);
  v45 = v48 - v44;
  if (v48 != v44)
  {
LABEL_53:
    memcpy((*a9 + 8 * v44), __src + 8 * v44, 8 * v45);
  }

LABEL_54:
  *(a9 + 8) = v43;
LABEL_55:
  LODWORD(v48) = 0;
  v42 = __src;
LABEL_56:
  if (v42 != v49)
  {
    free(v42);
  }

  if (v50[0] != &v51)
  {
    free(v50[0]);
  }

  if (__dst != &v56)
  {
    free(__dst);
  }

  return 1;
}

uint64_t mlir::mps::ShapeWithLayout::ShapeWithLayout(uint64_t result, uint64_t a2)
{
  v3 = (result + 16);
  *result = result + 16;
  *(result + 8) = 0x400000000;
  if (result != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 < 5)
      {
        v5 = result;
        v6 = *(a2 + 8);
      }

      else
      {
        v5 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, *(a2 + 8), 8);
        v6 = *(a2 + 8);
        if (!v6)
        {
LABEL_8:
          result = v5;
          *(v5 + 8) = v4;
          goto LABEL_9;
        }

        v3 = *v5;
      }

      memcpy(v3, *a2, 8 * v6);
      goto LABEL_8;
    }
  }

LABEL_9:
  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t mlir::mps::anonymous namespace::inferConvDataGradShape(mlir *a1, Location a2, void *a3, char *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v25 = a4;
  v26 = a8;
  if (a4 == a8)
  {
    v8 = *(a7 + 8);
    if (v8 < a8)
    {
      if (*(a7 + 12) < a8)
      {
        v9 = a3;
        v10 = a7;
        v11 = a5;
        v12 = a8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a7, a7 + 16, a8, 8);
        a8 = v12;
        a3 = v9;
        a5 = v11;
        a7 = v10;
        v8 = *(v10 + 8);
      }

      if (a8 != v8)
      {
        v13 = a7;
        v14 = a5;
        v15 = a3;
        v16 = a8;
        bzero((*a7 + 8 * v8), 8 * (a8 - v8));
        a8 = v16;
        a3 = v15;
        a5 = v14;
        a7 = v13;
      }
    }

    *(a7 + 8) = 0;
    if (a8)
    {
      v17 = 0;
      v18 = 8 * a8;
      v19 = a3;
      do
      {
        v20 = *v19;
        if (v17 >= *(a7 + 12))
        {
          v21 = a3;
          v22 = a7;
          v23 = a5;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a7, a7 + 16, v17 + 1, 8);
          a3 = v21;
          a5 = v23;
          a7 = v22;
          v17 = *(v22 + 8);
        }

        *(*a7 + 8 * v17) = v20;
        v17 = *(a7 + 8) + 1;
        *(a7 + 8) = v17;
        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    if (*a3 == 0x8000000000000000 && *a5 >= 1)
    {
      **a7 = *a5;
    }

    return 1;
  }

  else if (a8 == 4)
  {
    return mlir::emitOptionalError<char const(&)[19],unsigned long &,char const(&)[11]>(a1, a2, "conv2D input rank ", &v25, " must be 4 ");
  }

  else
  {
    return mlir::emitOptionalError<char const(&)[18],unsigned long &,char const(&)[3],unsigned long &>(a1, a2, "convolution input rank ", &v25, " must be ", &v26);
  }
}

void mlir::mps::ShapeWithLayout::toLayout(int8x16_t **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v9 = *(a1 + 12);
      if (v9 == 3)
      {
        v31 = **a1;
        *(a3 + 16) = vextq_s8((*a1)[1], (*a1)[1], 8uLL);
        *a3 = a3 + 16;
        *(a3 + 32) = v31;
LABEL_39:
        *(a3 + 8) = 0x400000004;
        return;
      }

      if (v9 != 2)
      {
        goto LABEL_32;
      }

      v10 = (a3 + 16);
      *a3 = a3 + 16;
      *(a3 + 8) = 0x400000000;
      if (a3 == a1)
      {
        return;
      }

      v11 = *(a1 + 2);
      if (!v11)
      {
        return;
      }

      if (v11 < 5)
      {
        v12 = a3;
        v14 = *(a1 + 2);
      }

      else
      {
        v12 = a3;
        v13 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v11, 8);
        v14 = *(v13 + 2);
        if (!v14)
        {
LABEL_46:
          *(v12 + 8) = v11;
          return;
        }

        a1 = v13;
        v10 = *v12;
      }

      memcpy(v10, *a1, 8 * v14);
      goto LABEL_46;
    }

    v21 = *(a1 + 12);
    if (v21 == 2)
    {
      v33 = **a1;
      *(a3 + 16) = (*a1)[1];
      *a3 = a3 + 16;
      v27 = vextq_s8(v33, v33, 8uLL);
      goto LABEL_38;
    }

    if (v21 != 3)
    {
LABEL_32:
      v27 = 0uLL;
      *(a3 + 16) = 0u;
      *a3 = a3 + 16;
LABEL_38:
      *(a3 + 32) = v27;
      goto LABEL_39;
    }

    v22 = (a3 + 16);
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
    if (a3 == a1)
    {
      return;
    }

    v23 = *(a1 + 2);
    if (!v23)
    {
      return;
    }

    if (v23 < 5)
    {
      v24 = a3;
      v26 = *(a1 + 2);
    }

    else
    {
      v24 = a3;
      v25 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v23, 8);
      v26 = *(v25 + 2);
      if (!v26)
      {
LABEL_52:
        *(v24 + 8) = v23;
        return;
      }

      a1 = v25;
      v22 = *v24;
    }

    memcpy(v22, *a1, 8 * v26);
    goto LABEL_52;
  }

  if (a2)
  {
    v15 = *(a1 + 12);
    if (!v15)
    {
      v32 = *a1;
      v29 = (*a1)->i64[1];
      *(a3 + 16) = (*a1)->i64[0];
      *a3 = a3 + 16;
      v30 = v32[1];
      goto LABEL_36;
    }

    if (v15 != 1)
    {
      goto LABEL_32;
    }

    v16 = (a3 + 16);
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
    if (a3 == a1)
    {
      return;
    }

    v17 = *(a1 + 2);
    if (!v17)
    {
      return;
    }

    if (v17 < 5)
    {
      v18 = a3;
      v20 = *(a1 + 2);
    }

    else
    {
      v18 = a3;
      v19 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v17, 8);
      v20 = *(v19 + 2);
      if (!v20)
      {
LABEL_49:
        *(v18 + 8) = v17;
        return;
      }

      a1 = v19;
      v16 = *v18;
    }

    memcpy(v16, *a1, 8 * v20);
    goto LABEL_49;
  }

  v3 = *(a1 + 12);
  if (v3 == 1)
  {
    v28 = *a1;
    v29 = (*a1)->i64[1];
    *(a3 + 16) = (*a1)->i64[0];
    *a3 = a3 + 16;
    v30 = vextq_s8(v28[1], v28[1], 8uLL);
LABEL_36:
    *(a3 + 24) = v30;
    *(a3 + 40) = v29;
    goto LABEL_39;
  }

  if (v3)
  {
    goto LABEL_32;
  }

  v4 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x400000000;
  if (a3 != a1)
  {
    v5 = *(a1 + 2);
    if (v5)
    {
      if (v5 < 5)
      {
        v6 = a3;
        v8 = *(a1 + 2);
      }

      else
      {
        v6 = a3;
        v7 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v5, 8);
        v8 = *(v7 + 2);
        if (!v8)
        {
LABEL_43:
          *(v6 + 8) = v5;
          return;
        }

        a1 = v7;
        v4 = *v6;
      }

      memcpy(v4, *a1, 8 * v8);
      goto LABEL_43;
    }
  }
}

void *std::__function::__func<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B24D20;
  return result;
}

BOOL std::__function::__func<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps8Conv3DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps8Conv3DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps8Conv3DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps8Conv3DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B24DA0;
  return result;
}

BOOL std::__function::__func<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps20Conv3DDataGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps20Conv3DDataGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps20Conv3DDataGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps20Conv3DDataGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B24E20;
  return result;
}

BOOL std::__function::__func<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps23Conv3DWeightsGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps23Conv3DWeightsGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps23Conv3DWeightsGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps23Conv3DWeightsGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::mps::inferPool4DReturnType<mlir::mps::PoolAvgOpAdaptor>(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4, uint64_t *a5)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a3);
  v23[0] = v8;
  v23[1] = v9;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a3);
  if (!v8 || *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a5 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    return 1;
  }

  else
  {
    v11 = ElementTypeOrSelf;
    v34[0] = v35;
    v34[1] = 0x400000000;
    v32[0] = v33;
    v32[1] = 0x400000000;
    v30[0] = v31;
    v30[1] = 0x800000000;
    v28[0] = v29;
    v28[1] = 0x400000000;
    v26[0] = v27;
    v26[1] = 0x400000000;
    v22 = 0;
    v21 = 2;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v23);
    v13 = a4[5];
    v25[3] = a4[4];
    v25[4] = v13;
    v25[5] = a4[6];
    v14 = a4[1];
    *v24 = *a4;
    v25[0] = v14;
    v15 = a4[3];
    v25[1] = a4[2];
    v25[2] = v15;
    mlir::mps::getPool4dParams<mlir::mps::PoolAvgOpAdaptor>(ArgAttrsAttr, v16, v24, v34, v32, v30, v28, v26, &v21, &v22 + 1, &v22);
    v24[0] = v25;
    v24[1] = 0x400000000;
    v19 = 0;
    if (mlir::mps::inferPool4DShape(v17, v18, v32, v34, v28, v26, v30, v21, HIBYTE(v22), v24))
    {
      *a5 = mlir::RankedTensorType::get(v24[0], LODWORD(v24[1]), v11, 0);
      v19 = 1;
    }

    if (v24[0] != v25)
    {
      free(v24[0]);
    }

    if (v26[0] != v27)
    {
      free(v26[0]);
    }

    if (v28[0] != v29)
    {
      free(v28[0]);
    }

    if (v30[0] != v31)
    {
      free(v30[0]);
    }

    if (v32[0] != v33)
    {
      free(v32[0]);
    }

    if (v34[0] != v35)
    {
      free(v34[0]);
    }
  }

  return v19;
}

void mlir::mps::getPool4dParams<mlir::mps::PoolAvgOpAdaptor>(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, BOOL *a10, BOOL *a11)
{
  v18 = a3[9];
  v73 = a3[8];
  v74 = v18;
  v19 = a3[5];
  v63 = a3[4];
  v71 = v19;
  v72 = v63;
  *a9 = 2;
  v20 = a3[7];
  if (v20)
  {
    *a9 = *(v20 + 8);
  }

  *a10 = a3[3] != 0;
  *a11 = a3[6] != 0;
  v21 = *(a6 + 8);
  v64 = v19;
  if (v21 == 8)
  {
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 == 4)
    {
      goto LABEL_5;
    }

LABEL_15:
    if (v23)
    {
      *(a7 + 8) = 4;
      v24 = *(a8 + 8);
      v25 = v24 > 4;
      if (v24 != 4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v31 = v22;
      v32 = v22;
      if (*(a7 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a7, a7 + 16, 4uLL, 8);
        v31 = *(a7 + 8);
        v32 = *(a7 + 8);
      }

      memset_pattern16((*a7 + 8 * v31), &unk_1E096FAE0, 32 - 8 * v22);
      v33 = v32 - v22 + 4;
      v19 = v64;
      *(a7 + 8) = v33;
      v24 = *(a8 + 8);
      v25 = v24 > 4;
      if (v24 != 4)
      {
        goto LABEL_22;
      }
    }

LABEL_6:
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 == 4)
    {
      goto LABEL_7;
    }

LABEL_29:
    if (v27)
    {
      *(a5 + 8) = 4;
      if (a2 > *(a4 + 12))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v37 = v26;
      v38 = v26;
      if (*(a5 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, 4uLL, 8);
        v37 = *(a5 + 8);
        v38 = *(a5 + 8);
      }

      memset_pattern16((*a5 + 8 * v37), &unk_1E096FAE0, 32 - 8 * v26);
      v39 = v38 - v26 + 4;
      v19 = v64;
      *(a5 + 8) = v39;
      if (a2 > *(a4 + 12))
      {
        goto LABEL_8;
      }
    }

LABEL_36:
    if (!a2)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (v21 <= 8)
  {
    v28 = *(a6 + 8);
    v29 = *(a6 + 8);
    if (*(a6 + 12) <= 7u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, 8uLL, 8);
      v28 = *(a6 + 8);
      v29 = *(a6 + 8);
    }

    bzero((*a6 + 8 * v28), 64 - 8 * v21);
    v30 = v29 - v21 + 8;
    v19 = v64;
    *(a6 + 8) = v30;
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 != 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(a6 + 8) = 8;
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 != 4)
    {
      goto LABEL_15;
    }
  }

LABEL_5:
  v24 = *(a8 + 8);
  v25 = v24 > 4;
  if (v24 == 4)
  {
    goto LABEL_6;
  }

LABEL_22:
  if (v25)
  {
    *(a8 + 8) = 4;
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 != 4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v34 = v24;
    v35 = v24;
    if (*(a8 + 12) <= 3u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a8, a8 + 16, 4uLL, 8);
      v34 = *(a8 + 8);
      v35 = *(a8 + 8);
    }

    memset_pattern16((*a8 + 8 * v34), &unk_1E096FAE0, 32 - 8 * v24);
    v36 = v35 - v24 + 4;
    v19 = v64;
    *(a8 + 8) = v36;
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 != 4)
    {
      goto LABEL_29;
    }
  }

LABEL_7:
  if (a2 <= *(a4 + 12))
  {
    goto LABEL_36;
  }

LABEL_8:
  llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, a2, 8);
LABEL_37:
  v40 = *(a4 + 8);
  v41 = 8 * a2;
  do
  {
    v42 = *a1;
    if (v40 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v40 + 1, 8);
      v40 = *(a4 + 8);
    }

    *(*a4 + 8 * v40) = v42;
    v40 = *(a4 + 8) + 1;
    *(a4 + 8) = v40;
    ++a1;
    v41 -= 8;
  }

  while (v41);
  v18 = v74;
LABEL_42:
  if (v18 && mlir::DenseElementsAttr::getNumElements(&v74) == 4)
  {
    *(a5 + 8) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, v74, 0);
    v43 = v74;
    NumElements = mlir::DenseElementsAttr::getNumElements(&v74);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v67, v43, NumElements);
    for (i = v70; i != v68; i = ++v70)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &__p);
      if (v66 > 0x40)
      {
        v46 = *__p;
      }

      else if (v66)
      {
        v46 = (__p << -v66) >> -v66;
      }

      else
      {
        v46 = 0;
      }

      v47 = *(a5 + 8);
      if (v47 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v47 + 1, 8);
        v47 = *(a5 + 8);
      }

      *(*a5 + 8 * v47) = v46;
      ++*(a5 + 8);
      if (v66 >= 0x41)
      {
        if (__p)
        {
          operator delete[](__p);
        }
      }
    }
  }

  if (v73 && mlir::DenseElementsAttr::getNumElements(&v73) == 4)
  {
    *(a7 + 8) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, v73, 0);
    v48 = v73;
    v49 = mlir::DenseElementsAttr::getNumElements(&v73);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v67, v48, v49);
    for (j = v70; j != v68; j = ++v70)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &__p);
      if (v66 > 0x40)
      {
        v51 = *__p;
      }

      else if (v66)
      {
        v51 = (__p << -v66) >> -v66;
      }

      else
      {
        v51 = 0;
      }

      v52 = *(a7 + 8);
      if (v52 >= *(a7 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a7, a7 + 16, v52 + 1, 8);
        v52 = *(a7 + 8);
      }

      *(*a7 + 8 * v52) = v51;
      ++*(a7 + 8);
      if (v66 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }
  }

  if (v63 && mlir::DenseElementsAttr::getNumElements(&v72) == 4)
  {
    *(a8 + 8) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, v72, 0);
    v53 = v72;
    v54 = mlir::DenseElementsAttr::getNumElements(&v72);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v67, v53, v54);
    for (k = v70; k != v68; k = ++v70)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &__p);
      if (v66 > 0x40)
      {
        v56 = *__p;
      }

      else if (v66)
      {
        v56 = (__p << -v66) >> -v66;
      }

      else
      {
        v56 = 0;
      }

      v57 = *(a8 + 8);
      if (v57 >= *(a8 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a8, a8 + 16, v57 + 1, 8);
        v57 = *(a8 + 8);
      }

      *(*a8 + 8 * v57) = v56;
      ++*(a8 + 8);
      if (v66 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }
  }

  if (v19 && mlir::DenseElementsAttr::getNumElements(&v71) == 8)
  {
    *(a6 + 8) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, v71, 0);
    v58 = v71;
    v59 = mlir::DenseElementsAttr::getNumElements(&v71);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v67, v58, v59);
    for (m = v70; m != v68; m = ++v70)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &__p);
      if (v66 > 0x40)
      {
        v61 = *__p;
      }

      else if (v66)
      {
        v61 = (__p << -v66) >> -v66;
      }

      else
      {
        v61 = 0;
      }

      v62 = *(a6 + 8);
      if (v62 >= *(a6 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v62 + 1, 8);
        v62 = *(a6 + 8);
      }

      *(*a6 + 8 * v62) = v61;
      ++*(a6 + 8);
      if (v66 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::CallOpGenericAdaptorBase::Properties]";
  v6 = 105;
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

void *std::__function::__func<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B24EA0;
  return result;
}

BOOL std::__function::__func<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps9BiasAddOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps9BiasAddOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps9BiasAddOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps9BiasAddOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::verifyQuantizeOp<mlir::mps::QuantizeOp>(mlir::mps::QuantizeOp)::{lambda(char const*,mlir::Value)#1}::operator()(uint64_t **a1, const char *a2, uint64_t a3)
{
  v106 = *MEMORY[0x1E69E9840];
  v90 = a2;
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
  v89[0] = v5;
  v89[1] = v6;
  if (*(*a1 + 4) != 1)
  {
    if (v5 && mlir::CallOpInterface::getArgOperands(v89))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v89);
      if (!v11)
      {
LABEL_13:
        mlir::CallableOpInterface::getArgAttrsAttr(v89);
        if (v13 <= 1)
        {
          v14 = mlir::CallableOpInterface::getArgAttrsAttr(v89);
          result = mlir::ShapedType::getNumElements(v14, v15);
          if (result != 1)
          {
            v17 = a1[1];
            v88 = 257;
            mlir::OpState::emitOpError(v17, v87, &v94);
            if (v94)
            {
              v91 = 3;
              v93 = 29;
              v18 = &v91;
              v19 = v96;
              if (v97 >= v98)
              {
                if (v96 <= &v91 && v96 + 24 * v97 > &v91)
                {
                  v84 = &v91 - v96;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
                  v19 = v96;
                  v18 = (v96 + v84);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
                  v18 = &v91;
                  v19 = v96;
                }
              }

              v20 = &v19[24 * v97];
              v21 = *v18;
              *(v20 + 2) = *(v18 + 2);
              *v20 = v21;
              v22 = ++v97;
              if (v94)
              {
                if (a2)
                {
                  v23 = strlen(a2);
                }

                else
                {
                  v23 = 0;
                }

                v91 = 3;
                v92 = a2;
                v93 = v23;
                v70 = &v91;
                v71 = v96;
                if (v22 >= v98)
                {
                  if (v96 <= &v91 && v96 + 24 * v22 > &v91)
                  {
                    v85 = &v91 - v96;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v22 + 1, 24);
                    v71 = v96;
                    v70 = (v96 + v85);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v22 + 1, 24);
                    v70 = &v91;
                    v71 = v96;
                  }
                }

                v72 = &v71[24 * v97];
                v73 = *v70;
                *(v72 + 2) = *(v70 + 2);
                *v72 = v73;
                v74 = ++v97;
                if (v94)
                {
                  v91 = 3;
                  v93 = 21;
                  v75 = &v91;
                  v76 = v96;
                  if (v74 >= v98)
                  {
                    if (v96 <= &v91 && v96 + 24 * v74 > &v91)
                    {
                      v86 = &v91 - v96;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v74 + 1, 24);
                      v76 = v96;
                      v75 = (v96 + v86);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v74 + 1, 24);
                      v75 = &v91;
                      v76 = v96;
                    }
                  }

                  v77 = &v76[24 * v97];
                  v78 = *v75;
                  *(v77 + 2) = *(v75 + 2);
                  *v77 = v78;
                  ++v97;
                }
              }
            }

            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
            if (v94)
            {
              v79 = result;
              mlir::InFlightDiagnostic::report(&v94);
              result = v79;
            }

            if (v105 == 1)
            {
              v40 = result;
              mlir::Diagnostic::~Diagnostic(&v95);
              return v40;
            }
          }

          return result;
        }

        v29 = a1[1];
        v88 = 257;
        mlir::OpState::emitOpError(v29, v87, &v94);
        if (v94)
        {
          if (a2)
          {
            v30 = strlen(a2);
          }

          else
          {
            v30 = 0;
          }

          v91 = 3;
          v92 = a2;
          v93 = v30;
          v55 = &v91;
          v56 = v96;
          if (v97 >= v98)
          {
            if (v96 <= &v91 && v96 + 24 * v97 > &v91)
            {
              v82 = &v91 - v96;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v56 = v96;
              v55 = (v96 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v55 = &v91;
              v56 = v96;
            }
          }

          v57 = &v56[24 * v97];
          v58 = *v55;
          *(v57 + 2) = *(v55 + 2);
          *v57 = v58;
          v59 = ++v97;
          if (v94)
          {
            v91 = 3;
            v92 = " rank must be 0 or 1";
            v93 = 20;
            v60 = &v91;
            v61 = v96;
            if (v59 >= v98)
            {
              if (v96 <= &v91 && v96 + 24 * v59 > &v91)
              {
                v83 = &v91 - v96;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v59 + 1, 24);
                v61 = v96;
                v60 = (v96 + v83);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v59 + 1, 24);
                v60 = &v91;
                v61 = v96;
              }
            }

            v62 = &v61[24 * v97];
            v63 = *v60;
            *(v62 + 2) = *(v60 + 2);
            *v62 = v63;
            ++v97;
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
        v40 = result;
        if (v94)
        {
          mlir::InFlightDiagnostic::report(&v94);
          result = v40;
        }

        if (v105 != 1)
        {
          return result;
        }

        if (v104 != &v105)
        {
          free(v104);
          result = v40;
        }

        v64 = __p;
        if (__p)
        {
          v65 = v103;
          v66 = __p;
          if (v103 != __p)
          {
            do
            {
              v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
            }

            while (v65 != v64);
            v66 = __p;
          }

          v103 = v64;
          operator delete(v66);
          result = v40;
        }

        v44 = v100;
        if (!v100)
        {
          goto LABEL_79;
        }

        v67 = v101;
        v46 = v100;
        if (v101 == v100)
        {
          goto LABEL_78;
        }

        do
        {
          v69 = *--v67;
          v68 = v69;
          *v67 = 0;
          if (v69)
          {
            operator delete[](v68);
          }
        }

        while (v67 != v44);
        goto LABEL_77;
      }

      v12 = 8 * v11;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_13;
        }
      }
    }

    return 1;
  }

  if (mlir::CallOpInterface::getArgOperands(v89))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v89);
    if (v7 >= 2)
    {
      v8 = a1[1];
      v88 = 257;
      mlir::OpState::emitOpError(v8, v87, &v94);
      if (v94)
      {
        if (a2)
        {
          v9 = strlen(a2);
        }

        else
        {
          v9 = 0;
        }

        v91 = 3;
        v92 = a2;
        v93 = v9;
        v31 = &v91;
        v32 = v96;
        if (v97 >= v98)
        {
          if (v96 <= &v91 && v96 + 24 * v97 > &v91)
          {
            v80 = &v91 - v96;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
            v32 = v96;
            v31 = (v96 + v80);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
            v31 = &v91;
            v32 = v96;
          }
        }

        v33 = &v32[24 * v97];
        v34 = *v31;
        *(v33 + 2) = *(v31 + 2);
        *v33 = v34;
        v35 = ++v97;
        if (v94)
        {
          v91 = 3;
          v92 = " rank must be 0 or 1";
          v93 = 20;
          v36 = &v91;
          v37 = v96;
          if (v35 >= v98)
          {
            if (v96 <= &v91 && v96 + 24 * v35 > &v91)
            {
              v81 = &v91 - v96;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v35 + 1, 24);
              v37 = v96;
              v36 = (v96 + v81);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v35 + 1, 24);
              v36 = &v91;
              v37 = v96;
            }
          }

          v38 = &v37[24 * v97];
          v39 = *v36;
          *(v38 + 2) = *(v36 + 2);
          *v38 = v39;
          ++v97;
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
      v40 = result;
      if (v94)
      {
        mlir::InFlightDiagnostic::report(&v94);
        result = v40;
      }

      if (v105 != 1)
      {
        return result;
      }

      if (v104 != &v105)
      {
        free(v104);
        result = v40;
      }

      v41 = __p;
      if (__p)
      {
        v42 = v103;
        v43 = __p;
        if (v103 != __p)
        {
          do
          {
            v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v103 = v41;
        operator delete(v43);
        result = v40;
      }

      v44 = v100;
      if (!v100)
      {
        goto LABEL_79;
      }

      v45 = v101;
      v46 = v100;
      if (v101 == v100)
      {
LABEL_78:
        v101 = v44;
        operator delete(v46);
        result = v40;
LABEL_79:
        if (v96 != v99)
        {
          free(v96);
          return v40;
        }

        return result;
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
LABEL_77:
      v46 = v100;
      goto LABEL_78;
    }
  }

  if (!v89[0] || *a1[2] == 0x8000000000000000 || !mlir::CallOpInterface::getArgOperands(v89))
  {
    return 1;
  }

  v24 = mlir::CallableOpInterface::getArgAttrsAttr(v89);
  if (v25)
  {
    v26 = 8 * v25;
    while (*v24 != 0x8000000000000000)
    {
      ++v24;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_27;
      }
    }

    return 1;
  }

LABEL_27:
  v27 = mlir::CallableOpInterface::getArgAttrsAttr(v89);
  if (mlir::ShapedType::getNumElements(v27, v28) == *a1[2])
  {
    return 1;
  }

  v49 = mlir::CallableOpInterface::getArgAttrsAttr(v89);
  result = mlir::ShapedType::getNumElements(v49, v50);
  if (result != 1)
  {
    v51 = a1[1];
    v88 = 257;
    mlir::OpState::emitOpError(v51, v87, &v94);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v94, "input and ");
    mlir::InFlightDiagnostic::operator<<<char const*&>(v52, &v90);
    v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v94);
    return v40;
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::verifyQuantizeOp<mlir::mps::DequantizeOp>(mlir::mps::DequantizeOp)::{lambda(char const*,mlir::Value)#1}::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v154 = *MEMORY[0x1E69E9840];
  __s = a2;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
  v137[0] = v4;
  v137[1] = v5;
  if (*(*a1 + 4) == 1)
  {
    if (mlir::CallOpInterface::getArgOperands(v137))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v137);
      if (v6 >= 2)
      {
        v7 = *(a1 + 8);
        v136 = 257;
        mlir::OpState::emitOpError(v7, v135, &v142);
        if (v142)
        {
          if (__s)
          {
            v8 = strlen(__s);
          }

          else
          {
            v8 = 0;
          }

          v139 = 3;
          v140 = __s;
          v141 = v8;
          v46 = &v139;
          v47 = v144;
          if (v145 >= v146)
          {
            if (v144 <= &v139 && v144 + 24 * v145 > &v139)
            {
              v122 = &v139 - v144;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v145 + 1, 24);
              v47 = v144;
              v46 = (v144 + v122);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v145 + 1, 24);
              v46 = &v139;
              v47 = v144;
            }
          }

          v48 = &v47[24 * v145];
          v49 = *v46;
          *(v48 + 2) = *(v46 + 2);
          *v48 = v49;
          v50 = ++v145;
          if (v142)
          {
            v139 = 3;
            v140 = " rank must be 0 or 1";
            v141 = 20;
            v51 = &v139;
            v52 = v144;
            if (v50 >= v146)
            {
              if (v144 <= &v139 && v144 + 24 * v50 > &v139)
              {
                v123 = &v139 - v144;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v50 + 1, 24);
                v52 = v144;
                v51 = (v144 + v123);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v50 + 1, 24);
                v51 = &v139;
                v52 = v144;
              }
            }

            v53 = &v52[24 * v145];
            v54 = *v51;
            *(v53 + 2) = *(v51 + 2);
            *v53 = v54;
            ++v145;
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v142);
        v55 = result;
        if (v142)
        {
          mlir::InFlightDiagnostic::report(&v142);
          result = v55;
        }

        if (v153 != 1)
        {
          return result;
        }

        if (v152 != &v153)
        {
          free(v152);
          result = v55;
        }

        v56 = __p;
        if (__p)
        {
          v57 = v151;
          v58 = __p;
          if (v151 != __p)
          {
            do
            {
              v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
            }

            while (v57 != v56);
            v58 = __p;
          }

          v151 = v56;
          operator delete(v58);
          result = v55;
        }

        v59 = v148;
        if (!v148)
        {
          goto LABEL_112;
        }

        v60 = v149;
        v61 = v148;
        if (v149 == v148)
        {
          goto LABEL_111;
        }

        do
        {
          v63 = *--v60;
          v62 = v63;
          *v60 = 0;
          if (v63)
          {
            operator delete[](v62);
          }
        }

        while (v60 != v59);
        goto LABEL_110;
      }
    }

    if (v137[0] && **(a1 + 16) != 0x8000000000000000 && mlir::CallOpInterface::getArgOperands(v137))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v137);
      if (v24)
      {
        v25 = 8 * v24;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v25 -= 8;
          if (!v25)
          {
            goto LABEL_27;
          }
        }

        return 1;
      }

LABEL_27:
      v26 = mlir::CallableOpInterface::getArgAttrsAttr(v137);
      if (mlir::ShapedType::getNumElements(v26, v27) != **(a1 + 16))
      {
        v28 = mlir::CallableOpInterface::getArgAttrsAttr(v137);
        result = mlir::ShapedType::getNumElements(v28, v29);
        if (result == 1)
        {
          return result;
        }

        v30 = *(a1 + 8);
        v136 = 257;
        mlir::OpState::emitOpError(v30, v135, &v142);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v142, "input and ");
        mlir::InFlightDiagnostic::operator<<<char const*&>(v31, &__s);
        goto LABEL_67;
      }
    }

    return 1;
  }

  if (!v4 || !mlir::CallOpInterface::getArgOperands(v137))
  {
    return 1;
  }

  v9 = mlir::CallableOpInterface::getArgAttrsAttr(v137);
  if (v10)
  {
    v11 = 8 * v10;
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    return 1;
  }

LABEL_13:
  mlir::CallableOpInterface::getArgAttrsAttr(v137);
  if (v12 <= 1)
  {
    v13 = mlir::CallableOpInterface::getArgAttrsAttr(v137);
    result = mlir::ShapedType::getNumElements(v13, v14);
    if (result == 1)
    {
      return result;
    }

    v16 = *(a1 + 8);
    v136 = 257;
    mlir::OpState::emitOpError(v16, v135, &v142);
    if (v142)
    {
      v139 = 3;
      v141 = 29;
      v17 = &v139;
      v18 = v144;
      if (v145 >= v146)
      {
        if (v144 <= &v139 && v144 + 24 * v145 > &v139)
        {
          v124 = &v139 - v144;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v145 + 1, 24);
          v18 = v144;
          v17 = (v144 + v124);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v145 + 1, 24);
          v17 = &v139;
          v18 = v144;
        }
      }

      v19 = &v18[24 * v145];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v145;
      if (v142)
      {
        if (__s)
        {
          v22 = strlen(__s);
        }

        else
        {
          v22 = 0;
        }

        v139 = 3;
        v140 = __s;
        v141 = v22;
        v67 = &v139;
        v68 = v144;
        if (v21 >= v146)
        {
          if (v144 <= &v139 && v144 + 24 * v21 > &v139)
          {
            v125 = &v139 - v144;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v21 + 1, 24);
            v68 = v144;
            v67 = (v144 + v125);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v21 + 1, 24);
            v67 = &v139;
            v68 = v144;
          }
        }

        v69 = &v68[24 * v145];
        v70 = *v67;
        *(v69 + 2) = *(v67 + 2);
        *v69 = v70;
        v71 = ++v145;
        if (v142)
        {
          v139 = 3;
          v141 = 21;
          v72 = &v139;
          v73 = v144;
          if (v71 >= v146)
          {
            if (v144 <= &v139 && v144 + 24 * v71 > &v139)
            {
              v126 = &v139 - v144;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v71 + 1, 24);
              v73 = v144;
              v72 = (v144 + v126);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v71 + 1, 24);
              v72 = &v139;
              v73 = v144;
            }
          }

          v74 = &v73[24 * v145];
          v75 = *v72;
          *(v74 + 2) = *(v72 + 2);
          *v74 = v75;
          ++v145;
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v142);
    if (v142)
    {
      v76 = result;
      mlir::InFlightDiagnostic::report(&v142);
      result = v76;
    }

    if (v153 != 1)
    {
      return result;
    }

    v55 = result;
    mlir::Diagnostic::~Diagnostic(&v143);
    return v55;
  }

  if (mlir::CallOpInterface::getArgOperands(*(a1 + 24)))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(*(a1 + 24));
    v35 = v34;
    mlir::CallableOpInterface::getArgAttrsAttr(v137);
    if (v35 != v36)
    {
      v64 = *(a1 + 8);
      v136 = 257;
      mlir::OpState::emitOpError(v64, v135, &v142);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v142, "ND ");
      mlir::InFlightDiagnostic::operator<<<char const*&>(v65, &__s);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v66, " rank differs from input rank");
LABEL_67:
      v55 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v142);
      return v55;
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(*(a1 + 24));
  if (v37 < 1)
  {
    return 1;
  }

  v38 = 0;
  while (1)
  {
    v40 = 8 * v38;
    v41 = *(mlir::CallableOpInterface::getArgAttrsAttr(*(a1 + 24)) + v40);
    v42 = *(mlir::CallableOpInterface::getArgAttrsAttr(v137) + v40);
    v43 = v41 == 0x8000000000000000 || v42 == 0x8000000000000000;
    if (!v43 && v41 % v42)
    {
      break;
    }

    ++v38;
    mlir::CallableOpInterface::getArgAttrsAttr(*(a1 + 24));
    result = 1;
    if (v38 >= v39)
    {
      return result;
    }
  }

  v44 = *(a1 + 8);
  v136 = 257;
  mlir::OpState::emitOpError(v44, v135, &v142);
  if (v142)
  {
    if (__s)
    {
      v45 = strlen(__s);
    }

    else
    {
      v45 = 0;
    }

    v139 = 3;
    v140 = __s;
    v141 = v45;
    v77 = &v139;
    v78 = v144;
    if (v145 >= v146)
    {
      if (v144 <= &v139 && v144 + 24 * v145 > &v139)
      {
        v127 = &v139 - v144;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v145 + 1, 24);
        v78 = v144;
        v77 = (v144 + v127);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v145 + 1, 24);
        v77 = &v139;
        v78 = v144;
      }
    }

    v79 = &v78[24 * v145];
    v80 = *v77;
    *(v79 + 2) = *(v77 + 2);
    *v79 = v80;
    v81 = ++v145;
    if (v142)
    {
      v139 = 3;
      v140 = " shape not compatible with input for axis ";
      v141 = 42;
      v82 = &v139;
      v83 = v144;
      if (v81 >= v146)
      {
        if (v144 <= &v139 && v144 + 24 * v81 > &v139)
        {
          v128 = &v139 - v144;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v81 + 1, 24);
          v83 = v144;
          v82 = (v144 + v128);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v81 + 1, 24);
          v82 = &v139;
          v83 = v144;
        }
      }

      v84 = &v83[24 * v145];
      v85 = *v82;
      *(v84 + 2) = *(v82 + 2);
      *v84 = v85;
      v86 = ++v145;
      if (v142)
      {
        v139 = 2;
        v140 = v38;
        v87 = &v139;
        v88 = v144;
        if (v86 >= v146)
        {
          if (v144 <= &v139 && v144 + 24 * v86 > &v139)
          {
            v129 = &v139 - v144;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v86 + 1, 24);
            v88 = v144;
            v87 = (v144 + v129);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v86 + 1, 24);
            v87 = &v139;
            v88 = v144;
          }
        }

        v89 = &v88[24 * v145];
        v90 = *v87;
        *(v89 + 2) = *(v87 + 2);
        *v89 = v90;
        v91 = ++v145;
        if (v142)
        {
          v139 = 3;
          v140 = ": ";
          v141 = 2;
          v92 = &v139;
          v93 = v144;
          if (v91 >= v146)
          {
            if (v144 <= &v139 && v144 + 24 * v91 > &v139)
            {
              v130 = &v139 - v144;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v91 + 1, 24);
              v93 = v144;
              v92 = (v144 + v130);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v91 + 1, 24);
              v92 = &v139;
              v93 = v144;
            }
          }

          v94 = &v93[24 * v145];
          v95 = *v92;
          *(v94 + 2) = *(v92 + 2);
          *v94 = v95;
          v96 = ++v145;
          if (v142)
          {
            v139 = 2;
            v140 = v41;
            v97 = &v139;
            v98 = v144;
            if (v96 >= v146)
            {
              if (v144 <= &v139 && v144 + 24 * v96 > &v139)
              {
                v131 = &v139 - v144;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v96 + 1, 24);
                v98 = v144;
                v97 = (v144 + v131);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v96 + 1, 24);
                v97 = &v139;
                v98 = v144;
              }
            }

            v99 = &v98[24 * v145];
            v100 = *v97;
            *(v99 + 2) = *(v97 + 2);
            *v99 = v100;
            v101 = ++v145;
            if (v142)
            {
              v139 = 3;
              v140 = " % ";
              v141 = 3;
              v102 = &v139;
              v103 = v144;
              if (v101 >= v146)
              {
                if (v144 <= &v139 && v144 + 24 * v101 > &v139)
                {
                  v132 = &v139 - v144;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v101 + 1, 24);
                  v103 = v144;
                  v102 = (v144 + v132);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v101 + 1, 24);
                  v102 = &v139;
                  v103 = v144;
                }
              }

              v104 = &v103[24 * v145];
              v105 = *v102;
              *(v104 + 2) = *(v102 + 2);
              *v104 = v105;
              v106 = ++v145;
              if (v142)
              {
                v139 = 2;
                v140 = v42;
                v107 = &v139;
                v108 = v144;
                if (v106 >= v146)
                {
                  if (v144 <= &v139 && v144 + 24 * v106 > &v139)
                  {
                    v133 = &v139 - v144;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v106 + 1, 24);
                    v108 = v144;
                    v107 = (v144 + v133);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v106 + 1, 24);
                    v107 = &v139;
                    v108 = v144;
                  }
                }

                v109 = &v108[24 * v145];
                v110 = *v107;
                *(v109 + 2) = *(v107 + 2);
                *v109 = v110;
                v111 = ++v145;
                if (v142)
                {
                  v139 = 3;
                  v140 = " != 0";
                  v141 = 5;
                  v112 = &v139;
                  v113 = v144;
                  if (v111 >= v146)
                  {
                    if (v144 <= &v139 && v144 + 24 * v111 > &v139)
                    {
                      v134 = &v139 - v144;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v111 + 1, 24);
                      v113 = v144;
                      v112 = (v144 + v134);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, v147, v111 + 1, 24);
                      v112 = &v139;
                      v113 = v144;
                    }
                  }

                  v114 = &v113[24 * v145];
                  v115 = *v112;
                  *(v114 + 2) = *(v112 + 2);
                  *v114 = v115;
                  ++v145;
                }
              }
            }
          }
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v142);
  v55 = result;
  if (v142)
  {
    mlir::InFlightDiagnostic::report(&v142);
    result = v55;
  }

  if ((v153 & 1) == 0)
  {
    return result;
  }

  if (v152 != &v153)
  {
    free(v152);
    result = v55;
  }

  v116 = __p;
  if (__p)
  {
    v117 = v151;
    v118 = __p;
    if (v151 != __p)
    {
      do
      {
        v117 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v117 - 1);
      }

      while (v117 != v116);
      v118 = __p;
    }

    v151 = v116;
    operator delete(v118);
    result = v55;
  }

  v59 = v148;
  if (v148)
  {
    v119 = v149;
    v61 = v148;
    if (v149 == v148)
    {
      goto LABEL_111;
    }

    do
    {
      v121 = *--v119;
      v120 = v121;
      *v119 = 0;
      if (v121)
      {
        operator delete[](v120);
      }
    }

    while (v119 != v59);
LABEL_110:
    v61 = v148;
LABEL_111:
    v149 = v59;
    operator delete(v61);
    result = v55;
  }

LABEL_112:
  if (v144 != v147)
  {
    free(v144);
    return v55;
  }

  return result;
}