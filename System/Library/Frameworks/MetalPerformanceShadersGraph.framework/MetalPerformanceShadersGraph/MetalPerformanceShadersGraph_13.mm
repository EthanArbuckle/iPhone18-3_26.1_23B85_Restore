uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((v6 >> 4) ^ (v6 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    if (*a2 == *v11 && v6 == v13)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v12 != -4096 || v13 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 == -8192;
        }

        if (v18 && v12 == -8192)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 16 * (v20 & v9));
        v12 = *v11;
        v13 = v11[1];
        if (v5 == *v11 && v6 == v13)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

void llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {

    memset_pattern16(buffer, &unk_1E096FAC0, 16 * v10);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    memset_pattern16(*a1, &unk_1E096FAC0, 16 * v6);
  }

  if (a2 != a3)
  {
    v7 = 0;
    v8 = v6 - 1;
    do
    {
      v15 = *a2;
      v16 = a2[1];
      if ((*a2 != -4096 || v16 != -4096) && (v15 != -8192 || v16 != -8192))
      {
        v9 = 0xBF58476D1CE4E5B9 * ((v16 >> 4) ^ (v16 >> 9) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
        v10 = v8 & ((v9 >> 31) ^ v9);
        v11 = (*a1 + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        if (v15 != *v11 || v16 != v13)
        {
          v17 = 0;
          v18 = 1;
          while (v12 != -4096 || v13 != -4096)
          {
            if (v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = v13 == -8192;
            }

            if (v19 && v12 == -8192)
            {
              v17 = v11;
            }

            v21 = v10 + v18++;
            v10 = v21 & v8;
            v11 = (*a1 + 16 * (v21 & v8));
            v12 = *v11;
            v13 = v11[1];
            if (v15 == *v11 && v16 == v13)
            {
              goto LABEL_10;
            }
          }

          if (v17)
          {
            v11 = v17;
          }
        }

LABEL_10:
        *v11 = v15;
        v11[1] = a2[1];
        *(a1 + 8) = ++v7;
      }

      a2 += 2;
    }

    while (a2 != a3);
  }
}

const char *llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConvertToLLVMPatternInterface]";
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

const char *llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::bufferization::BufferDeallocationOpInterface]";
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

const char *llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::bufferization::BufferizableOpInterface]";
  v6 = 94;
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

const char *llvm::getTypeName<mlir::ValueBoundsOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ValueBoundsOpInterface]";
  v6 = 78;
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

const char *llvm::getTypeName<mlir::ub::PoisonAttrInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface]";
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

void mlir::arith::ConstantOp::inferResultRanges(mlir::arith::ConstantOp *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  Value = mlir::arith::ConstantOp::getValue(a1);
  if (Value)
  {
    v9 = *(*Value + 136);
    v10 = v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v11 = v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? Value : 0;
    v24 = v11;
    if (v10)
    {
      mlir::IntegerAttr::getValue(&v24, &v22);
      if (*(*a1 + 36))
      {
        v12 = *a1 - 16;
      }

      else
      {
        v12 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
      mlir::ConstantIntRanges::constant(&v22, &v14);
      a4(a5, NextResultAtOffset, &v14);
      if (v21 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v19 >= 0x41 && v18)
      {
        operator delete[](v18);
      }

      if (v17 >= 0x41 && v16)
      {
        operator delete[](v16);
      }

      if (v15 >= 0x41 && v14)
      {
        operator delete[](v14);
      }

      if (v23 >= 0x41)
      {
        if (v22)
        {
          operator delete[](v22);
        }
      }
    }
  }
}

void mlir::arith::AddIOp::inferResultRanges(mlir::arith::AddIOp *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  OverflowFlags = mlir::arith::AddIOp::getOverflowFlags(a1);
  mlir::intrange::inferAdd(a2, a3, OverflowFlags & 3, &v13);
  a4(a5, NextResultAtOffset, &v13);
  if (v20 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41)
  {
    if (v13)
    {
      operator delete[](v13);
    }
  }
}

void mlir::arith::SubIOp::inferResultRanges(mlir::arith::AddIOp *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  OverflowFlags = mlir::arith::AddIOp::getOverflowFlags(a1);
  mlir::intrange::inferSub(a2, a3, OverflowFlags & 3, &v13);
  a4(a5, NextResultAtOffset, &v13);
  if (v20 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41)
  {
    if (v13)
    {
      operator delete[](v13);
    }
  }
}

void mlir::arith::MulIOp::inferResultRanges(mlir::arith::AddIOp *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  OverflowFlags = mlir::arith::AddIOp::getOverflowFlags(a1);
  mlir::intrange::inferMul(a2, a3, OverflowFlags & 3, &v13);
  a4(a5, NextResultAtOffset, &v13);
  if (v20 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41)
  {
    if (v13)
    {
      operator delete[](v13);
    }
  }
}

void mlir::arith::DivUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferDivU(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::DivSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferDivS(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::CeilDivUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferCeilDivU(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::CeilDivSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferCeilDivS(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::FloorDivSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferFloorDivS(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::RemUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  mlir::intrange::inferRemU(a2, a3, &v11);
  a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      operator delete[](v11);
    }
  }
}

void mlir::arith::RemSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferRemS(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::AndIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferAnd(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::OrIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferOr(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::XOrIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferXor(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::MaxSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferMaxS(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::MaxUIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  mlir::intrange::inferMaxU(a2, a3, &v11);
  a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      operator delete[](v11);
    }
  }
}

void mlir::arith::MinSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferMinS(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::arith::MinUIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  mlir::intrange::inferMinU(a2, a3, &v11);
  a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      operator delete[](v11);
    }
  }
}

void mlir::arith::ExtUIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1 - 16;
  mlir::intrange::extUIRange(a2, StorageBitwidth, &v11);
  a4(a5, v10, &v11);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      operator delete[](v11);
    }
  }
}

void mlir::arith::ExtSIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1 - 16;
  mlir::intrange::extSIRange(a2, StorageBitwidth, &v11);
  a4(a5, v10, &v11);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      operator delete[](v11);
    }
  }
}

void mlir::arith::TruncIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1 - 16;
  mlir::intrange::truncRange(a2, StorageBitwidth, &v11);
  a4(a5, v10, &v11);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      operator delete[](v11);
    }
  }
}

void mlir::arith::IndexCastOp::inferResultRanges(uint64_t a1, mlir::intrange *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  v8 = *(*a1 - 8);
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = mlir::ConstantIntRanges::getStorageBitwidth(v8 & 0xFFFFFFFFFFFFFFF8);
  if (StorageBitwidth < v10)
  {
    v11 = *a1 - 16;
    mlir::intrange::extSIRange(a2, v10, &v13);
    goto LABEL_5;
  }

  v11 = *a1 - 16;
  if (StorageBitwidth > v10)
  {
    mlir::intrange::truncRange(a2, v10, &v13);
LABEL_5:
    a4(a5, v11, &v13);
    if (v20 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v18 >= 0x41 && v17)
    {
      operator delete[](v17);
    }

    if (v16 >= 0x41 && v15)
    {
      operator delete[](v15);
    }

    if (v14 >= 0x41)
    {
      if (v13)
      {
        operator delete[](v13);
      }
    }

    return;
  }

  a4(a5, v11, a2);
}

void mlir::arith::IndexCastUIOp::inferResultRanges(uint64_t a1, mlir::intrange *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  v8 = *(*a1 - 8);
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = mlir::ConstantIntRanges::getStorageBitwidth(v8 & 0xFFFFFFFFFFFFFFF8);
  if (StorageBitwidth < v10)
  {
    v11 = *a1 - 16;
    mlir::intrange::extUIRange(a2, v10, &v13);
    goto LABEL_5;
  }

  v11 = *a1 - 16;
  if (StorageBitwidth > v10)
  {
    mlir::intrange::truncRange(a2, v10, &v13);
LABEL_5:
    a4(a5, v11, &v13);
    if (v20 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v18 >= 0x41 && v17)
    {
      operator delete[](v17);
    }

    if (v16 >= 0x41 && v15)
    {
      operator delete[](v15);
    }

    if (v14 >= 0x41)
    {
      if (v13)
      {
        operator delete[](v13);
      }
    }

    return;
  }

  a4(a5, v11, a2);
}

void mlir::arith::CmpIOp::inferResultRanges(mlir::arith::CmpIOp *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  Predicate = mlir::arith::CmpIOp::getPredicate(a1);
  v25 = 1;
  v24 = 0;
  v23 = 1;
  v22 = 1;
  v10 = mlir::intrange::evaluatePred(Predicate, a2, (a2 + 64));
  if ((v10 & 0x100) != 0)
  {
    if (v10)
    {
      v11 = &v25;
      v24 = 1;
    }

    else
    {
      v11 = &v23;
      v22 = 0;
    }

    *v11 = 1;
  }

  if (*(*a1 + 36))
  {
    v12 = *a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  mlir::ConstantIntRanges::fromUnsigned(&v24, &v22, &v14);
  a4(a5, NextResultAtOffset, &v14);
  if (v21 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v19 >= 0x41 && v18)
  {
    operator delete[](v18);
  }

  if (v17 >= 0x41 && v16)
  {
    operator delete[](v16);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v23 >= 0x41 && v22)
  {
    operator delete[](v22);
  }

  if (v25 >= 0x41)
  {
    if (v24)
    {
      operator delete[](v24);
    }
  }
}

void mlir::arith::SelectOp::inferResultRangesFromOptional(uint64_t a1, mlir::ConstantIntRanges *this, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if ((*(this + 64) & 1) == 0)
  {
    LOBYTE(v28) = 0;
    v30 = 0;
    v9 = (this + 72);
    v10 = (this + 144);
LABEL_11:
    if (*(*a1 + 36))
    {
      v14 = *a1 - 16;
    }

    else
    {
      v14 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
    if (*(this + 136))
    {
      if (*(this + 208))
      {
        mlir::ConstantIntRanges::rangeUnion(v9, v10, &v31);
        v20 = v32;
        v19 = v31;
        v22 = v34;
        v21 = v33;
        v24 = v36;
        v23 = v35;
        v26 = v38;
        __p = v37;
        v27 = 1;
        goto LABEL_20;
      }

      LOBYTE(v19) = 0;
      v27 = 0;
      v16 = v9;
    }

    else
    {
      LOBYTE(v19) = 0;
      v27 = 0;
      v16 = v10;
    }

    std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(&v19, v16);
LABEL_20:
    a4(a5, NextResultAtOffset, &v19);
    if (v27 == 1)
    {
      if (v26 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v24 >= 0x41 && v23)
      {
        operator delete[](v23);
      }

      if (v22 >= 0x41 && v21)
      {
        operator delete[](v21);
      }

      if (v20 >= 0x41 && v19)
      {
        operator delete[](v19);
      }
    }

    if (v30 == 1)
    {
      goto LABEL_34;
    }

    return;
  }

  mlir::ConstantIntRanges::getConstantValue(this, &v28);
  v9 = (this + 72);
  v10 = (this + 144);
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = v29;
  if (v29 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v28) != v11)
    {
LABEL_5:
      if (*(*a1 + 36))
      {
        v12 = *a1 - 16;
      }

      else
      {
        v12 = 0;
      }

      v13 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
      a4(a5, v13, v9);
      if (v30 != 1)
      {
        return;
      }

LABEL_34:
      if (v29 >= 0x41)
      {
        if (v28)
        {
          operator delete[](v28);
        }
      }

      return;
    }
  }

  else if (v28)
  {
    goto LABEL_5;
  }

  if (*(*a1 + 36))
  {
    v17 = *a1 - 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  a4(a5, v18, v10);
  if (v30 == 1)
  {
    goto LABEL_34;
  }
}

void mlir::arith::ShLIOp::inferResultRanges(mlir::arith::AddIOp *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  OverflowFlags = mlir::arith::AddIOp::getOverflowFlags(a1);
  mlir::intrange::inferShl(a2, a3, OverflowFlags & 3, &v13);
  a4(a5, NextResultAtOffset, &v13);
  if (v20 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41)
  {
    if (v13)
    {
      operator delete[](v13);
    }
  }
}

void mlir::arith::ShRUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  mlir::intrange::inferShrU(a2, a3, &v11);
  a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      operator delete[](v11);
    }
  }
}

void mlir::arith::ShRSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferShrS(a2, &v10);
  a4(a5, NextResultAtOffset, &v10);
  if (v17 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v15 >= 0x41 && v14)
  {
    operator delete[](v14);
  }

  if (v13 >= 0x41 && v12)
  {
    operator delete[](v12);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

_DWORD *std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(_DWORD *result, uint64_t a2)
{
  if (*(a2 + 64) == 1)
  {
    v3 = result;
    v4 = *(a2 + 8);
    result[2] = v4;
    if (v4 > 0x40)
    {
      result = llvm::APInt::initSlowCase(result, a2);
      v8 = *(a2 + 24);
      v3[6] = v8;
      if (v8 > 0x40)
      {
LABEL_4:
        result = llvm::APInt::initSlowCase((v3 + 4), (a2 + 16));
        v6 = *(a2 + 40);
        v3[10] = v6;
        if (v6 > 0x40)
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }
    }

    else
    {
      *result = *a2;
      v5 = *(a2 + 24);
      result[6] = v5;
      if (v5 > 0x40)
      {
        goto LABEL_4;
      }
    }

    *(v3 + 2) = *(a2 + 16);
    v9 = *(a2 + 40);
    v3[10] = v9;
    if (v9 > 0x40)
    {
LABEL_5:
      result = llvm::APInt::initSlowCase((v3 + 8), (a2 + 32));
      v7 = *(a2 + 56);
      v3[14] = v7;
      if (v7 > 0x40)
      {
LABEL_6:
        result = llvm::APInt::initSlowCase((v3 + 12), (a2 + 48));
LABEL_11:
        *(v3 + 64) = 1;
        return result;
      }

LABEL_10:
      *(v3 + 6) = *(a2 + 48);
      goto LABEL_11;
    }

LABEL_9:
    *(v3 + 4) = *(a2 + 32);
    v10 = *(a2 + 56);
    v3[14] = v10;
    if (v10 > 0x40)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  return result;
}

void mlir::inferExpandShapeOutputShape(mlir::IndexType **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v78[0] = a3;
  v78[1] = a4;
  v85 = v87;
  v86 = 0x600000000;
  v82 = v84;
  v83 = 0x600000000;
  if (!a8)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v78);
    v20 = v83;
    v25 = v24 - v83;
    if (v24 != v83)
    {
      if (v24 >= v83)
      {
        v26 = v83;
        v27 = v83;
        v28 = v24;
        if (v24 > HIDWORD(v83))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v24, 8);
          v26 = v83;
          v27 = v83;
        }

        memset_pattern16(v82 + 8 * v26, &unk_1E096FAE0, 8 * v25);
        LODWORD(v24) = v27 + v28 - v20;
      }

      LODWORD(v83) = v24;
      v20 = v24;
    }

    goto LABEL_21;
  }

  if (!mlir::CallOpInterface::getArgOperands(v78))
  {
    goto LABEL_12;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v78);
  if (!v13)
  {
LABEL_7:
    v15 = mlir::CallableOpInterface::getArgAttrsAttr(v78);
    v17 = v16;
    v18 = 0;
    LODWORD(v83) = 0;
    v19 = (8 * v16) >> 3;
    if (v19 > HIDWORD(v83))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v19, 8);
      v18 = v83;
    }

    if (v17)
    {
      memcpy(v82 + 8 * v18, v15, 8 * v17);
      v18 = v83;
    }

    v20 = v18 + v17;
    LODWORD(v83) = v18 + v17;
LABEL_21:
    v29 = v82;
    mlir::ValueRange::ValueRange(&v88, v85, v86);
    v30 = v88;
    v31 = v89;
    v32 = v29;
    v33 = v20;
    goto LABEL_75;
  }

  v14 = 8 * v13;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

LABEL_12:
  mlir::CallableOpInterface::getArgAttrsAttr(v78);
  v22 = v83;
  v23 = v21 - v83;
  if (v21 != v83)
  {
    if (v21 >= v83)
    {
      v34 = v83;
      v35 = v83;
      v36 = v21;
      if (v21 > HIDWORD(v83))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v21, 8);
        v34 = v83;
        v35 = v83;
      }

      memset_pattern16(v82 + 8 * v34, &unk_1E096FAD0, 8 * v23);
      v22 = v35 + v36 - v22;
    }

    else
    {
      v22 = v21;
    }

    LODWORD(v83) = v22;
  }

  if (a6)
  {
    v71 = a9;
    v37 = 0;
    v38 = a5 + 32 * a6;
    while (1)
    {
      __dst = v81;
      v80 = 0x200000000;
      v39 = *(a5 + 8);
      if (&__dst != a5 && v39 != 0)
      {
        break;
      }

      v41 = 3;
      v42 = __dst;
      if (__dst != v81)
      {
LABEL_35:
        free(v42);
      }

LABEL_36:
      if (v41 != 3 && v41)
      {
        goto LABEL_87;
      }

      ++v37;
      a5 += 32;
      if (a5 == v38)
      {
        v22 = v83;
        a9 = v71;
        goto LABEL_63;
      }
    }

    v43 = v81;
    v44 = *(a5 + 8);
    if (v39 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v81, *(a5 + 8), 8);
      v44 = *(a5 + 8);
      if (!v44)
      {
        goto LABEL_43;
      }

      v43 = __dst;
    }

    memcpy(v43, *a5, 8 * v44);
LABEL_43:
    LODWORD(v80) = v39;
    v77 = 1;
    v45 = __dst + 8;
    v46 = 8 * v39;
    while (1)
    {
      v47 = *(v45 - 1);
      v48 = *(mlir::CallableOpInterface::getArgAttrsAttr(v78) + 8 * v47);
      if (v48 == 0x8000000000000000)
      {
        break;
      }

      *(v82 + v47) = v48;
      v77 *= v48;
      v45 += 8;
      v46 -= 8;
      if (!v46)
      {
LABEL_51:
        if (v48 != 0x8000000000000000)
        {
          v41 = 3;
          v42 = __dst;
          if (__dst != v81)
          {
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        goto LABEL_52;
      }
    }

    v49 = v46 - 8;
    if (!v49)
    {
LABEL_52:
      v76 = *(a7 + 8 * v37) & 0xFFFFFFFFFFFFFFF8;
      v75 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a2, &v77) - 16;
      v88 = v90;
      v89 = 0x100000000;
      mlir::OpBuilder::createOrFold<mlir::arith::DivUIOp,mlir::Value &,mlir::Value &>(a1, &v88, a2, &v76, &v75);
      v53 = *v88;
      if (v88 != v90)
      {
        free(v88);
      }

      v54 = v86;
      if (v86 >= HIDWORD(v86))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v87, v86 + 1, 8);
        v54 = v86;
      }

      v41 = 0;
      v85[v54] = v53;
      LODWORD(v86) = v86 + 1;
      v42 = __dst;
      if (__dst != v81)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    v50 = 0;
    while (1)
    {
      v51 = *&v45[v50];
      v52 = *(mlir::CallableOpInterface::getArgAttrsAttr(v78) + 8 * v51);
      if (v52 == 0x8000000000000000)
      {
        break;
      }

      *(v82 + v51) = v52;
      v77 *= v52;
      v50 += 8;
      if (v49 == v50)
      {
        goto LABEL_51;
      }
    }

    *v71 = 0;
    v71[64] = 0;
    v41 = 1;
    v42 = __dst;
    if (__dst != v81)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

LABEL_63:
  v55 = v82;
  if (v22)
  {
    v56 = (v22 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v56 < 3)
    {
      v57 = 0;
      v58 = v82;
      goto LABEL_70;
    }

    v59 = v56 + 1;
    v60 = (v56 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v58 = (v82 + 8 * v60);
    v61 = (v82 + 16);
    v62 = 0uLL;
    v63 = vnegq_f64(0);
    v64 = v60;
    v65 = 0uLL;
    do
    {
      v62 = vsubq_s64(v62, vceqq_s64(v61[-1], v63));
      v65 = vsubq_s64(v65, vceqq_s64(*v61, v63));
      v61 += 2;
      v64 -= 4;
    }

    while (v64);
    v57 = vaddvq_s64(vaddq_s64(v65, v62));
    if (v59 != v60)
    {
      do
      {
LABEL_70:
        v66 = *v58++;
        if (v66 == 0x8000000000000000)
        {
          ++v57;
        }
      }

      while (v58 != (v82 + 8 * v22));
    }
  }

  else
  {
    v57 = 0;
  }

  if (v57 != v86)
  {
    *a9 = 0;
    *(a9 + 64) = 0;
    goto LABEL_87;
  }

  mlir::ValueRange::ValueRange(&v88, v85, v86);
  v30 = v88;
  v31 = v89;
  v32 = v55;
  v33 = v22;
LABEL_75:
  mlir::getMixedValues(v32, v33, v30, v31, a1, &__dst);
  *a9 = a9 + 16;
  *(a9 + 8) = 0x600000000;
  v67 = v80;
  v68 = __dst;
  if (v80 && &__dst != a9)
  {
    if (__dst == v81)
    {
      v70 = v80;
      if (v80 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a9, a9 + 16, v80, 8), v70 = v80, v68 = __dst, v80))
      {
        memcpy(*a9, v68, 8 * v70);
        v68 = __dst;
      }

      *(a9 + 8) = v67;
    }

    else
    {
      *a9 = __dst;
      v69 = HIDWORD(v80);
      *(a9 + 8) = v67;
      *(a9 + 12) = v69;
      __dst = v81;
      HIDWORD(v80) = 0;
      v68 = v81;
    }

    LODWORD(v80) = 0;
  }

  *(a9 + 64) = 1;
  if (v68 != v81)
  {
    free(v68);
  }

LABEL_87:
  if (v82 != v84)
  {
    free(v82);
  }

  if (v85 != v87)
  {
    free(v85);
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(mlir::IndexType **a1, uint64_t a2, mlir::MLIRContext **a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::ConstantIndexOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (!mlir::arith::ConstantIndexOp::classof(v9, v10))
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v9;
}

void mlir::getPositionsOfShapeOne(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a3;
  if (a3 > 0x39)
  {
    v9 = operator new(0x48uLL);
    v8 = v9;
    v10 = v4 + 63;
    v11 = (v4 + 63) >> 6;
    *v9 = v9 + 4;
    v9[3] = 6;
    if (v4 + 63 < 0x1C0)
    {
      if (v10 < 0x40)
      {
        goto LABEL_9;
      }

      v12 = v9 + 4;
      v13 = 8 * v11;
    }

    else
    {
      v9[2] = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 4), v10 >> 6, 8);
      v12 = *v8;
      v13 = 8 * v11;
    }

    bzero(v12, v13);
LABEL_9:
    *(v8 + 8) = v11;
    *(v8 + 64) = v4;
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v8 = (a3 << 58) | 1;
  if (!a3)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (a1)
  {
    v14 = 0;
    do
    {
      if (*(a2 + 8 * v14) == 1)
      {
        if (v8)
        {
          v8 = v8 & 0xFC00000000000001 | (2 * (((1 << v14) | (v8 >> 1)) & ~(-1 << (v8 >> 58))));
        }

        else
        {
          *(*v8 + 8 * (v14 >> 6)) |= 1 << v14;
        }

        --a1;
      }

      ++v14;
    }

    while (v14 < v4 && a1);
  }

LABEL_19:
  *a4 = v8;
}

unint64_t mlir::getValueOrCreateConstantIndexOp(mlir::IndexType **a1, uint64_t a2, uint64_t a3)
{
  result = a3 & 0xFFFFFFFFFFFFFFF8;
  if ((a3 & 4) == 0 || !result)
  {
    v15[3] = v3;
    v15[4] = v4;
    v7 = a1;
    v15[0] = a3 & 0xFFFFFFFFFFFFFFF8;
    mlir::IntegerAttr::getValue(v15, &__p);
    if (v13 > 0x40)
    {
      v9 = *__p;
    }

    else if (v13)
    {
      v9 = (__p << -v13) >> -v13;
    }

    else
    {
      v9 = 0;
    }

    v14 = v9;
    v10 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(v7, a2, &v14);
    if (v13 >= 0x41)
    {
      if (__p)
      {
        v11 = v10;
        operator delete[](__p);
        v10 = v11;
      }
    }

    return v10 - 16;
  }

  return result;
}

void mlir::getValueOrCreateConstantIndexOp(mlir::IndexType **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30[4] = *MEMORY[0x1E69E9840];
  __src = v30;
  v29 = 0x400000000;
  v10 = (8 * a4) >> 3;
  if (v10 < 5)
  {
    v11 = 0;
    v12 = v30;
    v13 = 8 * a4;
    if (!a4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v30, v10, 8);
    v11 = v29;
    v12 = __src;
    v13 = 8 * a4;
    if (!a4)
    {
      goto LABEL_19;
    }
  }

  v14 = &v12[v11];
  v15 = v13;
  do
  {
    v16 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if ((*a3 & 4) == 0 || !v16)
    {
      v27 = *a3 & 0xFFFFFFFFFFFFFFF8;
      mlir::IntegerAttr::getValue(&v27, &__p);
      if (v25 > 0x40)
      {
        v17 = *__p;
      }

      else if (v25)
      {
        v17 = (__p << -v25) >> -v25;
      }

      else
      {
        v17 = 0;
      }

      v26 = v17;
      v18 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a2, &v26);
      if (v25 >= 0x41 && __p)
      {
        v19 = v18;
        operator delete[](__p);
        v18 = v19;
      }

      v16 = v18 - 16;
    }

    *v14++ = v16;
    ++a3;
    v15 -= 8;
  }

  while (v15);
  v11 = v29;
  v12 = __src;
LABEL_19:
  v20 = v13 >> 3;
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v21 = v11 + (v13 >> 3);
  LODWORD(v29) = v21;
  if (v21 && &__src != a5)
  {
    if (v12 == v30)
    {
      v23 = v11 + v20;
      if (v21 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, (v11 + v20), 8), v23 = v29, v12 = __src, v29))
      {
        memcpy(*a5, v12, 8 * v23);
        v12 = __src;
      }

      *(a5 + 8) = v21;
    }

    else
    {
      *a5 = v12;
      v22 = HIDWORD(v29);
      *(a5 + 8) = v21;
      *(a5 + 12) = v22;
      __src = v30;
      HIDWORD(v29) = 0;
      v12 = v30;
    }

    LODWORD(v29) = 0;
  }

  if (v12 != v30)
  {
    free(v12);
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::arith::SelectOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ConstantOp::build(a1, v17, *a3, *a4, a4[1]);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *mlir::DenseElementsAttr::operator mlir::ElementsAttr(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
      mlir::DenseElementsAttr::operator mlir::ElementsAttr();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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

void mlir::OpBuilder::createOrFold<mlir::arith::DivUIOp,mlir::Value &,mlir::Value &>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v30[38] = *MEMORY[0x1E69E9840];
  v27 = a3;
  Context = mlir::Attribute::getContext(&v27);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::DivUIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::arith::DivUIOp,mlir::Value &,mlir::Value &>(v30, v29, v28);
  }

  mlir::OperationState::OperationState(v30, a3, v11);
  mlir::arith::AndIOp::build(a1, v30, *a4, *a5);
  v14 = mlir::Operation::create(v30, v13);
  v15 = a1[2];
  if (v15)
  {
    v16 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v15 + 32, v14);
    v18 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v17);
    v19 = *v16;
    *v18 = *v16;
    v18[1] = v16;
    *(v19 + 8) = v18;
    *v16 = v18;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v20);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v14);
    goto LABEL_19;
  }

  v21 = v14[9];
  if (v21)
  {
    v22 = (v14 - 4);
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 8) = 0;
  if (v21 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v21, 8);
    v23 = *(a2 + 8);
LABEL_14:
    v24 = 0;
    v25 = *a2 + 8 * v23;
    do
    {
      *(v25 + 8 * v24) = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v24);
      ++v24;
    }

    while (v21 != v24);
    *(a2 + 8) += v21;
    if (!a1[2])
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v21)
  {
    v23 = 0;
    goto LABEL_14;
  }

  *(a2 + 8) = 0;
  if (!a1[2])
  {
    goto LABEL_19;
  }

LABEL_17:
  v26 = a1[1];
  if (v26)
  {
    (*(*v26 + 16))(v26, v14, 0, 0);
  }

LABEL_19:
  mlir::OperationState::~OperationState(v30);
}

uint64_t mlir::detail::Parser::parseAffineMapOrIntegerSetReference(mlir::detail::Parser *this, mlir::AffineMap *a2, mlir::IntegerSet *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v26 = **v5;
  v27 = v5;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v33;
  v32 = 0x400000000;
  v18 = 0;
  v19 = 0;
  *&v34 = &v19;
  *(&v34 + 1) = &v26;
  {
    goto LABEL_10;
  }

  v6 = v27;
  v7 = *(v27 + 14);
  if (v7 == 22)
  {
    *&v34 = &v18;
    *(&v34 + 1) = &v26;
    {
      goto LABEL_10;
    }

    v6 = v27;
    if (*(v27 + 14) != 13)
    {
LABEL_5:
      *&v34 = "expected '->' or ':'";
      v36 = 259;
      if (mlir::detail::Parser::parseToken(&v26, 15, &v34))
      {
        v8 = v18;
        v9 = v19;
        *&v34 = v35;
        *(&v34 + 1) = 0x400000000;
        v22[2] = &v23;
        v23 = &v25;
        v24 = xmmword_1E096FAF0;
        v22[0] = &v26;
        v22[1] = &v34;
        {
          if (DWORD2(v34))
          {
            *a3 = mlir::IntegerSet::get(v9, v8, v34, DWORD2(v34), v23, v24);
            v11 = 1;
            v12 = v23;
            if (v23 == &v25)
            {
              goto LABEL_22;
            }
          }

          else
          {
            AffineConstantExpr = mlir::getAffineConstantExpr(0, **v27, v10);
            v11 = 1;
            v20 = 1;
            *a3 = mlir::IntegerSet::get(v9, v8, &AffineConstantExpr, 1, &v20, 1);
            v12 = v23;
            if (v23 == &v25)
            {
LABEL_22:
              v17 = v34;
              if (v34 == v35)
              {
                goto LABEL_11;
              }

              goto LABEL_23;
            }
          }
        }

        else
        {
          v11 = 0;
          v12 = v23;
          if (v23 == &v25)
          {
            goto LABEL_22;
          }
        }

        free(v12);
        goto LABEL_22;
      }

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if (v7 != 13)
    {
      goto LABEL_5;
    }
  }

  *(v6 + 5) = *(v6 + 7);
  v6[12] = v6[9];
  mlir::Lexer::lexToken((v6 + 1), &v34);
  v14 = v27;
  *(v27 + 7) = v34;
  v14[9] = v35[0];
  v16 = v18;
  v15 = v19;
  *&v34 = v35;
  *(&v34 + 1) = 0x400000000;
  v23 = &v26;
  *&v24 = &v34;
  {
    *a2 = mlir::AffineMap::get(v15, v16, v34, DWORD2(v34), **v27);
    v11 = 1;
    v17 = v34;
    if (v34 == v35)
    {
      goto LABEL_11;
    }

LABEL_23:
    free(v17);
    goto LABEL_11;
  }

  v11 = 0;
  v17 = v34;
  if (v34 != v35)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v31 != v33)
  {
    free(v31);
  }

  return v11;
}

BOOL mlir::detail::Parser::parseAffineMapReference(mlir::detail::Parser *this, mlir::AffineMap *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v17 = 0;
  if ((mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, a2, &v17) & 1) == 0)
  {
    return 0;
  }

  if (!v17)
  {
    return 1;
  }

  v15 = "expected AffineMap, but got IntegerSet";
  v16 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v15, v18);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
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

    v6 = __p;
    if (__p)
    {
      v7 = v24;
      v8 = __p;
      if (v24 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v24 = v6;
      operator delete(v8);
    }

    v9 = v21;
    if (v21)
    {
      v10 = v22;
      v11 = v21;
      if (v22 != v21)
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
        v11 = v21;
      }

      v22 = v9;
      operator delete(v11);
    }

    if (v19 != &v20)
    {
      free(v19);
    }
  }

  return v5;
}

BOOL mlir::detail::Parser::parseAffineExprReference(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v19[12] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  v13[0] = **v7;
  v13[1] = v7;
  v14 = 0;
  v15 = 0;
  v8 = 3 * a3;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3);
  v16 = 0;
  v17 = v19;
  v18 = 0x400000000;
  if (v9 >= 5)
  {
    v10 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3), 24);
    a2 = v10;
    v6 = v18;
  }

  if (a3)
  {
    memcpy(v17 + 24 * v6, a2, 8 * v8);
    v6 = v18;
  }

  LODWORD(v18) = v6 + v9;
  *a4 = v11;
  if (v17 != v19)
  {
    free(v17);
  }

  return v11 != 0;
}

BOOL mlir::detail::Parser::parseIntegerSetReference(mlir::detail::Parser *this, mlir::IntegerSet *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v17 = 0;
  if ((mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, &v17, a2) & 1) == 0)
  {
    return 0;
  }

  if (!v17)
  {
    return 1;
  }

  v15 = "expected IntegerSet, but got AffineMap";
  v16 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v15, v18);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
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

    v6 = __p;
    if (__p)
    {
      v7 = v24;
      v8 = __p;
      if (v24 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v24 = v6;
      operator delete(v8);
    }

    v9 = v21;
    if (v21)
    {
      v10 = v22;
      v11 = v21;
      if (v22 != v21)
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
        v11 = v21;
      }

      v22 = v9;
      operator delete(v11);
    }

    if (v19 != &v20)
    {
      free(v19);
    }
  }

  return v5;
}

uint64_t mlir::detail::Parser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v10 = **v6;
  v11 = v6;
  v12 = 1;
  v13 = a3;
  v14 = a4;
  v15 = 0;
  v16 = v18;
  v17 = 0x400000000;
  v19 = v21;
  v20 = 0x400000000;
  v9[0] = &v10;
  v9[1] = &v19;
  v7 = 0;
  {
    *a2 = mlir::AffineMap::get(v15, v17 - v15, v19, v20, **v11);
    v7 = 1;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return v7;
}

BOOL mlir::detail::Parser::parseAffineExprOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15[12] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v8[0] = **v5;
  v8[1] = v5;
  v9 = 1;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  v13 = v15;
  v14 = 0x400000000;
  *a2 = v6;
  if (v13 != v15)
  {
    free(v13);
  }

  return v6 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseDimIdList(unsigned int &)::$_0>(unsigned int **a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  *v3 = v5 + 1;
  AffineDimExpr = mlir::getAffineDimExpr(v5, ***(v4 + 8), a3);
}

uint64_t anonymous namespace::AffineParser::parseIdentifierDefinition(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = a1 + 48;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    if (!v11)
    {
LABEL_30:
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v41);
      v23 = *(a1 + 8);
      *(v23 + 56) = v41;
      *(v23 + 72) = v42;
      *&v41 = v8;
      *(&v41 + 1) = v7;
      v42 = a2;
      v24 = *(a1 + 56);
      v25 = *(a1 + 48);
      v26 = &v41;
      if (v24 >= *(a1 + 60))
      {
        if (v25 <= &v41 && v25 + 24 * v24 > &v41)
        {
          v36 = &v41 - v25;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, a1 + 64, v24 + 1, 24);
          v25 = *(a1 + 48);
          v26 = &v36[v25];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, a1 + 64, v24 + 1, 24);
          v25 = *(a1 + 48);
          v26 = &v41;
        }
      }

      v27 = v25 + 24 * *(a1 + 56);
      v28 = *v26;
      *(v27 + 16) = *(v26 + 2);
      *v27 = v28;
      ++*(a1 + 56);
      return 1;
    }

LABEL_7:
    v12 = v10 + 24 * v11;
    while (*(v10 + 8) != v7 || v7 && memcmp(*v10, v8, v7))
    {
      v10 += 24;
      if (v10 == v12)
      {
        goto LABEL_30;
      }
    }

    v38 = 1283;
    v37[0] = "redefinition of identifier '";
    v37[2] = v8;
    v37[3] = v7;
    v39[0] = v37;
    v39[2] = "'";
    v40 = 770;
    mlir::detail::Parser::emitError(a1, v39, &v41);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
    if (v41)
    {
      mlir::InFlightDiagnostic::report(&v41);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v48;
        v16 = __p;
        if (v48 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v48 = v14;
        operator delete(v16);
      }

      v17 = v45;
      if (!v45)
      {
        goto LABEL_51;
      }

      v18 = v46;
      v19 = v45;
      if (v46 == v45)
      {
LABEL_50:
        v46 = v17;
        operator delete(v19);
LABEL_51:
        if (v43 != &v44)
        {
          free(v43);
        }

        return v13;
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
LABEL_49:
      v19 = v45;
      goto LABEL_50;
    }

    return v13;
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(a1 + 8);
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = a1 + 48;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    if (!v11)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v39[0] = "expected bare identifier";
  v40 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, v39, &v41);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v48;
      v32 = __p;
      if (v48 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v48 = v30;
      operator delete(v32);
    }

    v17 = v45;
    if (!v45)
    {
      goto LABEL_51;
    }

    v33 = v46;
    v19 = v45;
    if (v46 == v45)
    {
      goto LABEL_50;
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

    while (v33 != v17);
    goto LABEL_49;
  }

  return v13;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseSymbolIdList(unsigned int &)::$_0>(unsigned int **a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  *v3 = v5 + 1;
  AffineSymbolExpr = mlir::getAffineSymbolExpr(v5, ***(v4 + 8), a3);
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseAffineMapRange(unsigned int,unsigned int,mlir::AffineMap &)::$_0>(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v6 = v2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, v3 + 16, v4 + 1, 8);
    v2 = v6;
    LODWORD(v4) = *(v3 + 8);
  }

  *(*v3 + 8 * v4) = v2;
  ++*(v3 + 8);
  return v2 != 0;
}

uint64_t anonymous namespace::AffineParser::parseAffineLowPrecOpExpr(_anonymous_namespace_::AffineParser *a1, uint64_t a2, int a3)
{
  AffineBinaryOpExpr = v6;
  if (v6)
  {
    v8 = *(a1 + 1);
    v9 = (v8 + 56);
    v10 = *(v8 + 56);
    if (v10 == 24)
    {
      *(v8 + 80) = *v9;
      *(v8 + 96) = *(v8 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
      v14 = *(a1 + 1);
      *(v14 + 56) = v34;
      *(v14 + 72) = v35;
      v12 = 2;
      if (a2)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    if (v10 == 25)
    {
      *(v8 + 80) = *v9;
      *(v8 + 96) = *(v8 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
      v11 = *(a1 + 1);
      *(v11 + 56) = v34;
      *(v11 + 72) = v35;
      v12 = 1;
      if (a2)
      {
LABEL_5:
        *&v34 = a2;
        if (a3 == 1)
        {
          v13 = mlir::AffineExpr::operator+(&v34, AffineBinaryOpExpr);
        }

        else
        {
          v13 = mlir::AffineExpr::operator-(&v34, AffineBinaryOpExpr);
        }

        v16 = v13;
        v15 = a1;
        goto LABEL_17;
      }

LABEL_8:
      v15 = a1;
      v16 = AffineBinaryOpExpr;
LABEL_17:
      v25 = v12;
    }

    Loc = mlir::Token::getLoc(v9);
    if (!v18)
    {
      if (!a2)
      {
        return AffineBinaryOpExpr;
      }

      *&v34 = a2;
      if (a3 == 1)
      {
        return mlir::AffineExpr::operator+(&v34, AffineBinaryOpExpr);
      }

      else
      {
        return mlir::AffineExpr::operator-(&v34, AffineBinaryOpExpr);
      }
    }

    v19 = v18;
    if (v20)
    {
      while (1)
      {
        v21 = v20;
        v22 = mlir::Token::getLoc((*(a1 + 1) + 56));
        if (!v23)
        {
          break;
        }

        v24 = v19;
        Loc = v22;
        v19 = v23;
        if (!AffineBinaryOpExpr)
        {
          return AffineBinaryOpExpr;
        }

        if (!v20)
        {
          return 0;
        }
      }

      if (AffineBinaryOpExpr)
      {
        if (a2)
        {
          *&v34 = a2;
          if (a3 == 1)
          {
            v28 = mlir::AffineExpr::operator+(&v34, AffineBinaryOpExpr);
          }

          else
          {
            v28 = mlir::AffineExpr::operator-(&v34, AffineBinaryOpExpr);
          }

          AffineBinaryOpExpr = v28;
        }

        v29 = *(a1 + 1);
        v30 = (v29 + 56);
        v31 = *(v29 + 56);
        if (v31 == 24)
        {
          *(v29 + 80) = *v30;
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
          v33 = *(a1 + 1);
          *(v33 + 56) = v34;
          *(v33 + 72) = v35;
          v25 = 2;
        }

        else
        {
          if (v31 != 25)
          {
            return AffineBinaryOpExpr;
          }

          *(v29 + 80) = *v30;
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
          v32 = *(a1 + 1);
          *(v32 + 56) = v34;
          *(v32 + 72) = v35;
          v25 = 1;
        }

        v15 = a1;
        v16 = AffineBinaryOpExpr;
      }
    }

    else
    {
      return 0;
    }
  }

  return AffineBinaryOpExpr;
}

void anonymous namespace::AffineParser::parseAffineOperandExpr(_anonymous_namespace_::AffineParser *a1, uint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v5 = *(v2 + 56);
  v3 = (v2 + 56);
  v4 = v5;
  if (v5 > 20)
  {
    v6 = (v4 - 25);
    if (v6 <= 0x32)
    {
      if (((1 << (v4 - 25)) & 0x80800004000) != 0)
      {
        goto LABEL_43;
      }

      if (((1 << (v4 - 25)) & 0x21) != 0)
      {
        if (a2)
        {
          v75[0] = "missing right operand of binary operator";
          v77 = 259;
          mlir::detail::Parser::emitError(a1, v75, v66);
          if (v66[0])
          {
            mlir::InFlightDiagnostic::report(v66);
          }

          if (v74 != 1)
          {
            return;
          }

          if (v73 != &v74)
          {
            free(v73);
          }

          v7 = __p;
          if (__p)
          {
            v8 = v72;
            v9 = __p;
            if (v72 != __p)
            {
              do
              {
                v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
              }

              while (v8 != v7);
              v9 = __p;
            }

            v72 = v7;
            operator delete(v9);
          }

          v10 = v69;
          if (v69)
          {
            v11 = v70;
            v12 = v69;
            if (v70 != v69)
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
              v12 = v69;
            }

            v70 = v10;
            operator delete(v12);
          }

          v49 = v67;
          if (v67 == &v68)
          {
            return;
          }
        }

        else
        {
          v75[0] = "missing left operand of binary operator";
          v77 = 259;
          mlir::detail::Parser::emitError(a1, v75, v57);
          if (v57[0])
          {
            mlir::InFlightDiagnostic::report(v57);
          }

          if (v65 != 1)
          {
            return;
          }

          if (v64 != &v65)
          {
            free(v64);
          }

          v40 = v62;
          if (v62)
          {
            v41 = v63;
            v42 = v62;
            if (v63 != v62)
            {
              do
              {
                v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
              }

              while (v41 != v40);
              v42 = v62;
            }

            v63 = v40;
            operator delete(v42);
          }

          v43 = v60;
          if (v60)
          {
            v44 = v61;
            v45 = v60;
            if (v61 != v60)
            {
              do
              {
                v47 = *--v44;
                v46 = v47;
                *v44 = 0;
                if (v47)
                {
                  operator delete[](v46);
                }
              }

              while (v44 != v43);
              v45 = v60;
            }

            v61 = v43;
            operator delete(v45);
          }

          v49 = v58;
          if (v58 == &v59)
          {
            return;
          }
        }

        goto LABEL_104;
      }

      if (v6 == 50)
      {
        v75[0] = "expected symbol keyword";
        v77 = 259;
        v22 = a1;
        if ((mlir::detail::Parser::parseToken(a1, 75, v75) & 1) == 0)
        {
          return;
        }

        *&v50 = "expected '(' at start of SSA symbol";
        v52 = 259;
        if ((mlir::detail::Parser::parseToken(v22, 21, &v50) & 1) == 0)
        {
          return;
        }

        if (!v23)
        {
          return;
        }

        v24 = "expected ')' at end of SSA symbol";
LABEL_90:
        v75[0] = v24;
        v77 = 259;
        mlir::detail::Parser::parseToken(v22, 28, v75);
        return;
      }
    }

    if (v4 == 21)
    {
      v75[0] = "expected '('";
      v77 = 259;
      v22 = a1;
      if ((mlir::detail::Parser::parseToken(a1, 21, v75) & 1) == 0)
      {
        return;
      }

      v31 = v22;
      if (*(*(v22 + 1) + 56) != 28)
      {
        {
          return;
        }

        v24 = "expected ')'";
        goto LABEL_90;
      }

      *&v50 = "no expression inside parentheses";
      v52 = 259;
    }

    else
    {
      if (v4 != 24)
      {
        goto LABEL_42;
      }

      v75[0] = "expected '-'";
      v77 = 259;
      v26 = a1;
      if ((mlir::detail::Parser::parseToken(a1, 24, v75) & 1) == 0)
      {
        return;
      }

      if (v27)
      {
        v75[0] = v27;
        mlir::AffineExpr::operator*(v75, -1);
        return;
      }

      *&v50 = "missing operand of negation";
      v52 = 259;
      v31 = v26;
    }

    mlir::detail::Parser::emitError(v31, &v50, v75);
    if (v75[0])
    {
      mlir::InFlightDiagnostic::report(v75);
    }

    if (v84 == 1)
    {
      v48 = v75;
      goto LABEL_100;
    }

    return;
  }

  if (v4 > 9)
  {
    if (v4 != 10)
    {
      if (v4 != 12)
      {
        goto LABEL_42;
      }

LABEL_43:
      return;
    }

    v15 = a1;
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(*(a1 + 1) + 64), *(*(a1 + 1) + 72));
    if (v17)
    {
      v18 = UInt64IntegerValue;
      if ((UInt64IntegerValue & 0x8000000000000000) == 0)
      {
        v19 = *(v15 + 8);
        *(v19 + 80) = *(v19 + 56);
        *(v19 + 96) = *(v19 + 72);
        mlir::Lexer::lexToken((*(v15 + 8) + 8), &v50);
        v20 = *(v15 + 8);
        *(v20 + 56) = v50;
        *(v20 + 72) = v51;
        mlir::Builder::getAffineConstantExpr(v15, v18, v21);
        return;
      }
    }

    *&v50 = "constant too large for index";
    v52 = 259;
    mlir::detail::Parser::emitError(v15, &v50, v75);
    if (v75[0])
    {
      mlir::InFlightDiagnostic::report(v75);
    }

    if (v84 != 1)
    {
      return;
    }

    if (v83 != &v84)
    {
      free(v83);
    }

    v32 = v81;
    if (v81)
    {
      v33 = v82;
      v34 = v81;
      if (v82 != v81)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = v81;
      }

      v82 = v32;
      operator delete(v34);
    }

    v35 = v79;
    if (v79)
    {
      v36 = v80;
      v37 = v79;
      if (v80 != v79)
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
        v37 = v79;
      }

      v80 = v35;
      operator delete(v37);
    }

    v49 = v76;
    if (v76 == &v78)
    {
      return;
    }

LABEL_104:
    free(v49);
    return;
  }

  if (v4 == 3)
  {
    goto LABEL_43;
  }

  if (v4 == 6)
  {
    return;
  }

LABEL_42:
  v28 = a1;
  isKeyword = mlir::Token::isKeyword(v3);
  a1 = v28;
  if (isKeyword)
  {
    goto LABEL_43;
  }

  if (a2)
  {
    v75[0] = "missing right operand of binary operator";
    v77 = 259;
    mlir::detail::Parser::emitError(v28, v75, v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v56 == 1)
    {
      v48 = v55;
LABEL_100:
      mlir::Diagnostic::~Diagnostic((v48 + 1));
    }
  }

  else
  {
    v75[0] = "expected affine expression";
    v77 = 259;
    mlir::detail::Parser::emitError(v28, v75, v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v54 == 1)
    {
      v48 = v53;
      goto LABEL_100;
    }
  }
}

uint64_t anonymous namespace::AffineParser::consumeIfHighPrecOp(_anonymous_namespace_::AffineParser *this)
{
  result = 0;
  v3 = *(this + 1);
  v4 = (v3 + 56);
  v5 = *(v3 + 56);
  if (v5 > 59)
  {
    if (v5 == 60)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
      v9 = *(this + 1);
      *(v9 + 56) = v10;
      *(v9 + 72) = v11;
      return 2;
    }

    else if (v5 == 68)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
      v7 = *(this + 1);
      *(v7 + 56) = v10;
      *(v7 + 72) = v11;
      return 4;
    }
  }

  else if (v5 == 30)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
    v8 = *(this + 1);
    *(v8 + 56) = v10;
    *(v8 + 72) = v11;
    return 1;
  }

  else if (v5 == 39)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
    v6 = *(this + 1);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 3;
  }

  return result;
}

__n128 anonymous namespace::AffineParser::parseSSAIdExpr(_anonymous_namespace_::AffineParser *this, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if ((*(this + 16) & 1) == 0)
  {
    *&v40 = "unexpected ssa identifier";
    v42 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v40, v52);
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
    }

    if (v60 != 1)
    {
      return result;
    }

    if (v59 != &v60)
    {
      free(v59);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v58;
      v16 = __p;
      if (v58 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v58 = v14;
      operator delete(v16);
    }

    v17 = v55;
    if (v55)
    {
      v18 = v56;
      v19 = v55;
      if (v56 != v55)
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
        v19 = v55;
      }

      v56 = v17;
      operator delete(v19);
    }

    v33 = v53;
    if (v53 == &v54)
    {
      return result;
    }

LABEL_48:
    free(v33);
    return result;
  }

  v3 = *(this + 1);
  if (*(v3 + 56) != 6)
  {
    *&v40 = "expected ssa identifier";
    v42 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v40, v43);
    if (v43[0])
    {
      mlir::InFlightDiagnostic::report(v43);
    }

    if (v51 != 1)
    {
      return result;
    }

    if (v50 != &v51)
    {
      free(v50);
    }

    v22 = v48;
    if (v48)
    {
      v23 = v49;
      v24 = v48;
      if (v49 != v48)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = v48;
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

    v33 = v44;
    if (v44 == &v45)
    {
      return result;
    }

    goto LABEL_48;
  }

  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  v7 = *(this + 6);
  v8 = *(this + 14);
  if (v8)
  {
    v9 = v7 + 24 * v8;
    v10 = v7 + 16;
    while (1)
    {
      v11 = v10 - 16;
      if (*(v10 - 8) == v5 && (!v5 || !memcmp(*(v10 - 16), v6, v5)))
      {
        break;
      }

      v10 += 24;
      if (v11 + 24 == v9)
      {
        goto LABEL_42;
      }
    }

    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v40);
    v12 = *(this + 1);
    result.n128_u64[0] = v40;
    *(v12 + 56) = v40;
    *(v12 + 72) = v41;
  }

  else
  {
LABEL_42:
    if ((*(this + 3))(*(this + 4), a2))
    {
      if (a2)
      {
        v31 = *(this + 11);
        *(this + 11) = v31 + 1;
        AffineSymbolExpr = mlir::getAffineSymbolExpr(v31, ***(this + 1), v30);
      }

      else
      {
        v34 = *(this + 10);
        *(this + 10) = v34 + 1;
        AffineSymbolExpr = mlir::getAffineDimExpr(v34, ***(this + 1), v30);
      }

      *&v40 = v6;
      *(&v40 + 1) = v5;
      v41 = AffineSymbolExpr;
      v35 = *(this + 14);
      v36 = *(this + 6);
      v37 = &v40;
      if (v35 >= *(this + 15))
      {
        if (v36 <= &v40 && v36 + 24 * v35 > &v40)
        {
          v39 = &v40 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(this + 48, this + 64, v35 + 1, 24);
          v36 = *(this + 6);
          v37 = &v39[v36];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(this + 48, this + 64, v35 + 1, 24);
          v36 = *(this + 6);
          v37 = &v40;
        }
      }

      v38 = (v36 + 24 * *(this + 14));
      result = *v37;
      v38[1].n128_u64[0] = v37[1].n128_u64[0];
      *v38 = result;
      ++*(this + 14);
    }
  }

  return result;
}

uint64_t anonymous namespace::AffineParser::parseBareIdExpr(_anonymous_namespace_::AffineParser *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 3 || v3 == 12)
  {
    v5 = *(this + 14);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::Token::isKeyword((v2 + 56)))
    {
      *&v33 = "expected bare identifier";
      v35 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v33, v45);
      if (v45[0])
      {
        mlir::InFlightDiagnostic::report(v45);
      }

      if (v53 != 1)
      {
        return 0;
      }

      if (v52 != &v53)
      {
        free(v52);
      }

      v24 = v50;
      if (v50)
      {
        v25 = v51;
        v26 = v50;
        if (v51 != v50)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = v50;
        }

        v51 = v24;
        operator delete(v26);
      }

      v27 = v48;
      if (v48)
      {
        v28 = v49;
        v29 = v48;
        if (v49 != v48)
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
          v29 = v48;
        }

        v49 = v27;
        operator delete(v29);
      }

      v32 = v46;
      if (v46 == &v47)
      {
        return 0;
      }

LABEL_50:
      free(v32);
      return 0;
    }

    v2 = *(this + 1);
    v5 = *(this + 14);
    if (!v5)
    {
LABEL_15:
      *&v33 = "use of undeclared identifier";
      v35 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v33, v36);
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }

      if (v44 != 1)
      {
        return 0;
      }

      if (v43 != &v44)
      {
        free(v43);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v42;
        v18 = __p;
        if (v42 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v42 = v16;
        operator delete(v18);
      }

      v19 = v39;
      if (v39)
      {
        v20 = v40;
        v21 = v39;
        if (v40 != v39)
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
          v21 = v39;
        }

        v40 = v19;
        operator delete(v21);
      }

      v32 = v37;
      if (v37 == &v38)
      {
        return 0;
      }

      goto LABEL_50;
    }
  }

  v6 = *(this + 6);
  v7 = (v6 + 24 * v5);
  v9 = *(v2 + 64);
  v8 = *(v2 + 72);
  v10 = (v6 + 16);
  while (1)
  {
    v11 = v10 - 2;
    if (*(v10 - 1) == v8 && (!v8 || !memcmp(*(v10 - 2), v9, v8)))
    {
      break;
    }

    v10 += 3;
    if (v11 + 3 == v7)
    {
      goto LABEL_15;
    }
  }

  v12 = *v10;
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v33);
  result = v12;
  v14 = *(this + 1);
  *(v14 + 56) = v33;
  *(v14 + 72) = v34;
  return result;
}

uint64_t anonymous namespace::AffineParser::getAffineBinaryOpExpr(uint64_t a1, int a2, mlir::MLIRContext **a3, uint64_t a4, const char *a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v43 = a4;
  v44 = a3;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v44) & 1) != 0 || (mlir::AffineExpr::isSymbolicOrConstant(&v43))
      {
        return mlir::AffineExpr::operator*(&v44, v43);
      }

      v41[0] = "non-affine expression: at least one of the multiply operands has to be either a constant or symbolic";
      v42 = 259;
      mlir::detail::Parser::emitError(a1, a5, v41, v72);
      if (v72[0])
      {
        mlir::InFlightDiagnostic::report(v72);
      }

      if (v80 != 1)
      {
        return 0;
      }

      if (v79 != &v80)
      {
        free(v79);
      }

      v32 = v77;
      if (v77)
      {
        v33 = v78;
        v34 = v77;
        if (v78 != v77)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = v77;
        }

        v78 = v32;
        operator delete(v34);
      }

      v35 = v75;
      if (v75)
      {
        v36 = v76;
        v37 = v75;
        if (v76 != v75)
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
          v37 = v75;
        }

        v76 = v35;
        operator delete(v37);
      }

      v40 = v73;
      if (v73 == &v74)
      {
        return 0;
      }
    }

    else
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v43))
      {
        return mlir::AffineExpr::floorDiv(&v44, v43);
      }

      v41[0] = "non-affine expression: right operand of floordiv has to be either a constant or symbolic";
      v42 = 259;
      mlir::detail::Parser::emitError(a1, a5, v41, v63);
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }

      if (v71 != 1)
      {
        return 0;
      }

      if (v70 != &v71)
      {
        free(v70);
      }

      v16 = v68;
      if (v68)
      {
        v17 = v69;
        v18 = v68;
        if (v69 != v68)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v68;
        }

        v69 = v16;
        operator delete(v18);
      }

      v19 = v66;
      if (v66)
      {
        v20 = v67;
        v21 = v66;
        if (v67 != v66)
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
          v21 = v66;
        }

        v67 = v19;
        operator delete(v21);
      }

      v40 = v64;
      if (v64 == &v65)
      {
        return 0;
      }
    }

    goto LABEL_88;
  }

  if (a2 == 3)
  {
    if (mlir::AffineExpr::isSymbolicOrConstant(&v43))
    {
      return mlir::AffineExpr::ceilDiv(&v44, v43);
    }

    v41[0] = "non-affine expression: right operand of ceildiv has to be either a constant or symbolic";
    v42 = 259;
    mlir::detail::Parser::emitError(a1, a5, v41, v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v62 != 1)
    {
      return 0;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v60;
      v10 = __p;
      if (v60 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v60 = v8;
      operator delete(v10);
    }

    v11 = v57;
    if (v57)
    {
      v12 = v58;
      v13 = v57;
      if (v58 != v57)
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
        v13 = v57;
      }

      v58 = v11;
      operator delete(v13);
    }

    v40 = v55;
    if (v55 == &v56)
    {
      return 0;
    }

    goto LABEL_88;
  }

  if (mlir::AffineExpr::isSymbolicOrConstant(&v43))
  {
    return mlir::AffineExpr::operator%(&v44, v43);
  }

  v41[0] = "non-affine expression: right operand of mod has to be either a constant or symbolic";
  v42 = 259;
  mlir::detail::Parser::emitError(a1, a5, v41, v45);
  if (v45[0])
  {
    mlir::InFlightDiagnostic::report(v45);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v24 = v50;
    if (v50)
    {
      v25 = v51;
      v26 = v50;
      if (v51 != v50)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = v50;
      }

      v51 = v24;
      operator delete(v26);
    }

    v27 = v48;
    if (v48)
    {
      v28 = v49;
      v29 = v48;
      if (v49 != v48)
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
        v29 = v48;
      }

      v49 = v27;
      operator delete(v29);
    }

    v40 = v46;
    if (v46 != &v47)
    {
LABEL_88:
      free(v40);
    }
  }

  return 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseIntegerSetConstraints(unsigned int,unsigned int,mlir::IntegerSet &)::$_0>(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!v35)
  {
    return 0;
  }

  v3 = *(v2 + 1);
  v4 = *(v3 + 56);
  if (v4 == 19)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v32);
    v5 = *(v2 + 1);
    *(v5 + 56) = v32;
    *(v5 + 72) = v33;
    v3 = *(v2 + 1);
    v4 = *(v3 + 56);
    if (v4 == 18)
    {
      *(v3 + 80) = *(v3 + 56);
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v32);
      v6 = *(v2 + 1);
      *(v6 + 56) = v32;
      *(v6 + 72) = v33;
      if (v7)
      {
        result = mlir::AffineExpr::operator-(&v35, v7);
        v9 = 0;
        if (!result)
        {
          return result;
        }

        goto LABEL_17;
      }

      return 0;
    }
  }

  if (v4 == 18)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v32);
    v13 = *(v2 + 1);
    *(v13 + 56) = v32;
    *(v13 + 72) = v33;
    v14 = *(v2 + 1);
    if (*(v14 + 56) == 18)
    {
      *(v14 + 80) = *(v14 + 56);
      *(v14 + 96) = *(v14 + 72);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v32);
      v15 = *(v2 + 1);
      *(v15 + 56) = v32;
      *(v15 + 72) = v33;
      if (!v16)
      {
        return 0;
      }

      result = mlir::AffineExpr::operator-(&v35, v16);
      v9 = 1;
      if (!result)
      {
        return result;
      }

LABEL_17:
      v17 = *(a1 + 8);
      v18 = *(v17 + 8);
      if (v18 >= *(v17 + 12))
      {
        v31 = result;
        v30 = v9;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v17 + 16, v18 + 1, 8);
        v9 = v30;
        result = v31;
        LODWORD(v18) = *(v17 + 8);
      }

      *(*v17 + 8 * v18) = result;
      ++*(v17 + 8);
      v19 = *(a1 + 16);
      v20 = v19[1];
      if ((v20 + 1) > v19[2])
      {
        v29 = v9;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v19, v19 + 3, v20 + 1, 1);
        v9 = v29;
        v20 = v19[1];
      }

      *(*v19 + v20) = v9;
      ++v19[1];
      return 1;
    }

LABEL_22:
    *&v32 = "expected '== affine-expr' or '>= affine-expr' at end of affine constraint";
    v34 = 259;
    mlir::detail::Parser::emitError(v2, &v32, v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v42;
        v23 = __p;
        if (v42 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v42 = v21;
        operator delete(v23);
      }

      v24 = v39;
      if (v39)
      {
        v25 = v40;
        v26 = v39;
        if (v40 != v39)
        {
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
          v26 = v39;
        }

        v40 = v24;
        operator delete(v26);
      }

      if (v37 != &v38)
      {
        free(v37);
      }
    }

    return 0;
  }

  if (v4 != 23)
  {
    goto LABEL_22;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v32);
  v10 = *(v2 + 1);
  *(v10 + 56) = v32;
  *(v10 + 72) = v33;
  v11 = *(v2 + 1);
  if (*(v11 + 56) != 18)
  {
    goto LABEL_22;
  }

  *(v11 + 80) = *(v11 + 56);
  *(v11 + 96) = *(v11 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v32);
  v12 = *(v2 + 1);
  *(v12 + 56) = v32;
  *(v12 + 72) = v33;
  *&v32 = result;
  if (result)
  {
    result = mlir::AffineExpr::operator-(&v32, v35);
  }

  v9 = 0;
  if (result)
  {
    goto LABEL_17;
  }

  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseAffineMapOfSSAIds(mlir::AffineMap &,mlir::AsmParser::Delimiter)::$_0>(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v6 = v2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, v3 + 16, v4 + 1, 8);
    v2 = v6;
    LODWORD(v4) = *(v3 + 8);
  }

  *(*v3 + 8 * v4) = v2;
  ++*(v3 + 8);
  return v2 != 0;
}

llvm::SourceMgr::SrcBuffer *std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(llvm::SourceMgr::SrcBuffer **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = a2;
    v7 = operator new(24 * v5);
    a2 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v9 = &v7[24 * v5];
  llvm::SourceMgr::SrcBuffer::SrcBuffer(v8, a2);
  v10 = (v8 + 24);
  v11 = *a1;
  v12 = a1[1];
  v13 = &v8[*a1 - v12];
  if (v12 != *a1)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v15, v14);
      v14 += 3;
      v15 = (v16 + 3);
    }

    while (v14 != v12);
    do
    {
      llvm::SourceMgr::SrcBuffer::~SrcBuffer(v11);
      v11 = (v11 + 24);
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void mlir::ParserConfig::~ParserConfig(mlir::ParserConfig *this)
{
  v2 = *(this + 14);
  v3 = *(this + 30);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(this + 14);
  }

  if (v2 != this + 128)
  {
    free(v2);
  }

  v7 = *(this + 6);
  v8 = *(this + 14);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v7 - 8;
    do
    {
      v11 = *&v10[v9];
      *&v10[v9] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v9 -= 8;
    }

    while (v9);
    v7 = *(this + 6);
  }

  if (v7 != this + 64)
  {
    free(v7);
  }

  v12 = *(this + 8);
  v13 = *(this + 2);
  if (v12)
  {
    v14 = 24 * v12;
    v15 = (v13 + 16);
    do
    {
      if (*(v15 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = *v15;
        *v15 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    v13 = *(this + 2);
    v17 = 24 * *(this + 8);
  }

  else
  {
    v17 = 0;
  }

  llvm::deallocate_buffer(v13, v17);
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::destroyAll(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = *a1 + 32 * v1;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*(v2 + 20))
        {
          v4 = *(v2 + 16);
          if (v4)
          {
            v5 = 0;
            do
            {
              v6 = *(*(v2 + 8) + v5);
              if (v6 != -8 && v6 != 0)
              {
                v8 = *v6;
                if (*(v6 + 31) < 0)
                {
                  operator delete(*(v6 + 1));
                }

                llvm::deallocate_buffer(v6, (v8 + 57));
              }

              v5 += 8;
            }

            while (8 * v4 != v5);
          }
        }

        free(*(v2 + 8));
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void mlir::AsmParserState::Impl::resolveSymbolUses(mlir::AsmParserState::Impl *this)
{
  v33[6] = *MEMORY[0x1E69E9840];
  v31 = v33;
  v32 = 0x600000000;
  v1 = *(this + 96);
  if (v1)
  {
    v3 = *(this + 47);
    v29 = &v3[2 * v1];
    do
    {
      v4 = v3[1];
      if (*(v4 + 8))
      {
        v5 = *v4;
        v6 = *(v4 + 16);
        if (v6)
        {
          v7 = 24 * v6;
          v8 = v5;
          while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v8 += 24;
            v7 -= 24;
            if (!v7)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
          v8 = v5;
        }

        v9 = v5 + 24 * v6;
        v30 = v3;
        while (v8 != v9)
        {
          LODWORD(v32) = 0;
          if (mlir::SymbolTableCollection::lookupSymbolIn(this + 568, *v3, *v8, &v31))
          {
            v10 = *(v8 + 16);
            if (v10)
            {
              v11 = *(v8 + 8);
              v12 = v11 + (v10 << 6);
              do
              {
                v13 = *(v11 + 8);
                if (v32)
                {
                  v14 = v13 == 0;
                }

                else
                {
                  v14 = 1;
                }

                if (!v14)
                {
                  v15 = *v11;
                  v16 = v31;
                  v17 = v31 + 8 * v32;
                  v18 = *v11 + 16 * v13;
                  do
                  {
                    v19 = *(this + 20);
                    if (v19)
                    {
                      v20 = *(this + 8);
                      v21 = ((*v16 >> 4) ^ (*v16 >> 9)) & (v19 - 1);
                      v22 = *(v20 + 16 * v21);
                      if (v22 == *v16)
                      {
LABEL_26:
                        if (v21 != v19)
                        {
                          v23 = *(*this + 8 * *(v20 + 16 * v21 + 8));
                          v24 = *v15;
                          v25 = *(v23 + 152);
                          if (v25 >= *(v23 + 156))
                          {
                            v28 = *v15;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 144, v23 + 160, v25 + 1, 16);
                            v24 = v28;
                            v25 = *(v23 + 152);
                          }

                          *(*(v23 + 144) + 16 * v25) = v24;
                          ++*(v23 + 152);
                        }
                      }

                      else
                      {
                        v26 = 1;
                        while (v22 != -4096)
                        {
                          v27 = v21 + v26++;
                          v21 = v27 & (v19 - 1);
                          v22 = *(v20 + 16 * v21);
                          if (v22 == *v16)
                          {
                            goto LABEL_26;
                          }
                        }
                      }
                    }

                    if (++v16 == v17)
                    {
                      break;
                    }

                    ++v15;
                  }

                  while (v15 != v18);
                }

                v11 += 64;
              }

              while (v11 != v12);
            }
          }

          v8 += 24;
          if (v8 == v9)
          {
            v3 = v30;
          }

          else
          {
            v3 = v30;
            do
            {
              if ((*v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                break;
              }

              v8 += 24;
            }

            while (v8 != v9);
          }
        }
      }

LABEL_3:
      v3 += 2;
    }

    while (v3 != v29);
    if (v31 != v33)
    {
      free(v31);
    }
  }
}

_BYTE *mlir::AsmParserState::convertIdLocToRange(_BYTE *a1)
{
  if (!a1 || !*a1)
  {
    return a1;
  }

  if (*a1 != 34)
  {
    v9 = a1 + 1;
    v10 = MEMORY[0x1E69E9830];
    while (1)
    {
      v11 = v9;
      v12 = *v9;
      if ((v12 & 0x80000000) != 0)
      {
        if (__maskrune(*v9, 0x500uLL))
        {
          goto LABEL_26;
        }
      }

      else if ((*(v10 + 4 * v12 + 60) & 0x500) != 0)
      {
        goto LABEL_26;
      }

      if (v12 - 36 > 0x3B || ((1 << (v12 - 36)) & 0x800000000000601) == 0)
      {
        return a1;
      }

LABEL_26:
      v9 = v11 + 1;
      if (!*v11)
      {
        return a1;
      }
    }
  }

  v2 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    do
    {
      v4 = v2 + 1;
      v5 = memchr("\n\v\f", v3, 4uLL);
      if (v5 && v5 - "\n\v\f" != -1)
      {
        break;
      }

      if (v3 == 92)
      {
        v7 = *v4;
        v8 = (v7 - 92) > 0x18 || ((1 << (v7 - 92)) & 0x1040001) == 0;
        if (!v8 || v7 == 34)
        {
          v4 = v2 + 2;
        }

        else
        {
          if (llvm::hexDigitValue(char)::LUT[*v4] == -1 || llvm::hexDigitValue(char)::LUT[v2[2]] == -1)
          {
            return a1;
          }

          v4 = v2 + 3;
        }
      }

      v3 = *v4;
      v2 = v4;
    }

    while (*v4);
  }

  return a1;
}

void mlir::AsmParserState::initialize(mlir::AsmParserState *this, mlir::Operation *a2)
{
  v8 = *(a2 + 6);
  v3 = *this;
  v4 = *(*this + 448);
  if (v4 >= *(*this + 452))
  {
    llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::growAndEmplaceBack<mlir::OperationName const&>(v3 + 440, &v8);
    v5 = *this;
    v6 = *(*(v5 + 440) + 8 * *(v5 + 448) - 8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef((*(v3 + 440) + 8 * v4), &v8);
    ++*(v3 + 448);
    v5 = *this;
    v6 = *(*(v5 + 440) + 8 * *(v5 + 448) - 8);
    if (!v6)
    {
      return;
    }
  }

  v7 = *(v5 + 512);
  if (v7 >= *(v5 + 516))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 504, v5 + 520, v7 + 1, 8);
    LODWORD(v7) = *(v5 + 512);
  }

  *(*(v5 + 504) + 8 * v7) = v6;
  ++*(v5 + 512);
}

mlir::AsmParserState::Impl::PartialOpDef *mlir::AsmParserState::startOperationDefinition(mlir::AsmParserState *this, const mlir::OperationName *a2)
{
  v2 = *this;
  v3 = *(*this + 448);
  if (v3 >= *(*this + 452))
  {

    return llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::growAndEmplaceBack<mlir::OperationName const&>(v2 + 440, a2);
  }

  else
  {
    result = mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef((*(v2 + 440) + 8 * v3), a2);
    ++*(v2 + 448);
  }

  return result;
}

void mlir::AsmParserState::finalize(mlir::AsmParserState::Impl **this, mlir::Operation *a2)
{
  v15 = a2;
  v4 = *this;
  v5 = *(v4 + 55);
  v6 = *(v4 + 112);
  v7 = v5 + 8 * v6;
  v8 = *(v7 - 8);
  *(v7 - 8) = 0;
  v14 = v8;
  LODWORD(v6) = v6 - 1;
  *(v4 + 112) = v6;
  v9 = (v5 + 8 * v6);
  v10 = *v9;
  *v9 = 0;
  if (v10)
  {
    std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](v9, v10);
    v4 = *this;
  }

  if (!v8)
  {
LABEL_6:
    mlir::AsmParserState::Impl::resolveSymbolUses(v4);
    v13 = v14;
    v14 = 0;
    if (!v13)
    {
      return;
    }

    goto LABEL_7;
  }

  v11 = *(v4 + 96);
  if (v11 < *(v4 + 97))
  {
    v12 = (*(v4 + 47) + 16 * v11);
    v14 = 0;
    *v12 = a2;
    v12[1] = v8;
    *(v4 + 96) = v11 + 1;
    goto LABEL_6;
  }

  llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>,false>::growAndEmplaceBack<mlir::Operation *&,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>(v4 + 376, &v15, &v14);
  mlir::AsmParserState::Impl::resolveSymbolUses(*this);
  v13 = v14;
  v14 = 0;
  if (!v13)
  {
    return;
  }

LABEL_7:
  std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](&v14, v13);
}

void mlir::AsmParserState::finalizeOperationDefinition(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7)
{
  v46 = a2;
  v14 = *a1;
  v15 = *(*a1 + 440);
  v16 = *(*a1 + 448);
  v17 = v15 + 8 * v16;
  v18 = *(v17 - 8);
  *(v17 - 8) = 0;
  v45 = v18;
  LODWORD(v16) = v16 - 1;
  *(v14 + 448) = v16;
  v19 = (v15 + 8 * v16);
  v20 = *v19;
  *v19 = 0;
  if (v20)
  {
    std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](v19, v20);
  }

  v21 = operator new(0xD0uLL);
  *v21 = a2;
  *(v21 + 1) = a3;
  *(v21 + 2) = a4;
  *(v21 + 3) = a3;
  *(v21 + 4) = a5;
  *(v21 + 5) = v21 + 14;
  *(v21 + 6) = 0x100000000;
  *(v21 + 18) = v21 + 40;
  *(v21 + 19) = 0x300000000;
  __p = v21;
  if (a7)
  {
    v22 = 16 * a7;
    do
    {
      while (1)
      {
        v23 = mlir::AsmParserState::convertIdLocToRange(*(a6 + 1));
        *&v42 = v23;
        *(&v42 + 1) = v24;
        v25 = v21[12];
        if (v25 >= v21[13])
        {
          break;
        }

        v26 = *(v21 + 5) + 88 * v25;
        v27 = *a6;
        a6 += 4;
        *v26 = v27;
        *(v26 + 8) = v23;
        *(v26 + 16) = v24;
        *(v26 + 24) = v26 + 40;
        *(v26 + 32) = 0x300000000;
        ++v21[12];
        v22 -= 16;
        if (!v22)
        {
          goto LABEL_9;
        }
      }

      llvm::SmallVectorTemplateBase<mlir::AsmParserState::OperationDefinition::ResultGroupDefinition,false>::growAndEmplaceBack<unsigned int const&,llvm::SMRange>((v21 + 10), a6, &v42);
      a6 += 4;
      v22 -= 16;
    }

    while (v22);
  }

LABEL_9:
  v28 = *a1;
  v43 = *(*a1 + 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned long>(v28 + 64, &v46, &v43, &v42);
  v29 = *a1;
  v30 = *(*a1 + 8);
  if (v30 >= *(*a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::OperationDefinition>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmParserState::OperationDefinition>>(v29, &__p);
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v31 = *v29;
    __p = 0;
    *(v31 + 8 * v30) = v21;
    *(v29 + 8) = v30 + 1;
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  v32 = *a1;
  v33 = *(*a1 + 384);
  if (v33 >= *(*a1 + 388))
  {
    llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>,false>::growAndEmplaceBack<mlir::Operation *&,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>(v32 + 376, &v46, &v45);
  }

  else
  {
    v34 = (*(v32 + 376) + 16 * v33);
    *v34 = v46;
    v45 = 0;
    v34[1] = v18;
    *(v32 + 384) = v33 + 1;
  }

LABEL_13:
  v35 = __p;
  __p = 0;
  if (v35)
  {
    v36 = v35[18];
    if (v36 != (v35 + 20))
    {
      free(v36);
    }

    v37 = v35[5];
    v38 = *(v35 + 12);
    if (v38)
    {
      v39 = &v37[88 * v38 - 64];
      v40 = -88 * v38;
      do
      {
        if (v39 + 2 != *v39)
        {
          free(*v39);
        }

        v39 -= 11;
        v40 += 88;
      }

      while (v40);
      v37 = v35[5];
    }

    if (v37 != (v35 + 7))
    {
      free(v37);
    }

    operator delete(v35);
  }

  v41 = v45;
  v45 = 0;
  if (v41)
  {
    std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](&v45, v41);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
    llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(result, v5);
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

void mlir::AsmParserState::startRegionDefinition(mlir::AsmParserState *this)
{
  v1 = *this;
  v2 = *(*(*this + 440) + 8 * *(*this + 448) - 8);
  if (v2)
  {
    v3 = *(v1 + 512);
    if (v3 >= *(v1 + 516))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v1 + 504, v1 + 520, v3 + 1, 8);
      LODWORD(v3) = *(v1 + 512);
    }

    *(*(v1 + 504) + 8 * v3) = v2;
    ++*(v1 + 512);
  }
}

uint64_t mlir::AsmParserState::finalizeRegionDefinition(uint64_t this)
{
  if (*(*(*this + 440) + 8 * *(*this + 448) - 8))
  {
    --*(*this + 512);
  }

  return this;
}

void mlir::AsmParserState::addDefinition(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v18 = a2;
  v5 = *a1;
  v15 = *(*a1 + 96);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned long>(v5 + 152, &v18, &v15, &v16);
  if (v17 == 1)
  {
    v6 = *a1;
    v7 = mlir::AsmParserState::convertIdLocToRange(a3);
    v9 = v8;
    v10 = operator new(0xB8uLL);
    *v10 = v18;
    v10[1] = v7;
    v10[2] = v9;
    v10[3] = v10 + 5;
    v10[4] = 0x300000000;
    v10[11] = v10 + 13;
    v10[12] = 0x100000000;
    v15 = v10;
    v11 = *(v6 + 96);
    if (v11 >= *(v6 + 100))
    {
      mlir::AsmParserState::addDefinition(v6 + 88, &v15);
    }

    else
    {
      *(*(v6 + 88) + 8 * v11) = v10;
      *(v6 + 96) = v11 + 1;
    }
  }

  else
  {
    v12 = mlir::AsmParserState::convertIdLocToRange(a3);
    v13 = *(*(*a1 + 88) + 8 * *(v16 + 8));
    *(v13 + 8) = v12;
    *(v13 + 16) = v14;
  }
}

void mlir::AsmParserState::addDefinition(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 152);
  v5 = *(*a1 + 168);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = ((v6 >> 4) ^ (v6 >> 9)) & (v5 - 1);
    v8 = *(v4 + 16 * v7);
    if (v8 == v6)
    {
      goto LABEL_8;
    }

    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v7 + v9++;
      v7 = v10 & (v5 - 1);
      v8 = *(v4 + 16 * v7);
      if (v8 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = *(*a1 + 168);
LABEL_8:
  v11 = *(*(*a1 + 88) + 8 * *(v4 + 16 * v7 + 8));
  v12 = *(a2 + 24);
  v13 = *(v11 + 96);
  v14 = (v12 + 1);
  if (v12 >= v13 && v13 != v14)
  {
    if (v13 <= v14)
    {
      if (*(v11 + 100) < v14)
      {
        llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::grow(v11 + 88, (v12 + 1));
        v13 = *(v11 + 96);
      }

      if (v13 != v14)
      {
        v19 = *(v11 + 88);
        v20 = v19 + 80 * v13;
        do
        {
          *(v20 + 48) = 0uLL;
          *(v20 + 64) = 0uLL;
          *v20 = 0uLL;
          *(v20 + 16) = 0uLL;
          *(v20 + 32) = 0uLL;
          *(v20 + 16) = v20 + 32;
          *(v20 + 28) = 3;
          v20 += 80;
        }

        while (v20 != v19 + 80 * v14);
      }
    }

    else
    {
      v16 = 80 * v13;
      v17 = (v16 + *(v11 + 88) - 64);
      v18 = 80 * v14 - v16;
      do
      {
        if (v17 + 2 != *v17)
        {
          free(*v17);
        }

        v17 -= 10;
        v18 += 80;
      }

      while (v18);
    }

    *(v11 + 96) = v14;
  }

  *&v28 = mlir::AsmParserState::convertIdLocToRange(a3);
  *(&v28 + 1) = v21;
  __src = v31;
  v30 = 0x300000000;
  v22 = *(v11 + 88) + 80 * v12;
  *v22 = v28;
  v23 = __src;
  if (v22 != &v28)
  {
    if (__src != v31)
    {
      v24 = *(v22 + 16);
      if (v24 != (v22 + 32))
      {
        free(v24);
        v23 = __src;
      }

      *(v22 + 16) = v23;
      *(v22 + 24) = v30;
      __src = v31;
      HIDWORD(v30) = 0;
      goto LABEL_38;
    }

    v25 = v30;
    v26 = *(v22 + 24);
    if (v26 >= v30)
    {
      if (v30)
      {
        memmove(*(v22 + 16), __src, 16 * v30);
      }

      goto LABEL_37;
    }

    if (*(v22 + 28) >= v30)
    {
      if (v26)
      {
        memmove(*(v22 + 16), __src, 16 * v26);
        v27 = v30 - v26;
        if (v30 == v26)
        {
LABEL_37:
          *(v22 + 24) = v25;
LABEL_38:
          LODWORD(v30) = 0;
          v23 = __src;
          goto LABEL_39;
        }
      }

      else
      {
        v26 = 0;
        v27 = v30;
        if (!v30)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      *(v22 + 24) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v22 + 16, v22 + 32, v25, 16);
      v26 = 0;
      v27 = v30;
      if (!v30)
      {
        goto LABEL_37;
      }
    }

    memcpy((*(v22 + 16) + 16 * v26), __src + 16 * v26, 16 * v27);
    goto LABEL_37;
  }

LABEL_39:
  if (v23 != v31)
  {
    free(v23);
  }
}

void mlir::AsmParserState::addAttrAliasDefinition(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  __p = *(*a1 + 184);
  v13 = llvm::StringMapImpl::hash(a2, a3, a3);
  v14 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v12 + 304), a2, a3, v13, &__p);
  if (v15)
  {
    v16 = *a1;
    v17 = operator new(0x68uLL);
    v17[4] = v17 + 6;
    v18 = *(v16 + 176);
    *v17 = a2;
    v17[1] = a3;
    v17[2] = a4;
    v17[3] = a5;
    v17[5] = 0x300000000;
    v17[12] = a6;
    __p = v17;
    v19 = *(v16 + 184);
    p_p = &__p;
    if (v19 >= *(v16 + 188))
    {
      if (v18 <= &__p && v18 + 8 * v19 > &__p)
      {
        v26 = &__p - v18;
        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(v16 + 176, v19 + 1);
        v18 = *(v16 + 176);
        p_p = &v26[v18];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(v16 + 176, v19 + 1);
        v18 = *(v16 + 176);
        p_p = &__p;
      }
    }

    v21 = *(v16 + 184);
    v22 = *p_p;
    *p_p = 0;
    *(v18 + 8 * v21) = v22;
    *(v16 + 184) = v21 + 1;
    v23 = __p;
    __p = 0;
    if (v23)
    {
      v24 = v23[4];
      if (v24 != v23 + 6)
      {
        free(v24);
      }

      operator delete(v23);
    }
  }

  else
  {
    v25 = *(*(*a1 + 176) + 8 * *(*v14 + 8));
    v25[2] = a4;
    v25[3] = a5;
    v25[12] = a6;
  }
}

void mlir::AsmParserState::addTypeAliasDefinition(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  __p = *(*a1 + 248);
  v13 = llvm::StringMapImpl::hash(a2, a3, a3);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v12 + 328), a2, a3, v13, &__p);
  v14 = *a1;
  v15 = operator new(0x68uLL);
  v15[4] = v15 + 6;
  v17 = (v14 + 240);
  v16 = *(v14 + 240);
  *v15 = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[5] = 0x300000000;
  v15[12] = a6;
  __p = v15;
  v18 = *(v14 + 248);
  p_p = &__p;
  if (v18 >= *(v14 + 252))
  {
    if (v16 <= &__p && v16 + 8 * v18 > &__p)
    {
      v24 = &__p - v16;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(v14 + 240, v18 + 1);
      v16 = *v17;
      p_p = &v24[*v17];
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(v14 + 240, v18 + 1);
      v16 = *v17;
      p_p = &__p;
    }
  }

  v20 = *(v14 + 248);
  v21 = *p_p;
  *p_p = 0;
  *(v16 + 8 * v20) = v21;
  *(v14 + 248) = v20 + 1;
  v22 = __p;
  __p = 0;
  if (v22)
  {
    v23 = v22[4];
    if (v23 != v22 + 6)
    {
      free(v23);
    }

    operator delete(v22);
  }
}

void mlir::AsmParserState::addUses(uint64_t a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v56 = a2;
  if ((~*(a2 + 8) & 7) != 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v18 = *(*a1 + 152);
    v19 = *(*a1 + 168);
    if (v19)
    {
      v20 = *(a2 + 16);
      v21 = ((v20 >> 4) ^ (v20 >> 9)) & (v19 - 1);
      v22 = *(v18 + 16 * v21);
      if (v22 == v20)
      {
        goto LABEL_22;
      }

      v23 = 1;
      while (v22 != -4096)
      {
        v24 = v21 + v23++;
        v21 = v24 & (v19 - 1);
        v22 = *(v18 + 16 * v21);
        if (v22 == v20)
        {
          goto LABEL_22;
        }
      }
    }

    v21 = *(*a1 + 168);
LABEL_22:
    if (a4)
    {
      v27 = *(*(*(*a1 + 88) + 8 * *(v18 + 16 * v21 + 8)) + 88) + 80 * *(a2 + 24);
      v28 = 8 * a4;
      do
      {
        while (1)
        {
          *&v55 = mlir::AsmParserState::convertIdLocToRange(*a3);
          *(&v55 + 1) = v29;
          v30 = *(v27 + 24);
          if (v30 >= *(v27 + 28))
          {
            break;
          }

          *(*(v27 + 16) + 16 * v30) = v55;
          ++*(v27 + 24);
          ++a3;
          v28 -= 8;
          if (!v28)
          {
            return;
          }
        }

        llvm::SmallVectorTemplateBase<llvm::SMRange,true>::growAndEmplaceBack<llvm::SMRange>(v27 + 16, &v55);
        ++a3;
        v28 -= 8;
      }

      while (v28);
    }

    return;
  }

  Owner = mlir::detail::OpResultImpl::getOwner(v7);
  v9 = *a1;
  v10 = *(*a1 + 80);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v9[8];
  v12 = (v10 - 1) & ((Owner >> 4) ^ (Owner >> 9));
  v13 = *(v11 + 16 * v12);
  if (v13 != Owner)
  {
    v52 = 1;
    while (v13 != -4096)
    {
      v53 = v12 + v52++;
      v12 = v53 & (v10 - 1);
      v13 = *(v11 + 16 * v12);
      if (v13 == Owner)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_8;
  }

LABEL_7:
  if (v12 == v10)
  {
LABEL_8:
    v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::operator[]((v9 + 44), &v56);
    v15 = v14;
    v16 = *(v14 + 2);
    v17 = v16 + ((8 * a4) >> 3);
    if (v17 > *(v14 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v14 + 2), v17, 8);
      LODWORD(v16) = *(v15 + 2);
    }

    if (a4)
    {
      memcpy((*v15 + 8 * v16), a3, 8 * a4);
      LODWORD(v16) = *(v15 + 2);
    }

    *(v15 + 2) = v16 + a4;
    return;
  }

  v25 = *(v7 + 8);
  if ((v25 & 7) == 6)
  {
    v26 = *(v7 + 16) + 6;
  }

  else
  {
    v26 = v25 & 7;
  }

  v31 = 0;
  v32 = *(*v9 + 8 * *(v11 + 16 * v12 + 8));
  v33 = *(v32 + 40);
  v34 = *(v32 + 48);
  v35 = 88 * v34;
  do
  {
    if (v35 == v31)
    {
      return;
    }

    v36 = *(v33 + v35 - 88);
    v33 -= 88;
    v31 += 88;
  }

  while (v26 < v36);
  if (a4)
  {
    v54 = &a3[a4];
    v37 = v33 + 88 * v34;
    v38 = MEMORY[0x1E69E9830];
    do
    {
      v39 = *a3;
      if (*a3)
      {
        v40 = *a3;
        if (*v39)
        {
          if (*v39 == 34)
          {
            v41 = v39 + 1;
            v42 = v39[1];
            if (v42)
            {
              while (1)
              {
                v40 = v41 + 1;
                v43 = memchr("\n\v\f", v42, 4uLL);
                if (v43 && v43 - "\n\v\f" != -1)
                {
                  break;
                }

                if (v42 == 92)
                {
                  v45 = *v40;
                  v46 = (v45 - 92) > 0x18 || ((1 << (v45 - 92)) & 0x1040001) == 0;
                  if (!v46 || v45 == 34)
                  {
                    v40 = v41 + 2;
                  }

                  else
                  {
                    if (llvm::hexDigitValue(char)::LUT[*v40] == -1 || llvm::hexDigitValue(char)::LUT[v41[2]] == -1)
                    {
                      goto LABEL_58;
                    }

                    v40 = v41 + 3;
                  }
                }

                v42 = *v40;
                v41 = v40;
                if (!*v40)
                {
                  goto LABEL_58;
                }
              }
            }

            else
            {
              v40 = v39 + 1;
            }

            goto LABEL_58;
          }

          v49 = v39 + 1;
          while (2)
          {
            v40 = v49;
            v50 = *v49;
            if ((v50 & 0x80000000) != 0)
            {
              if (!__maskrune(*v49, 0x500uLL))
              {
LABEL_68:
                if (v50 - 36 > 0x3B || ((1 << (v50 - 36)) & 0x800000000000601) == 0)
                {
                  break;
                }
              }
            }

            else if ((*(v38 + 4 * v50 + 60) & 0x500) == 0)
            {
              goto LABEL_68;
            }

            v49 = (v40 + 1);
            if (!*v40)
            {
              break;
            }

            continue;
          }
        }
      }

      else
      {
        v40 = 0;
      }

LABEL_58:
      v47 = *(v37 + 32);
      if (v47 >= *(v37 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v37 + 24, v37 + 40, v47 + 1, 16);
        v47 = *(v37 + 32);
      }

      v48 = (*(v37 + 24) + 16 * v47);
      *v48 = v39;
      v48[1] = v40;
      ++*(v37 + 32);
      ++a3;
    }

    while (a3 != v54);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 72 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = v7 + 3;
  v7[2] = 0x600000000;
  return v7 + 1;
}

void mlir::AsmParserState::addUses(uint64_t *a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v22 = a2;
  v7 = *a1;
  v19 = *(*a1 + 96);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned long>(v7 + 152, &v22, &v19, &v20);
  if (v21 == 1)
  {
    v8 = *a1;
    v9 = operator new(0xB8uLL);
    *v9 = v22;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = v9 + 5;
    v9[4] = 0x300000000;
    v9[11] = v9 + 13;
    v9[12] = 0x100000000;
    v19 = v9;
    v10 = *(v8 + 96);
    if (v10 >= *(v8 + 100))
    {
      mlir::AsmParserState::addDefinition(v8 + 88, &v19);
      if (!a4)
      {
        return;
      }

      goto LABEL_5;
    }

    *(*(v8 + 88) + 8 * v10) = v9;
    *(v8 + 96) = v10 + 1;
  }

  if (!a4)
  {
    return;
  }

LABEL_5:
  v11 = *(*(*a1 + 88) + 8 * *(v20 + 8));
  v12 = 8 * a4;
  do
  {
    v13 = mlir::AsmParserState::convertIdLocToRange(*a3);
    v15 = *(v11 + 32);
    if (v15 >= *(v11 + 36))
    {
      v17 = v13;
      v18 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v15 + 1, 16);
      v14 = v18;
      v13 = v17;
      v15 = *(v11 + 32);
    }

    v16 = (*(v11 + 24) + 16 * v15);
    *v16 = v13;
    v16[1] = v14;
    ++*(v11 + 32);
    ++a3;
    v12 -= 8;
  }

  while (v12);
}

void mlir::AsmParserState::addUses(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v15 = a2;
  v4 = *(*a1 + 512);
  if (v4)
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::operator[](*(*(*a1 + 504) + 8 * v4 - 8), &v15);
    v8 = v7;
    v13 = &a3[16 * a4];
    v14 = a3;
    v9 = *(v7 + 2);
    if (v9 >= *(v7 + 3))
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::growAndEmplaceBack<llvm::SMRange const*,llvm::SMRange const*>(v7, &v14, &v13);
      return;
    }

    v10 = (*v7 + (v9 << 6));
    *v10 = v10 + 2;
    v10[1] = 0x300000000;
    v11 = (16 * a4) >> 4;
    if (v11 < 4)
    {
      v12 = 0;
      if (!a4)
      {
LABEL_8:
        *(v10 + 2) = v12 + a4;
        ++*(v8 + 2);
        return;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v10 + 2), v11, 16);
      v12 = *(v10 + 2);
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    memcpy((*v10 + 16 * v12), a3, 16 * a4);
    v12 = *(v10 + 2);
    goto LABEL_8;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 24 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 24 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = v5 + 3;
  v5[2] = 0;
  return v5 + 1;
}

void mlir::AsmParserState::addAttrAliasUses(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = llvm::StringMapImpl::hash(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey((v10 + 304), a2, a3, v11);
  if (Key == -1)
  {
    v14 = *(v10 + 312);
  }

  else
  {
    v14 = Key;
  }

  v15 = (*(v10 + 304) + 8 * v14);
  v16 = *a1;
  if (v15 == (*(*a1 + 304) + 8 * *(*a1 + 312)))
  {
    __p = *(v16 + 184);
    v17 = llvm::StringMapImpl::hash(a2, a3, v13);
    v15 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v16 + 304), a2, a3, v17, &__p);
    v18 = *a1;
    v19 = operator new(0x68uLL);
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v19 + 6;
    v20 = *(v18 + 176);
    *v19 = a2;
    v19[1] = a3;
    v19[5] = 0x300000000;
    v19[12] = 0;
    __p = v19;
    v21 = *(v18 + 184);
    p_p = &__p;
    if (v21 >= *(v18 + 188))
    {
      if (v20 <= &__p && v20 + 8 * v21 > &__p)
      {
        v30 = &__p - v20;
        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(v18 + 176, v21 + 1);
        v20 = *(v18 + 176);
        p_p = &v30[v20];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(v18 + 176, v21 + 1);
        v20 = *(v18 + 176);
        p_p = &__p;
      }
    }

    v23 = *(v18 + 184);
    v24 = *p_p;
    *p_p = 0;
    *(v20 + 8 * v23) = v24;
    *(v18 + 184) = v23 + 1;
    v25 = __p;
    __p = 0;
    if (v25)
    {
      v26 = v25[4];
      if (v26 != v25 + 6)
      {
        free(v26);
      }

      operator delete(v25);
    }

    v16 = *a1;
  }

  v27 = *(*(v16 + 176) + 8 * *(*v15 + 8));
  v28 = *(v27 + 40);
  if (v28 >= *(v27 + 44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 32, v27 + 48, v28 + 1, 16);
    LODWORD(v28) = *(v27 + 40);
  }

  v29 = (*(v27 + 32) + 16 * v28);
  *v29 = a4;
  v29[1] = a5;
  ++*(v27 + 40);
}

void mlir::AsmParserState::addTypeAliasUses(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = llvm::StringMapImpl::hash(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey((v10 + 328), a2, a3, v11);
  if (Key == -1)
  {
    v13 = *(v10 + 336);
  }

  else
  {
    v13 = Key;
  }

  v14 = *(*(*a1 + 240) + 8 * *(*(*(v10 + 328) + 8 * v13) + 8));
  v15 = *(v14 + 40);
  if (v15 >= *(v14 + 44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 32, v14 + 48, v15 + 1, 16);
    LODWORD(v15) = *(v14 + 40);
  }

  v16 = (*(v14 + 32) + 16 * v15);
  *v16 = a4;
  v16[1] = a5;
  ++*(v14 + 40);
}

void mlir::AsmParserState::refineDefinition(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 352);
  v6 = *(*a1 + 368);
  v7 = HIDWORD(a2);
  v8 = 8 * a2;
  if (v6)
  {
    v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v10 = (v6 - 1) & (-348639895 * ((v9 >> 47) ^ v9));
    v11 = (v5 + 72 * v10);
    v12 = *v11;
    if (*v11 == a2)
    {
      goto LABEL_8;
    }

    v13 = 1;
    while (v12 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v6 - 1);
      v11 = (v5 + 72 * v10);
      v12 = *v11;
      if (*v11 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v11 = (v5 + 72 * v6);
LABEL_8:
  mlir::AsmParserState::addUses(a1, a3, v11[1], *(v11 + 4));
  v15 = *a1;
  v16 = v15[46].i32[0];
  if (v16)
  {
    v17 = v15[44];
    v18 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v19 = v16 - 1;
    v20 = v19 & (-348639895 * ((v18 >> 47) ^ v18));
    v21 = (*&v17 + 72 * v20);
    v22 = *v21;
    if (*v21 == a2)
    {
LABEL_10:
      v23 = v21[1];
      if (v23 != v21 + 3)
      {
        free(v23);
      }

      *v21 = -8192;
      v15[45] = vadd_s32(v15[45], 0x1FFFFFFFFLL);
    }

    else
    {
      v24 = 1;
      while (v22 != -4096)
      {
        v25 = v20 + v24++;
        v20 = v25 & v19;
        v21 = (*&v17 + 72 * v20);
        v22 = *v21;
        if (*v21 == a2)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

void std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *(a2 + 4);
    v4 = *a2;
    if (v3)
    {
      v5 = v4 + 24 * v3;
      do
      {
        if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v6 = *(v4 + 8);
          v7 = *(v4 + 16);
          if (v7)
          {
            v8 = v7 << 6;
            v9 = &v6[v8 - 64];
            v10 = -v8;
            do
            {
              if (v9 + 2 != *v9)
              {
                free(*v9);
              }

              v9 -= 8;
              v10 += 64;
            }

            while (v10);
            v6 = *(v4 + 8);
          }

          if (v6 != (v4 + 24))
          {
            free(v6);
          }
        }

        v4 += 24;
      }

      while (v4 != v5);
      v4 = *a2;
      v11 = 24 * *(a2 + 4);
    }

    else
    {
      v11 = 0;
    }

    llvm::deallocate_buffer(v4, v11);
  }
}

void sub_1DFA84064()
{

  operator delete(v0);
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>,false>::growAndEmplaceBack<mlir::Operation *&,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v35 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v35);
  v8 = v7;
  v9 = *(a1 + 8);
  v10 = 16 * v9;
  v11 = (v7 + 16 * v9);
  v12 = *a2;
  v13 = *a3;
  *a3 = 0;
  *v11 = v12;
  v11[1] = v13;
  v14 = *a1;
  if (!v9)
  {
    goto LABEL_10;
  }

  v15 = (v9 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v15 < 0xB || ((v14 + 8) < v8 + v10 ? (v25 = v8 + 8 >= &v14[v10]) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), v14 < v8 + v10 - 8 ? (v27 = v8 >= &v14[v10 - 8]) : (v27 = 1), !v27 || (v26 & 1) != 0))
  {
    v16 = v8;
    v17 = *a1;
    do
    {
LABEL_4:
      v18 = *v17;
      *(v17 + 1) = 0;
      *v16++ = v18;
      v17 += 16;
    }

    while (v17 != &v14[v10]);
    goto LABEL_5;
  }

  v28 = v15 + 1;
  v29 = (v15 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v16 = (v8 + 16 * v29);
  v17 = &v14[16 * v29];
  v30 = v29;
  v31 = v8;
  v32 = *a1;
  do
  {
    v33 = *v32;
    v34 = *(v32 + 1);
    *(v32 + 1) = 0;
    *(v32 + 3) = 0;
    *v31 = v33;
    v31[1] = v34;
    v31 += 2;
    v32 += 32;
    v30 -= 2;
  }

  while (v30);
  if (v28 != v29)
  {
    goto LABEL_4;
  }

LABEL_5:
  v19 = &v14[v10 - 8];
  v20 = -v10;
  do
  {
    v21 = *v19;
    *v19 = 0;
    if (v21)
    {
      std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](v19, v21);
    }

    v19 -= 2;
    v20 += 16;
  }

  while (v20);
  v14 = *a1;
LABEL_10:
  v22 = v35;
  if (v14 != v6)
  {
    free(v14);
  }

  *a1 = v8;
  v23 = *(a1 + 8) + 1;
  *(a1 + 8) = v23;
  *(a1 + 12) = v22;
  return v8 + 16 * v23 - 16;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::growAndEmplaceBack<mlir::OperationName const&>(uint64_t a1, const mlir::OperationName *a2)
{
  v29 = 0;
  v4 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v29);
  v6 = v5;
  mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef((v5 + 8 * *(a1 + 8)), a2);
  v7 = *a1;
  v8 = *a1;
  v9 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = (v9 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v11 = v9;
  if (v10 < 0xB)
  {
    v12 = v6;
LABEL_12:
    v21 = &v7[v9];
    do
    {
      v22 = *v8;
      *v8++ = 0;
      *v12++ = v22;
    }

    while (v8 != v21);
    goto LABEL_14;
  }

  v13 = v7 >= v6 + v11 * 8 || v6 >= &v7[v11];
  v12 = v6;
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v10 + 1;
  v15 = v14 & 0x3FFFFFFFFFFFFFFCLL;
  v12 = (v6 + v15 * 8);
  v8 = &v7[v15];
  v16 = (v7 + 2);
  v17 = (v6 + 16);
  v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = *(v16 - 1);
    v20 = *v16;
    *(v16 - 1) = 0uLL;
    *v16 = 0uLL;
    *(v17 - 1) = v19;
    *v17 = v20;
    v16 += 2;
    v17 += 2;
    v18 -= 4;
  }

  while (v18);
  if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v23 = -(v11 * 8);
  v24 = &v7[v11 - 1];
  do
  {
    v25 = *v24;
    *v24 = 0;
    if (v25)
    {
      std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](v24, v25);
    }

    --v24;
    v23 += 8;
  }

  while (v23);
  v8 = *a1;
LABEL_19:
  v26 = v29;
  if (v8 != v4)
  {
    free(v8);
  }

  *a1 = v6;
  v27 = *(a1 + 8) + 1;
  *(a1 + 8) = v27;
  *(a1 + 12) = v26;
  return v6 + 8 * v27 - 8;
}

mlir::AsmParserState::Impl::PartialOpDef *mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef(uint64_t **this, const mlir::OperationName *a2)
{
  *this = 0;
  {
    v6 = a2;
    mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef();
    a2 = v6;
  }

  if ((*(**a2 + 32))(*a2, mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v3 = operator new(0x18uLL);
    *v3 = 0;
    v3[1] = 0;
    *(v3 + 4) = 0;
    v4 = *this;
    *this = v3;
    if (v4)
    {
      std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](this, v4);
    }
  }

  return this;
}

const char *llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SymbolTable<Empty>]";
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

uint64_t llvm::SmallVectorTemplateBase<mlir::AsmParserState::OperationDefinition::ResultGroupDefinition,false>::growAndEmplaceBack<unsigned int const&,llvm::SMRange>(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  v22 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 88, &v22);
  v8 = v7;
  v9 = v7 + 88 * *(a1 + 8);
  *v9 = *a2;
  *(v9 + 8) = *a3;
  *(v9 + 24) = v9 + 40;
  *(v9 + 32) = 0x300000000;
  v10 = *a1;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = &v10[88 * v11];
    v13 = (v8 + 24);
    v14 = v10 + 24;
    do
    {
      v15 = v14 - 24;
      *(v13 - 6) = *(v14 - 6);
      *(v13 - 1) = *(v14 - 1);
      *v13 = v13 + 2;
      v13[1] = 0x300000000;
      if (*(v14 + 2))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v13, v14);
      }

      v13 += 11;
      v14 += 88;
    }

    while (v15 + 88 != v12);
    v10 = *a1;
    v16 = *(a1 + 8);
    if (v16)
    {
      v17 = &v10[88 * v16 - 64];
      v18 = -88 * v16;
      do
      {
        if (v17 + 2 != *v17)
        {
          free(*v17);
        }

        v17 -= 11;
        v18 += 88;
      }

      while (v18);
      v10 = *a1;
    }
  }

  v19 = v22;
  if (v10 != v6)
  {
    free(v10);
  }

  *a1 = v8;
  v20 = *(a1 + 8) + 1;
  *(a1 + 8) = v20;
  *(a1 + 12) = v19;
  return v8 + 88 * v20 - 88;
}

uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::OperationDefinition>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmParserState::OperationDefinition>>(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  v4 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v12);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = *a2;
  *a2 = 0;
  *(v5 + 8 * v7) = v8;
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::OperationDefinition>,false>::moveElementsForGrow(a1, v5);
  v9 = v12;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v6;
  v10 = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  *(a1 + 12) = v9;
  return v6 + 8 * v10 - 8;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::OperationDefinition>,false>::moveElementsForGrow(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return;
  }

  v3 = *a1;
  v4 = (*a1 + 8 * v2);
  v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 < 0xB || ((v6 = v2, v3 < a2 + v6 * 8) ? (v7 = &v3[v6] > a2) : (v7 = 0), v7))
  {
    v10 = a2;
    v11 = *a1;
    do
    {
LABEL_12:
      v17 = *v11;
      *v11++ = 0;
      *v10++ = v17;
    }

    while (v11 != v4);
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 8 * v9);
  v11 = &v3[v9];
  v12 = (v3 + 2);
  v13 = (a2 + 16);
  v14 = v9;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    *(v12 - 1) = 0uLL;
    *v12 = 0uLL;
    *(v13 - 1) = v15;
    *v13 = v16;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 = *--v4;
    v18 = v19;
    *v4 = 0;
    if (v19)
    {
      v20 = *(v18 + 144);
      if (v20 != (v18 + 160))
      {
        free(v20);
      }

      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      if (v22)
      {
        v23 = &v21[88 * v22 - 64];
        v24 = -88 * v22;
        do
        {
          if (v23 + 2 != *v23)
          {
            free(*v23);
          }

          v23 -= 11;
          v24 += 88;
        }

        while (v24);
        v21 = *(v18 + 40);
      }

      if (v21 != (v18 + 56))
      {
        free(v21);
      }

      operator delete(v18);
    }
  }

  while (v4 != v3);
}

uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmParserState::BlockDefinition>>(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  v4 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v12);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = *a2;
  *a2 = 0;
  *(v5 + 8 * v7) = v8;
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,false>::moveElementsForGrow(a1, v5);
  v9 = v12;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v6;
  v10 = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  *(a1 + 12) = v9;
  return v6 + 8 * v10 - 8;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,false>::moveElementsForGrow(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return;
  }

  v3 = *a1;
  v4 = (*a1 + 8 * v2);
  v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 < 0xB || ((v6 = v2, v3 < a2 + v6 * 8) ? (v7 = &v3[v6] > a2) : (v7 = 0), v7))
  {
    v10 = a2;
    v11 = *a1;
    do
    {
LABEL_12:
      v17 = *v11;
      *v11++ = 0;
      *v10++ = v17;
    }

    while (v11 != v4);
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 8 * v9);
  v11 = &v3[v9];
  v12 = (v3 + 2);
  v13 = (a2 + 16);
  v14 = v9;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    *(v12 - 1) = 0uLL;
    *v12 = 0uLL;
    *(v13 - 1) = v15;
    *v13 = v16;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 = *--v4;
    v18 = v19;
    *v4 = 0;
    if (v19)
    {
      v20 = *(v18 + 88);
      v21 = *(v18 + 96);
      if (v21)
      {
        v22 = &v20[80 * v21 - 64];
        v23 = -80 * v21;
        do
        {
          if (v22 + 2 != *v22)
          {
            free(*v22);
          }

          v22 -= 10;
          v23 += 80;
        }

        while (v23);
        v20 = *(v18 + 88);
      }

      if (v20 != (v18 + 104))
      {
        free(v20);
      }

      v24 = *(v18 + 24);
      if (v24 != (v18 + 40))
      {
        free(v24);
      }

      operator delete(v18);
    }
  }

  while (v4 != v3);
}

void llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::grow(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 80, &v16);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[80 * v7];
    v9 = (v5 + 16);
    v10 = v6 + 16;
    do
    {
      *(v9 - 1) = *(v10 - 1);
      *v9 = v9 + 2;
      v9[1] = 0x300000000;
      if (*(v10 + 2))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v9, v10);
      }

      v11 = v10 - 16;
      v9 += 10;
      v10 += 80;
    }

    while (v11 + 80 != v8);
    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = &v6[80 * v12 - 64];
      v14 = -80 * v12;
      do
      {
        if (v13 + 2 != *v13)
        {
          free(*v13);
        }

        v13 -= 10;
        v14 += 80;
      }

      while (v14);
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

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4, void *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[2] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v26);
  v5 = v4;
  v6 = *a1;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v10 = v8;
  if (v9 < 0xB)
  {
    v11 = v5;
LABEL_12:
    v20 = &v6[v8];
    do
    {
      v21 = *v7;
      *v7++ = 0;
      *v11++ = v21;
    }

    while (v7 != v20);
    goto LABEL_14;
  }

  v12 = v6 >= v5 + v10 * 8 || v5 >= &v6[v10];
  v11 = v5;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v9 + 1;
  v14 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  v11 = (v5 + v14 * 8);
  v7 = &v6[v14];
  v15 = (v6 + 2);
  v16 = (v5 + 16);
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    *(v15 - 1) = 0uLL;
    *v15 = 0uLL;
    *(v16 - 1) = v18;
    *v16 = v19;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v22 = v6 - 1;
  do
  {
    v23 = v22[v10];
    v22[v10] = 0;
    if (v23)
    {
      v24 = v23[4];
      if (v24 != v23 + 6)
      {
        free(v24);
      }

      operator delete(v23);
    }

    --v10;
  }

  while (v10 * 8);
  v7 = *a1;
LABEL_21:
  v25 = v26;
  if (v7 != v3)
  {
    free(v7);
  }

  *a1 = v5;
  *(a1 + 12) = v25;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 72 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 72 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 9 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 72 * v11 - 72;
    if (v12 < 0x48)
    {
      v13 = result;
LABEL_14:
      v17 = &result[9 * v11];
      do
      {
        *v13 = -4096;
        v13 += 9;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[9] = -4096;
      v15 += 18;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -4096;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[9] = -4096;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15);
        LODWORD(v15) = -348639895 * ((v16 >> 47) ^ v16);
        v17 = *(a1 + 16) - 1;
        v18 = v17 & v15;
        v19 = (*a1 + 72 * v18);
        v20 = *v19;
        if (v14 != *v19)
        {
          v22 = 0;
          v23 = 1;
          while (v20 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20 == -8192;
            }

            if (v24)
            {
              v22 = v19;
            }

            v25 = v18 + v23++;
            v18 = v25 & v17;
            v19 = (*a1 + 72 * (v25 & v17));
            v20 = *v19;
            if (v14 == *v19)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v19 = v22;
          }
        }

LABEL_14:
        *v19 = v14;
        v19[1] = (v19 + 3);
        v19[2] = 0x600000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v19 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v21 = v4[1];
        if (v21 != v4 + 3)
        {
          free(v21);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t llvm::SmallVectorImpl<llvm::SMLoc>::operator=(uint64_t result, const void **a2)
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
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 8 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 8 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 8);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 8 * v8), *a2 + 8 * v8, 8 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SMRange,true>::growAndEmplaceBack<llvm::SMRange>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    v7 = *a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 16);
    v2 = v7;
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a1 + 16 * v3) = v2;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 16 * v4 - 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 24 * v6);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 24 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    if (v12 < 0x18)
    {
      v13 = result;
LABEL_14:
      v17 = &result[3 * v11];
      do
      {
        *v13 = -4096;
        v13 += 3;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = &result[3 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[3] = -4096;
      v15 += 6;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 24 * v6 - 24;
    if (v8 < 0x18)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[3 * v6];
      do
      {
        *v9 = -4096;
        v9 += 3;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x18 + 1;
    v9 = &v7[3 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[3] = -4096;
      v11 += 6;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    while (1)
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_11:
      v4 += 3;
      if (v4 == a3)
      {
        return;
      }
    }

    v15 = *(a1 + 16) - 1;
    v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
    v17 = (*a1 + 24 * v16);
    v18 = *v17;
    if (v14 != *v17)
    {
      v24 = 0;
      v25 = 1;
      while (v18 != -4096)
      {
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = v18 == -8192;
        }

        if (v26)
        {
          v24 = v17;
        }

        v27 = v16 + v25++;
        v16 = v27 & v15;
        v17 = (*a1 + 24 * (v27 & v15));
        v18 = *v17;
        if (v14 == *v17)
        {
          goto LABEL_14;
        }
      }

      if (v24)
      {
        v17 = v24;
      }
    }

LABEL_14:
    *v17 = v14;
    v17[1] = v17 + 3;
    v17[2] = 0;
    if (*(v4 + 4))
    {
      llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::operator=((v17 + 1), (v4 + 1));
      v19 = *(v4 + 4);
      ++*(a1 + 8);
      v20 = v4[1];
      if (!v19)
      {
        goto LABEL_22;
      }

      v21 = v19 << 6;
      v22 = &v20[v21 - 64];
      v23 = -v21;
      do
      {
        if (v22 + 2 != *v22)
        {
          free(*v22);
        }

        v22 -= 8;
        v23 += 64;
      }

      while (v23);
    }

    else
    {
      ++*(a1 + 8);
    }

    v20 = v4[1];
LABEL_22:
    if (v20 != (v4 + 3))
    {
      free(v20);
    }

    goto LABEL_11;
  }
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::operator=(uint64_t a1, uint64_t a2)
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
        v8 = v7 << 6;
        v9 = &v6[v8 - 64];
        v10 = -v8;
        do
        {
          if (v9 + 2 != *v9)
          {
            free(*v9);
          }

          v9 -= 8;
          v10 += 64;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v11 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v4;
      *(a2 + 12) = 0;
LABEL_12:
      *v11 = 0;
      return a1;
    }

    v11 = (a2 + 8);
    v13 = *(a2 + 8);
    v14 = *(a1 + 8);
    if (v14 >= v13)
    {
      v17 = *a1;
      if (v13)
      {
        v18 = v13 << 6;
        do
        {
          llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v17, v5);
          v5 += 8;
          v17 += 64;
          v18 -= 64;
        }

        while (v18);
        v19 = *a1;
        v14 = *(a1 + 8);
      }

      else
      {
        v19 = *a1;
      }

      v32 = v19 + (v14 << 6);
      while (v32 != v17)
      {
        v34 = *(v32 - 64);
        v32 -= 64;
        v33 = v34;
        if ((v32 + 16) != v34)
        {
          free(v33);
        }
      }

      *(a1 + 8) = v13;
      v35 = *(a2 + 8);
      if (v35)
      {
        v36 = v35 << 6;
        v37 = (v36 + *a2 - 64);
        v38 = -v36;
        do
        {
          if (v37 + 2 != *v37)
          {
            free(*v37);
          }

          v37 -= 8;
          v38 += 64;
        }

        while (v38);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v13)
    {
      if (!v14)
      {
        v14 = 0;
        v22 = *a2;
        v23 = *(a2 + 8);
        if (*(a2 + 8))
        {
LABEL_31:
          v24 = *a1;
          v25 = v14 << 6;
          v26 = v23 << 6;
          do
          {
            v27 = (v24 + v25);
            *v27 = v24 + v25 + 16;
            v27[1] = 0x300000000;
            if (*(v22 + v25 + 8))
            {
              llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v27, (v22 + v25));
            }

            v24 += 64;
            v26 -= 64;
            v22 += 8;
          }

          while (v25 != v26);
          v22 = *a2;
        }

LABEL_36:
        *(a1 + 8) = v13;
        v28 = *v11;
        if (v28)
        {
          v29 = v28 << 6;
          v30 = (v22 + v29 - 64);
          v31 = -v29;
          do
          {
            if (v30 + 2 != *v30)
            {
              free(*v30);
            }

            v30 -= 8;
            v31 += 64;
          }

          while (v31);
        }

        goto LABEL_12;
      }

      v20 = *a1;
      v21 = v14 << 6;
      do
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v20, v5);
        v5 += 8;
        v20 += 64;
        v21 -= 64;
      }

      while (v21);
    }

    else
    {
      if (v14)
      {
        v15 = ((v14 << 6) + *a1 - 64);
        v16 = -64 * v14;
        do
        {
          if (v15 + 2 != *v15)
          {
            free(*v15);
          }

          v15 -= 8;
          v16 += 64;
        }

        while (v16);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::grow(a1, v13);
      v14 = 0;
    }

    v22 = *a2;
    v23 = *(a2 + 8);
    if (v14 != v23)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 << 6;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x300000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v9, v6);
      }

      v9 += 8;
      v6 += 64;
      v8 -= 64;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = v10 << 6;
      v12 = (v11 + v6 - 64);
      v13 = -v11;
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
      v6 = *a1;
    }
  }

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v14;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::growAndEmplaceBack<llvm::SMRange const*,llvm::SMRange const*>(uint64_t a1, const void **a2, const void **a3)
{
  v25 = 0;
  v6 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v25);
  v8 = v7;
  v9 = &v7[8 * *(a1 + 8)];
  v10 = *a2;
  v11 = *a3;
  *v9 = v9 + 2;
  v9[1] = 0x300000000;
  v12 = (v11 - v10) >> 4;
  if (v12 < 4)
  {
    v13 = 0;
    if (v10 == v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 2), v12, 16);
  v13 = *(v9 + 2);
  if (v10 != v11)
  {
LABEL_5:
    memcpy((*v9 + 16 * v13), v10, v11 - v10);
    v13 = *(v9 + 2);
  }

LABEL_6:
  *(v9 + 2) = v13 + ((v11 - v10) >> 4);
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = v15 << 6;
    v17 = v8;
    do
    {
      *v17 = v17 + 2;
      v17[1] = 0x300000000;
      if (*(v14 + 8))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v17, v14);
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

uint64_t *mlir::detail::Parser::parseAttribute(mlir::StringAttr ****a1, uint64_t *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = (v3 + 7);
  switch(*(v3 + 14))
  {
    case 2:
      if (mlir::Token::isCodeCompletionFor(v4, 5))
      {
        return mlir::detail::Parser::parseExtendedAttr(a1, a2);
      }

      else
      {
        return mlir::detail::Parser::codeCompleteAttribute(a1);
      }

    case 4:
      *&v92 = v93;
      *(&v92 + 1) = 0x300000000;
      if (v3[19])
      {
        LocRange = mlir::Token::getLocRange(v4);
        v15 = (v92 + 16 * DWORD2(v92));
        *v15 = LocRange;
        v15[1] = v16;
        ++DWORD2(v92);
        v3 = a1[1];
      }

      mlir::Token::getSymbolReference((v3 + 7), &v79);
      v17 = a1[1];
      *(v17 + 5) = *(v17 + 7);
      v17[12] = v17[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v96);
      v18 = a1[1];
      *(v18 + 7) = v96;
      v18[9] = v97;
      v19 = a1[1];
      v20 = (v19 + 7);
      if (*(v19 + 14) == 15)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          Loc = mlir::Token::getLoc(v20);
          v25 = a1[1];
          v25[12] = v25[9];
          *(v25 + 5) = *(v25 + 7);
          mlir::Lexer::lexToken((a1[1] + 1), &v96);
          v26 = a1[1];
          *(v26 + 7) = v96;
          v26[9] = v97;
          v19 = a1[1];
          v27 = v19 + 7;
          v28 = *(v19 + 14);
          if (v28 != 15)
          {
            if (v28 >= 2)
            {
              v19[5] = Loc;
              *(v19 + 5) = *v27;
              v19[12] = v19[9];
              mlir::Lexer::lexToken((a1[1] + 1), &v96);
              v65 = a1[1];
              *(v65 + 7) = v96;
              v65[9] = v97;
              v19 = a1[1];
            }

            goto LABEL_100;
          }

          *(v19 + 5) = *v27;
          v19[12] = v19[9];
          mlir::Lexer::lexToken((a1[1] + 1), &v96);
          v29 = a1[1];
          *(v29 + 7) = v96;
          v29[9] = v97;
          v30 = mlir::Token::getLoc((a1[1] + 7));
          v31 = a1[1];
          if (*(v31 + 14) != 4)
          {
            *&v96 = "expected nested symbol reference identifier";
            LOWORD(v99) = 259;
            mlir::detail::Parser::emitError(a1, v30, &v96, v82);
            if (v82[0])
            {
              mlir::InFlightDiagnostic::report(v82);
            }

            if (v90 == 1)
            {
              if (v89 != &v90)
              {
                free(v89);
              }

              v70 = v87;
              if (v87)
              {
                v71 = v88;
                v72 = v87;
                if (v88 != v87)
                {
                  do
                  {
                    v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
                  }

                  while (v71 != v70);
                  v72 = v87;
                }

                v88 = v70;
                operator delete(v72);
              }

              v73 = v85;
              if (v85)
              {
                v74 = v86;
                v75 = v85;
                if (v86 != v85)
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
                  v75 = v85;
                }

                v86 = v73;
                operator delete(v75);
              }

              if (v83 != &v84)
              {
                free(v83);
              }
            }

            result = 0;
            goto LABEL_129;
          }

          if (v31[19])
          {
            v32 = mlir::Token::getLocRange((v31 + 7));
            v34 = DWORD2(v92);
            if (DWORD2(v92) >= HIDWORD(v92))
            {
              v48 = v32;
              v49 = v33;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v93, DWORD2(v92) + 1, 16);
              v33 = v49;
              v32 = v48;
              v34 = DWORD2(v92);
            }

            v35 = (v92 + 16 * v34);
            *v35 = v32;
            v35[1] = v33;
            ++DWORD2(v92);
            v31 = a1[1];
          }

          mlir::Token::getSymbolReference((v31 + 7), &__p);
          v36 = a1[1];
          *(v36 + 5) = *(v36 + 7);
          v36[12] = v36[9];
          mlir::Lexer::lexToken((a1[1] + 1), &v96);
          v37 = a1[1];
          *(v37 + 7) = v96;
          v37[9] = v97;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          v40 = mlir::SymbolRefAttr::get(**a1[1], p_p, size);
          if (v22 >= v23)
          {
            v41 = v22 - v21;
            v42 = (v22 - v21) >> 3;
            v43 = v42 + 1;
            if ((v42 + 1) >> 61)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            if ((v23 - v21) >> 2 > v43)
            {
              v43 = (v23 - v21) >> 2;
            }

            if ((v23 - v21) >= 0x7FFFFFFFFFFFFFF8)
            {
              v44 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v43;
            }

            if (v44)
            {
              if (v44 >> 61)
              {
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v45 = v40;
              v46 = operator new(8 * v44);
              v40 = v45;
            }

            else
            {
              v46 = 0;
            }

            v47 = &v46[8 * v42];
            v23 = &v46[8 * v44];
            *v47 = v40;
            v22 = v47 + 1;
            memcpy(v46, v21, v41);
            if (v21)
            {
              operator delete(v21);
            }

            v21 = v46;
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            *v22++ = v40;
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_26;
            }
          }

          operator delete(__p.__r_.__value_.__l.__data_);
LABEL_26:
          v19 = a1[1];
          v20 = (v19 + 7);
          if (*(v19 + 14) != 15)
          {
            goto LABEL_100;
          }
        }
      }

      v22 = 0;
      v21 = 0;
LABEL_100:
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v79;
      }

      else
      {
        v66 = v79.__r_.__value_.__r.__words[0];
      }

      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = SHIBYTE(v79.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v67 = v79.__r_.__value_.__l.__size_;
      }

      result = mlir::SymbolRefAttr::get(**v19, v66, v67, v21, (v22 - v21) >> 3);
      v68 = a1[1][19];
      if (v68)
      {
        v69 = result;
        mlir::AsmParserState::addUses(v68, result, v92, DWORD2(v92));
        result = v69;
      }

LABEL_129:
      v61 = result;
      if (v21)
      {
        operator delete(v21);
        result = v61;
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
        result = v61;
      }

      v60 = v92;
      if (v92 != v93)
      {
        goto LABEL_134;
      }

      return result;
    case 5:
      return mlir::detail::Parser::parseExtendedAttr(a1, a2);
    case 9:
      return mlir::detail::Parser::parseFloatAttr(a1, a2, 0);
    case 0xA:
      return mlir::detail::Parser::parseDecOrHexAttr(a1, a2, 0);
    case 0xB:
      mlir::Token::getStringValue(v4, &v79);
      v11 = a1[1];
      *(v11 + 5) = *(v11 + 7);
      v11[12] = v11[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v12 = a2;
      v13 = a1[1];
      *(v13 + 7) = v92;
      v13[9] = v93[0];
      if (a2)
      {
        goto LABEL_19;
      }

      v62 = a1[1];
      if (*(v62 + 14) == 15)
      {
        *(v62 + 5) = *(v62 + 7);
        v62[12] = v62[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v92);
        v63 = a1[1];
        *(v63 + 7) = v92;
        v63[9] = v93[0];
        result = mlir::detail::Parser::parseType(a1);
        v12 = result;
        if (result)
        {
LABEL_19:
          v94 = 260;
          *&v92 = &v79;
          result = mlir::StringAttr::get(&v92, v12);
        }
      }

      else
      {
        v64 = **v62;
        LOWORD(v99) = 260;
        *&v96 = &v79;
        result = mlir::StringAttr::get(v64, &v96);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        v61 = result;
        operator delete(v79.__r_.__value_.__l.__data_);
        return v61;
      }

      return result;
    case 0x14:
      *&v92 = v93;
      *(&v92 + 1) = 0x400000000;
      v95 = 4;
      *&v96 = 1;
      *(&v96 + 1) = -4096;
      v97 = -4096;
      v98 = -4096;
      v99 = -4096;
      v79.__r_.__value_.__r.__words[0] = a1;
      v79.__r_.__value_.__l.__size_ = &v96;
      v79.__r_.__value_.__r.__words[2] = &v92;
      v50 = mlir::detail::Parser::parseCommaSeparatedList(a1, 4, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>, &v79, " in attribute dictionary", 24);
      if ((v96 & 1) == 0)
      {
        llvm::deallocate_buffer(*(&v96 + 1), (8 * v97));
      }

      if (v50)
      {
        result = mlir::NamedAttrList::getDictionary(&v92, **a1[1]);
      }

      else
      {
        result = 0;
      }

      v60 = v92;
      if (v92 != v93)
      {
        goto LABEL_88;
      }

      return result;
    case 0x16:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v51 = a1[1];
      *(v51 + 7) = v92;
      v51[9] = v93[0];
      *&v92 = v93;
      *(&v92 + 1) = 0x400000000;
      *&v96 = &v92;
      *(&v96 + 1) = a1;
      if (mlir::detail::Parser::parseCommaSeparatedListUntil(a1, 29, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttribute(mlir::Type)::$_0>, &v96, 1))
      {
        result = mlir::Builder::getArrayAttr(a1, v92, DWORD2(v92));
      }

      else
      {
        result = 0;
      }

      v60 = v92;
      if (v92 != v93)
      {
LABEL_88:
        v61 = result;
LABEL_134:
        free(v60);
        return v61;
      }

      return result;
    case 0x18:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v55 = a1[1];
      *(v55 + 7) = v92;
      v55[9] = v93[0];
      v56 = *(a1[1] + 14);
      if (v56 == 9)
      {
        return mlir::detail::Parser::parseFloatAttr(a1, a2, 1);
      }

      if (v56 != 10)
      {
        *&v92 = "expected constant integer or floating point value";
        v94 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, &v92, v91);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v91);
        return 0;
      }

      return mlir::detail::Parser::parseDecOrHexAttr(a1, a2, 1);
    case 0x22:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v53 = a1[1];
      *(v53 + 7) = v92;
      v53[9] = v93[0];
      v79.__r_.__value_.__r.__words[0] = 0;
      *&v92 = "expected '<' in affine map";
      v94 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 23, &v92) & 1) == 0)
      {
        return 0;
      }

      if (!mlir::detail::Parser::parseAffineMapReference(a1, &v79))
      {
        return 0;
      }

      *&v96 = "expected '>' in affine map";
      LOWORD(v99) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v96) & 1) == 0)
      {
        return 0;
      }

      return mlir::AffineMapAttr::get(v79.__r_.__value_.__r.__words[0]);
    case 0x23:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v8 = a1[1];
      *(v8 + 7) = v92;
      v8[9] = v93[0];
      v79.__r_.__value_.__r.__words[0] = 0;
      *&v92 = "expected '<' in integer set";
      v94 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 23, &v92) & 1) == 0)
      {
        return 0;
      }

      if (!mlir::detail::Parser::parseIntegerSetReference(a1, &v79))
      {
        return 0;
      }

      *&v96 = "expected '>' in integer set";
      LOWORD(v99) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v96) & 1) == 0)
      {
        return 0;
      }

      return mlir::IntegerSetAttr::get(v79.__r_.__value_.__r.__words[0]);
    case 0x24:
      return mlir::detail::Parser::parseDenseArrayAttr(a1);
    case 0x29:
      return mlir::detail::Parser::parseDenseElementsAttr(a1, a2);
    case 0x2A:
      return mlir::detail::Parser::parseDenseResourceElementsAttr(a1, a2);
    case 0x2B:
      return mlir::detail::Parser::parseDistinctAttr(a1, a2);
    case 0x3B:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v52 = a1[1];
      *(v52 + 7) = v92;
      v52[9] = v93[0];
      return mlir::Builder::getBoolAttr(a1, 0);
    case 0x40:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v57 = a1[1];
      *(v57 + 7) = v92;
      v57[9] = v93[0];
      v79.__r_.__value_.__r.__words[0] = 0;
      *&v92 = "expected '(' in inline location";
      v94 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 21, &v92) & 1) == 0)
      {
        return 0;
      }

      if ((mlir::detail::Parser::parseLocationInstance(a1, &v79) & 1) == 0)
      {
        return 0;
      }

      *&v96 = "expected ')' in inline location";
      LOWORD(v99) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 28, &v96) & 1) == 0)
      {
        return 0;
      }

      return v79.__r_.__value_.__r.__words[0];
    case 0x48:
      return mlir::detail::Parser::parseSparseElementsAttr(a1, a2);
    case 0x4A:
      return mlir::detail::Parser::parseStridedLayoutAttr(a1);
    case 0x4F:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v9 = a1[1];
      *(v9 + 7) = v92;
      v9[9] = v93[0];
      return mlir::Builder::getBoolAttr(a1, 1);
    case 0x52:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v92);
      v58 = a1[1];
      *(v58 + 7) = v92;
      v58[9] = v93[0];
      return mlir::Builder::getUnitAttr(a1, v59);
    default:
      *&v96 = 0;
      v7 = mlir::detail::Parser::parseOptionalType(a1, &v96);
      if ((v7 & 0x100) != 0)
      {
        if (v7)
        {
          return mlir::TypeAttr::get(v96);
        }
      }

      else
      {
        *&v92 = "expected attribute value";
        v94 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, &v92, &v80);
        if (v80)
        {
          mlir::InFlightDiagnostic::report(&v80);
        }

        if (v81[192] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v81);
        }
      }

      return 0;
  }
}

uint64_t mlir::detail::Parser::parseDenseElementsAttr(void *a1, uint64_t *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((a1[1] + 56));
  v5 = a1[1];
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((a1[1] + 8), v21);
  v6 = a1[1];
  *(v6 + 56) = *v21;
  *(v6 + 72) = v22;
  v21[0] = "expected '<' after 'dense'";
  v23[4] = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, v21) & 1) == 0)
  {
    return 0;
  }

  v21[0] = a1;
  v21[1] = v23;
  v22 = 0x400000000;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  __p = 0;
  LOBYTE(v27) = 0;
  v7 = a1[1];
  v8 = (v7 + 56);
  v9 = *(v7 + 56);
  switch(v9)
  {
    case 11:
      v12 = *v8;
      v28 = *(v7 + 72);
      v27 = v12;
      v29 = 1;
      *(v7 + 80) = *v8;
      *(v7 + 96) = *(v7 + 72);
      mlir::Lexer::lexToken((a1[1] + 8), &v18);
      v13 = a1[1];
      *(v13 + 56) = v18;
      *(v13 + 72) = v19;
      break;
    case 22:
      {
        goto LABEL_17;
      }

      break;
    case 19:
      *(v7 + 80) = *v8;
      *(v7 + 96) = *(v7 + 72);
      mlir::Lexer::lexToken((a1[1] + 8), &v18);
      v10 = a1[1];
      *(v10 + 56) = v18;
      *(v10 + 72) = v19;
      goto LABEL_12;
    default:
      {
        goto LABEL_17;
      }

      break;
  }

  *&v18 = "expected '>'";
  v20 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 19, &v18) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a2)
  {
    v14 = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_17:
    Attr = 0;
    v16 = __p;
    if (!__p)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Loc = mlir::Token::getLoc((a1[1] + 56));
  v14 = mlir::detail::Parser::parseElementsLiteralType(a1, 0);
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_14:
  v16 = __p;
  if (__p)
  {
LABEL_18:
    v25 = v16;
    operator delete(v16);
  }

LABEL_19:
  if (v21[1] != v23)
  {
    free(v21[1]);
  }

  return Attr;
}

uint64_t *mlir::detail::Parser::parseDenseResourceElementsAttr(uint64_t ****a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((a1[1] + 7));
  v5 = a1[1];
  v5[12] = v5[9];
  *(v5 + 5) = *(v5 + 7);
  mlir::Lexer::lexToken((a1[1] + 1), &v24);
  v6 = a1[1];
  *(v6 + 7) = v24;
  v6[9] = v25;
  *&v24 = "expected '<' after 'dense_resource'";
  v26 = 259;
  if (mlir::detail::Parser::parseToken(a1, 23, &v24))
  {
    LoadedDialect = mlir::MLIRContext::getLoadedDialect(**a1[1], "builtin", 7);
    mlir::detail::Parser::parseResourceHandle(a1, LoadedDialect, &v21);
    if (v23 == 1)
    {
      *&v24 = "expected '>'";
      v26 = 259;
      if (mlir::detail::Parser::parseToken(a1, 19, &v24))
      {
        v8 = *(&v21 + 1);
        {
          if (v8 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
          {
LABEL_6:
            v26 = 259;
            mlir::detail::Parser::emitError(a1, Loc, &v24, v29);
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

              v9 = v34;
              if (v34)
              {
                v10 = v35;
                v11 = v34;
                if (v35 != v34)
                {
                  do
                  {
                    v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
                  }

                  while (v10 != v9);
                  v11 = v34;
                }

                v35 = v9;
                operator delete(v11);
              }

              v12 = v32;
              if (v32)
              {
                v13 = v33;
                v14 = v32;
                if (v33 != v32)
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
                  v14 = v32;
                }

                v33 = v12;
                operator delete(v14);
              }

              if (v30 != &v31)
              {
                free(v30);
              }
            }

            return 0;
          }
        }

        else
        {
          v20 = v8;
          mlir::detail::Parser::parseDenseResourceElementsAttr();
          if (v20 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
          {
            goto LABEL_6;
          }
        }

        if (a2)
        {
          v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
          if (v17)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }

        Loc = mlir::Token::getLoc((a1[1] + 7));
        *&v24 = "expected ':'";
        v26 = 259;
        if (mlir::detail::Parser::parseToken(a1, 15, &v24))
        {
          result = mlir::detail::Parser::parseType(a1);
          if (!result)
          {
            return result;
          }

          v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(result);
          if (v17)
          {
LABEL_29:
            v24 = v21;
            v25 = v22;
            return mlir::DenseResourceElementsAttr::get(v17, v18, &v24);
          }

LABEL_33:
          v26 = 259;
          mlir::detail::Parser::emitError(a1, Loc, &v24, &v27);
          if (v27)
          {
            mlir::InFlightDiagnostic::report(&v27);
          }

          if (v28[192] == 1)
          {
            mlir::Diagnostic::~Diagnostic(v28);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::parseDenseArrayAttr(mlir::detail::Parser *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), v38);
  v3 = *(a1 + 1);
  *(v3 + 56) = *v38;
  *(v3 + 72) = *&v38[16];
  *v38 = "expected '<' after 'array'";
  WORD4(v39) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, v38) & 1) == 0)
  {
    return 0;
  }

  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v34 = mlir::detail::Parser::parseType(a1);
  if (!v34)
  {
    *v38 = "expected an integer or floating point type";
    WORD4(v39) = 259;
    mlir::detail::Parser::emitError(a1, Loc, v38, v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 != 1)
    {
      return 0;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v5 = v52;
    if (v52)
    {
      v6 = v53;
      v7 = v52;
      if (v53 != v52)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = v52;
      }

      v53 = v5;
      operator delete(v7);
    }

    v8 = v50;
    if (v50)
    {
      v9 = v51;
      v10 = v50;
      if (v51 != v50)
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
        v10 = v50;
      }

      v51 = v8;
      operator delete(v10);
    }

    v29 = v48;
    if (v48 == &v49)
    {
      return 0;
    }

LABEL_52:
    free(v29);
    return 0;
  }

  if (!mlir::Type::isIntOrIndexOrFloat(&v34))
  {
    v32[0] = "expected integer or float type, got: ";
    v33 = 259;
    mlir::detail::Parser::emitError(a1, Loc, v32, v38);
    if (*v38)
    {
      v13 = v35;
      mlir::DiagnosticArgument::DiagnosticArgument(v35, v34);
      v14 = v39;
      if (DWORD2(v39) >= HIDWORD(v39))
      {
        if (v39 <= v35 && v39 + 24 * DWORD2(v39) > v35)
        {
          v31 = &v35[-v39];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v40, DWORD2(v39) + 1, 24);
          v14 = v39;
          v13 = &v31[v39];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v40, DWORD2(v39) + 1, 24);
          v13 = v35;
          v14 = v39;
        }
      }

      v15 = v14 + 24 * DWORD2(v39);
      v16 = *v13;
      *(v15 + 16) = *(v13 + 2);
      *v15 = v16;
      ++DWORD2(v39);
      if (*v38)
      {
        mlir::InFlightDiagnostic::report(v38);
      }
    }

    if (v46 != 1)
    {
      return 0;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v44;
      v19 = __p;
      if (v44 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v44 = v17;
      operator delete(v19);
    }

    v20 = v41;
    if (v41)
    {
      v21 = v42;
      v22 = v41;
      if (v42 != v41)
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
        v22 = v41;
      }

      v42 = v20;
      operator delete(v22);
    }

    v29 = v39;
    if (v39 == v40)
    {
      return 0;
    }

    goto LABEL_52;
  }

  if (!mlir::Type::isInteger(&v34, 1) && (mlir::Type::getIntOrFloatBitWidth(&v34) & 7) != 0)
  {
    *v38 = "element type bitwidth must be a multiple of 8";
    WORD4(v39) = 259;
    mlir::detail::Parser::emitError(a1, Loc, v38, &v36);
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
    }

    if (v37[192] == 1)
    {
      mlir::Diagnostic::~Diagnostic(v37);
    }

    return 0;
  }

  v25 = *(a1 + 1);
  if (*(v25 + 56) == 19)
  {
    *(v25 + 80) = *(v25 + 56);
    *(v25 + 96) = *(v25 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), v38);
    v26 = *(a1 + 1);
    *(v26 + 56) = *v38;
    *(v26 + 72) = *&v38[16];
    return mlir::DenseArrayAttr::get(v34, 0, 0, 0);
  }

  *v38 = "expected ':' after dense array type";
  WORD4(v39) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, v38) & 1) == 0)
  {
    return 0;
  }

  *v38 = v34;
  *&v38[8] = 0u;
  v39 = 0u;
  v32[0] = v38;
  v32[1] = a1;
  if (mlir::Type::isIntOrIndex(&v34))
  {
    v28 = llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_0>;
  }

  else
  {
    v28 = llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_1>;
  }

  if (mlir::detail::Parser::parseCommaSeparatedList(a1, 0, v28, v32, 0, 0) & 1) != 0 && (v32[0] = "expected '>' to close an array attribute", v33 = 259, (mlir::detail::Parser::parseToken(a1, 19, v32)))
  {
    result = mlir::DenseArrayAttr::get(*v38, DWORD2(v39), *&v38[8], *&v38[16] - *&v38[8]);
  }

  else
  {
    result = 0;
  }

  if (*&v38[8])
  {
    *&v38[16] = *&v38[8];
    v30 = result;
    operator delete(*&v38[8]);
    return v30;
  }

  return result;
}