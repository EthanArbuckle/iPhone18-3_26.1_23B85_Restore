uint64_t mlir::Dialect::addOperations<mlir::arith::AddFOp,mlir::arith::AddIOp,mlir::arith::AddUIExtendedOp,mlir::arith::AndIOp,mlir::arith::BitcastOp,mlir::arith::CeilDivSIOp,mlir::arith::CeilDivUIOp,mlir::arith::CmpFOp,mlir::arith::CmpIOp,mlir::arith::ConstantOp,mlir::arith::DivFOp,mlir::arith::DivSIOp,mlir::arith::DivUIOp,mlir::arith::ExtFOp,mlir::arith::ExtSIOp,mlir::arith::ExtUIOp,mlir::arith::FPToSIOp,mlir::arith::FPToUIOp,mlir::arith::FloorDivSIOp,mlir::arith::IndexCastOp,mlir::arith::IndexCastUIOp,mlir::arith::MaxNumFOp,mlir::arith::MaxSIOp,mlir::arith::MaxUIOp,mlir::arith::MaximumFOp,mlir::arith::MinNumFOp,mlir::arith::MinSIOp,mlir::arith::MinUIOp,mlir::arith::MinimumFOp,mlir::arith::MulFOp,mlir::arith::MulIOp,mlir::arith::MulSIExtendedOp,mlir::arith::MulUIExtendedOp,mlir::arith::NegFOp,mlir::arith::OrIOp,mlir::arith::RemFOp,mlir::arith::RemSIOp,mlir::arith::RemUIOp,mlir::arith::SIToFPOp,mlir::arith::ShLIOp,mlir::arith::ShRSIOp,mlir::arith::ShRUIOp,mlir::arith::SubFOp,mlir::arith::SubIOp,mlir::arith::TruncFOp,mlir::arith::TruncIOp,mlir::arith::UIToFPOp,mlir::arith::XOrIOp,mlir::arith::SelectOp>(uint64_t a1)
{
  mlir::RegisteredOperationName::insert<mlir::arith::AddFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::AddIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::AddUIExtendedOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::AndIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::BitcastOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::CeilDivSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::CeilDivUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::CmpFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::CmpIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::ConstantOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::DivFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::DivSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::DivUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::ExtFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::ExtSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::ExtUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::FPToSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::FPToUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::FloorDivSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::IndexCastOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::IndexCastUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MaxNumFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MaxSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MaxUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MaximumFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MinNumFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MinSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MinUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MinimumFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MulFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MulIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MulSIExtendedOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::MulUIExtendedOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::NegFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::OrIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::RemFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::RemSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::RemUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::SIToFPOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::ShLIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::ShRSIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::ShRUIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::SubFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::SubIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::TruncFOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::TruncIOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::UIToFPOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::arith::XOrIOp>(a1);

  return mlir::RegisteredOperationName::insert<mlir::arith::SelectOp>(a1);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::arith::AddIOp,mlir::arith::ConstantOp,mlir::arith::SubIOp,mlir::arith::MulIOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::arith::AddIOp,mlir::arith::ConstantOp,mlir::arith::SubIOp,mlir::arith::MulIOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::arith::AddIOp,mlir::arith::ConstantOp,mlir::arith::SubIOp,mlir::arith::MulIOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::arith::AddIOp,mlir::arith::ConstantOp,mlir::arith::SubIOp,mlir::arith::MulIOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::arith::AddIOp,mlir::arith::ConstantOp,mlir::arith::SubIOp,mlir::arith::MulIOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::arith::ArithDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
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
    return mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  }
}

uint64_t mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v32[38] = *MEMORY[0x1E69E9840];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(v32, v31, v30);
  }

  mlir::OperationState::OperationState(v32, a2, v9);
  v11 = *a3;
  v12 = *a4;
  if (!*a4)
  {
    goto LABEL_16;
  }

  v13 = *v12;
  {
    v23 = v11;
    v24 = v12;
    mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>();
    v12 = v24;
    v11 = v23;
    v14 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_5:
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
  if (v17 == &v15[2 * v16] || *v17 != v14)
  {
    goto LABEL_16;
  }

  v25 = v17[1];
LABEL_17:
  mlir::ub::PoisonOp::build(a1, v32, v11, v12, v25);
  v26 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::OperationState::~OperationState(v32);
  return v27;
}

BOOL mlir::AsmParser::parseKeyword(mlir::AsmParser *this, llvm::StringRef *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 40))(this);
  if ((*(*this + 416))(this, a2))
  {
    return 1;
  }

  v15 = "expected valid keyword";
  v16 = 259;
  (*(*this + 24))(v17, this, v4, &v15);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v23;
      v8 = __p;
      if (v23 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v23 = v6;
      operator delete(v8);
    }

    v9 = v20;
    if (v20)
    {
      v10 = v21;
      v11 = v20;
      if (v21 != v20)
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
        v11 = v20;
      }

      v21 = v9;
      operator delete(v11);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 34))
  {
    v2 = *(a1 + 32);
    v3 = v2 >> 8;
  }

  else
  {
    (*(**a1 + 24))(&v16);
    if (v16)
    {
      v15 = 261;
      v4 = *(a1 + 24);
      v14[0] = *(a1 + 16);
      v14[1] = v4;
      mlir::Diagnostic::operator<<(&v17, v14);
      if (v16)
      {
        mlir::InFlightDiagnostic::report(&v16);
      }
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v23;
        v7 = __p;
        if (v23 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v23 = v5;
        operator delete(v7);
      }

      v8 = v20;
      if (v20)
      {
        v9 = v21;
        v10 = v20;
        if (v21 != v20)
        {
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
          v10 = v20;
        }

        v21 = v8;
        operator delete(v10);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }

    LOBYTE(v2) = 0;
    v3 = 1;
  }

  return v2 | (v3 << 8);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 1 << a4;
  v6 = a3 + (1 << a4);
  v7 = v6 - 1;
  if ((v6 - 1) <= 0x1000)
  {
    v13 = *(a1 + 24) >> 7;
    if (v13 >= 0x1E)
    {
      LOBYTE(v13) = 30;
    }

    v14 = 4096 << v13;
    buffer = llvm::allocate_buffer(4096 << v13, 8uLL);
    v16 = *(a1 + 24);
    if (v16 >= *(a1 + 28))
    {
      v19 = buffer;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v16 + 1, 8);
      buffer = v19;
      LODWORD(v16) = *(a1 + 24);
    }

    *(*(a1 + 16) + 8 * v16) = buffer;
    ++*(a1 + 24);
    v17 = &buffer[v14];
    result = &buffer[v5 - 1] & -v5;
    *a1 = result + a3;
    *(a1 + 8) = v17;
  }

  else
  {
    v8 = llvm::allocate_buffer(v6 - 1, 8uLL);
    v9 = *(a1 + 72);
    if (v9 >= *(a1 + 76))
    {
      v18 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, a1 + 80, v9 + 1, 16);
      v8 = v18;
      LODWORD(v9) = *(a1 + 72);
    }

    v10 = (*(a1 + 64) + 16 * v9);
    *v10 = v8;
    v10[1] = v7;
    ++*(a1 + 72);
    return (v8 + v5 - 1) & -v5;
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::AddFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.addf", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::AddFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEEF30;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::AddFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::AddIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.addi", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF038;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::AddIOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::AddUIExtendedOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddUIExtendedOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddUIExtendedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddUIExtendedOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Elementwise<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddUIExtendedOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::AddUIExtendedOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.addui_extended", 20, a1, &mlir::detail::TypeIDResolver<mlir::arith::AddUIExtendedOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF118;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::AndIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AndIOp>,mlir::OpTrait::OneResult<mlir::arith::AndIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AndIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AndIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AndIOp>,mlir::OpTrait::IsIdempotent<mlir::arith::AndIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AndIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AndIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AndIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AndIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::Elementwise<mlir::arith::AndIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AndIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AndIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AndIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AndIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.andi", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF1F8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::BitcastOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.bitcast", 13, a1, &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF2D8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::CeilDivSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OneResult<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::CeilDivSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::CeilDivSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::CeilDivSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::CeilDivSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::CeilDivSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Elementwise<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::CeilDivSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::CeilDivSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.ceildivsi", 15, a1, &mlir::detail::TypeIDResolver<mlir::arith::CeilDivSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF3B8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::CeilDivUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::CeilDivUIOp>,mlir::OpTrait::OneResult<mlir::arith::CeilDivUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::CeilDivUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::CeilDivUIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::CeilDivUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::CeilDivUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::CeilDivUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::CeilDivUIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::CeilDivUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::CeilDivUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::CeilDivUIOp>,mlir::OpTrait::Elementwise<mlir::arith::CeilDivUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::CeilDivUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::CeilDivUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::CeilDivUIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::CeilDivUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.ceildivui", 15, a1, &mlir::detail::TypeIDResolver<mlir::arith::CeilDivUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF498;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::CmpFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::CmpFOp>,mlir::OpTrait::OneResult<mlir::arith::CmpFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::CmpFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::CmpFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::CmpFOp>,mlir::OpTrait::OpInvariants<mlir::arith::CmpFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::CmpFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::CmpFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::CmpFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::CmpFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::CmpFOp>,mlir::OpTrait::SameTypeOperands<mlir::arith::CmpFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::CmpFOp>,mlir::OpTrait::Elementwise<mlir::arith::CmpFOp>,mlir::OpTrait::Scalarizable<mlir::arith::CmpFOp>,mlir::OpTrait::Vectorizable<mlir::arith::CmpFOp>,mlir::OpTrait::Tensorizable<mlir::arith::CmpFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::CmpFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.cmpf", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::CmpFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF578;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::CmpFOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::CmpIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::CmpIOp>,mlir::OpTrait::OneResult<mlir::arith::CmpIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::CmpIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::CmpIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::CmpIOp>,mlir::OpTrait::OpInvariants<mlir::arith::CmpIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::CmpIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::CmpIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::CmpIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::CmpIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::CmpIOp>,mlir::OpTrait::SameTypeOperands<mlir::arith::CmpIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::CmpIOp>,mlir::OpTrait::Elementwise<mlir::arith::CmpIOp>,mlir::OpTrait::Scalarizable<mlir::arith::CmpIOp>,mlir::OpTrait::Vectorizable<mlir::arith::CmpIOp>,mlir::OpTrait::Tensorizable<mlir::arith::CmpIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::CmpIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.cmpi", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF658;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::CmpIOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::ConstantOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ConstantOp>,mlir::OpTrait::OneResult<mlir::arith::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::arith::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::arith::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::arith::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::ConstantOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ConstantOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::ConstantOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.constant", 14, a1, &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF738;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::ConstantOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::DivFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::DivFOp>,mlir::OpTrait::OneResult<mlir::arith::DivFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::DivFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::DivFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::DivFOp>,mlir::OpTrait::OpInvariants<mlir::arith::DivFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::DivFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::DivFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::DivFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::DivFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::DivFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::DivFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::DivFOp>,mlir::OpTrait::Elementwise<mlir::arith::DivFOp>,mlir::OpTrait::Scalarizable<mlir::arith::DivFOp>,mlir::OpTrait::Vectorizable<mlir::arith::DivFOp>,mlir::OpTrait::Tensorizable<mlir::arith::DivFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::DivFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.divf", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF818;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::DivFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::DivSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::DivSIOp>,mlir::OpTrait::OneResult<mlir::arith::DivSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::DivSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::DivSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::DivSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::DivSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::DivSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::DivSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::DivSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::DivSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::DivSIOp>,mlir::OpTrait::Elementwise<mlir::arith::DivSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::DivSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::DivSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::DivSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::DivSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.divsi", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::DivSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF8F8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::DivUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::DivUIOp>,mlir::OpTrait::OneResult<mlir::arith::DivUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::DivUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::DivUIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::DivUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::DivUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::DivUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::DivUIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::DivUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::DivUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::DivUIOp>,mlir::OpTrait::Elementwise<mlir::arith::DivUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::DivUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::DivUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::DivUIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::DivUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.divui", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::DivUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEF9D8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::ExtFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ExtFOp>,mlir::OpTrait::OneResult<mlir::arith::ExtFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ExtFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ExtFOp>,mlir::OpTrait::OneOperand<mlir::arith::ExtFOp>,mlir::OpTrait::OpInvariants<mlir::arith::ExtFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::ExtFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::ExtFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ExtFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ExtFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ExtFOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::ExtFOp>,mlir::CastOpInterface::Trait<mlir::arith::ExtFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ExtFOp>,mlir::OpTrait::Elementwise<mlir::arith::ExtFOp>,mlir::OpTrait::Scalarizable<mlir::arith::ExtFOp>,mlir::OpTrait::Vectorizable<mlir::arith::ExtFOp>,mlir::OpTrait::Tensorizable<mlir::arith::ExtFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.extf", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::ExtFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEFAB8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::ExtFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::ExtSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ExtSIOp>,mlir::OpTrait::OneResult<mlir::arith::ExtSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ExtSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ExtSIOp>,mlir::OpTrait::OneOperand<mlir::arith::ExtSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ExtSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ExtSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ExtSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ExtSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ExtSIOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::ExtSIOp>,mlir::CastOpInterface::Trait<mlir::arith::ExtSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ExtSIOp>,mlir::OpTrait::Elementwise<mlir::arith::ExtSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ExtSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ExtSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ExtSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.extsi", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEFB98;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::ExtUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ExtUIOp>,mlir::OpTrait::OneResult<mlir::arith::ExtUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ExtUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ExtUIOp>,mlir::OpTrait::OneOperand<mlir::arith::ExtUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ExtUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ExtUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ExtUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ExtUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ExtUIOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::ExtUIOp>,mlir::CastOpInterface::Trait<mlir::arith::ExtUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ExtUIOp>,mlir::OpTrait::Elementwise<mlir::arith::ExtUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ExtUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ExtUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ExtUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.extui", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEFC78;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::FPToSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::FPToSIOp>,mlir::OpTrait::OneResult<mlir::arith::FPToSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::FPToSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::FPToSIOp>,mlir::OpTrait::OneOperand<mlir::arith::FPToSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::FPToSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::FPToSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::FPToSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::FPToSIOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::FPToSIOp>,mlir::CastOpInterface::Trait<mlir::arith::FPToSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::FPToSIOp>,mlir::OpTrait::Elementwise<mlir::arith::FPToSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::FPToSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::FPToSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::FPToSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.fptosi", 12, a1, &mlir::detail::TypeIDResolver<mlir::arith::FPToSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEFD58;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::FPToUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::FPToUIOp>,mlir::OpTrait::OneResult<mlir::arith::FPToUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::FPToUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::FPToUIOp>,mlir::OpTrait::OneOperand<mlir::arith::FPToUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::FPToUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::FPToUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::FPToUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::FPToUIOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::FPToUIOp>,mlir::CastOpInterface::Trait<mlir::arith::FPToUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::FPToUIOp>,mlir::OpTrait::Elementwise<mlir::arith::FPToUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::FPToUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::FPToUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::FPToUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.fptoui", 12, a1, &mlir::detail::TypeIDResolver<mlir::arith::FPToUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEFE38;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::FloorDivSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::FloorDivSIOp>,mlir::OpTrait::OneResult<mlir::arith::FloorDivSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::FloorDivSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::FloorDivSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::FloorDivSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::FloorDivSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::FloorDivSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::FloorDivSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::FloorDivSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::FloorDivSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::FloorDivSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::FloorDivSIOp>,mlir::OpTrait::Elementwise<mlir::arith::FloorDivSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::FloorDivSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::FloorDivSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::FloorDivSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::FloorDivSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.floordivsi", 16, a1, &mlir::detail::TypeIDResolver<mlir::arith::FloorDivSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEFF18;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::IndexCastOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::IndexCastOp>,mlir::OpTrait::OneResult<mlir::arith::IndexCastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::IndexCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::IndexCastOp>,mlir::OpTrait::OneOperand<mlir::arith::IndexCastOp>,mlir::OpTrait::OpInvariants<mlir::arith::IndexCastOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::IndexCastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::IndexCastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::IndexCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::IndexCastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::IndexCastOp>,mlir::CastOpInterface::Trait<mlir::arith::IndexCastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::IndexCastOp>,mlir::OpTrait::Elementwise<mlir::arith::IndexCastOp>,mlir::OpTrait::Scalarizable<mlir::arith::IndexCastOp>,mlir::OpTrait::Vectorizable<mlir::arith::IndexCastOp>,mlir::OpTrait::Tensorizable<mlir::arith::IndexCastOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.index_cast", 16, a1, &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, &v9);
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

  *v2 = &unk_1F5AEFFF8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::IndexCastUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::IndexCastUIOp>,mlir::OpTrait::OneResult<mlir::arith::IndexCastUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::IndexCastUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::IndexCastUIOp>,mlir::OpTrait::OneOperand<mlir::arith::IndexCastUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::IndexCastUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::IndexCastUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::IndexCastUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::IndexCastUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::IndexCastUIOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::IndexCastUIOp>,mlir::CastOpInterface::Trait<mlir::arith::IndexCastUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::IndexCastUIOp>,mlir::OpTrait::Elementwise<mlir::arith::IndexCastUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::IndexCastUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::IndexCastUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::IndexCastUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.index_castui", 18, a1, &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF00D8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MaxNumFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MaxNumFOp>,mlir::OpTrait::OneResult<mlir::arith::MaxNumFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MaxNumFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MaxNumFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MaxNumFOp>,mlir::OpTrait::OpInvariants<mlir::arith::MaxNumFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::MaxNumFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MaxNumFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MaxNumFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MaxNumFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::MaxNumFOp>,mlir::OpTrait::IsCommutative<mlir::arith::MaxNumFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MaxNumFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MaxNumFOp>,mlir::OpTrait::Elementwise<mlir::arith::MaxNumFOp>,mlir::OpTrait::Scalarizable<mlir::arith::MaxNumFOp>,mlir::OpTrait::Vectorizable<mlir::arith::MaxNumFOp>,mlir::OpTrait::Tensorizable<mlir::arith::MaxNumFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MaxNumFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.maxnumf", 13, a1, &mlir::detail::TypeIDResolver<mlir::arith::MaxNumFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF01B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::MaxNumFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MaxSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MaxSIOp>,mlir::OpTrait::OneResult<mlir::arith::MaxSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MaxSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MaxSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MaxSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::MaxSIOp>,mlir::OpTrait::IsCommutative<mlir::arith::MaxSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MaxSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MaxSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MaxSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::MaxSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MaxSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MaxSIOp>,mlir::OpTrait::Elementwise<mlir::arith::MaxSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::MaxSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::MaxSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::MaxSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MaxSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.maxsi", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::MaxSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0298;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MaxUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MaxUIOp>,mlir::OpTrait::OneResult<mlir::arith::MaxUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MaxUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MaxUIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MaxUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::MaxUIOp>,mlir::OpTrait::IsCommutative<mlir::arith::MaxUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MaxUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MaxUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MaxUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::MaxUIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MaxUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MaxUIOp>,mlir::OpTrait::Elementwise<mlir::arith::MaxUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::MaxUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::MaxUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::MaxUIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MaxUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.maxui", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::MaxUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0378;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MaximumFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MaximumFOp>,mlir::OpTrait::OneResult<mlir::arith::MaximumFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MaximumFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MaximumFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MaximumFOp>,mlir::OpTrait::OpInvariants<mlir::arith::MaximumFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::MaximumFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MaximumFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MaximumFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MaximumFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::MaximumFOp>,mlir::OpTrait::IsCommutative<mlir::arith::MaximumFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MaximumFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MaximumFOp>,mlir::OpTrait::Elementwise<mlir::arith::MaximumFOp>,mlir::OpTrait::Scalarizable<mlir::arith::MaximumFOp>,mlir::OpTrait::Vectorizable<mlir::arith::MaximumFOp>,mlir::OpTrait::Tensorizable<mlir::arith::MaximumFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MaximumFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.maximumf", 14, a1, &mlir::detail::TypeIDResolver<mlir::arith::MaximumFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0458;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::MaximumFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MinNumFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MinNumFOp>,mlir::OpTrait::OneResult<mlir::arith::MinNumFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MinNumFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MinNumFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MinNumFOp>,mlir::OpTrait::OpInvariants<mlir::arith::MinNumFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::MinNumFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MinNumFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MinNumFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MinNumFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::MinNumFOp>,mlir::OpTrait::IsCommutative<mlir::arith::MinNumFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MinNumFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MinNumFOp>,mlir::OpTrait::Elementwise<mlir::arith::MinNumFOp>,mlir::OpTrait::Scalarizable<mlir::arith::MinNumFOp>,mlir::OpTrait::Vectorizable<mlir::arith::MinNumFOp>,mlir::OpTrait::Tensorizable<mlir::arith::MinNumFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MinNumFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.minnumf", 13, a1, &mlir::detail::TypeIDResolver<mlir::arith::MinNumFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0538;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::MinNumFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MinSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MinSIOp>,mlir::OpTrait::OneResult<mlir::arith::MinSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MinSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MinSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MinSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::MinSIOp>,mlir::OpTrait::IsCommutative<mlir::arith::MinSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MinSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MinSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MinSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::MinSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MinSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MinSIOp>,mlir::OpTrait::Elementwise<mlir::arith::MinSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::MinSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::MinSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::MinSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MinSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.minsi", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::MinSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0618;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MinUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MinUIOp>,mlir::OpTrait::OneResult<mlir::arith::MinUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MinUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MinUIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MinUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::MinUIOp>,mlir::OpTrait::IsCommutative<mlir::arith::MinUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MinUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MinUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MinUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::MinUIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MinUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MinUIOp>,mlir::OpTrait::Elementwise<mlir::arith::MinUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::MinUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::MinUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::MinUIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MinUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.minui", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::MinUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF06F8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MinimumFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MinimumFOp>,mlir::OpTrait::OneResult<mlir::arith::MinimumFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MinimumFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MinimumFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MinimumFOp>,mlir::OpTrait::OpInvariants<mlir::arith::MinimumFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::MinimumFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MinimumFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MinimumFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MinimumFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::MinimumFOp>,mlir::OpTrait::IsCommutative<mlir::arith::MinimumFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MinimumFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MinimumFOp>,mlir::OpTrait::Elementwise<mlir::arith::MinimumFOp>,mlir::OpTrait::Scalarizable<mlir::arith::MinimumFOp>,mlir::OpTrait::Vectorizable<mlir::arith::MinimumFOp>,mlir::OpTrait::Tensorizable<mlir::arith::MinimumFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MinimumFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.minimumf", 14, a1, &mlir::detail::TypeIDResolver<mlir::arith::MinimumFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF07D8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::MinimumFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MulFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MulFOp>,mlir::OpTrait::OneResult<mlir::arith::MulFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MulFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MulFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MulFOp>,mlir::OpTrait::OpInvariants<mlir::arith::MulFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::MulFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MulFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MulFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MulFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::MulFOp>,mlir::OpTrait::IsCommutative<mlir::arith::MulFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MulFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MulFOp>,mlir::OpTrait::Elementwise<mlir::arith::MulFOp>,mlir::OpTrait::Scalarizable<mlir::arith::MulFOp>,mlir::OpTrait::Vectorizable<mlir::arith::MulFOp>,mlir::OpTrait::Tensorizable<mlir::arith::MulFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MulFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.mulf", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF08B8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::MulFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MulIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MulIOp>,mlir::OpTrait::OneResult<mlir::arith::MulIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::MulIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MulIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MulIOp>,mlir::OpTrait::OpInvariants<mlir::arith::MulIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::MulIOp>,mlir::OpTrait::IsCommutative<mlir::arith::MulIOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::MulIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MulIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MulIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MulIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::MulIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::MulIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::MulIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MulIOp>,mlir::OpTrait::Elementwise<mlir::arith::MulIOp>,mlir::OpTrait::Scalarizable<mlir::arith::MulIOp>,mlir::OpTrait::Vectorizable<mlir::arith::MulIOp>,mlir::OpTrait::Tensorizable<mlir::arith::MulIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MulIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.muli", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0998;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::MulIOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MulSIExtendedOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::OpInvariants<mlir::arith::MulSIExtendedOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MulSIExtendedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::IsCommutative<mlir::arith::MulSIExtendedOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::Elementwise<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::Scalarizable<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::Vectorizable<mlir::arith::MulSIExtendedOp>,mlir::OpTrait::Tensorizable<mlir::arith::MulSIExtendedOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MulSIExtendedOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::MulSIExtendedOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.mulsi_extended", 20, a1, &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0A78;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::MulUIExtendedOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::OpInvariants<mlir::arith::MulUIExtendedOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::MulUIExtendedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::IsCommutative<mlir::arith::MulUIExtendedOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::Elementwise<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::Scalarizable<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::Vectorizable<mlir::arith::MulUIExtendedOp>,mlir::OpTrait::Tensorizable<mlir::arith::MulUIExtendedOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::MulUIExtendedOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::MulUIExtendedOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.mului_extended", 20, a1, &mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0B58;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::NegFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::NegFOp>,mlir::OpTrait::OneResult<mlir::arith::NegFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::NegFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::NegFOp>,mlir::OpTrait::OneOperand<mlir::arith::NegFOp>,mlir::OpTrait::OpInvariants<mlir::arith::NegFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::NegFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::NegFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::NegFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::NegFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::NegFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::NegFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::NegFOp>,mlir::OpTrait::Elementwise<mlir::arith::NegFOp>,mlir::OpTrait::Scalarizable<mlir::arith::NegFOp>,mlir::OpTrait::Vectorizable<mlir::arith::NegFOp>,mlir::OpTrait::Tensorizable<mlir::arith::NegFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::NegFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.negf", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0C38;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::NegFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::OrIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::OrIOp>,mlir::OpTrait::OneResult<mlir::arith::OrIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::OrIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::OrIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::OrIOp>,mlir::OpTrait::OpInvariants<mlir::arith::OrIOp>,mlir::OpTrait::IsCommutative<mlir::arith::OrIOp>,mlir::OpTrait::IsIdempotent<mlir::arith::OrIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::OrIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::OrIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::OrIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::OrIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::OrIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::OrIOp>,mlir::OpTrait::Elementwise<mlir::arith::OrIOp>,mlir::OpTrait::Scalarizable<mlir::arith::OrIOp>,mlir::OpTrait::Vectorizable<mlir::arith::OrIOp>,mlir::OpTrait::Tensorizable<mlir::arith::OrIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::OrIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.ori", 9, a1, &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0D18;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::RemFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::RemFOp>,mlir::OpTrait::OneResult<mlir::arith::RemFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::RemFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::RemFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::RemFOp>,mlir::OpTrait::OpInvariants<mlir::arith::RemFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::RemFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::RemFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::RemFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::RemFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::RemFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::RemFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::RemFOp>,mlir::OpTrait::Elementwise<mlir::arith::RemFOp>,mlir::OpTrait::Scalarizable<mlir::arith::RemFOp>,mlir::OpTrait::Vectorizable<mlir::arith::RemFOp>,mlir::OpTrait::Tensorizable<mlir::arith::RemFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::RemFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.remf", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::RemFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0DF8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::RemFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::RemSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::RemSIOp>,mlir::OpTrait::OneResult<mlir::arith::RemSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::RemSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::RemSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::RemSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::RemSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::RemSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::RemSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::RemSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::RemSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::RemSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::RemSIOp>,mlir::OpTrait::Elementwise<mlir::arith::RemSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::RemSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::RemSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::RemSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::RemSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.remsi", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::RemSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0ED8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::RemUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::RemUIOp>,mlir::OpTrait::OneResult<mlir::arith::RemUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::RemUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::RemUIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::RemUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::RemUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::RemUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::RemUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::RemUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::RemUIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::RemUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::RemUIOp>,mlir::OpTrait::Elementwise<mlir::arith::RemUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::RemUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::RemUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::RemUIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::RemUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.remui", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::RemUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF0FB8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::SIToFPOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SIToFPOp>,mlir::OpTrait::OneResult<mlir::arith::SIToFPOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SIToFPOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SIToFPOp>,mlir::OpTrait::OneOperand<mlir::arith::SIToFPOp>,mlir::OpTrait::OpInvariants<mlir::arith::SIToFPOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SIToFPOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::SIToFPOp>,mlir::CastOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SIToFPOp>,mlir::OpTrait::Elementwise<mlir::arith::SIToFPOp>,mlir::OpTrait::Scalarizable<mlir::arith::SIToFPOp>,mlir::OpTrait::Vectorizable<mlir::arith::SIToFPOp>,mlir::OpTrait::Tensorizable<mlir::arith::SIToFPOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.sitofp", 12, a1, &mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF1098;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::ShLIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ShLIOp>,mlir::OpTrait::OneResult<mlir::arith::ShLIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ShLIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ShLIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::ShLIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ShLIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::ShLIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ShLIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ShLIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ShLIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ShLIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::ShLIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::ShLIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ShLIOp>,mlir::OpTrait::Elementwise<mlir::arith::ShLIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ShLIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ShLIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ShLIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::ShLIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.shli", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::ShLIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF1178;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::ShLIOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::ShRSIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ShRSIOp>,mlir::OpTrait::OneResult<mlir::arith::ShRSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ShRSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ShRSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::ShRSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ShRSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ShRSIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ShRSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ShRSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ShRSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::ShRSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ShRSIOp>,mlir::OpTrait::Elementwise<mlir::arith::ShRSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ShRSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ShRSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ShRSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::ShRSIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.shrsi", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::ShRSIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF1258;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::ShRUIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::ShRUIOp>,mlir::OpTrait::OneResult<mlir::arith::ShRUIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::ShRUIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::ShRUIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::ShRUIOp>,mlir::OpTrait::OpInvariants<mlir::arith::ShRUIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::ShRUIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::ShRUIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::ShRUIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::ShRUIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::ShRUIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::ShRUIOp>,mlir::OpTrait::Elementwise<mlir::arith::ShRUIOp>,mlir::OpTrait::Scalarizable<mlir::arith::ShRUIOp>,mlir::OpTrait::Vectorizable<mlir::arith::ShRUIOp>,mlir::OpTrait::Tensorizable<mlir::arith::ShRUIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::ShRUIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.shrui", 11, a1, &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF1338;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::SubFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SubFOp>,mlir::OpTrait::OneResult<mlir::arith::SubFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SubFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SubFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::SubFOp>,mlir::OpTrait::OpInvariants<mlir::arith::SubFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::SubFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SubFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SubFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SubFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::SubFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::SubFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SubFOp>,mlir::OpTrait::Elementwise<mlir::arith::SubFOp>,mlir::OpTrait::Scalarizable<mlir::arith::SubFOp>,mlir::OpTrait::Vectorizable<mlir::arith::SubFOp>,mlir::OpTrait::Tensorizable<mlir::arith::SubFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::SubFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.subf", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::SubFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF1418;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::SubFOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::SubIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SubIOp>,mlir::OpTrait::OneResult<mlir::arith::SubIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SubIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SubIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::SubIOp>,mlir::OpTrait::OpInvariants<mlir::arith::SubIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::SubIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SubIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SubIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SubIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::SubIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::SubIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::SubIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SubIOp>,mlir::OpTrait::Elementwise<mlir::arith::SubIOp>,mlir::OpTrait::Scalarizable<mlir::arith::SubIOp>,mlir::OpTrait::Vectorizable<mlir::arith::SubIOp>,mlir::OpTrait::Tensorizable<mlir::arith::SubIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::SubIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.subi", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF14F8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::SubIOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::TruncFOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::TruncFOp>,mlir::OpTrait::OneResult<mlir::arith::TruncFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::TruncFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::TruncFOp>,mlir::OpTrait::OneOperand<mlir::arith::TruncFOp>,mlir::OpTrait::OpInvariants<mlir::arith::TruncFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::TruncFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::TruncFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::TruncFOp>,mlir::arith::ArithRoundingModeInterface::Trait<mlir::arith::TruncFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::TruncFOp>,mlir::CastOpInterface::Trait<mlir::arith::TruncFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::TruncFOp>,mlir::OpTrait::Elementwise<mlir::arith::TruncFOp>,mlir::OpTrait::Scalarizable<mlir::arith::TruncFOp>,mlir::OpTrait::Vectorizable<mlir::arith::TruncFOp>,mlir::OpTrait::Tensorizable<mlir::arith::TruncFOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.truncf", 12, a1, &mlir::detail::TypeIDResolver<mlir::arith::TruncFOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF15D8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::arith::TruncFOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::TruncIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::TruncIOp>,mlir::OpTrait::OneResult<mlir::arith::TruncIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::TruncIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::TruncIOp>,mlir::OpTrait::OneOperand<mlir::arith::TruncIOp>,mlir::OpTrait::OpInvariants<mlir::arith::TruncIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::TruncIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::TruncIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::TruncIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::TruncIOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::TruncIOp>,mlir::CastOpInterface::Trait<mlir::arith::TruncIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::TruncIOp>,mlir::OpTrait::Elementwise<mlir::arith::TruncIOp>,mlir::OpTrait::Scalarizable<mlir::arith::TruncIOp>,mlir::OpTrait::Vectorizable<mlir::arith::TruncIOp>,mlir::OpTrait::Tensorizable<mlir::arith::TruncIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.trunci", 12, a1, &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF16B8;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::UIToFPOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::UIToFPOp>,mlir::OpTrait::OneResult<mlir::arith::UIToFPOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::UIToFPOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::UIToFPOp>,mlir::OpTrait::OneOperand<mlir::arith::UIToFPOp>,mlir::OpTrait::OpInvariants<mlir::arith::UIToFPOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::UIToFPOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::UIToFPOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::UIToFPOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::UIToFPOp>,mlir::CastOpInterface::Trait<mlir::arith::UIToFPOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::UIToFPOp>,mlir::OpTrait::Elementwise<mlir::arith::UIToFPOp>,mlir::OpTrait::Scalarizable<mlir::arith::UIToFPOp>,mlir::OpTrait::Vectorizable<mlir::arith::UIToFPOp>,mlir::OpTrait::Tensorizable<mlir::arith::UIToFPOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.uitofp", 12, a1, &mlir::detail::TypeIDResolver<mlir::arith::UIToFPOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF1798;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::XOrIOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::XOrIOp>,mlir::OpTrait::OneResult<mlir::arith::XOrIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::XOrIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::XOrIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::XOrIOp>,mlir::OpTrait::OpInvariants<mlir::arith::XOrIOp>,mlir::OpTrait::IsCommutative<mlir::arith::XOrIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::XOrIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::XOrIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::XOrIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::XOrIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::XOrIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::XOrIOp>,mlir::OpTrait::Elementwise<mlir::arith::XOrIOp>,mlir::OpTrait::Scalarizable<mlir::arith::XOrIOp>,mlir::OpTrait::Vectorizable<mlir::arith::XOrIOp>,mlir::OpTrait::Tensorizable<mlir::arith::XOrIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::XOrIOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.xori", 10, a1, &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF1878;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::arith::SelectOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::SelectOp>,mlir::OpTrait::OneResult<mlir::arith::SelectOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::SelectOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::SelectOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::arith::SelectOp>,mlir::OpTrait::OpInvariants<mlir::arith::SelectOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::SelectOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::SelectOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::SelectOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::SelectOp>,mlir::SelectLikeOpInterface::Trait<mlir::arith::SelectOp>,mlir::OpTrait::Elementwise<mlir::arith::SelectOp>,mlir::OpTrait::Scalarizable<mlir::arith::SelectOp>,mlir::OpTrait::Vectorizable<mlir::arith::SelectOp>,mlir::OpTrait::Tensorizable<mlir::arith::SelectOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::SelectOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::SelectOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "arith.select", 12, a1, &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF1958;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v11, a2, a3, a4, a5);
  v8 = v12;
  if (v12 >= 8)
  {
    if ((v12 & 4) != 0)
    {
      v9 = v11[0];
      if ((v12 & 2) != 0)
      {
        v9 = v11;
      }

      v10 = result;
      (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v9, v6, v7);
      result = v10;
    }

    if ((v8 & 2) == 0)
    {
      llvm::deallocate_buffer(v11[0], v11[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v11, a2, a3, a4, a5);
  v9 = v12;
  if (v12 >= 8)
  {
    if ((v12 & 4) != 0)
    {
      if ((v12 & 2) != 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v11[0];
      }

      (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v10, v5, v6, v7, v8);
    }

    if ((v9 & 2) == 0)
    {
      llvm::deallocate_buffer(v11[0], v11[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::writeProperties;
  {
    v15 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::AddFOp>::getSpeculatability;
  {
    v16 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getEffects;
  {
    v17 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x10uLL);
  v9 = v8;
  *v8 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getFastMathFlagsAttr;
  v8[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getFastMathAttrName;
  {
    v18 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(8uLL);
  v11 = v10;
  *v10 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getShapeForUnroll;
  {
    v19 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(0x18uLL);
  v13 = v12;
  *v12 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::inferReturnTypes;
  v12[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::refineReturnTypes;
  v12[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::isCompatibleReturnTypes;
  {
    v20 = v12;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v13 = v20;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v14, v13);
}

const char *llvm::getTypeName<mlir::BytecodeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeOpInterface]";
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

const char *llvm::getTypeName<mlir::ConditionallySpeculatable>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConditionallySpeculatable]";
  v6 = 81;
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

const char *llvm::getTypeName<mlir::MemoryEffectOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffectOpInterface]";
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

void mlir::detail::VectorUnrollOpInterfaceTrait<mlir::arith::AddFOp>::getShapeForUnroll(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (*(*a1 + 36))
  {
    v3 = *a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = 0;
  }

  v16 = v4;
  if (!v4)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  Value = mlir::ArrayAttr::getValue(&v16);
  v6 = mlir::ArrayAttr::getValue(&v16);
  v8 = (v6 + 8 * v7);
  __src = v19;
  v18 = 0x400000000;
  v9 = (v8 - Value) >> 3;
  if (v9 < 5)
  {
    v10 = 0;
    v11 = v19;
    if (v8 == Value)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v19, v9, 8);
  v10 = v18;
  v11 = __src;
  if (v8 != Value)
  {
LABEL_12:
    memcpy(&v11[v10], Value, v8 - Value);
    v10 = v18;
    v11 = __src;
  }

LABEL_13:
  v12 = (v8 - Value) >> 3;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  v13 = v10 + v12;
  LODWORD(v18) = v10 + v12;
  if (v10 + v12 && &__src != a2)
  {
    if (v11 == v19)
    {
      v15 = v10 + v12;
      if (v13 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, (v10 + v12), 8), v15 = v18, v11 = __src, v18))
      {
        memcpy(*a2, v11, 8 * v15);
        v11 = __src;
      }

      *(a2 + 8) = v13;
    }

    else
    {
      *a2 = v11;
      v14 = HIDWORD(v18);
      *(a2 + 8) = v13;
      *(a2 + 12) = v14;
      __src = v19;
      HIDWORD(v18) = 0;
      v11 = v19;
    }

    LODWORD(v18) = 0;
  }

  *(a2 + 48) = 1;
  if (v11 != v19)
  {
    free(v11);
  }
}

const char *llvm::getTypeName<mlir::VectorUnrollOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::VectorUnrollOpInterface]";
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::AddFOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    v23 = "arith.addf";
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

uint64_t mlir::Diagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, char *__s, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v14 = strlen(__s);
  v15 = a1 + 16;
  v16 = *(a1 + 16);
  LODWORD(v24) = 3;
  v25 = __s;
  v26 = v14;
  v17 = *(a1 + 24);
  v18 = &v24;
  if (v17 >= *(a1 + 28))
  {
    if (v16 <= &v24 && v16 + 24 * v17 > &v24)
    {
      v23 = &v24 - v16;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, a1 + 32, v17 + 1, 24);
      v16 = *(a1 + 16);
      v18 = &v23[v16];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, a1 + 32, v17 + 1, 24);
      v16 = *(a1 + 16);
      v18 = &v24;
    }
  }

  v19 = v16 + 24 * *(a1 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  ++*(a1 + 24);
  v27 = 262;
  v21 = *(a3 + 8);
  v24 = *a3;
  v25 = v21;
  mlir::Diagnostic::operator<<(a1, &v24);
  return mlir::Diagnostic::append<char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a1, a4, a5, a6, a7);
}

uint64_t mlir::Diagnostic::append<char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, char *__s, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v19[0]) = 3;
  v19[1] = __s;
  v19[2] = v10;
  v13 = *(a1 + 24);
  v14 = v19;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= v19 && v12 + 24 * v13 > v19)
    {
      v18 = v19 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, a1 + 32, v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v18[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, a1 + 32, v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = v19;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v19[0] = ", ";
  llvm::interleave<mlir::Type const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(llvm::SmallVector<mlir::Type,4u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(void)#1},void>(*a3, (*a3 + 8 * *(a3 + 8)), a1, a1, v19);
  return mlir::Diagnostic::append<char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a1, a4, a5);
}

uint64_t mlir::Diagnostic::append<char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  v7 = a1 + 16;
  v8 = *(a1 + 16);
  LODWORD(v15[0]) = 3;
  v15[1] = __s;
  v15[2] = v6;
  v9 = *(a1 + 24);
  v10 = v15;
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= v15 && v8 + 24 * v9 > v15)
    {
      v14 = v15 - v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, a1 + 32, v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v14[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, a1 + 32, v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = v15;
    }
  }

  v11 = v8 + 24 * *(a1 + 24);
  v12 = *v10;
  *(v11 + 16) = v10[2];
  *v11 = v12;
  ++*(a1 + 24);
  v15[0] = ", ";
  llvm::interleave<mlir::Type const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(llvm::SmallVector<mlir::Type,4u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(void)#1},void>(*a3, (*a3 + 8 * *(a3 + 8)), a1, a1, v15);
  return a1;
}

__n128 llvm::interleave<mlir::Type const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(llvm::SmallVector<mlir::Type,4u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(void)#1},void>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a1 != a2)
  {
    v36 = v5;
    v37 = v6;
    v12 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, *a1);
    v14 = (a3 + 16);
    v13 = *(a3 + 16);
    v15 = *(a3 + 24);
    if (v15 >= *(a3 + 28))
    {
      if (v13 <= &v33 && v13 + 24 * v15 > &v33)
      {
        v32 = &v33 - v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 16, a3 + 32, v15 + 1, 24);
        v13 = *(a3 + 16);
        v12 = &v32[v13];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 16, a3 + 32, v15 + 1, 24);
        v13 = *(a3 + 16);
        v12 = &v33;
      }
    }

    v16 = (v13 + 24 * *(a3 + 24));
    result = *v12;
    v16[1].n128_u64[0] = v12[1].n128_u64[0];
    *v16 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v19 = *a5;
      if (*a5)
      {
        v20 = strlen(*a5);
        v33 = 3;
        v34 = v19;
        v35 = v20;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v33 = 3;
        v34 = 0;
        v35 = 0;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      if (v22 <= &v33 && v22 + 24 * v21 > &v33)
      {
        v30 = &v33 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, a4 + 32, v21 + 1, 24);
        v22 = *(a4 + 16);
        v23 = &v30[v22];
        goto LABEL_9;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, a4 + 32, v21 + 1, 24);
      v22 = *(a4 + 16);
LABEL_8:
      v23 = &v33;
LABEL_9:
      v24 = v22 + 24 * *(a4 + 24);
      v25 = *v23;
      *(v24 + 16) = *(v23 + 2);
      *v24 = v25;
      ++*(a4 + 24);
      v26 = &v33;
      mlir::DiagnosticArgument::DiagnosticArgument(&v33, *i);
      v27 = *(a3 + 24);
      v28 = *(a3 + 16);
      if (v27 >= *(a3 + 28))
      {
        if (v28 <= &v33 && v28 + 24 * v27 > &v33)
        {
          v31 = &v33 - v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 16, a3 + 32, v27 + 1, 24);
          v28 = *v14;
          v26 = &v31[*v14];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 16, a3 + 32, v27 + 1, 24);
          v28 = *v14;
          v26 = &v33;
        }
      }

      v29 = (v28 + 24 * *(a3 + 24));
      result = *v26;
      v29[1].n128_u64[0] = v26[1].n128_u64[0];
      *v29 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::InferTypeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferTypeOpInterface]";
  v6 = 76;
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

BOOL mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::AddFOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = a1;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v15, a1);
  v16 = a2;
  v17 = a3;
  v8 = mlir::arith::AddFOp::fold(&v14, v15);
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
    v11 = mlir::OpTrait::impl::foldCommutative(a1, a2, a3);
    v8 = v10;
    if (v11)
    {
      return 1;
    }
  }

  return v8 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
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
    v11 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
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

const char *llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroRegions<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneResult<Empty>]";
  v6 = 81;
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

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<Empty>]";
  v6 = 104;
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

const char *llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroSuccessors<Empty>]";
  v6 = 86;
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

const char *llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NOperands<2>::Impl<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OpInvariants<Empty>]";
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

const char *llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeOpInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConditionallySpeculatable::Trait<Empty>]";
  v6 = 95;
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

const char *llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AlwaysSpeculatableImplTrait<Empty>]";
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

const char *llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffectOpInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::ArithFastMathInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsCommutative<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultType<Empty>]";
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

const char *llvm::getTypeName<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::VectorUnrollOpInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Elementwise<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Scalarizable<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Vectorizable<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Tensorizable<Empty>]";
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

const char *llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferTypeOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, mlir::arith::AddFOp::verifyInvariantsImpl(&v8)) && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v5) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void *mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddIOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddIOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddIOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::writeProperties;
  {
    v17 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::AddIOp>::getSpeculatability;
  {
    v18 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v18;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getEffects;
  {
    v19 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v19;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x10uLL);
  v9 = v8;
  *v8 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferResultRanges;
  v8[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferResultRangesFromOptional;
  {
    v20 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v9 = v20;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x20uLL);
  v11 = v10;
  *v10 = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getOverflowAttr;
  v10[1] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::hasNoUnsignedWrap;
  v10[2] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::hasNoSignedWrap;
  v10[3] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getIntegerOverflowAttrName;
  {
    v21 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v11 = v21;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc(8uLL);
  v13 = v12;
  *v12 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getShapeForUnroll;
  {
    v22 = v12;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v13 = v22;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v13);
  v14 = malloc(0x18uLL);
  v15 = v14;
  *v14 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferReturnTypes;
  v14[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::refineReturnTypes;
  v14[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::isCompatibleReturnTypes;
  {
    v23 = v14;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v15 = v23;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v16, v15);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
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

const char *llvm::getTypeName<mlir::arith::ArithIntegerOverflowFlagsInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::ArithIntegerOverflowFlagsInterface]";
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::AddIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    v23 = "arith.addi";
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

BOOL mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::AddIOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = a1;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v15, a1);
  v16 = a2;
  v17 = a3;
  v8 = mlir::arith::AddIOp::fold(&v14, v15);
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
    v11 = mlir::OpTrait::impl::foldCommutative(a1, a2, a3);
    v8 = v10;
    if (v11)
    {
      return 1;
    }
  }

  return v8 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    a1 = v40;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_83;
    }
  }

  v41 = a1;
  v42 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v1 = v42;
  a1 = v41;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_84;
  }

LABEL_83:
  v229 = a1;
  v43 = v1;
  v44 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v44;
  v1 = v43;
  a1 = v229;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_85;
  }

LABEL_84:
  v212 = v2;
  v230 = a1;
  v45 = v1;
  v46 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v3 = v46;
  v2 = v212;
  a1 = v230;
  v1 = v45;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_86;
  }

LABEL_85:
  v213 = v2;
  v231 = a1;
  v47 = v1;
  v48 = v3;
  v196 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v4 = v196;
  v2 = v213;
  v3 = v48;
  v1 = v47;
  a1 = v231;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_87;
  }

LABEL_86:
  v214 = v2;
  v232 = a1;
  v49 = v1;
  v50 = v3;
  v181 = v5;
  v197 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v5 = v181;
  v4 = v197;
  v3 = v50;
  v2 = v214;
  a1 = v232;
  v1 = v49;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_88;
  }

LABEL_87:
  v215 = v2;
  v233 = a1;
  v51 = v1;
  v52 = v3;
  v182 = v5;
  v198 = v4;
  v167 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v6 = v167;
  v5 = v182;
  v4 = v198;
  v2 = v215;
  v3 = v52;
  v1 = v51;
  a1 = v233;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_89;
  }

LABEL_88:
  v216 = v2;
  v234 = a1;
  v53 = v1;
  v54 = v3;
  v183 = v5;
  v199 = v4;
  v154 = v7;
  v168 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v154;
  v6 = v168;
  v5 = v183;
  v4 = v199;
  v3 = v54;
  v2 = v216;
  a1 = v234;
  v1 = v53;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_90;
  }

LABEL_89:
  v217 = v2;
  v235 = a1;
  v55 = v1;
  v56 = v3;
  v184 = v5;
  v200 = v4;
  v155 = v7;
  v169 = v6;
  v142 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v8 = v142;
  v7 = v155;
  v6 = v169;
  v5 = v184;
  v4 = v200;
  v3 = v56;
  v2 = v217;
  a1 = v235;
  v1 = v55;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_91;
  }

LABEL_90:
  v218 = v2;
  v236 = a1;
  v57 = v1;
  v58 = v3;
  v185 = v5;
  v201 = v4;
  v156 = v7;
  v170 = v6;
  v131 = v9;
  v143 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v9 = v131;
  v8 = v143;
  v7 = v156;
  v6 = v170;
  v5 = v185;
  v4 = v201;
  v3 = v58;
  v2 = v218;
  a1 = v236;
  v1 = v57;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_92;
  }

LABEL_91:
  v219 = v2;
  v237 = a1;
  v59 = v1;
  v60 = v3;
  v186 = v5;
  v202 = v4;
  v157 = v7;
  v171 = v6;
  v132 = v9;
  v144 = v8;
  v121 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v10 = v121;
  v9 = v132;
  v8 = v144;
  v7 = v157;
  v6 = v171;
  v5 = v186;
  v4 = v202;
  v3 = v60;
  v2 = v219;
  a1 = v237;
  v1 = v59;
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_93;
  }

LABEL_92:
  v220 = v2;
  v238 = a1;
  v61 = v1;
  v62 = v3;
  v187 = v5;
  v203 = v4;
  v158 = v7;
  v172 = v6;
  v133 = v9;
  v145 = v8;
  v112 = v11;
  v122 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v11 = v112;
  v10 = v122;
  v9 = v133;
  v8 = v145;
  v7 = v158;
  v6 = v172;
  v5 = v187;
  v4 = v203;
  v3 = v62;
  v2 = v220;
  a1 = v238;
  v1 = v61;
  v12 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_94;
  }

LABEL_93:
  v221 = v2;
  v239 = a1;
  v63 = v1;
  v64 = v3;
  v188 = v5;
  v204 = v4;
  v159 = v7;
  v173 = v6;
  v134 = v9;
  v146 = v8;
  v113 = v11;
  v123 = v10;
  v104 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v104;
  v11 = v113;
  v10 = v123;
  v9 = v134;
  v8 = v146;
  v7 = v159;
  v6 = v173;
  v5 = v188;
  v4 = v204;
  v3 = v64;
  v2 = v221;
  a1 = v239;
  v1 = v63;
  v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

    goto LABEL_95;
  }

LABEL_94:
  v222 = v2;
  v240 = a1;
  v65 = v1;
  v66 = v3;
  v189 = v5;
  v205 = v4;
  v160 = v7;
  v174 = v6;
  v135 = v9;
  v147 = v8;
  v114 = v11;
  v124 = v10;
  v97 = v13;
  v105 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v13 = v97;
  v12 = v105;
  v11 = v114;
  v10 = v124;
  v9 = v135;
  v8 = v147;
  v7 = v160;
  v6 = v174;
  v5 = v189;
  v4 = v205;
  v3 = v66;
  v2 = v222;
  a1 = v240;
  v1 = v65;
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_16:
    v15 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_17;
    }

    goto LABEL_96;
  }

LABEL_95:
  v223 = v2;
  v241 = a1;
  v67 = v1;
  v68 = v3;
  v190 = v5;
  v206 = v4;
  v161 = v7;
  v175 = v6;
  v136 = v9;
  v148 = v8;
  v115 = v11;
  v125 = v10;
  v98 = v13;
  v106 = v12;
  v91 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v14 = v91;
  v13 = v98;
  v12 = v106;
  v11 = v115;
  v10 = v125;
  v9 = v136;
  v8 = v148;
  v7 = v161;
  v6 = v175;
  v5 = v190;
  v4 = v206;
  v3 = v68;
  v2 = v223;
  a1 = v241;
  v1 = v67;
  v15 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_17:
    v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_18;
    }

    goto LABEL_97;
  }

LABEL_96:
  v224 = v2;
  v242 = a1;
  v69 = v1;
  v70 = v3;
  v191 = v5;
  v207 = v4;
  v162 = v7;
  v176 = v6;
  v137 = v9;
  v149 = v8;
  v116 = v11;
  v126 = v10;
  v99 = v13;
  v107 = v12;
  v86 = v15;
  v92 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v15 = v86;
  v14 = v92;
  v13 = v99;
  v12 = v107;
  v11 = v116;
  v10 = v126;
  v9 = v137;
  v8 = v149;
  v7 = v162;
  v6 = v176;
  v5 = v191;
  v4 = v207;
  v3 = v70;
  v2 = v224;
  a1 = v242;
  v1 = v69;
  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_18:
    v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_19;
    }

    goto LABEL_98;
  }

LABEL_97:
  v225 = v2;
  v243 = a1;
  v71 = v1;
  v72 = v3;
  v192 = v5;
  v208 = v4;
  v163 = v7;
  v177 = v6;
  v138 = v9;
  v150 = v8;
  v117 = v11;
  v127 = v10;
  v100 = v13;
  v108 = v12;
  v87 = v15;
  v93 = v14;
  v82 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v16 = v82;
  v15 = v87;
  v14 = v93;
  v13 = v100;
  v12 = v108;
  v11 = v117;
  v10 = v127;
  v9 = v138;
  v8 = v150;
  v7 = v163;
  v6 = v177;
  v5 = v192;
  v4 = v208;
  v3 = v72;
  v2 = v225;
  a1 = v243;
  v1 = v71;
  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_19:
    v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_20;
    }

LABEL_99:
    v227 = v2;
    v245 = a1;
    v75 = v1;
    v77 = v3;
    v194 = v5;
    v210 = v4;
    v165 = v7;
    v179 = v6;
    v140 = v9;
    v152 = v8;
    v119 = v11;
    v129 = v10;
    v102 = v13;
    v110 = v12;
    v89 = v15;
    v95 = v14;
    v80 = v17;
    v84 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v17 = v80;
    v16 = v84;
    v15 = v89;
    v14 = v95;
    v13 = v102;
    v12 = v110;
    v11 = v119;
    v10 = v129;
    v9 = v140;
    v8 = v152;
    v7 = v165;
    v6 = v179;
    v5 = v194;
    v4 = v210;
    v3 = v77;
    v2 = v227;
    a1 = v245;
    v1 = v75;
    v19 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || v19 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_100;
  }

LABEL_98:
  v226 = v2;
  v244 = a1;
  v73 = v1;
  v74 = v3;
  v193 = v5;
  v209 = v4;
  v164 = v7;
  v178 = v6;
  v139 = v9;
  v151 = v8;
  v118 = v11;
  v128 = v10;
  v101 = v13;
  v109 = v12;
  v88 = v15;
  v94 = v14;
  v79 = v17;
  v83 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v17 = v79;
  v16 = v83;
  v15 = v88;
  v14 = v94;
  v13 = v101;
  v12 = v109;
  v11 = v118;
  v10 = v128;
  v9 = v139;
  v8 = v151;
  v7 = v164;
  v6 = v178;
  v5 = v193;
  v4 = v209;
  v3 = v74;
  v2 = v226;
  a1 = v244;
  v1 = v73;
  v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_99;
  }

LABEL_20:
  v19 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || v19 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_100:
  v246 = a1;
  v76 = v1;
  v228 = v2;
  v78 = v3;
  v195 = v5;
  v211 = v4;
  v166 = v7;
  v180 = v6;
  v141 = v9;
  v153 = v8;
  v120 = v11;
  v130 = v10;
  v103 = v13;
  v111 = v12;
  v90 = v15;
  v96 = v14;
  v81 = v17;
  v85 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v17 = v81;
  v16 = v85;
  v15 = v90;
  v14 = v96;
  v13 = v103;
  v12 = v111;
  v11 = v120;
  v10 = v130;
  v9 = v141;
  v8 = v153;
  v7 = v166;
  v6 = v180;
  v5 = v195;
  v4 = v211;
  v1 = v76;
  v3 = v78;
  v2 = v228;
  a1 = v246;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || v19 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferIntRangeInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<Empty>]";
  v6 = 111;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddIOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, (mlir::arith::AddIOp::verifyInvariantsImpl(&v8) & 1) != 0) && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v5) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddUIExtendedOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddUIExtendedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddUIExtendedOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Elementwise<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddUIExtendedOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::AddUIExtendedOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getSpeculatability;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getEffects;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getShapeForUnroll;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(0x20uLL);
  v9 = v8;
  *v8 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getAsmResultNames;
  v8[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getAsmBlockArgumentNames;
  v8[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getAsmBlockNames;
  v8[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getDefaultDialect;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddUIExtendedOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddUIExtendedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddUIExtendedOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Elementwise<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddUIExtendedOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::AddUIExtendedOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

const char *llvm::getTypeName<mlir::OpAsmOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmOpInterface]";
  v6 = 72;
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

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v18 = a2;
  v19[0] = v9;
  v19[1] = v10;
  v20 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v21, v13, v12);
  v21[2] = a3;
  v21[3] = a4;
  result = mlir::arith::AddUIExtendedOp::fold(&v18, v19, a5);
  v15 = *(a5 + 8);
  if (((result & 1) == 0 || !v15) && !v15)
  {
    v16 = result;
    v17 = mlir::OpTrait::impl::foldCommutative(a2, a3, a4);
    result = v16;
    if (v17)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    a1 = v135;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  v121 = v1;
  v136 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>();
  v1 = v121;
  a1 = v136;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  v122 = v1;
  v137 = a1;
  v108 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v108;
  v1 = v122;
  a1 = v137;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_66;
  }

LABEL_65:
  v123 = v1;
  v138 = a1;
  v96 = v3;
  v109 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v3 = v96;
  v2 = v109;
  v1 = v123;
  a1 = v138;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  v124 = v1;
  v139 = a1;
  v97 = v3;
  v110 = v2;
  v85 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v4 = v85;
  v3 = v97;
  v2 = v110;
  v1 = v124;
  a1 = v139;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  v125 = v1;
  v140 = a1;
  v98 = v3;
  v111 = v2;
  v75 = v5;
  v86 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v5 = v75;
  v4 = v86;
  v3 = v98;
  v2 = v111;
  v1 = v125;
  a1 = v140;
  v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  v126 = v1;
  v141 = a1;
  v99 = v3;
  v112 = v2;
  v76 = v5;
  v87 = v4;
  v66 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v6 = v66;
  v5 = v76;
  v4 = v87;
  v3 = v99;
  v2 = v112;
  v1 = v126;
  a1 = v141;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  v127 = v1;
  v142 = a1;
  v100 = v3;
  v113 = v2;
  v77 = v5;
  v88 = v4;
  v67 = v6;
  v58 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v58;
  v6 = v67;
  v5 = v77;
  v4 = v88;
  v3 = v100;
  v2 = v113;
  v1 = v127;
  a1 = v142;
  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  v128 = v1;
  v143 = a1;
  v101 = v3;
  v114 = v2;
  v78 = v5;
  v89 = v4;
  v68 = v6;
  v51 = v8;
  v59 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v8 = v51;
  v7 = v59;
  v6 = v68;
  v5 = v78;
  v4 = v89;
  v3 = v101;
  v2 = v114;
  v1 = v128;
  a1 = v143;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  v129 = v1;
  v144 = a1;
  v102 = v3;
  v115 = v2;
  v79 = v5;
  v90 = v4;
  v69 = v6;
  v52 = v8;
  v60 = v7;
  v45 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v9 = v45;
  v8 = v52;
  v7 = v60;
  v6 = v69;
  v5 = v79;
  v4 = v90;
  v3 = v102;
  v2 = v115;
  v1 = v129;
  a1 = v144;
  v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  v130 = v1;
  v145 = a1;
  v103 = v3;
  v116 = v2;
  v80 = v5;
  v91 = v4;
  v70 = v6;
  v53 = v8;
  v61 = v7;
  v40 = v10;
  v46 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v10 = v40;
  v9 = v46;
  v8 = v53;
  v7 = v61;
  v6 = v70;
  v5 = v80;
  v4 = v91;
  v3 = v103;
  v2 = v116;
  v1 = v130;
  a1 = v145;
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  v131 = v1;
  v146 = a1;
  v104 = v3;
  v117 = v2;
  v81 = v5;
  v92 = v4;
  v71 = v6;
  v54 = v8;
  v62 = v7;
  v41 = v10;
  v47 = v9;
  v36 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v11 = v36;
  v10 = v41;
  v9 = v47;
  v8 = v54;
  v7 = v62;
  v6 = v71;
  v5 = v81;
  v4 = v92;
  v3 = v104;
  v2 = v117;
  v1 = v131;
  a1 = v146;
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

LABEL_75:
    v133 = v1;
    v148 = a1;
    v106 = v3;
    v119 = v2;
    v83 = v5;
    v94 = v4;
    v73 = v6;
    v56 = v8;
    v64 = v7;
    v43 = v10;
    v49 = v9;
    v34 = v12;
    v38 = v11;
    v31 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v13 = v31;
    v12 = v34;
    v11 = v38;
    v10 = v43;
    v9 = v49;
    v8 = v56;
    v7 = v64;
    v6 = v73;
    v5 = v83;
    v4 = v94;
    v3 = v106;
    v2 = v119;
    v1 = v133;
    a1 = v148;
    v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_76;
  }

LABEL_74:
  v132 = v1;
  v147 = a1;
  v105 = v3;
  v118 = v2;
  v82 = v5;
  v93 = v4;
  v72 = v6;
  v55 = v8;
  v63 = v7;
  v42 = v10;
  v48 = v9;
  v33 = v12;
  v37 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v33;
  v11 = v37;
  v10 = v42;
  v9 = v48;
  v8 = v55;
  v7 = v63;
  v6 = v72;
  v5 = v82;
  v4 = v93;
  v3 = v105;
  v2 = v118;
  v1 = v132;
  a1 = v147;
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_75;
  }

LABEL_15:
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_76:
  v134 = v1;
  v149 = a1;
  v107 = v3;
  v120 = v2;
  v84 = v5;
  v95 = v4;
  v74 = v6;
  v57 = v8;
  v65 = v7;
  v44 = v10;
  v50 = v9;
  v35 = v12;
  v39 = v11;
  v30 = v14;
  v32 = v13;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>();
  v14 = v30;
  v13 = v32;
  v12 = v35;
  v11 = v39;
  v10 = v44;
  v9 = v50;
  v8 = v57;
  v7 = v65;
  v6 = v74;
  v5 = v84;
  v4 = v95;
  v3 = v107;
  v2 = v120;
  v1 = v134;
  a1 = v149;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NResults<2>::Impl<Empty>]";
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

const char *llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmOpInterface::Trait<Empty>]";
  v6 = 86;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddUIExtendedOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyNResults(a1, 2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v6 = a1, mlir::arith::AddUIExtendedOp::verifyInvariantsImpl(&v6)))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AndIOp>,mlir::OpTrait::OneResult<mlir::arith::AndIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AndIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AndIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AndIOp>,mlir::OpTrait::IsIdempotent<mlir::arith::AndIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AndIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AndIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AndIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AndIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::Elementwise<mlir::arith::AndIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AndIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AndIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AndIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AndIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::AndIOp>::getSpeculatability;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::getEffects;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferResultRangesFromOptional;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::getShapeForUnroll;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x18uLL);
  v11 = v10;
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::isCompatibleReturnTypes;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::AndIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    v23 = "arith.andi";
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

BOOL mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::AndIOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = mlir::arith::AndIOp::fold(&v21, v22);
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
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
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v122;
  v6 = v135;
  v5 = v149;
  v4 = v164;
  v3 = v180;
  v2 = v197;
  v1 = v45;
  a1 = v215;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  v12 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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

const char *llvm::getTypeName<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsIdempotent<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::AndIOp>,mlir::OpTrait::OneResult<mlir::arith::AndIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AndIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AndIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AndIOp>,mlir::OpTrait::IsIdempotent<mlir::arith::AndIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AndIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AndIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AndIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AndIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::Elementwise<mlir::arith::AndIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AndIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AndIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AndIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AndIOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, (mlir::arith::AndIOp::verifyInvariantsImpl(&v8) & 1) != 0) && (protocol witness for static Equatable.== infix(_:_:) in conformance MPSGraphDelegateKernelError.CodingKeys() & 1) != 0 && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v5) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::BitcastOp>::getSpeculatability;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::BitcastOp>::getEffects;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::CastOpInterfaceInterfaceTraits::Model<mlir::arith::BitcastOp>::areCastCompatible;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::BitcastOp>::getShapeForUnroll;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

const char *llvm::getTypeName<mlir::CastOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CastOpInterface]";
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

void mlir::detail::VectorUnrollOpInterfaceTrait<mlir::arith::BitcastOp>::getShapeForUnroll(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v3 = 0;
  }

  v15 = v3;
  if (!v3)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  Value = mlir::ArrayAttr::getValue(&v15);
  v5 = mlir::ArrayAttr::getValue(&v15);
  v7 = (v5 + 8 * v6);
  __src = v18;
  v17 = 0x400000000;
  v8 = (v7 - Value) >> 3;
  if (v8 < 5)
  {
    v9 = 0;
    v10 = v18;
    if (v7 == Value)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v18, v8, 8);
  v9 = v17;
  v10 = __src;
  if (v7 != Value)
  {
LABEL_9:
    memcpy(&v10[v9], Value, v7 - Value);
    v9 = v17;
    v10 = __src;
  }

LABEL_10:
  v11 = (v7 - Value) >> 3;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  v12 = v9 + v11;
  LODWORD(v17) = v9 + v11;
  if (v9 + v11 && &__src != a2)
  {
    if (v10 == v18)
    {
      v14 = v9 + v11;
      if (v12 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, (v9 + v11), 8), v14 = v17, v10 = __src, v17))
      {
        memcpy(*a2, v10, 8 * v14);
        v10 = __src;
      }

      *(a2 + 8) = v12;
    }

    else
    {
      *a2 = v10;
      v13 = HIDWORD(v17);
      *(a2 + 8) = v12;
      *(a2 + 12) = v13;
      __src = v18;
      HIDWORD(v17) = 0;
      v10 = v18;
    }

    LODWORD(v17) = 0;
  }

  *(a2 + 48) = 1;
  if (v10 != v18)
  {
    free(v10);
  }
}

BOOL mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::foldSingleResultHook<mlir::arith::BitcastOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = mlir::arith::BitcastOp::fold(&v19, v20);
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    a1 = v152;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  v137 = v1;
  v153 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v1 = v137;
  a1 = v153;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  v138 = v1;
  v154 = a1;
  v123 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v123;
  v1 = v138;
  a1 = v154;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v3 = v110;
  v2 = v124;
  v1 = v139;
  a1 = v155;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
  v4 = v98;
  v3 = v111;
  v2 = v125;
  v1 = v140;
  a1 = v156;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v5 = v87;
  v4 = v99;
  v3 = v112;
  v2 = v126;
  v1 = v141;
  a1 = v157;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v6 = v77;
  v5 = v88;
  v4 = v100;
  v3 = v113;
  v2 = v127;
  v1 = v142;
  a1 = v158;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v68;
  v6 = v78;
  v5 = v89;
  v4 = v101;
  v3 = v114;
  v2 = v128;
  v1 = v143;
  a1 = v159;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v8 = v60;
  v7 = v69;
  v6 = v79;
  v5 = v90;
  v4 = v102;
  v3 = v115;
  v2 = v129;
  v1 = v144;
  a1 = v160;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
    v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_80;
  }

LABEL_16:
  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneOperand<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultShape<Empty>]";
  v6 = 98;
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

const char *llvm::getTypeName<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CastOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::BitcastOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v10 = a1, mlir::arith::BitcastOp::verifyInvariantsImpl(&v10)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && mlir::impl::verifyCastInterfaceOp(a1, v7))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v8) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::~Model(void *__p)
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OneResult<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::CeilDivSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::CeilDivSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::CeilDivSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::CeilDivSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::CeilDivSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Elementwise<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::CeilDivSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::CeilDivSIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::getSpeculatability;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(0x10uLL);
  v5 = v4;
  *v4 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferResultRanges;
  v4[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferResultRangesFromOptional;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::getShapeForUnroll;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::getEffects;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc(0x18uLL);
  v11 = v10;
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::isCompatibleReturnTypes;
  {
    v17 = v10;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v11 = v17;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

char **mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, char *, void, void (*)(uint64_t *a1, uint64_t a2, uint64_t a3), void **), unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::CeilDivSIOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    v23 = "arith.ceildivsi";
    v24 = 15;
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

BOOL mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::CeilDivSIOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
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
  v13 = mlir::arith::CeilDivSIOp::fold(&v17, v18);
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    a1 = v152;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  v137 = v1;
  v153 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v1 = v137;
  a1 = v153;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  v138 = v1;
  v154 = a1;
  v123 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v123;
  v1 = v138;
  a1 = v154;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v3 = v110;
  v2 = v124;
  v1 = v139;
  a1 = v155;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v4 = v98;
  v3 = v111;
  v2 = v125;
  v1 = v140;
  a1 = v156;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v5 = v87;
  v4 = v99;
  v3 = v112;
  v2 = v126;
  v1 = v141;
  a1 = v157;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v6 = v77;
  v5 = v88;
  v4 = v100;
  v3 = v113;
  v2 = v127;
  v1 = v142;
  a1 = v158;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v68;
  v6 = v78;
  v5 = v89;
  v4 = v101;
  v3 = v114;
  v2 = v128;
  v1 = v143;
  a1 = v159;
  v8 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v8 = v60;
  v7 = v69;
  v6 = v79;
  v5 = v90;
  v4 = v102;
  v3 = v115;
  v2 = v129;
  v1 = v144;
  a1 = v160;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
    v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_80;
  }

LABEL_16:
  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}