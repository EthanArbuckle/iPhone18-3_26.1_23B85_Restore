void ZinIrTransposeUnitInfo::~ZinIrTransposeUnitInfo(ZinIrTransposeUnitInfo *this)
{
  *this = &unk_1F5B33D50;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5AEDE70;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    operator delete(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5B33D50;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5AEDE70;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    operator delete(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

uint64_t mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
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

void ZinIrPadUnitInfo::~ZinIrPadUnitInfo(ZinIrPadUnitInfo *this)
{
  *this = &unk_1F5B33D70;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_1F5B33D70;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  operator delete(v3);
}

void ZinIrMatrixMultUnitInfo::~ZinIrMatrixMultUnitInfo(ZinIrMatrixMultUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrFlattenUnitInfo::~ZinIrFlattenUnitInfo(ZinIrFlattenUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrUnflattenUnitInfo::~ZinIrUnflattenUnitInfo(ZinIrUnflattenUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrReshapeUnitInfo::~ZinIrReshapeUnitInfo(ZinIrReshapeUnitInfo *this)
{
  *this = &unk_1F5B33DF8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5AEDE70;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    operator delete(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5B33DF8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5AEDE70;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    operator delete(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrConcatUnitInfo::~ZinIrConcatUnitInfo(ZinIrConcatUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrInstanceNormUnitInfo::~ZinIrInstanceNormUnitInfo(ZinIrInstanceNormUnitInfo *this)
{
  *this = &unk_1F5B33E70;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F5AEDE70;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5B33E70;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F5AEDE70;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrLayerNormUnitInfo::~ZinIrLayerNormUnitInfo(ZinIrLayerNormUnitInfo *this)
{
  *this = &unk_1F5B33E70;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F5AEDE70;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5B33E70;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F5AEDE70;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrBatchNormUnitInfo::~ZinIrBatchNormUnitInfo(ZinIrBatchNormUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrCropResizeUnitInfo::~ZinIrCropResizeUnitInfo(ZinIrCropResizeUnitInfo *this)
{
  *this = &unk_1F5B33F00;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_1F5B33F00;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  operator delete(v3);
}

void ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(ZinIrGatherUnitInfo *this)
{
  *this = &unk_1F5B33F28;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_1F5B33F28;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  operator delete(v3);
}

void ZinIrArgMinMaxUnitInfo::~ZinIrArgMinMaxUnitInfo(ZinIrArgMinMaxUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrGlobalArgMinMaxUnitInfo::~ZinIrGlobalArgMinMaxUnitInfo(ZinIrGlobalArgMinMaxUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrTileUnitInfo::~ZinIrTileUnitInfo(ZinIrTileUnitInfo *this)
{
  *this = &unk_1F5B33F90;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F5AEDE70;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5B33F90;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_1F5AEDE70;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void *std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = *a2;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = *a2;
      if (v8 <= v7)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      result = *v10;
      if (*v10)
      {
        do
        {
          v12 = result[1];
          if (v12 == v7)
          {
            if (*(result + 4) == v7)
            {
              return result;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  result = operator new(0x18uLL);
  *result = 0;
  result[1] = v7;
  *(result + 4) = **a4;
  *(result + 5) = 0;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      prime = v17;
    }

    else
    {
      prime = v16;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      v19 = result;
      prime = std::__next_prime(prime);
      result = v19;
      v8 = *(a1 + 8);
    }

    if (prime > v8)
    {
      goto LABEL_30;
    }

    if (prime < v8)
    {
      v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v8 < 3 || (v22 = vcnt_s8(v8), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
      {
        v24 = result;
        v25 = prime;
        v26 = std::__next_prime(v21);
        prime = v25;
        v21 = v26;
        result = v24;
      }

      else
      {
        v23 = 1 << -__clz(v21 - 1);
        if (v21 >= 2)
        {
          v21 = v23;
        }
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime < v8)
      {
LABEL_30:
        v20 = result;
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
        result = v20;
      }
    }

    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v8 <= v7)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v27 = *a1;
  v28 = *(*a1 + 8 * v4);
  if (v28)
  {
    *result = *v28;
LABEL_55:
    *v28 = result;
    goto LABEL_56;
  }

  *result = *(a1 + 16);
  *(a1 + 16) = result;
  *(v27 + 8 * v4) = a1 + 16;
  if (*result)
  {
    v29 = *(*result + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v29 >= v8)
      {
        v29 %= v8;
      }
    }

    else
    {
      v29 &= v8 - 1;
    }

    v28 = (*a1 + 8 * v29);
    goto LABEL_55;
  }

LABEL_56:
  ++*(a1 + 24);
  return result;
}

void ZinIrDeQuantUnitInfo::~ZinIrDeQuantUnitInfo(ZinIrDeQuantUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrQuantUnitInfo::~ZinIrQuantUnitInfo(ZinIrQuantUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrResampleUnitInfo::~ZinIrResampleUnitInfo(ZinIrResampleUnitInfo *this)
{
  *this = &unk_1F5B33FF0;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_1F5B33FF0;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  operator delete(v3);
}

void ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(ZinIrRingBufferUnitInfo *this)
{
  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);

  operator delete(v1);
}

{
  *this = &unk_1F5B34018;
  v2 = *(this + 17);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    do
    {
      v10 = *v5;
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      operator delete(v5);
      v5 = v10;
    }

    while (v10);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  *this = &unk_1F5AEDE70;
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(this + 6);
    v9 = *(this + 5);
    if (v8 != v7)
    {
      do
      {
        v11 = *(v8 - 1);
        v8 -= 3;
        if (v11 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(this + 5);
    }

    *(this + 6) = v7;
    operator delete(v9);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void mlir::getValues<unsigned char>(uint64_t a1, void *a2)
{
  v14 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, a1, NumElements);
  for (; v13 != v11; ++v13)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &__p);
    if (v9 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v6 = *p_p;
    v7 = a2[1];
    if (v7 >= a2[2])
    {
      llvm::SmallVectorTemplateBase<unsigned char,true>::push_back(a2, v6);
    }

    else
    {
      *(*a2 + v7) = v6;
      ++a2[1];
    }

    if (v9 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
}

void *llvm::SmallVectorTemplateBase<unsigned char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    v3 = a2;
    v4 = result;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v2 + 1, 1);
    a2 = v3;
    result = v4;
    v2 = v4[1];
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

void *std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned long>>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if (*(result + 4) == v6)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  result = operator new(0x28uLL);
  *result = 0;
  result[1] = v6;
  *(result + 4) = *a3;
  result[3] = *(a3 + 8);
  *(result + 32) = 0;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      prime = v16;
    }

    else
    {
      prime = v15;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      v18 = result;
      prime = std::__next_prime(prime);
      result = v18;
      v7 = *(a1 + 8);
    }

    if (prime > v7)
    {
      goto LABEL_30;
    }

    if (prime < v7)
    {
      v20 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v7 < 3 || (v21 = vcnt_s8(v7), v21.i16[0] = vaddlv_u8(v21), v21.u32[0] > 1uLL))
      {
        v23 = result;
        v24 = prime;
        v25 = std::__next_prime(v20);
        prime = v24;
        v20 = v25;
        result = v23;
      }

      else
      {
        v22 = 1 << -__clz(v20 - 1);
        if (v20 >= 2)
        {
          v20 = v22;
        }
      }

      if (prime <= v20)
      {
        prime = v20;
      }

      if (prime < v7)
      {
LABEL_30:
        v19 = result;
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
        result = v19;
      }
    }

    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v26 = *a1;
  v27 = *(*a1 + 8 * v3);
  if (v27)
  {
    *result = *v27;
LABEL_55:
    *v27 = result;
    goto LABEL_56;
  }

  *result = *(a1 + 16);
  *(a1 + 16) = result;
  *(v26 + 8 * v3) = a1 + 16;
  if (*result)
  {
    v28 = *(*result + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v28 >= v7)
      {
        v28 %= v7;
      }
    }

    else
    {
      v28 &= v7 - 1;
    }

    v27 = (*a1 + 8 * v28);
    goto LABEL_55;
  }

LABEL_56:
  ++*(a1 + 24);
  return result;
}

char *std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,std::string>>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = *(i + 1);
        if (v11 == v6)
        {
          if (*(i + 4) == v6)
          {
            return i;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v12 = operator new(0x38uLL);
  i = v12;
  *v12 = 0;
  *(v12 + 1) = v6;
  *(v12 + 4) = *a3;
  v14 = *(a3 + 8);
  v13 = *(a3 + 16);
  *v31 = *(a3 + 24);
  *&v31[3] = *(a3 + 27);
  v15 = *(a3 + 31);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if (v15 < 0)
  {
    std::string::__init_copy_ctor_external(v12 + 1, v14, v13);
    i[48] = 0;
    operator delete(v14);
  }

  else
  {
    *(v12 + 3) = v14;
    *(v12 + 4) = v13;
    *(v12 + 10) = *v31;
    *(v12 + 43) = *&v31[3];
    v12[47] = v15;
    v12[48] = 0;
  }

  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v7 || (v17 * v7) < v16)
  {
    v18 = 1;
    if (v7 >= 3)
    {
      v18 = (v7 & (v7 - 1)) != 0;
    }

    v19 = v18 | (2 * v7);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      prime = v20;
    }

    else
    {
      prime = v19;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v22 = *(a1 + 8);
    if (prime > *&v22)
    {
      goto LABEL_33;
    }

    if (prime < *&v22)
    {
      v23 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (*&v22 < 3uLL || (v24 = vcnt_s8(v22), v24.i16[0] = vaddlv_u8(v24), v24.u32[0] > 1uLL))
      {
        v26 = prime;
        v23 = std::__next_prime(v23);
        prime = v26;
      }

      else
      {
        v25 = 1 << -__clz(v23 - 1);
        if (v23 >= 2)
        {
          v23 = v25;
        }
      }

      if (prime <= v23)
      {
        prime = v23;
      }

      if (prime < *&v22)
      {
LABEL_33:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v27 = *a1;
  v28 = *(*a1 + 8 * v3);
  if (v28)
  {
    *i = *v28;
LABEL_58:
    *v28 = i;
    goto LABEL_59;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v27 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v29 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v29 >= v7)
      {
        v29 %= v7;
      }
    }

    else
    {
      v29 &= v7 - 1;
    }

    v28 = (*a1 + 8 * v29);
    goto LABEL_58;
  }

LABEL_59:
  ++*(a1 + 24);
  return i;
}

void ZinIrRingBufferReaderUnitInfo::~ZinIrRingBufferReaderUnitInfo(ZinIrRingBufferReaderUnitInfo *this)
{
  *this = &unk_1F5B34038;
  v2 = *(this + 22);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);
}

{
  *this = &unk_1F5B34038;
  v2 = *(this + 22);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);

  operator delete(v5);
}

void *std::__hash_table<std::__hash_value_type<ZinIrDimension,long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,long>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned char>>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if (*(result + 4) == v6)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  result = operator new(0x20uLL);
  *result = 0;
  result[1] = v6;
  *(result + 4) = *a3;
  result[3] = *(a3 + 4);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      prime = v16;
    }

    else
    {
      prime = v15;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      v18 = result;
      prime = std::__next_prime(prime);
      result = v18;
      v7 = *(a1 + 8);
    }

    if (prime > v7)
    {
      goto LABEL_30;
    }

    if (prime < v7)
    {
      v20 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v7 < 3 || (v21 = vcnt_s8(v7), v21.i16[0] = vaddlv_u8(v21), v21.u32[0] > 1uLL))
      {
        v23 = result;
        v24 = prime;
        v25 = std::__next_prime(v20);
        prime = v24;
        v20 = v25;
        result = v23;
      }

      else
      {
        v22 = 1 << -__clz(v20 - 1);
        if (v20 >= 2)
        {
          v20 = v22;
        }
      }

      if (prime <= v20)
      {
        prime = v20;
      }

      if (prime < v7)
      {
LABEL_30:
        v19 = result;
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
        result = v19;
      }
    }

    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v26 = *a1;
  v27 = *(*a1 + 8 * v3);
  if (v27)
  {
    *result = *v27;
LABEL_55:
    *v27 = result;
    goto LABEL_56;
  }

  *result = *(a1 + 16);
  *(a1 + 16) = result;
  *(v26 + 8 * v3) = a1 + 16;
  if (*result)
  {
    v28 = *(*result + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v28 >= v7)
      {
        v28 %= v7;
      }
    }

    else
    {
      v28 &= v7 - 1;
    }

    v27 = (*a1 + 8 * v28);
    goto LABEL_55;
  }

LABEL_56:
  ++*(a1 + 24);
  return result;
}

void ZinIrSDPAUnitInfo::~ZinIrSDPAUnitInfo(ZinIrSDPAUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A11Legacy::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A18::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A17::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A16::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A12::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A13::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A14::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A15::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::CastInfo<mlir::anec::ArgMinMaxModeAttr,mlir::Attribute const,void>::isPossible(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v5 = a1;
  Value = mlir::AffineMapAttr::getValue(&v5);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v4 = a1;
    if (mlir::IntegerAttr::getInt(&v4))
    {
      v3 = a1;
      return mlir::IntegerAttr::getInt(&v3) == 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *mlir::RewritePatternSet::add(void *a1, void *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v7 = a1[1];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = a2;
      v14 = operator new(8 * v12);
      a2 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[8 * v9];
    v16 = *a2;
    *a2 = 0;
    *v15 = v16;
    v6 = v15 + 8;
    memcpy(v14, v7, v8);
    a1[1] = v14;
    a1[2] = v6;
    a1[3] = &v14[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 8;
  }

  a1[2] = v6;
  return a1;
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseAdd>(llvm::LogicalResult (*)(mlir::anec::ElementwiseAdd,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseAdd>(llvm::LogicalResult (*)(mlir::anec::ElementwiseAdd,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
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

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMax>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMax,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMax>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMax,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
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

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMin>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMin,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMin>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMin,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
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

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMult>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMult,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMult>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMult,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
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

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseSub>(llvm::LogicalResult (*)(mlir::anec::ElementwiseSub,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseSub>(llvm::LogicalResult (*)(mlir::anec::ElementwiseSub,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
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

void *mlir::RewritePatternSet::add<mlir::anec::Reshape>(llvm::LogicalResult (*)(mlir::anec::Reshape,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::anec::Reshape>(llvm::LogicalResult (*)(mlir::anec::Reshape,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
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

void *mlir::RewritePatternSet::add<mlir::anec::Transpose>(llvm::LogicalResult (*)(mlir::anec::Transpose,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::anec::Transpose>(llvm::LogicalResult (*)(mlir::anec::Transpose,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *__p)
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

BOOL OUTLINED_FUNCTION_7_17(void *a1)
{
}

BOOL OUTLINED_FUNCTION_9_17(void *a1)
{
}

uint64_t OUTLINED_FUNCTION_10_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return mlir::ElementsAttr::isSplat(&a9);
}

uint64_t OUTLINED_FUNCTION_13_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = v12;
  a12 = a1;

  return mlir::CallableOpInterface::getArgAttrsAttr(&a11);
}

void OUTLINED_FUNCTION_55_7()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v1 + 40, v0 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_88_7(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a9 = v10;
  a10 = a1;

  return mlir::CallableOpInterface::getArgAttrsAttr(&a9);
}

uint64_t OUTLINED_FUNCTION_89_7()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

BOOL OUTLINED_FUNCTION_92_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = v11;

  return mlir::Type::isF16(&a11);
}

BOOL OUTLINED_FUNCTION_93_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = v11;

  return mlir::Type::isF16(&a11);
}

void OUTLINED_FUNCTION_94_4(uint64_t a1)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v2 + 40, v1 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_112_6()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

void mlir::anec::computeOpKeyString(mlir::anec *this@<X0>, std::string *a2@<X8>)
{
  if (!*(this + 47) || (v28.var0 = "name", v28.var1 = 4, InherentAttr = mlir::Operation::getInherentAttr(this, v28), (v6 & 1) == 0))
  {
    v29.var0 = "name";
    v29.var1 = 4;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v29);
  }

  if (InherentAttr)
  {
    v26[0] = InherentAttr;
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v9 = AttrData;
    v10 = v8;
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v8 | 7) + 1;
      }

      v20 = operator new(v19);
      a2->__r_.__value_.__l.__size_ = v10;
      a2->__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
      a2->__r_.__value_.__r.__words[0] = v20;
      a2 = v20;
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = v8;
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    memmove(a2, v9, v10);
LABEL_19:
    a2->__r_.__value_.__s.__data_[v10] = 0;
    return;
  }

  v26[0] = *(*(this + 6) + 8);
  v23 = 1283;
  v22[2] = mlir::OpaqueAttr::getAttrData(v26);
  v22[3] = v11;
  v24[0] = v22;
  v24[2] = "_";
  v25 = 770;
  v12 = mlir::anec::ANECIRNetwork::name_counter_++;
  v21 = v12;
  v22[0] = "__";
  v26[0] = v24;
  v26[2] = &v21;
  v27 = 2818;
  llvm::Twine::str(v26, a2);
  Context = mlir::Attribute::getContext((this + 24));
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v15 = a2->__r_.__value_.__r.__words[0];
  if (size >= 0)
  {
    v15 = a2;
  }

  if (size < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v25 = 261;
  v24[0] = v15;
  v24[1] = size;
  v16 = mlir::StringAttr::get(Context, v24);
  v17 = mlir::Attribute::getContext((this + 24));
  v27 = 261;
  v26[0] = "name";
  v26[1] = 4;
  v18 = mlir::StringAttr::get(v17, v26);
  mlir::Operation::setAttr(this, v18, v16);
}

uint64_t mlir::anec::getANECIRDataType(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::isSignedInteger(&v5, 4))
  {
    v1 = 0;
    v2 = 0x100000000;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 8))
  {
    v2 = 0x100000000;
    v1 = 1;
  }

  else if (mlir::Type::isSignedInteger(&v5, 8) || mlir::Type::isSignlessInteger(&v5, 8))
  {
    v2 = 0x100000000;
    v1 = 2;
  }

  else if (mlir::Type::isF16(&v5))
  {
    v2 = 0x100000000;
    v1 = 3;
  }

  else if (mlir::Type::isF32(&v5))
  {
    v2 = 0x100000000;
    v1 = 4;
  }

  else if (mlir::Type::isSignedInteger(&v5, 16) || mlir::Type::isSignlessInteger(&v5, 16))
  {
    v2 = 0x100000000;
    v1 = 5;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 16))
  {
    v2 = 0x100000000;
    v1 = 6;
  }

  else if (mlir::Type::isSignedInteger(&v5, 32))
  {
    v2 = 0x100000000;
    v1 = 7;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 32))
  {
    v2 = 0x100000000;
    v1 = 8;
  }

  else
  {
    v2 = 0x100000000;
    if (mlir::Type::isSignedInteger(&v5, 64))
    {
      v1 = 9;
    }

    else
    {
      isUnsignedInteger = mlir::Type::isUnsignedInteger(&v5, 64);
      if (!isUnsignedInteger)
      {
        v2 = 0;
      }

      v1 = 10;
      if (!isUnsignedInteger)
      {
        v1 = 0;
      }
    }
  }

  return v1 | v2;
}

{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  if (v2)
  {
    v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  }

  else
  {
    v1 = 0;
  }

  v5[0] = v1;
  v5[1] = v2;
  isSplat = mlir::ElementsAttr::isSplat(v5);
  return mlir::anec::getANECIRDataType(isSplat) & 0xFFFFFFFFFFLL;
}

void mlir::anec::ANECIRInput::Serialize(mlir::anec::ANECIRInput *this@<X0>, uint64_t **a2@<X8>)
{
  mlir::anec::ANECDictionary::Create(a2);
  v4 = *a2;
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(this + 1), *(this + 2));
  }

  else
  {
    v53 = *(this + 8);
  }

  mlir::anec::ANECDictionary::PListEntry(&v53, &v54);
  mlir::anec::ANECDictionary::Add(v4, @"InputName", &v54);
  v5 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      v6 = *(this + 71);
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v53.__r_.__value_.__l.__data_);
  v6 = *(this + 71);
  if ((v6 & 0x8000000000000000) == 0)
  {
LABEL_8:
    if (!v6)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (!*(this + 7))
  {
    goto LABEL_27;
  }

LABEL_13:
  v7 = *a2;
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(this + 9), *(this + 10));
  }

  else
  {
    v52 = *(this + 3);
  }

  mlir::anec::ANECDictionary::PListEntry(&v52, &v54);
  mlir::anec::ANECDictionary::Add(v7, @"Name", &v54);
  v8 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_19:
    operator delete(v52.__r_.__value_.__l.__data_);
  }

LABEL_20:
  v9 = *a2;
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(this + 6), *(this + 7));
  }

  else
  {
    v51 = *(this + 2);
  }

  mlir::anec::ANECDictionary::PListEntry(&v51, &v54);
  mlir::anec::ANECDictionary::Add(v9, @"OperationName", &v54);
  v10 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_26:
    operator delete(v51.__r_.__value_.__l.__data_);
  }

LABEL_27:
  v11 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 18), &v54);
  mlir::anec::ANECDictionary::Add(v11, @"BatchSize", &v54);
  v12 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 13), &v54);
  mlir::anec::ANECDictionary::Add(v13, @"InputInterleave", &v54);
  v14 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *a2;
  v16 = *(this + 28);
  if (*(this + 29) != 2)
  {
    mlir::anec::ANECDictionary::PListEntry(v47, &v54);
    mlir::anec::ANECDictionary::Add(v15, @"InputType", &v54);
    v19 = v55;
    if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      if ((v48 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    v18 = v47;
    goto LABEL_42;
  }

  mlir::anec::ANECDictionary::PListEntry(v49, &v54);
  mlir::anec::ANECDictionary::Add(v15, @"InputParamType", &v54);
  v17 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  if (v50 < 0)
  {
LABEL_37:
    v18 = v49;
LABEL_42:
    operator delete(*v18);
  }

LABEL_43:
  v20 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 16), &v54);
  mlir::anec::ANECDictionary::Add(v20, @"InputHeight", &v54);
  v21 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 15), &v54);
  mlir::anec::ANECDictionary::Add(v22, @"InputWidth", &v54);
  v23 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 17), &v54);
  mlir::anec::ANECDictionary::Add(v24, @"InputChannels", &v54);
  v25 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 20), &v54);
  mlir::anec::ANECDictionary::Add(v26, @"InputRowStride", &v54);
  v27 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 21), &v54);
  mlir::anec::ANECDictionary::Add(v28, @"InputPlaneStride", &v54);
  v29 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *(this + 19);
  if (v30)
  {
    v31 = *a2;
    mlir::anec::ANECDictionary::PListEntry(v30, &v54);
    mlir::anec::ANECDictionary::Add(v31, @"InputDepth", &v54);
    v32 = v55;
    if (v55)
    {
      if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
      }
    }
  }

  v33 = *(this + 22);
  if (v33)
  {
    v34 = *a2;
    mlir::anec::ANECDictionary::PListEntry(v33, &v54);
    mlir::anec::ANECDictionary::Add(v34, @"InputDepthStride", &v54);
    v35 = v55;
    if (v55)
    {
      if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
      }
    }
  }

  v36 = *(this + 23);
  if (v36)
  {
    v37 = *a2;
    mlir::anec::ANECDictionary::PListEntry(v36, &v54);
    mlir::anec::ANECDictionary::Add(v37, @"InputBatchStride", &v54);
    v38 = v55;
    if (v55)
    {
      if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }
    }
  }

  if (*(this + 25) != *(this + 26))
  {
    mlir::anec::ANECDictionary::Create(v45);
    mlir::anec::ANECDictionary::Add<unsigned short,mlir::anec::ANECIRInput::Serialize(void)::$_0>(*v45, @"Mesh", *(this + 25), (*(this + 26) - *(this + 25)) >> 1);
    mlir::anec::ANECDictionary::Add<unsigned short,mlir::anec::ANECIRInput::Serialize(void)::$_0>(*v45, @"MeshAxes", *(this + 28), (*(this + 29) - *(this + 28)) >> 1);
    mlir::anec::ANECDictionary::Add<unsigned short,mlir::anec::ANECIRInput::Serialize(void)::$_0>(*v45, @"TensorAxes", *(this + 31), (*(this + 32) - *(this + 31)) >> 1);
    v39 = *a2;
    v43 = *v45;
    v44 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mlir::anec::ANECDictionary::PListEntry(&v43, &v54);
    mlir::anec::ANECDictionary::Add(v39, @"ShardingMap", &v54);
    v40 = v55;
    if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    v41 = v44;
    if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

    v42 = v46;
    if (v46)
    {
      if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v42->__on_zero_shared)(v42);
        std::__shared_weak_count::__release_weak(v42);
      }
    }
  }
}

size_t anonymous namespace::stringify_to_cfstr@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        v3 = @"UInt8";
      }

      else
      {
        v3 = @"Int4";
      }
    }

    else if (a1 == 2)
    {
      v3 = @"Int8";
    }

    else if (a1 == 3)
    {
      v3 = @"Float16";
    }

    else
    {
      v3 = @"Float32";
    }
  }

  else if (a1 > 7)
  {
    if (a1 == 8)
    {
      v3 = @"UInt32";
    }

    else if (a1 == 9)
    {
      v3 = @"Int64";
    }

    else
    {
      v3 = @"UInt64";
    }
  }

  else if (a1 == 5)
  {
    v3 = @"Int16";
  }

  else if (a1 == 6)
  {
    v3 = @"UInt16";
  }

  else
  {
    v3 = @"Int32";
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (result | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = result;
    if (!result)
    {
      goto LABEL_31;
    }
  }

  result = memmove(a2, CStringPtr, v6);
LABEL_31:
  *(a2 + v6) = 0;
  return result;
}

void mlir::anec::ANECDictionary::Add<unsigned short,mlir::anec::ANECIRInput::Serialize(void)::$_0>(uint64_t *a1, CFStringRef theString, unsigned __int16 *a3, uint64_t a4)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v8 = strlen(CStringPtr);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_dst = operator new(v11);
    *(&__dst + 1) = v9;
    v19 = v11 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_10:
    memmove(p_dst, CStringPtr, v9);
    *(p_dst + v9) = 0;
    if (!a4)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  HIBYTE(v19) = v8;
  p_dst = &__dst;
  if (v8)
  {
    goto LABEL_10;
  }

  LOBYTE(__dst) = 0;
  if (!a4)
  {
    goto LABEL_26;
  }

LABEL_11:
  plist::PListArray::Create(&v22);
  v12 = 2 * a4;
  do
  {
    v13 = v22;
    mlir::anec::ANECDictionary::PListEntry(*a3, &v24);
    plist::PListArray::push_back(v13, &v24);
    v14 = *(&v24 + 1);
    if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    ++a3;
    v12 -= 2;
  }

  while (v12);
  v20 = v22;
  v21 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v20, &v24);
  mlir::anec::ANECDictionary::Add(a1, &__dst, &v24);
  v15 = *(&v24 + 1);
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v23;
  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_26:
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (SHIBYTE(v19) < 0)
  {
LABEL_27:
    operator delete(__dst);
  }
}

void mlir::anec::ANECIROutput::Serialize(mlir::anec::ANECIROutput *this@<X0>, uint64_t **a2@<X8>)
{
  mlir::anec::ANECDictionary::Create(a2);
  v4 = *a2;
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(this + 1), *(this + 2));
  }

  else
  {
    v32 = *(this + 8);
  }

  mlir::anec::ANECDictionary::PListEntry(&v32, &v33);
  mlir::anec::ANECDictionary::Add(v4, @"OutputName", &v33);
  v5 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      v6 = *(this + 71);
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  v6 = *(this + 71);
  if ((v6 & 0x8000000000000000) == 0)
  {
LABEL_8:
    v7 = *a2;
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    if (*(this + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(this + 14), *(this + 15));
    }

    else
    {
      v31 = *(this + 112);
    }

    mlir::anec::ANECDictionary::PListEntry(&v31, &v33);
    mlir::anec::ANECDictionary::Add(v7, @"Bottom", &v33);
    v12 = v34;
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v11 = &v31;
    goto LABEL_37;
  }

LABEL_13:
  v7 = *a2;
  if (!*(this + 7))
  {
    goto LABEL_14;
  }

LABEL_9:
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *(this + 9), *(this + 10));
  }

  else
  {
    v30 = *(this + 3);
  }

  mlir::anec::ANECDictionary::PListEntry(&v30, &v33);
  mlir::anec::ANECDictionary::Add(v7, @"Name", &v33);
  v8 = v34;
  if (!v34 || atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_20:
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_21:
  v9 = *a2;
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *(this + 6), *(this + 7));
  }

  else
  {
    v29 = *(this + 2);
  }

  mlir::anec::ANECDictionary::PListEntry(&v29, &v33);
  mlir::anec::ANECDictionary::Add(v9, @"OperationName", &v33);
  v10 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }
  }

  else if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_27:
    v11 = &v29;
LABEL_37:
    operator delete(v11->__r_.__value_.__l.__data_);
  }

LABEL_38:
  v13 = *a2;
  mlir::anec::ANECDictionary::PListEntry(__p, &v33);
  mlir::anec::ANECDictionary::Add(v13, @"OutputType", &v33);
  v14 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v28 < 0)
  {
LABEL_41:
    operator delete(__p[0]);
  }

LABEL_42:
  v15 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 18), &v33);
  mlir::anec::ANECDictionary::Add(v15, @"OutputRowStride", &v33);
  v16 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 19), &v33);
  mlir::anec::ANECDictionary::Add(v17, @"OutputPlaneStride", &v33);
  v18 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 13), &v33);
  mlir::anec::ANECDictionary::Add(v19, @"OutputInterleave", &v33);
  v20 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(this + 20);
  if (v21)
  {
    v22 = *a2;
    mlir::anec::ANECDictionary::PListEntry(v21, &v33);
    mlir::anec::ANECDictionary::Add(v22, @"OutputDepthStride", &v33);
    v23 = v34;
    if (v34)
    {
      if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }
    }
  }

  v24 = *(this + 21);
  if (v24)
  {
    v25 = *a2;
    mlir::anec::ANECDictionary::PListEntry(v24, &v33);
    mlir::anec::ANECDictionary::Add(v25, @"OutputBatchStride", &v33);
    v26 = v34;
    if (v34)
    {
      if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }
  }
}

void mlir::anec::ANECIRUnit::Serialize(mlir::anec::ANECIRUnit *this@<X0>, uint64_t **a2@<X8>)
{
  v4 = *(this + 5);
  if (v4)
  {

    mlir::anec::ANECDictionary::Create(v4, a2);
    return;
  }

  mlir::anec::ANECDictionary::Create(a2);
  v5 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 7), &v10);
  mlir::anec::ANECDictionary::Add(v5, @"Type", &v10);
  v6 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *a2;
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 1), *(this + 2));
  }

  else
  {
    __p = *(this + 8);
  }

  mlir::anec::ANECDictionary::PListEntry(&__p, &v10);
  mlir::anec::ANECDictionary::Add(v7, @"Name", &v10);
  v8 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  if (*(this + 48) == 1)
  {
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(uint64_t *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t), char a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    p_dst = operator new(v15);
    *(&__dst + 1) = v13;
    v17 = v15 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v17) = v12;
  p_dst = &__dst;
  if (v12)
  {
LABEL_9:
    memmove(p_dst, CStringPtr, v13);
  }

  *(p_dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(a1, &__dst, a3, a4, a5, a6);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }
}

void anonymous namespace::get_elem<std::pair<std::string,mlir::anec::ANECIRDataType>,0ul,anonymous namespace::identity_xform<std::string>>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(uint64_t *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t), char a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    p_dst = operator new(v15);
    *(&__dst + 1) = v13;
    v17 = v15 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v17) = v12;
  p_dst = &__dst;
  if (v12)
  {
LABEL_9:
    memmove(p_dst, CStringPtr, v13);
  }

  *(p_dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(a1, &__dst, a3, a4, a5, a6);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(uint64_t *a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), char a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    p_dst = operator new(v15);
    *(&__dst + 1) = v13;
    v17 = v15 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v17) = v12;
  p_dst = &__dst;
  if (v12)
  {
LABEL_9:
    memmove(p_dst, CStringPtr, v13);
  }

  *(p_dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(a1, &__dst, a3, a4, a5, a6);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }
}

void mlir::anec::ANECIRGOCUnit::Serialize(mlir::anec::ANECIRGOCUnit *this@<X0>, uint64_t **a2@<X8>)
{
  mlir::anec::ANECIRUnit::Serialize(this, a2);
  mlir::anec::ANECDictionary::Create(&v43);
  mlir::anec::ANECDictionary::Create(&v41);
  v4 = *(this + 44);
  if (v4 != 0x80000000)
  {
    v13 = v43;
    mlir::anec::ANECDictionary::PListEntry(v4, &v45);
    mlir::anec::ANECDictionary::Add(v13, @"BiasScalar", &v45);
    v14 = v46;
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    goto LABEL_16;
  }

  v5 = *(this + 25);
  if (!v5)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v6 = v41;
  mlir::anec::ANECDictionary::PListEntry(v5 / 2, &v45);
  mlir::anec::ANECDictionary::Add(v6, @"BiasCount", &v45);
  v7 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v41;
  mlir::anec::ANECDictionary::PListEntry(0, &v45);
  mlir::anec::ANECDictionary::Add(v8, @"BiasIndex", &v45);
  v9 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v41;
  mlir::anec::ANECDictionary::PListEntry(*(this + 23), &v45);
  mlir::anec::ANECDictionary::Add(v10, @"BiasOffset", &v45);
  v11 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = 1;
LABEL_17:
  v15 = *(this + 45);
  if (v15 != 0x80000000)
  {
    v23 = v43;
    mlir::anec::ANECDictionary::PListEntry(v15, &v45);
    mlir::anec::ANECDictionary::Add(v23, @"ScaleScalar", &v45);
    v24 = v46;
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

LABEL_31:
    if (!v12)
    {
      goto LABEL_40;
    }

    goto LABEL_32;
  }

  v16 = *(this + 26);
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = v41;
  mlir::anec::ANECDictionary::PListEntry(v16 / 2, &v45);
  mlir::anec::ANECDictionary::Add(v17, @"ScaleCount", &v45);
  v18 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = v41;
  mlir::anec::ANECDictionary::PListEntry(0, &v45);
  mlir::anec::ANECDictionary::Add(v19, @"ScaleIndex", &v45);
  v20 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v41;
  mlir::anec::ANECDictionary::PListEntry(*(this + 24), &v45);
  mlir::anec::ANECDictionary::Add(v21, @"ScaleOffset", &v45);
  v22 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_32:
  v25 = v43;
  v39 = v41;
  v40 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v39, &v45);
  mlir::anec::ANECDictionary::Add(v25, @"BiasScaleGroupData", &v45);
  v26 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_40:
  v28 = v43;
  mlir::anec::ANECDictionary::PListEntry(*(this + 216), &v45);
  mlir::anec::ANECDictionary::Add(v28, @"BiasShift", &v45);
  v29 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = v43;
  mlir::anec::ANECDictionary::PListEntry(*(this + 217), &v45);
  mlir::anec::ANECDictionary::Add(v30, @"ScaleShift", &v45);
  v31 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *a2;
  v37 = v43;
  v38 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v37, &v45);
  mlir::anec::ANECDictionary::Add(v32, @"Params", &v45);
  v33 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = v44;
  if (v44)
  {
    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }
  }
}

void mlir::anec::ANECIRConvPoolBase::addParams(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v9 = *a2;
    mlir::anec::ANECDictionary::PListEntry(a5, &v32);
    mlir::anec::ANECDictionary::Add(v9, @"KernelDepth", &v32);
    v10 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      if (!atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v11 = *a2;
  mlir::anec::ANECDictionary::PListEntry(a3, &v32);
  mlir::anec::ANECDictionary::Add(v11, @"KernelWidth", &v32);
  v12 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *a2;
  mlir::anec::ANECDictionary::PListEntry(a4, &v32);
  mlir::anec::ANECDictionary::Add(v13, @"KernelHeight", &v32);
  v14 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!*(a1 + 216))
    {
      goto LABEL_11;
    }
  }

  else if (!*(a1 + 216))
  {
LABEL_11:
    if (!*(a1 + 224) && !*(a1 + 200) && !*(a1 + 208) && !*(a1 + 232) && !*(a1 + 240))
    {
      goto LABEL_39;
    }
  }

  v15 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(a1 + 200), &v32);
  mlir::anec::ANECDictionary::Add(v15, @"PadTop", &v32);
  v16 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(a1 + 208), &v32);
  mlir::anec::ANECDictionary::Add(v17, @"PadBot", &v32);
  v18 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(a1 + 216), &v32);
  mlir::anec::ANECDictionary::Add(v19, @"PadLeft", &v32);
  v20 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(a1 + 224), &v32);
  mlir::anec::ANECDictionary::Add(v21, @"PadRight", &v32);
  v22 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(a1 + 232), &v32);
  mlir::anec::ANECDictionary::Add(v23, @"PadFront", &v32);
  v24 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(a1 + 240), &v32);
  mlir::anec::ANECDictionary::Add(v25, @"PadBack", &v32);
  v26 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *a2;
  mlir::anec::ANECDictionary::PListEntry(@"Zero", &v32);
  mlir::anec::ANECDictionary::Add(v27, @"PaddingMode", &v32);
  v28 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_39:
  v29 = *(a1 + 192);
  v30 = *a2;
  v32 = *(a1 + 176);
  if (v29)
  {
    v33 = v29;
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }
}

void mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(uint64_t *a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), char a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    p_dst = operator new(v15);
    *(&__dst + 1) = v13;
    v17 = v15 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v17) = v12;
  p_dst = &__dst;
  if (v12)
  {
LABEL_9:
    memmove(p_dst, CStringPtr, v13);
  }

  *(p_dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(a1, &__dst, a3, a4, a5, a6);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }
}

size_t mlir::anec::ANECIRNeuron::ActivationToAneIRType@<X0>(int a1@<W0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = @"ClampedReLU";
      break;
    case 2:
      v3 = @"Cos";
      break;
    case 3:
      v3 = @"Degamma";
      break;
    case 4:
      v3 = @"Dirac";
      break;
    case 5:
      v3 = @"ELU";
      break;
    case 6:
      v3 = @"Erf";
      break;
    case 7:
      v3 = @"Exp2";
      break;
    case 8:
      v3 = @"Floor";
      break;
    case 9:
      v3 = @"GELU";
      break;
    case 10:
      v3 = @"SigmoidHighPrecision";
      break;
    case 11:
      v3 = @"Inv";
      break;
    case 12:
      v3 = @"LeakyReLU";
      break;
    case 13:
      v3 = @"Log2";
      break;
    case 14:
      v3 = @"ReLUN";
      break;
    case 15:
      v3 = @"ReLU";
      break;
    case 16:
      v3 = @"RoundNearest";
      break;
    case 17:
      v3 = @"Rsqrt";
      break;
    case 18:
      v3 = @"Sigmoid";
      break;
    case 19:
      v3 = @"Sign";
      break;
    case 20:
      v3 = @"Sin";
      break;
    case 21:
      v3 = @"Sqr";
      break;
    case 22:
      v3 = @"Sqrt";
      break;
    case 23:
      v3 = @"Swish";
      break;
    case 24:
      v3 = @"Tanh";
      break;
    case 25:
      v3 = @"Trunc";
      break;
    default:
      v3 = @"Ceil";
      break;
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (result | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = result;
    if (!result)
    {
      goto LABEL_37;
    }
  }

  result = memmove(a2, CStringPtr, v6);
LABEL_37:
  *(a2 + v6) = 0;
  return result;
}

void mlir::anec::ANECIRNeuron::Serialize(mlir::anec::ANECIRNeuron *this@<X0>, uint64_t **a2@<X8>)
{
  mlir::anec::ANECIRUnit::Serialize(this, a2);
  mlir::anec::ANECDictionary::Create(&v23);
  v4 = *(this + 44);
  if (v4 > 11)
  {
    if (v4 > 13)
    {
      if (v4 != 14)
      {
        if (v4 != 17)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v9 = v23;
      mlir::anec::ANECDictionary::PListEntry(*(this + 92), &v25);
      v10 = @"ReluMax";
    }

    else
    {
      if (v4 != 12)
      {
        goto LABEL_11;
      }

      v9 = v23;
      mlir::anec::ANECDictionary::PListEntry(*(this + 90), &v25);
      v10 = @"ReluOffset";
    }

    mlir::anec::ANECDictionary::Add(v9, v10, &v25);
    v11 = v26;
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v5 = v23;
    mlir::anec::ANECDictionary::PListEntry(*(this + 91), &v25);
    v6 = @"ReluSlope";
    goto LABEL_23;
  }

  if (v4 == 1)
  {
    v7 = v23;
    mlir::anec::ANECDictionary::PListEntry(*(this + 93), &v25);
    mlir::anec::ANECDictionary::Add(v7, @"ReluMin", &v25);
    v8 = v26;
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = v23;
    mlir::anec::ANECDictionary::PListEntry(*(this + 92), &v25);
    v6 = @"ReluMax";
    goto LABEL_23;
  }

  if (v4 == 5)
  {
    v5 = v23;
    mlir::anec::ANECDictionary::PListEntry(*(this + 94), &v25);
    v6 = @"EluAlpha";
    goto LABEL_23;
  }

  if (v4 != 11)
  {
    goto LABEL_26;
  }

LABEL_11:
  v5 = v23;
  mlir::anec::ANECDictionary::PListEntry(*(this + 95), &v25);
  v6 = @"Epsilon";
LABEL_23:
  mlir::anec::ANECDictionary::Add(v5, v6, &v25);
  v12 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_26:
  v13 = v23;
  mlir::anec::ANECIRNeuron::ActivationToAneIRType(*(this + 44), __p);
  mlir::anec::ANECDictionary::PListEntry(__p, &v25);
  mlir::anec::ANECDictionary::Add(v13, @"Type", &v25);
  v14 = v26;
  if (!v26 || atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (v22 < 0)
  {
LABEL_29:
    operator delete(__p[0]);
  }

LABEL_30:
  v15 = *a2;
  v19 = v23;
  v20 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v19, &v25);
  mlir::anec::ANECDictionary::Add(v15, @"Params", &v25);
  v16 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = v24;
  if (v24)
  {
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

size_t mlir::anec::ANECIRPoolUnit::PoolTypeToAneIRType@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v3 = @"L2";
    }

    else
    {
      v3 = @"Avg";
    }
  }

  else
  {
    v3 = @"Max";
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (result | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  result = memmove(a2, CStringPtr, v6);
LABEL_15:
  *(a2 + v6) = 0;
  return result;
}

void mlir::anec::ANECIRPoolUnit::Serialize(mlir::anec::ANECIRPoolUnit *this@<X0>, uint64_t **a2@<X8>)
{
  mlir::anec::ANECIRUnit::Serialize(this, a2);
  mlir::anec::ANECDictionary::Create(&v18);
  v4 = v18;
  mlir::anec::ANECIRPoolUnit::PoolTypeToAneIRType(*(this + 62), __p);
  mlir::anec::ANECDictionary::PListEntry(__p, &v20);
  mlir::anec::ANECDictionary::Add(v4, @"Type", &v20);
  v5 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v17 < 0)
  {
LABEL_4:
    operator delete(__p[0]);
  }

LABEL_5:
  v6 = v18;
  mlir::anec::ANECDictionary::PListEntry((*(this + 280) & 1) == 0, &v20);
  mlir::anec::ANECDictionary::Add(v6, @"AverageCountExcludePadding", &v20);
  v7 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v19;
  v15[0] = v18;
  v15[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    mlir::anec::ANECIRConvPoolBase::addParams(this, v15, *(this + 32), *(this + 33), *(this + 34));
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else
  {
    mlir::anec::ANECIRConvPoolBase::addParams(this, v15, *(this + 32), *(this + 33), *(this + 34));
  }

  v9 = *a2;
  v13 = v18;
  v14 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v13, &v20);
  mlir::anec::ANECDictionary::Add(v9, @"Params", &v20);
  v10 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v19;
  if (v19)
  {
    if (!atomic_fetch_add(v19 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

uint64_t mlir::anec::ANECIRConstant::SetWeight(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 88) = a8;
  *(result + 96) = a9;
  *(result + 72) = a6;
  *(result + 80) = a7;
  *(result + 56) = a4;
  *(result + 64) = a5;
  return result;
}

void mlir::anec::ANECIRConstant::Serialize(mlir::anec::ANECIRConstant *this@<X0>, uint64_t **a2@<X8>)
{
  mlir::anec::ANECDictionary::Create(a2);
  v4 = *a2;
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(this + 1), *(this + 2));
  }

  else
  {
    v24 = *(this + 8);
  }

  mlir::anec::ANECDictionary::PListEntry(&v24, &v25);
  mlir::anec::ANECDictionary::Add(v4, @"ConstantName", &v25);
  v5 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_7:
    operator delete(v24.__r_.__value_.__l.__data_);
  }

LABEL_8:
  v6 = *a2;
  mlir::anec::ANECDictionary::PListEntry(__p, &v25);
  mlir::anec::ANECDictionary::Add(v6, @"ConstantType", &v25);
  v7 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v23 < 0)
  {
LABEL_11:
    operator delete(__p[0]);
  }

LABEL_12:
  v8 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 5), &v25);
  mlir::anec::ANECDictionary::Add(v8, @"ConstantByteOffset", &v25);
  v9 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  mlir::anec::ANECDictionary::PListEntry(1, &v25);
  mlir::anec::ANECDictionary::Add(v10, @"ConstantInterleave", &v25);
  v11 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 12), &v25);
  mlir::anec::ANECDictionary::Add(v12, @"ConstantWidth", &v25);
  v13 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 11), &v25);
  mlir::anec::ANECDictionary::Add(v14, @"ConstantHeight", &v25);
  v15 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 10), &v25);
  mlir::anec::ANECDictionary::Add(v16, @"ConstantChannels", &v25);
  v17 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 9), &v25);
  mlir::anec::ANECDictionary::Add(v18, @"ConstantDepth", &v25);
  v19 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *a2;
  mlir::anec::ANECDictionary::PListEntry(*(this + 8), &v25);
  mlir::anec::ANECDictionary::Add(v20, @"ConstantBatchSize", &v25);
  v21 = v26;
  if (v26)
  {
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }
}

void *mlir::anec::ANECIRNetwork::Serialize@<X0>(mlir::anec::ANECIRNetwork *this@<X0>, uint64_t **a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  mlir::anec::ANECDictionary::Create(a2);
  v4 = *a2;
  v5 = *(this + 1);
  v6 = *(this + 4);
  v33[0] = &unk_1F5B343C8;
  v34 = v33;
  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(v4, @"Inputs", v5, v6, v33);
  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
  }

  else if (v34)
  {
    (*(*v34 + 40))(v34);
  }

  v7 = *a2;
  v8 = *(this + 25);
  v9 = *(this + 52);
  v31[0] = &unk_1F5B343C8;
  v32 = v31;
  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(v7, @"States", v8, v9, v31);
  if (v32 == v31)
  {
    (*(*v32 + 32))(v32);
  }

  else if (v32)
  {
    (*(*v32 + 40))(v32);
  }

  v10 = *a2;
  v11 = *(this + 37);
  v12 = *(this + 76);
  v29[0] = &unk_1F5B343C8;
  v30 = v29;
  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(v10, @"InputParams", v11, v12, v29);
  if (v30 == v29)
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))();
  }

  v13 = *a2;
  v14 = *(this + 13);
  v15 = *(this + 28);
  v27[0] = &unk_1F5B34410;
  v28 = v27;
  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIROutput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(v13, @"Outputs", v14, v15, v27);
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))();
  }

  v16 = *a2;
  v17 = *(this + 52);
  v18 = (*(this + 53) - v17) >> 4;
  v25[0] = &unk_1F5B34458;
  v26 = v25;
  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRUnit,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(v16, @"Units", v17, v18, v25);
  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
  }

  else if (v26)
  {
    (*(*v26 + 40))();
  }

  v19 = *a2;
  v20 = *(this + 55);
  v21 = (*(this + 56) - v20) >> 4;
  v23[0] = &unk_1F5B344A0;
  v24 = v23;
  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRConstant,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(v19, @"Constants", v20, v21, v23);
  result = v24;
  if (v24 == v23)
  {
    return (*(*v24 + 32))(v24);
  }

  if (v24)
  {
    return (*(*v24 + 40))();
  }

  return result;
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(uint64_t *a1, CFStringRef theString, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v10 = strlen(CStringPtr);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    p_p = operator new(v13);
    *(&__p + 1) = v11;
    v18 = v13 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_9;
  }

  HIBYTE(v18) = v10;
  p_p = &__p;
  if (v10)
  {
LABEL_9:
    memmove(p_p, CStringPtr, v11);
  }

  *(p_p + v11) = 0;
  v14 = *(a5 + 24);
  if (v14)
  {
    if (v14 == a5)
    {
      v20 = v19;
      (*(*v14 + 24))(v14, v19);
    }

    else
    {
      v20 = (*(*v14 + 16))(v14);
    }
  }

  else
  {
    v20 = 0;
  }

  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(a1, &__p, a3, a4, v19);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(__p);
    return;
  }

  if (v20)
  {
    (*(*v20 + 40))(v20, v15, v16);
  }

  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_21;
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIROutput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(uint64_t *a1, CFStringRef theString, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v10 = strlen(CStringPtr);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    p_p = operator new(v13);
    *(&__p + 1) = v11;
    v18 = v13 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_9;
  }

  HIBYTE(v18) = v10;
  p_p = &__p;
  if (v10)
  {
LABEL_9:
    memmove(p_p, CStringPtr, v11);
  }

  *(p_p + v11) = 0;
  v14 = *(a5 + 24);
  if (v14)
  {
    if (v14 == a5)
    {
      v20 = v19;
      (*(*v14 + 24))(v14, v19);
    }

    else
    {
      v20 = (*(*v14 + 16))(v14);
    }
  }

  else
  {
    v20 = 0;
  }

  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIROutput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(a1, &__p, a3, a4, v19);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(__p);
    return;
  }

  if (v20)
  {
    (*(*v20 + 40))(v20, v15, v16);
  }

  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_21;
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRUnit,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(uint64_t *a1, CFStringRef theString, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v10 = strlen(CStringPtr);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    p_p = operator new(v13);
    *(&__p + 1) = v11;
    v18 = v13 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_9;
  }

  HIBYTE(v18) = v10;
  p_p = &__p;
  if (v10)
  {
LABEL_9:
    memmove(p_p, CStringPtr, v11);
  }

  *(p_p + v11) = 0;
  v14 = *(a5 + 24);
  if (v14)
  {
    if (v14 == a5)
    {
      v20 = v19;
      (*(*v14 + 24))(v14, v19);
    }

    else
    {
      v20 = (*(*v14 + 16))(v14);
    }
  }

  else
  {
    v20 = 0;
  }

  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRUnit,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(a1, &__p, a3, a4, v19);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(__p);
    return;
  }

  if (v20)
  {
    (*(*v20 + 40))(v20, v15, v16);
  }

  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_21;
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRConstant,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(uint64_t *a1, CFStringRef theString, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v10 = strlen(CStringPtr);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    p_p = operator new(v13);
    *(&__p + 1) = v11;
    v18 = v13 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_9;
  }

  HIBYTE(v18) = v10;
  p_p = &__p;
  if (v10)
  {
LABEL_9:
    memmove(p_p, CStringPtr, v11);
  }

  *(p_p + v11) = 0;
  v14 = *(a5 + 24);
  if (v14)
  {
    if (v14 == a5)
    {
      v20 = v19;
      (*(*v14 + 24))(v14, v19);
    }

    else
    {
      v20 = (*(*v14 + 16))(v14);
    }
  }

  else
  {
    v20 = 0;
  }

  mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRConstant,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(a1, &__p, a3, a4, v19);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(__p);
    return;
  }

  if (v20)
  {
    (*(*v20 + 40))(v20, v15, v16);
  }

  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_21;
  }
}

void mlir::anec::ANECIRNetwork::addWeightFileInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 + 472 == std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::find[abi:ne200100](a1 + 464, a2))
  {
    if (*(a4 + 23) < 0)
    {
      v9 = *(a4 + 8);
      if (v9)
      {
        std::string::__init_copy_ctor_external(&v10, *a4, v9);
        v8 = (a1 + 536);
        goto LABEL_8;
      }
    }

    else if (*(a4 + 23))
    {
      v10 = *a4;
      v8 = (a1 + 536);
      goto LABEL_8;
    }

    v8 = (a1 + 528);
    *(&v10.__r_.__value_.__s + 23) = 0;
    v10.__r_.__value_.__s.__data_[0] = 0;
LABEL_8:
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
    }

    else
    {
      v11 = *a3;
    }

    v12 = *v8;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
    }

    else
    {
      v13 = *a2;
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = v10;
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v11;
    }

    v16 = v12;
    std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::tuple<std::string,std::string,unsigned int>>>((a1 + 464), &v13.__r_.__value_.__l.__data_, &v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_23:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }

LABEL_29:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        ++*v8;
        return;
      }

LABEL_31:
      operator delete(v10.__r_.__value_.__l.__data_);
      goto LABEL_25;
    }

LABEL_30:
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }
}

uint64_t mlir::anec::ANECIRNetwork::getWeightFileIndex(uint64_t a1, void *a2, void *a3, mlir *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::find[abi:ne200100](a1 + 464, a2);
  if (a1 + 472 == v8)
  {
    mlir::emitError(a4, v9, &v26);
    if (v26)
    {
      LODWORD(v24[0]) = 3;
      v24[1] = "Cannot find corresponding index from weight file path: ";
      v24[2] = 55;
      v11 = v24;
      v12 = v28;
      if (v29 >= v30)
      {
        if (v28 <= v24 && v28 + 24 * v29 > v24)
        {
          v23 = v24 - v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
          v12 = v28;
          v11 = v28 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
          v11 = v24;
          v12 = v28;
        }
      }

      v13 = &v12[24 * v29];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
      ++v29;
      if (v26)
      {
        v25 = 260;
        v24[0] = a2;
        mlir::Diagnostic::operator<<(&v27, v24);
        if (v26)
        {
          mlir::InFlightDiagnostic::report(&v26);
        }
      }
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v35;
        v17 = __p;
        if (v35 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v35 = v15;
        operator delete(v17);
      }

      v18 = v32;
      if (v32)
      {
        v19 = v33;
        v20 = v32;
        if (v33 != v32)
        {
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
          v20 = v32;
        }

        v33 = v18;
        operator delete(v20);
      }

      if (v28 != v31)
      {
        free(v28);
      }
    }

    return 0;
  }

  else
  {
    *a3 = *(v8 + 104);
    return 1;
  }
}

void mlir::anec::ANECIROperation::Serialize(mlir::anec::ANECIROperation *this@<X0>, uint64_t **a2@<X8>)
{
  mlir::anec::ANECDictionary::Create(a2);
  v4 = *a2;
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *this, *(this + 1));
  }

  else
  {
    v9 = *this;
  }

  mlir::anec::ANECDictionary::PListEntry(&v9, &v10);
  mlir::anec::ANECDictionary::Add(v4, @"OperationName", &v10);
  v5 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_7:
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_8:
  v6 = *a2;
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 3), *(this + 4));
  }

  else
  {
    __p = *(this + 1);
  }

  mlir::anec::ANECDictionary::PListEntry(&__p, &v10);
  mlir::anec::ANECDictionary::Add(v6, @"NetworkName", &v10);
  v7 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void mlir::anec::ANECIRProcedure::Serialize(mlir::anec::ANECIRProcedure *this@<X0>, uint64_t **a2@<X8>)
{
  mlir::anec::ANECDictionary::Create(a2);
  plist::PListArray::Create(&v43);
  v4 = *(this + 28);
  if (v4)
  {
    v5 = *(this + 13);
    for (i = 16 * v4; i; i -= 16)
    {
      mlir::anec::ANECIROutput::Serialize(*v5, &v45);
      v7 = v43;
      mlir::anec::ANECDictionary::PListEntry(&v45, &v42);
      plist::PListArray::push_back(v7, &v42);
      v8 = *(&v42 + 1);
      if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v9 = v46;
        if (v46)
        {
LABEL_7:
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }
        }
      }

      else
      {
        v9 = v46;
        if (v46)
        {
          goto LABEL_7;
        }
      }

      v5 += 2;
    }
  }

  v10 = *a2;
  v40 = v43;
  v41 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v40, &v45);
  mlir::anec::ANECDictionary::Add(v10, @"OutputList", &v45);
  v11 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  plist::PListArray::Create(&v42);
  v13 = *(this + 4);
  if (v13)
  {
    v14 = *(this + 1);
    for (j = 16 * v13; j; j -= 16)
    {
      mlir::anec::ANECIRInput::Serialize(*v14, &v45);
      v16 = v42;
      mlir::anec::ANECDictionary::PListEntry(&v45, &v39);
      plist::PListArray::push_back(v16, &v39);
      v17 = *(&v39 + 1);
      if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v18 = v46;
        if (v46)
        {
LABEL_25:
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }
        }
      }

      else
      {
        v18 = v46;
        if (v46)
        {
          goto LABEL_25;
        }
      }

      v14 += 2;
    }
  }

  v19 = *a2;
  v38 = v42;
  if (*(&v42 + 1))
  {
    atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v38, &v45);
  mlir::anec::ANECDictionary::Add(v19, @"InputList", &v45);
  v20 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(&v38 + 1);
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  plist::PListArray::Create(&v39);
  v22 = *(this + 78);
  v23 = *(this + 79);
  while (v22 != v23)
  {
    mlir::anec::ANECIROperation::Serialize(*v22, &v45);
    v24 = v39;
    mlir::anec::ANECDictionary::PListEntry(&v45, &v37);
    plist::PListArray::push_back(v24, &v37);
    v25 = *(&v37 + 1);
    if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v26 = v46;
      if (v46)
      {
LABEL_43:
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }
      }
    }

    else
    {
      v26 = v46;
      if (v46)
      {
        goto LABEL_43;
      }
    }

    v22 += 2;
  }

  v27 = *a2;
  v36 = v39;
  if (*(&v39 + 1))
  {
    atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v36, &v45);
  mlir::anec::ANECDictionary::Add(v27, @"OperationList", &v45);
  v28 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v36 + 1);
  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *a2;
  if (*(this + 415) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 49), *(this + 50));
  }

  else
  {
    __p = *(this + 392);
  }

  mlir::anec::ANECDictionary::PListEntry(&__p, &v45);
  mlir::anec::ANECDictionary::Add(v30, @"Name", &v45);
  v31 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_61:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_62:
  v32 = *(&v39 + 1);
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&v42 + 1);
  if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = v44;
  if (v44)
  {
    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }
  }
}

void plist::PListArray::push_back(void *a1, __int128 *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (v3 >= v4)
  {
    v7 = a1[1];
    v8 = v3 - v7;
    v9 = (v3 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = a2;
      v14 = operator new(16 * v12);
      a2 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[16 * v9];
    v16 = &v14[16 * v12];
    v17 = *a2;
    *v15 = *a2;
    if (*(&v17 + 1))
    {
      atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      v7 = a1[1];
      v8 = a1[2] - v7;
      v9 = v8 >> 4;
    }

    v6 = v15 + 16;
    v18 = &v15[-16 * v9];
    memcpy(v18, v7, v8);
    a1[1] = v18;
    a1[2] = v6;
    a1[3] = v16;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    *(v3 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 16;
  }

  a1[2] = v6;
}

void mlir::anec::ANECIRTop::deriveConvertedWeightsFileName(std::string *this@<X0>, char *a2@<X8>)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    if (this->__r_.__value_.__l.__size_ != 1)
    {
      goto LABEL_8;
    }

    v5 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v5 = this;
    if (v4 != 1)
    {
      goto LABEL_8;
    }
  }

  if (v5->__r_.__value_.__s.__data_[0] == 45)
  {
    a2[23] = 15;
    strcpy(a2, "network.weights");
    return;
  }

LABEL_8:
  v6 = std::string::rfind(this, 46, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v6;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size < v6)
    {
      goto LABEL_59;
    }

    v9 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v9 = this;
    if (v6 > size)
    {
LABEL_59:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }
  }

  v10 = size - v6;
  if (size - v6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_58:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v10 | 7) + 1;
    }

    p_dst = operator new(v12);
    __dst = p_dst;
    v29 = v12 | 0x8000000000000000;
    goto LABEL_21;
  }

  HIBYTE(v29) = size - v6;
  p_dst = &__dst;
  if (size != v6)
  {
LABEL_21:
    memmove(p_dst, v9 + v7, v10);
  }

  *(p_dst + v10) = 0;
  v13 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = this->__r_.__value_.__l.__size_;
  }

  if (v14 >= 0)
  {
    v15 = this;
  }

  else
  {
    v15 = this->__r_.__value_.__r.__words[0];
  }

  if (v13 >= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v13;
  }

  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_58;
  }

  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v16 | 7) + 1;
    }

    p_p = operator new(v18);
    v26 = v16;
    v27 = v18 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v27) = v16;
  p_p = &__p;
  if (v16)
  {
LABEL_38:
    memmove(p_p, v15, v16);
  }

  *(p_p + v16) = 0;
  v19 = SHIBYTE(v27);
  if (v27 >= 0)
  {
    v20 = HIBYTE(v27);
  }

  else
  {
    v20 = v26;
  }

  v21 = v20 + 8;
  if (v20 + 8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_58;
  }

  if (v21 < 0x17)
  {
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    a2[23] = v21;
    if (!v20)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if ((v21 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v21 | 7) + 1;
    }

    v23 = operator new(v22);
    *(a2 + 1) = v21;
    *(a2 + 2) = v22 | 0x8000000000000000;
    *a2 = v23;
    a2 = v23;
  }

  if (v19 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  memmove(a2, v24, v20);
LABEL_53:
  strcpy(&a2[v20], ".weights");
  if ((v19 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      return;
    }

LABEL_57:
    operator delete(__dst);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_57;
  }
}

void mlir::anec::ANECIRTop::Serialize(uint64_t a1@<X0>, uint64_t a2@<X2>, const void *a3@<X3>, std::string::size_type a4@<X4>, uint64_t **a5@<X8>)
{
  v166 = a2;
  mlir::anec::ANECDictionary::Create(a5);
  v9 = *a5;
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v165, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v165 = *(a1 + 48);
  }

  mlir::anec::ANECDictionary::PListEntry(&v165, &v171);
  mlir::anec::ANECDictionary::Add(v9, @"Version", &v171);
  size = v171.__r_.__value_.__l.__size_;
  if (!v171.__r_.__value_.__l.__size_ || atomic_fetch_add((v171.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (size->__on_zero_shared)(size);
  std::__shared_weak_count::__release_weak(size);
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_7:
    operator delete(v165.__r_.__value_.__l.__data_);
  }

LABEL_8:
  v160 = *a5;
  v158 = *(a1 + 72);
  v11 = *(a1 + 80);
  CStringPtr = CFStringGetCStringPtr(@"Networks", 0x8000100u);
  v13 = strlen(CStringPtr);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_349;
  }

  v14 = v13;
  v157 = a5;
  v156 = a3;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    p_dst = operator new(v16);
    *(&__dst + 1) = v14;
    v168 = v16 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_16;
  }

  HIBYTE(v168) = v13;
  p_dst = &__dst;
  if (v13)
  {
LABEL_16:
    memmove(p_dst, CStringPtr, v14);
  }

  *(p_dst + v14) = 0;
  if (v11)
  {
    v159 = a1;
    v17 = v158;
    while (1)
    {
      v162 = *v17;
      mlir::anec::ANECIRNetwork::Serialize(*v17, &v169);
      v18 = **(a1 + 72);
      *(&v174 + 1) = 0;
      v175 = 0;
      *&v174 = &v174 + 8;
      v19 = v18[58];
      v20 = (v18 + 59);
      if (v19 != v18 + 59)
      {
        break;
      }

LABEL_35:
      v28 = v18[66];
      v29 = v18[67];
      memset(&v179, 0, sizeof(v179));
      if (v28)
      {
        if ((v28 & 0x80000000) != 0)
        {
          goto LABEL_350;
        }

        v30 = 24 * v28;
        v31 = operator new(v30);
        v179.__r_.__value_.__r.__words[0] = v31;
        v179.__r_.__value_.__r.__words[2] = v31 + v30;
        v32 = 24 * ((v30 - 24) / 0x18) + 24;
        bzero(v31, v32);
        v179.__r_.__value_.__l.__size_ = v31 + v32;
      }

      memset(&v177, 0, sizeof(v177));
      if (v29)
      {
        if ((v29 & 0x80000000) != 0)
        {
LABEL_350:
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v33 = 24 * v29;
        v34 = operator new(v33);
        v177.__r_.__value_.__r.__words[0] = v34;
        v177.__r_.__value_.__r.__words[2] = v34 + v33;
        v35 = 24 * ((v33 - 24) / 0x18) + 24;
        bzero(v34, v35);
        v177.__r_.__value_.__l.__size_ = v34 + v35;
      }

      else
      {
        v34 = 0;
      }

      v36 = v174;
      if (v174 != (&v174 + 8))
      {
        do
        {
          if (*(v36 + 79) < 0)
          {
            std::string::__init_copy_ctor_external(&v171, *(v36 + 7), *(v36 + 8));
            if ((*(v36 + 103) & 0x80000000) == 0)
            {
LABEL_49:
              __str = *(v36 + 5);
              goto LABEL_52;
            }
          }

          else
          {
            v171 = *(v36 + 56);
            if ((*(v36 + 103) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }
          }

          std::string::__init_copy_ctor_external(&__str, *(v36 + 10), *(v36 + 11));
LABEL_52:
          v40 = HIBYTE(v171.__r_.__value_.__r.__words[2]);
          if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v40 = v171.__r_.__value_.__l.__size_;
          }

          if (v40)
          {
            v41 = v34;
          }

          else
          {
            v41 = v179.__r_.__value_.__r.__words[0];
          }

          std::string::operator=((v41 + 24 * *(v36 + 26)), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v171.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_59:
              v42 = *(v36 + 1);
              if (v42)
              {
                goto LABEL_63;
              }

              goto LABEL_65;
            }
          }

          else if ((SHIBYTE(v171.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_59;
          }

          operator delete(v171.__r_.__value_.__l.__data_);
          v42 = *(v36 + 1);
          if (v42)
          {
            do
            {
LABEL_63:
              v43 = v42;
              v42 = *v42;
            }

            while (v42);
            goto LABEL_46;
          }

          do
          {
LABEL_65:
            v43 = *(v36 + 2);
            v27 = *v43 == v36;
            v36 = v43;
          }

          while (!v27);
LABEL_46:
          v36 = v43;
        }

        while (v43 != (&v174 + 8));
      }

      std::pair<std::vector<std::string>,std::vector<std::string>>::pair[abi:nn200100]<std::vector<std::string>&,std::vector<std::string>&,0>(&v171, &v179, &v177);
      v37 = v177.__r_.__value_.__r.__words[0];
      if (v177.__r_.__value_.__r.__words[0])
      {
        v38 = v177.__r_.__value_.__l.__size_;
        v39 = v177.__r_.__value_.__r.__words[0];
        if (v177.__r_.__value_.__l.__size_ != v177.__r_.__value_.__r.__words[0])
        {
          do
          {
            v44 = *(v38 - 1);
            v38 -= 3;
            if (v44 < 0)
            {
              operator delete(*v38);
            }
          }

          while (v38 != v37);
          v39 = v177.__r_.__value_.__r.__words[0];
        }

        v177.__r_.__value_.__l.__size_ = v37;
        operator delete(v39);
      }

      v45 = v179.__r_.__value_.__r.__words[0];
      if (v179.__r_.__value_.__r.__words[0])
      {
        v46 = v179.__r_.__value_.__l.__size_;
        v47 = v179.__r_.__value_.__r.__words[0];
        if (v179.__r_.__value_.__l.__size_ != v179.__r_.__value_.__r.__words[0])
        {
          do
          {
            v48 = *(v46 - 1);
            v46 -= 3;
            if (v48 < 0)
            {
              operator delete(*v46);
            }
          }

          while (v46 != v45);
          v47 = v179.__r_.__value_.__r.__words[0];
        }

        v179.__r_.__value_.__l.__size_ = v45;
        operator delete(v47);
      }

      v161 = v17;
      v49 = v169;
      if (*(&v169 + 1))
      {
        atomic_fetch_add_explicit((*(&v169 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v51 = v171.__r_.__value_.__l.__size_;
      v50 = v171.__r_.__value_.__r.__words[0];
      if (v171.__r_.__value_.__r.__words[0] == v171.__r_.__value_.__l.__size_)
      {
        goto LABEL_118;
      }

      v52 = CFStringGetCStringPtr(@"Weights", 0x8000100u);
      v53 = strlen(v52);
      if (v53 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_349;
      }

      v54 = v53;
      if (v53 >= 0x17)
      {
        if ((v53 | 7) == 0x17)
        {
          v56 = 25;
        }

        else
        {
          v56 = (v53 | 7) + 1;
        }

        p_str = operator new(v56);
        __str.__r_.__value_.__l.__size_ = v54;
        __str.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
        __str.__r_.__value_.__r.__words[0] = p_str;
      }

      else
      {
        *(&__str.__r_.__value_.__s + 23) = v53;
        p_str = &__str;
        if (!v53)
        {
          goto LABEL_93;
        }
      }

      memmove(p_str, v52, v54);
LABEL_93:
      *(p_str + v54) = 0;
      plist::PListArray::Create(&v180);
      do
      {
        v57 = v180;
        if (*(v50 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v177, *v50, *(v50 + 8));
        }

        else
        {
          v58 = *v50;
          v177.__r_.__value_.__r.__words[2] = *(v50 + 16);
          *&v177.__r_.__value_.__l.__data_ = v58;
        }

        v179 = v177;
        memset(&v177, 0, sizeof(v177));
        mlir::anec::ANECDictionary::PListEntry(&v179, &v178);
        plist::PListArray::push_back(v57, &v178);
        v59 = *(&v178 + 1);
        if (*(&v178 + 1) && !atomic_fetch_add((*(&v178 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59);
          std::__shared_weak_count::__release_weak(v59);
          if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_104:
            operator delete(v179.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v177.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_105;
          }
        }

        else if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_104;
        }

        if ((SHIBYTE(v177.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

LABEL_105:
        operator delete(v177.__r_.__value_.__l.__data_);
LABEL_94:
        v50 += 24;
      }

      while (v50 != v51);
      v178 = v180;
      if (*(&v180 + 1))
      {
        atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      mlir::anec::ANECDictionary::PListEntry(&v178, &v179);
      mlir::anec::ANECDictionary::Add(v49, &__str, &v179);
      v60 = v179.__r_.__value_.__l.__size_;
      if (v179.__r_.__value_.__l.__size_ && !atomic_fetch_add((v179.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v60->__on_zero_shared)(v60);
        std::__shared_weak_count::__release_weak(v60);
        v61 = *(&v178 + 1);
        if (*(&v178 + 1))
        {
          goto LABEL_111;
        }
      }

      else
      {
        v61 = *(&v178 + 1);
        if (*(&v178 + 1))
        {
LABEL_111:
          if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v61->__on_zero_shared)(v61);
            std::__shared_weak_count::__release_weak(v61);
          }
        }
      }

      v62 = *(&v180 + 1);
      if (*(&v180 + 1) && !atomic_fetch_add((*(&v180 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v62->__on_zero_shared)(v62);
        std::__shared_weak_count::__release_weak(v62);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_117:
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_117;
      }

LABEL_118:
      v63 = __p;
      v64 = v173;
      if (__p == v173)
      {
        goto LABEL_154;
      }

      v65 = CFStringGetCStringPtr(@"MutableWeights", 0x8000100u);
      v66 = strlen(v65);
      if (v66 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_349;
      }

      v67 = v66;
      if (v66 >= 0x17)
      {
        if ((v66 | 7) == 0x17)
        {
          v69 = 25;
        }

        else
        {
          v69 = (v66 | 7) + 1;
        }

        v68 = operator new(v69);
        __str.__r_.__value_.__l.__size_ = v67;
        __str.__r_.__value_.__r.__words[2] = v69 | 0x8000000000000000;
        __str.__r_.__value_.__r.__words[0] = v68;
LABEL_127:
        memmove(v68, v65, v67);
        goto LABEL_128;
      }

      *(&__str.__r_.__value_.__s + 23) = v66;
      v68 = &__str;
      if (v66)
      {
        goto LABEL_127;
      }

LABEL_128:
      *(v68 + v67) = 0;
      plist::PListArray::Create(&v180);
      while (2)
      {
        v70 = v180;
        if (*(v63 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v177, *v63, v63[1]);
        }

        else
        {
          v71 = *v63;
          v177.__r_.__value_.__r.__words[2] = v63[2];
          *&v177.__r_.__value_.__l.__data_ = v71;
        }

        v179 = v177;
        memset(&v177, 0, sizeof(v177));
        mlir::anec::ANECDictionary::PListEntry(&v179, &v178);
        plist::PListArray::push_back(v70, &v178);
        v72 = *(&v178 + 1);
        if (*(&v178 + 1) && !atomic_fetch_add((*(&v178 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v72->__on_zero_shared)(v72);
          std::__shared_weak_count::__release_weak(v72);
          if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_139;
          }

LABEL_136:
          if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_140:
            operator delete(v177.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          if ((SHIBYTE(v179.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_136;
          }

LABEL_139:
          operator delete(v179.__r_.__value_.__l.__data_);
          if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_140;
          }
        }

        v63 += 3;
        if (v63 != v64)
        {
          continue;
        }

        break;
      }

      v178 = v180;
      if (*(&v180 + 1))
      {
        atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      mlir::anec::ANECDictionary::PListEntry(&v178, &v179);
      mlir::anec::ANECDictionary::Add(v49, &__str, &v179);
      v73 = v179.__r_.__value_.__l.__size_;
      if (v179.__r_.__value_.__l.__size_ && !atomic_fetch_add((v179.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v73->__on_zero_shared)(v73);
        std::__shared_weak_count::__release_weak(v73);
        v74 = *(&v178 + 1);
        if (*(&v178 + 1))
        {
          goto LABEL_146;
        }
      }

      else
      {
        v74 = *(&v178 + 1);
        if (*(&v178 + 1))
        {
LABEL_146:
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
          }
        }
      }

      v75 = *(&v180 + 1);
      if (!*(&v180 + 1) || atomic_fetch_add((*(&v180 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_154;
        }

LABEL_158:
        operator delete(__str.__r_.__value_.__l.__data_);
        if (!*(&v49 + 1))
        {
          goto LABEL_159;
        }

LABEL_155:
        if (!atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&v49 + 1) + 16))(*(&v49 + 1));
          std::__shared_weak_count::__release_weak(*(&v49 + 1));
        }

        goto LABEL_159;
      }

      (v75->__on_zero_shared)(v75);
      std::__shared_weak_count::__release_weak(v75);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_158;
      }

LABEL_154:
      if (*(&v49 + 1))
      {
        goto LABEL_155;
      }

LABEL_159:
      v76 = v169;
      a1 = v159;
      if (*(&v169 + 1))
      {
        atomic_fetch_add_explicit((*(&v169 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (!v175)
      {
        goto LABEL_205;
      }

      mlir::anec::ANECDictionary::Create(&__str);
      v77 = v174;
      if (v174 == (&v174 + 8))
      {
        goto LABEL_203;
      }

      v78 = 1;
      while (2)
      {
        mlir::anec::ANECDictionary::Create(&v180);
        if (*(v77 + 79) < 0)
        {
          v80 = *(v77 + 8);
          if (v80)
          {
            v79 = v180;
            std::string::__init_copy_ctor_external(&v179, *(v77 + 7), v80);
            goto LABEL_170;
          }
        }

        else if (*(v77 + 79))
        {
          v79 = v180;
          v179 = *(v77 + 56);
LABEL_170:
          mlir::anec::ANECDictionary::PListEntry(&v179, &v177);
          mlir::anec::ANECDictionary::Add(v79, @"Symbol", &v177);
          v81 = v177.__r_.__value_.__l.__size_;
          if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
            if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_173:
              operator delete(v179.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_173;
          }

          v78 = 0;
        }

        v82 = __str.__r_.__value_.__r.__words[0];
        v178 = v180;
        if (*(&v180 + 1))
        {
          atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        mlir::anec::ANECDictionary::PListEntry(&v178, &v177);
        mlir::anec::ANECDictionary::Add(v82, v77 + 5, &v177);
        v83 = v177.__r_.__value_.__l.__size_;
        if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v83->__on_zero_shared)(v83);
          std::__shared_weak_count::__release_weak(v83);
          v84 = *(&v178 + 1);
          if (*(&v178 + 1))
          {
            goto LABEL_180;
          }
        }

        else
        {
          v84 = *(&v178 + 1);
          if (*(&v178 + 1))
          {
LABEL_180:
            if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v84->__on_zero_shared)(v84);
              std::__shared_weak_count::__release_weak(v84);
            }
          }
        }

        v85 = *(&v180 + 1);
        if (*(&v180 + 1) && !atomic_fetch_add((*(&v180 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
          v86 = *(v77 + 1);
          if (v86)
          {
            goto LABEL_186;
          }
        }

        else
        {
          v86 = *(v77 + 1);
          if (v86)
          {
            do
            {
LABEL_186:
              v87 = v86;
              v86 = *v86;
            }

            while (v86);
            goto LABEL_164;
          }
        }

        do
        {
          v87 = *(v77 + 2);
          v27 = *v87 == v77;
          v77 = v87;
        }

        while (!v27);
LABEL_164:
        v77 = v87;
        if (v87 != (&v174 + 8))
        {
          continue;
        }

        break;
      }

      if ((v78 & 1) == 0)
      {
        v180 = *&__str.__r_.__value_.__l.__data_;
        if (__str.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        mlir::anec::ANECDictionary::PListEntry(&v180, &v177);
        mlir::anec::ANECDictionary::Add(v76, @"WeightFileProperties", &v177);
        v88 = v177.__r_.__value_.__l.__size_;
        if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v88->__on_zero_shared)(v88);
          std::__shared_weak_count::__release_weak(v88);
          v89 = *(&v180 + 1);
          if (*(&v180 + 1))
          {
            goto LABEL_200;
          }
        }

        else
        {
          v89 = *(&v180 + 1);
          if (*(&v180 + 1))
          {
LABEL_200:
            if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v89->__on_zero_shared)(v89);
              std::__shared_weak_count::__release_weak(v89);
            }
          }
        }
      }

LABEL_203:
      if (__str.__r_.__value_.__l.__size_ && !atomic_fetch_add((__str.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v76 + 16))(v76);
        std::__shared_weak_count::__release_weak(v76);
        if (*(&v76 + 1))
        {
          goto LABEL_206;
        }
      }

      else
      {
LABEL_205:
        if (*(&v76 + 1))
        {
LABEL_206:
          if (!atomic_fetch_add((*(&v76 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v76 + 1) + 16))(*(&v76 + 1));
            std::__shared_weak_count::__release_weak(*(&v76 + 1));
          }
        }
      }

      v170 = v169;
      v169 = 0uLL;
      v90 = __p;
      if (__p)
      {
        v91 = v173;
        v92 = __p;
        if (v173 != __p)
        {
          do
          {
            v93 = *(v91 - 1);
            v91 -= 3;
            if (v93 < 0)
            {
              operator delete(*v91);
            }
          }

          while (v91 != v90);
          v92 = __p;
        }

        v173 = v90;
        operator delete(v92);
      }

      v94 = v171.__r_.__value_.__r.__words[0];
      if (v171.__r_.__value_.__r.__words[0])
      {
        v95 = v171.__r_.__value_.__l.__size_;
        v96 = v171.__r_.__value_.__r.__words[0];
        if (v171.__r_.__value_.__l.__size_ != v171.__r_.__value_.__r.__words[0])
        {
          do
          {
            v97 = *(v95 - 1);
            v95 -= 3;
            if (v97 < 0)
            {
              operator delete(*v95);
            }
          }

          while (v95 != v94);
          v96 = v171.__r_.__value_.__r.__words[0];
        }

        v171.__r_.__value_.__l.__size_ = v94;
        operator delete(v96);
      }

      std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(&v174, *(&v174 + 1));
      mlir::anec::ANECDictionary::PListEntry(&v170, &v171);
      mlir::anec::ANECDictionary::Add(v160, (v162 + 392), &v171);
      v98 = v171.__r_.__value_.__l.__size_;
      if (v171.__r_.__value_.__l.__size_ && !atomic_fetch_add((v171.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v98->__on_zero_shared)(v98);
        std::__shared_weak_count::__release_weak(v98);
        v99 = *(&v170 + 1);
        if (*(&v170 + 1))
        {
          goto LABEL_227;
        }
      }

      else
      {
        v99 = *(&v170 + 1);
        if (*(&v170 + 1))
        {
LABEL_227:
          if (!atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v99->__on_zero_shared)(v99);
            std::__shared_weak_count::__release_weak(v99);
          }
        }
      }

      v100 = *(&v169 + 1);
      if (*(&v169 + 1) && !atomic_fetch_add((*(&v169 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v100->__on_zero_shared)(v100);
        std::__shared_weak_count::__release_weak(v100);
      }

      v17 = v161 + 2;
      if (v161 + 2 == &v158[2 * v11])
      {
        goto LABEL_235;
      }
    }

    while (1)
    {
      v21 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__find_equal<std::string>(&v174, &v174 + 1, &v179, &v177, v19 + 4);
      if (*v21)
      {
        v22 = v19[1];
        if (v22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v23 = v21;
        std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::__construct_node<std::pair<std::string const,std::tuple<std::string,std::string,unsigned int>> const&>(&v174, (v19 + 4), &v171);
        v24 = v179.__r_.__value_.__r.__words[0];
        v25 = v171.__r_.__value_.__r.__words[0];
        *v171.__r_.__value_.__l.__data_ = 0;
        v25[1] = 0;
        v25[2] = v24;
        *v23 = v25;
        if (*v174)
        {
          *&v174 = *v174;
          v25 = *v23;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(&v174 + 1), v25);
        ++v175;
        v22 = v19[1];
        if (v22)
        {
          do
          {
LABEL_29:
            v26 = v22;
            v22 = *v22;
          }

          while (v22);
          goto LABEL_22;
        }
      }

      do
      {
        v26 = v19[2];
        v27 = *v26 == v19;
        v19 = v26;
      }

      while (!v27);
LABEL_22:
      v19 = v26;
      if (v26 == v20)
      {
        v18 = **(a1 + 72);
        goto LABEL_35;
      }
    }
  }

LABEL_235:
  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRNetwork>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRNetwork>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRNetwork>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRNetwork> const&)#1}>(v160, &__dst, v158, v11, 1);
  if (SHIBYTE(v168) < 0)
  {
    operator delete(__dst);
  }

  if (!*(a1 + 112))
  {
    goto LABEL_258;
  }

  plist::PListArray::Create(&v179);
  v101 = *(a1 + 112);
  if (v101)
  {
    v102 = *(a1 + 104);
    for (i = 16 * v101; i; i -= 16)
    {
      mlir::anec::ANECIRProcedure::Serialize(*v102, &v171);
      v104 = v179.__r_.__value_.__r.__words[0];
      mlir::anec::ANECDictionary::PListEntry(&v171, &v177);
      plist::PListArray::push_back(v104, &v177);
      v105 = v177.__r_.__value_.__l.__size_;
      if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v105->__on_zero_shared)(v105);
        std::__shared_weak_count::__release_weak(v105);
        v106 = v171.__r_.__value_.__l.__size_;
        if (v171.__r_.__value_.__l.__size_)
        {
LABEL_244:
          if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v106->__on_zero_shared)(v106);
            std::__shared_weak_count::__release_weak(v106);
          }
        }
      }

      else
      {
        v106 = v171.__r_.__value_.__l.__size_;
        if (v171.__r_.__value_.__l.__size_)
        {
          goto LABEL_244;
        }
      }

      v102 += 2;
    }
  }

  v107 = *v157;
  v164 = *&v179.__r_.__value_.__l.__data_;
  if (v179.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v179.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v164, &v171);
  mlir::anec::ANECDictionary::Add(v107, @"ProcedureList", &v171);
  v108 = v171.__r_.__value_.__l.__size_;
  if (v171.__r_.__value_.__l.__size_ && !atomic_fetch_add((v171.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v108->__on_zero_shared)(v108);
    std::__shared_weak_count::__release_weak(v108);
  }

  v109 = *(&v164 + 1);
  if (*(&v164 + 1) && !atomic_fetch_add((*(&v164 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v109->__on_zero_shared)(v109);
    std::__shared_weak_count::__release_weak(v109);
  }

  v110 = v179.__r_.__value_.__l.__size_;
  if (v179.__r_.__value_.__l.__size_ && !atomic_fetch_add((v179.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v110->__on_zero_shared)(v110);
    std::__shared_weak_count::__release_weak(v110);
    if (!a4)
    {
      return;
    }
  }

  else
  {
LABEL_258:
    if (!a4)
    {
      return;
    }
  }

  plist::PListDict::Create(&__str);
  plist::PListDict::Create(&v174);
  plist::PListDict::Create(&__dst);
  v111 = __dst;
  if (v156)
  {
    if (a4 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_349;
    }

    if (a4 >= 0x17)
    {
      if ((a4 | 7) == 0x17)
      {
        v114 = 25;
      }

      else
      {
        v114 = (a4 | 7) + 1;
      }

      v112 = operator new(v114);
      v171.__r_.__value_.__l.__size_ = a4;
      v171.__r_.__value_.__r.__words[2] = v114 | 0x8000000000000000;
      v171.__r_.__value_.__r.__words[0] = v112;
    }

    else
    {
      *(&v171.__r_.__value_.__s + 23) = a4;
      v112 = &v171;
    }

    memmove(v112, v156, a4);
    *(v112 + a4) = 0;
    v113 = (v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v113 = 0;
    memset(&v171, 0, sizeof(v171));
  }

  v115 = operator new(0x38uLL);
  v116 = v115;
  *(v115 + 1) = 0;
  *(v115 + 2) = 0;
  *v115 = &unk_1F5B344E8;
  v117 = (v115 + 24);
  *(v115 + 3) = &unk_1F5B34628;
  if (v113)
  {
    std::string::__init_copy_ctor_external((v115 + 32), v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v115 + 32) = v171;
  }

  v179.__r_.__value_.__r.__words[0] = v117;
  v179.__r_.__value_.__l.__size_ = v116;
  plist::PListDict::insert(v111, @"ModelBundleName", &v179);
  v118 = v179.__r_.__value_.__l.__size_;
  if (!v179.__r_.__value_.__l.__size_ || atomic_fetch_add((v179.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v171.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_277;
  }

  (v118->__on_zero_shared)(v118);
  std::__shared_weak_count::__release_weak(v118);
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_277:
    operator delete(v171.__r_.__value_.__l.__data_);
  }

LABEL_278:
  v179.__r_.__value_.__r.__words[0] = mlir::AffineMapAttr::getValue(&v166);
  AttrData = mlir::OpaqueAttr::getAttrData(&v179);
  v177.__r_.__value_.__r.__words[0] = mlir::AffineMapAttr::getValue(&v166);
  v120 = mlir::OpaqueAttr::getAttrData(&v177);
  *&v171.__r_.__value_.__r.__words[1] = 0uLL;
  v171.__r_.__value_.__r.__words[0] = &__p;
  v122 = v120 + v121 - AttrData;
  if ((v120 + v121) == AttrData)
  {
    v123 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v171, &__p, v122, 1);
    memcpy((v171.__r_.__value_.__r.__words[0] + v171.__r_.__value_.__l.__size_), AttrData, v122);
    v123 = v171.__r_.__value_.__l.__size_;
  }

  v171.__r_.__value_.__l.__size_ = v123 + v122;
  llvm::sys::fs::make_absolute(&v171);
  v124 = v171.__r_.__value_.__l.__size_;
  if (v171.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_349:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v125 = v171.__r_.__value_.__r.__words[0];
  if (v171.__r_.__value_.__l.__size_ >= 0x17)
  {
    if ((v171.__r_.__value_.__l.__size_ | 7) == 0x17)
    {
      v127 = 25;
    }

    else
    {
      v127 = (v171.__r_.__value_.__l.__size_ | 7) + 1;
    }

    v126 = operator new(v127);
    v179.__r_.__value_.__l.__size_ = v124;
    v179.__r_.__value_.__r.__words[2] = v127 | 0x8000000000000000;
    v179.__r_.__value_.__r.__words[0] = v126;
    goto LABEL_289;
  }

  *(&v179.__r_.__value_.__s + 23) = v171.__r_.__value_.__s.__data_[8];
  v126 = &v179;
  if (v171.__r_.__value_.__l.__size_)
  {
LABEL_289:
    memmove(v126, v125, v124);
  }

  *(v126 + v124) = 0;
  v128 = __dst;
  v129 = operator new(0x38uLL);
  *(v129 + 1) = 0;
  *(v129 + 2) = 0;
  *v129 = &unk_1F5B344E8;
  v130 = (v129 + 24);
  *(v129 + 3) = &unk_1F5B34628;
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    v131 = v129;
    std::string::__init_copy_ctor_external((v129 + 32), v179.__r_.__value_.__l.__data_, v179.__r_.__value_.__l.__size_);
    v129 = v131;
  }

  else
  {
    *(v129 + 32) = v179;
  }

  v177.__r_.__value_.__r.__words[0] = v130;
  v177.__r_.__value_.__l.__size_ = v129;
  plist::PListDict::insert(v128, @"ModelPath", &v177);
  v132 = v177.__r_.__value_.__l.__size_;
  if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v132->__on_zero_shared)(v132);
    std::__shared_weak_count::__release_weak(v132);
  }

  v133 = v174;
  *&v177.__r_.__value_.__l.__data_ = __dst;
  if (*(&__dst + 1))
  {
    atomic_fetch_add_explicit((*(&__dst + 1) + 8), 1uLL, memory_order_relaxed);
  }

  plist::PListDict::insert(v133, @"ModelSourceInformation", &v177);
  v134 = v177.__r_.__value_.__l.__size_;
  if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v134->__on_zero_shared)(v134);
    std::__shared_weak_count::__release_weak(v134);
  }

  v135 = v174;
  *&v180 = @"OnTheFly";
  v136 = operator new(0x38uLL);
  v137 = std::__shared_ptr_emplace<plist::PListString>::__shared_ptr_emplace[abi:nn200100]<__CFString const*,std::allocator<plist::PListString>,0>(v136, &v180);
  v177.__r_.__value_.__r.__words[0] = v137 + 24;
  v177.__r_.__value_.__l.__size_ = v137;
  plist::PListDict::insert(v135, @"ModelCompilationMethod", &v177);
  v138 = v177.__r_.__value_.__l.__size_;
  if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v138->__on_zero_shared)(v138);
    std::__shared_weak_count::__release_weak(v138);
  }

  v139 = __str.__r_.__value_.__r.__words[0];
  *&v177.__r_.__value_.__l.__data_ = v174;
  if (*(&v174 + 1))
  {
    atomic_fetch_add_explicit((*(&v174 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  plist::PListDict::insert(v139, @"ModelInformation", &v177);
  v140 = v177.__r_.__value_.__l.__size_;
  if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v140->__on_zero_shared)(v140);
    std::__shared_weak_count::__release_weak(v140);
  }

  plist::PListDict::Create(&v180);
  v141 = v180;
  v142 = operator new(0x38uLL);
  v142[1] = 0;
  v142[2] = 0;
  *v142 = &unk_1F5B344E8;
  std::allocator<plist::PListString>::construct[abi:nn200100]<plist::PListString,char const(&)[19]>(&v177, v142 + 3, "com.apple.mlir-mps");
  v177.__r_.__value_.__r.__words[0] = (v142 + 3);
  v177.__r_.__value_.__l.__size_ = v142;
  plist::PListDict::insert(v141, @"ModuleBundleName", &v177);
  v143 = v177.__r_.__value_.__l.__size_;
  if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v143->__on_zero_shared)(v143);
    std::__shared_weak_count::__release_weak(v143);
  }

  v144 = v180;
  v145 = operator new(0x38uLL);
  v145[1] = 0;
  v145[2] = 0;
  *v145 = &unk_1F5B344E8;
  std::allocator<plist::PListString>::construct[abi:nn200100]<plist::PListString,char const(&)[19]>(&v177, v145 + 3, "1.0.0git");
  v177.__r_.__value_.__r.__words[0] = (v145 + 3);
  v177.__r_.__value_.__l.__size_ = v145;
  plist::PListDict::insert(v144, @"ModuleVersion", &v177);
  v146 = v177.__r_.__value_.__l.__size_;
  if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v146->__on_zero_shared)(v146);
    std::__shared_weak_count::__release_weak(v146);
  }

  v147 = __str.__r_.__value_.__r.__words[0];
  *&v177.__r_.__value_.__l.__data_ = v180;
  if (*(&v180 + 1))
  {
    atomic_fetch_add_explicit((*(&v180 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  plist::PListDict::insert(v147, @"ModuleInformation", &v177);
  v148 = v177.__r_.__value_.__l.__size_;
  if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v148->__on_zero_shared)(v148);
    std::__shared_weak_count::__release_weak(v148);
  }

  v149 = *v157;
  v163 = *&__str.__r_.__value_.__l.__data_;
  if (__str.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::PListEntry(&v163, &v177);
  mlir::anec::ANECDictionary::Add(v149, @"ModelDebugInformation", &v177);
  v150 = v177.__r_.__value_.__l.__size_;
  if (v177.__r_.__value_.__l.__size_ && !atomic_fetch_add((v177.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v150->__on_zero_shared)(v150);
    std::__shared_weak_count::__release_weak(v150);
  }

  v151 = *(&v163 + 1);
  if (*(&v163 + 1) && !atomic_fetch_add((*(&v163 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v151->__on_zero_shared)(v151);
    std::__shared_weak_count::__release_weak(v151);
  }

  v152 = *(&v180 + 1);
  if (*(&v180 + 1) && !atomic_fetch_add((*(&v180 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v152->__on_zero_shared)(v152);
    std::__shared_weak_count::__release_weak(v152);
    if ((SHIBYTE(v179.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_332;
    }

    goto LABEL_331;
  }

  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_331:
    operator delete(v179.__r_.__value_.__l.__data_);
  }

LABEL_332:
  if (v171.__r_.__value_.__l.__data_ != &__p)
  {
    free(v171.__r_.__value_.__l.__data_);
  }

  v153 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v153->__on_zero_shared)(v153);
    std::__shared_weak_count::__release_weak(v153);
  }

  v154 = *(&v174 + 1);
  if (*(&v174 + 1) && !atomic_fetch_add((*(&v174 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v154->__on_zero_shared)(v154);
    std::__shared_weak_count::__release_weak(v154);
  }

  v155 = __str.__r_.__value_.__l.__size_;
  if (__str.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((__str.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v155->__on_zero_shared)(v155);
      std::__shared_weak_count::__release_weak(v155);
    }
  }
}

BOOL plist::PListDict::insert(uint64_t a1, CFStringRef theString, uint64_t *a3)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v6 = strlen(CStringPtr);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    v17 = v9 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_9;
  }

  HIBYTE(v17) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_9:
    memmove(v8, CStringPtr, v7);
  }

  *(v7 + v8) = 0;
  v10 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 8), __dst);
  if (!v10)
  {
    v18 = __dst;
    v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, __dst, &std::piecewise_construct, &v18);
    v14 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v12 + 6);
    *(v12 + 5) = v14;
    *(v12 + 6) = v13;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  return v10 == 0;
}

uint64_t mlir::anec::ANECIRTop::Write(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3, uint64_t a4, const void *a5, std::string::size_type a6)
{
  mlir::anec::ANECIRTop::Serialize(a1, a4, a5, a6, &v10);
  result = mlir::anec::ANECDictionary::WriteToStream(v10, a2);
  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      return v9;
    }
  }

  return result;
}

void mlir::anec::ANECIRUnit::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4)
{
  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToNameAndShorten(v8, a2, a4);
  v9 = *(a1 + 40);
  if (v9)
  {
    std::string::operator=((v9 + 8), v8);
    v10 = *(a1 + 40);
    v11 = *(v10 + 40);
    v12 = *(v10 + 48);
    if (v11 != v12)
    {
      do
      {
        mlir::anec::PrependProcNameToNameAndShorten(v11, a2, a4);
        v11 += 24;
      }

      while (v11 != v12);
      v10 = *(a1 + 40);
    }

    if ((*(v10 + 32) - 61) < 2)
    {
      for (i = *(v10 + 96); i; i = *i)
      {
        mlir::anec::PrependProcNameToNameAndShorten((i + 3), a2, a4);
      }
    }
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    v15 = *(a1 + 64);
    v16 = 32 * v14;
    do
    {
      mlir::anec::PrependProcNameToNameAndShorten(v15, a2, a4);
      v15 += 32;
      v16 -= 32;
    }

    while (v16);
  }

  v19 = v8;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v8->__r_.__value_.__l.__data_, &std::piecewise_construct, &v19);
  std::string::operator=((v17 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void mlir::anec::ANECIRGOCUnit::~ANECIRGOCUnit(mlir::anec::ANECIRGOCUnit *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  operator delete(v1);
}

void mlir::anec::ANECIRNeuron::~ANECIRNeuron(mlir::anec::ANECIRNeuron *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  operator delete(v1);
}

void mlir::anec::ANECIRPoolUnit::~ANECIRPoolUnit(mlir::anec::ANECIRPoolUnit *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  operator delete(v1);
}

char *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v8 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v41, a2, v9);
  v11 = v10;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v12)
      {
        v4 = v10 % v12;
      }
    }

    else
    {
      v4 = (v12 - 1) & v10;
    }

    v15 = *(*a1 + 8 * v4);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        v17 = v6[23];
        if (v17 >= 0)
        {
          v18 = v6[23];
        }

        else
        {
          v18 = *(v6 + 1);
        }

        if (v17 < 0)
        {
          v6 = *v6;
        }

        do
        {
          v19 = *(v16 + 1);
          if (v19 == v11)
          {
            v20 = v16[39];
            v21 = v20;
            if ((v20 & 0x80u) != 0)
            {
              v20 = *(v16 + 3);
            }

            if (v20 == v18)
            {
              v22 = v21 >= 0 ? v16 + 16 : *(v16 + 2);
              if (!memcmp(v22, v6, v18))
              {
                return v16;
              }
            }
          }

          else
          {
            if (v14 <= 1)
            {
              v19 &= v12 - 1;
            }

            else if (v19 >= v12)
            {
              v19 %= v12;
            }

            if (v19 != v4)
            {
              break;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }
  }

  v23 = operator new(0x38uLL);
  v16 = v23;
  *v23 = 0;
  *(v23 + 1) = v11;
  v24 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v23 + 16), *v24, *(v24 + 1));
  }

  else
  {
    v25 = *v24;
    *(v23 + 4) = *(v24 + 2);
    *(v23 + 1) = v25;
  }

  *(v16 + 5) = 0;
  *(v16 + 6) = 0;
  v26 = (*(a1 + 24) + 1);
  v27 = *(a1 + 32);
  if (!v12 || (v27 * v12) < v26)
  {
    v28 = 1;
    if (v12 >= 3)
    {
      v28 = (v12 & (v12 - 1)) != 0;
    }

    v29 = v28 | (2 * v12);
    v30 = vcvtps_u32_f32(v26 / v27);
    if (v29 <= v30)
    {
      prime = v30;
    }

    else
    {
      prime = v29;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v32 = *(a1 + 8);
    if (prime > *&v32)
    {
      goto LABEL_48;
    }

    if (prime < *&v32)
    {
      v33 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (*&v32 < 3uLL || (v34 = vcnt_s8(v32), v34.i16[0] = vaddlv_u8(v34), v34.u32[0] > 1uLL))
      {
        v36 = prime;
        v33 = std::__next_prime(v33);
        prime = v36;
      }

      else
      {
        v35 = 1 << -__clz(v33 - 1);
        if (v33 >= 2)
        {
          v33 = v35;
        }
      }

      if (prime <= v33)
      {
        prime = v33;
      }

      if (prime < *&v32)
      {
LABEL_48:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v4 = v11 % v12;
      }

      else
      {
        v4 = v11;
      }
    }

    else
    {
      v4 = (v12 - 1) & v11;
    }
  }

  v37 = *a1;
  v38 = *(*a1 + 8 * v4);
  if (v38)
  {
    *v16 = *v38;
LABEL_72:
    *v38 = v16;
    goto LABEL_73;
  }

  *v16 = *(a1 + 16);
  *(a1 + 16) = v16;
  *(v37 + 8 * v4) = a1 + 16;
  if (*v16)
  {
    v39 = *(*v16 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v39 >= v12)
      {
        v39 %= v12;
      }
    }

    else
    {
      v39 &= v12 - 1;
    }

    v38 = (*a1 + 8 * v39);
    goto LABEL_72;
  }

LABEL_73:
  ++*(a1 + 24);
  return v16;
}

void mlir::anec::ANECDictionary::Add(uint64_t *a1, CFStringRef theString, uint64_t *a3)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v6 = strlen(CStringPtr);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    p_dst = operator new(v9);
    *(&__dst + 1) = v7;
    v15 = v9 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v15) = v6;
  p_dst = &__dst;
  if (v6)
  {
LABEL_9:
    memmove(p_dst, CStringPtr, v7);
  }

  *(p_dst + v7) = 0;
  v10 = a3[1];
  v12 = *a3;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::Add(a1, &__dst, &v12);
  v11 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v15) < 0)
  {
LABEL_15:
    operator delete(__dst);
  }
}

void mlir::anec::ANECDictionary::PListEntry(CFStringRef theString@<X1>, void *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v5 = strlen(CStringPtr);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v10 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v10) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, CStringPtr, v6);
  }

  *(v6 + v7) = 0;
  mlir::anec::ANECDictionary::PListEntry(__dst, a2);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t), char a6)
{
  if (a4)
  {
    v7 = a3;
    if (a4 != 1 || (a6 & 1) != 0)
    {
      plist::PListArray::Create(&v24);
      v12 = 32 * a4;
      do
      {
        v13 = v24;
        a5(&v20, v7);
        mlir::anec::ANECDictionary::PListEntry(&v20, &v23);
        plist::PListArray::push_back(v13, &v23);
        v14 = *(&v23 + 1);
        if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        if (v22 < 0)
        {
          operator delete(v20);
        }

        v7 += 32;
        v12 -= 32;
      }

      while (v12);
      v18 = v24;
      v19 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mlir::anec::ANECDictionary::PListEntry(&v18, &v20);
      mlir::anec::ANECDictionary::Add(a1, a2, &v20);
      v15 = v21;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = v19;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = v25;
      if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    else
    {
      a5(__p, a3);
      mlir::anec::ANECDictionary::PListEntry(__p, &v20);
      mlir::anec::ANECDictionary::Add(a1, a2, &v20);
      v10 = v21;
      if (!v21 || atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((v27 & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_7;
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      if (v27 < 0)
      {
LABEL_7:
        operator delete(__p[0]);
      }
    }
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t), char a6)
{
  if (a4)
  {
    v7 = a3;
    if (a4 != 1 || (a6 & 1) != 0)
    {
      plist::PListArray::Create(&v24);
      v12 = 16 * a4;
      do
      {
        v13 = v24;
        a5(&v20, v7);
        mlir::anec::ANECDictionary::PListEntry(&v20, &v23);
        plist::PListArray::push_back(v13, &v23);
        v14 = *(&v23 + 1);
        if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        if (v22 < 0)
        {
          operator delete(v20);
        }

        v7 += 16;
        v12 -= 16;
      }

      while (v12);
      v18 = v24;
      v19 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mlir::anec::ANECDictionary::PListEntry(&v18, &v20);
      mlir::anec::ANECDictionary::Add(a1, a2, &v20);
      v15 = v21;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = v19;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = v25;
      if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    else
    {
      a5(__p, a3);
      mlir::anec::ANECDictionary::PListEntry(__p, &v20);
      mlir::anec::ANECDictionary::Add(a1, a2, &v20);
      v10 = v21;
      if (!v21 || atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((v27 & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_7;
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      if (v27 < 0)
      {
LABEL_7:
        operator delete(__p[0]);
      }
    }
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), char a6)
{
  if (a4)
  {
    v7 = a3;
    if (a4 == 1 && (a6 & 1) == 0)
    {
      v10 = a5(a3);
      mlir::anec::ANECDictionary::PListEntry(v10, &v23);
      mlir::anec::ANECDictionary::Add(a1, a2, &v23);
      v11 = *(&v23 + 1);
      if (!*(&v23 + 1))
      {
        return;
      }

      goto LABEL_20;
    }

    plist::PListArray::Create(&v21);
    v13 = 16 * a4;
    do
    {
      v14 = v21;
      v15 = a5(v7);
      mlir::anec::ANECDictionary::PListEntry(v15, &v23);
      plist::PListArray::push_back(v14, &v23);
      v16 = *(&v23 + 1);
      if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v7 += 16;
      v13 -= 16;
    }

    while (v13);
    v19 = v21;
    v20 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mlir::anec::ANECDictionary::PListEntry(&v19, &v23);
    mlir::anec::ANECDictionary::Add(a1, a2, &v23);
    v17 = *(&v23 + 1);
    if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v20;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v11 = v22;
    if (v22)
    {
LABEL_20:
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }
}

void mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), char a6)
{
  if (a4)
  {
    v7 = a3;
    if (a4 == 1 && (a6 & 1) == 0)
    {
      v10 = a5(a3);
      mlir::anec::ANECDictionary::PListEntry(*v10, &v23);
      mlir::anec::ANECDictionary::Add(a1, a2, &v23);
      v11 = *(&v23 + 1);
      if (!*(&v23 + 1))
      {
        return;
      }

      goto LABEL_20;
    }

    plist::PListArray::Create(&v21);
    v13 = 8 * a4;
    do
    {
      v14 = v21;
      v15 = a5(v7);
      mlir::anec::ANECDictionary::PListEntry(*v15, &v23);
      plist::PListArray::push_back(v14, &v23);
      v16 = *(&v23 + 1);
      if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v7 += 8;
      v13 -= 8;
    }

    while (v13);
    v19 = v21;
    v20 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mlir::anec::ANECDictionary::PListEntry(&v19, &v23);
    mlir::anec::ANECDictionary::Add(a1, a2, &v23);
    v17 = *(&v23 + 1);
    if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v20;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v11 = v22;
    if (v22)
    {
LABEL_20:
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRInput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(uint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
LABEL_14:
    mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(a1, a2, a3, a4, 1);
    return;
  }

  v10 = 16 * a4;
  v11 = a3;
  while (1)
  {
    v12 = *v11;
    mlir::anec::ANECIRInput::Serialize(*v11, &v22);
    v13 = *(a5 + 24);
    if (!v13)
    {
      break;
    }

    (*(*v13 + 48))(&v24);
    mlir::anec::ANECDictionary::PListEntry(&v24, &v26);
    mlir::anec::ANECDictionary::Add(a1, (v12 + 8), &v26);
    v14 = v27;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v15 = v25;
      if (v25)
      {
LABEL_8:
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }
      }
    }

    else
    {
      v15 = v25;
      if (v25)
      {
        goto LABEL_8;
      }
    }

    v16 = v23;
    if (v23)
    {
      if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }

    v11 += 2;
    v10 -= 16;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v17 = std::__throw_bad_function_call[abi:nn200100]();
  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(v17, v18, v19, v20, v21);
}

void mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(uint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  if (a4)
  {
    v5 = a3;
    if (a4 != 1 || (a5 & 1) != 0)
    {
      plist::PListArray::Create(&v24);
      v11 = 16 * a4;
      do
      {
        v12 = v24;
        v13 = *v5;
        if (*(*v5 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v13 + 8), *(v13 + 16));
        }

        else
        {
          v14 = *(v13 + 8);
          __p.__r_.__value_.__r.__words[2] = *(v13 + 24);
          *&__p.__r_.__value_.__l.__data_ = v14;
        }

        mlir::anec::ANECDictionary::PListEntry(&__p, &v23);
        plist::PListArray::push_back(v12, &v23);
        v15 = *(&v23 + 1);
        if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v5 += 2;
        v11 -= 16;
      }

      while (v11);
      v20 = v24;
      v21 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mlir::anec::ANECDictionary::PListEntry(&v20, &__p);
      mlir::anec::ANECDictionary::Add(a1, a2, &__p);
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v17 = v21;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      v18 = v25;
      if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    else
    {
      v8 = *a3;
      if (*(*a3 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v26.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v26.__r_.__value_.__l.__data_ = v9;
      }

      mlir::anec::ANECDictionary::PListEntry(&v26, &__p);
      mlir::anec::ANECDictionary::Add(a1, a2, &__p);
      v19 = __p.__r_.__value_.__l.__size_;
      if (!__p.__r_.__value_.__l.__size_ || atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_31;
      }

      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_31:
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }
  }
}

void *_ZNKSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_11ANECIRInputENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B343C8;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_11ANECIRInputENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_EclEOS9_(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIROutput,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(uint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = 16 * a4;
    v11 = a3;
    do
    {
      v12 = *v11;
      mlir::anec::ANECIROutput::Serialize(*v11, &v17);
      v13 = *(a5 + 24);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        JUMPOUT(0x1E043F448);
      }

      (*(*v13 + 48))(&v19);
      mlir::anec::ANECDictionary::PListEntry(&v19, &v21);
      mlir::anec::ANECDictionary::Add(a1, (v12 + 8), &v21);
      v14 = v22;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v15 = v20;
        if (v20)
        {
LABEL_8:
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
          }
        }
      }

      else
      {
        v15 = v20;
        if (v20)
        {
          goto LABEL_8;
        }
      }

      v16 = v18;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v11 += 2;
      v10 -= 16;
    }

    while (v10);
  }

  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(a1, a2, a3, a4, 1);
}

void *_ZNKSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_12ANECIROutputENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B34410;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_12ANECIROutputENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_EclEOS9_(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRUnit,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(uint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = 16 * a4;
    v11 = a3;
    do
    {
      v12 = *v11;
      (*(**v11 + 24))(&v17, *v11);
      v13 = *(a5 + 24);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        JUMPOUT(0x1E043F6C0);
      }

      (*(*v13 + 48))(&v19);
      mlir::anec::ANECDictionary::PListEntry(&v19, &v21);
      mlir::anec::ANECDictionary::Add(a1, (v12 + 8), &v21);
      v14 = v22;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v15 = v20;
        if (v20)
        {
LABEL_8:
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
          }
        }
      }

      else
      {
        v15 = v20;
        if (v20)
        {
          goto LABEL_8;
        }
      }

      v16 = v18;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v11 += 2;
      v10 -= 16;
    }

    while (v10);
  }

  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(a1, a2, a3, a4, 1);
}

void *_ZNKSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_10ANECIRUnitENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B34458;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_10ANECIRUnitENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_EclEOS9_(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::AddLayers<mlir::anec::ANECIRConstant,std::function<std::shared_ptr<mlir::anec::ANECDictionary> ()(std::shared_ptr<mlir::anec::ANECDictionary>)>>(uint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = 16 * a4;
    v11 = a3;
    do
    {
      v12 = *v11;
      mlir::anec::ANECIRConstant::Serialize(*v11, &v17);
      v13 = *(a5 + 24);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        JUMPOUT(0x1E043F918);
      }

      (*(*v13 + 48))(&v19);
      mlir::anec::ANECDictionary::PListEntry(&v19, &v21);
      mlir::anec::ANECDictionary::Add(a1, (v12 + 8), &v21);
      v14 = v22;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v15 = v20;
        if (v20)
        {
LABEL_8:
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
          }
        }
      }

      else
      {
        v15 = v20;
        if (v20)
        {
          goto LABEL_8;
        }
      }

      v16 = v18;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v11 += 2;
      v10 -= 16;
    }

    while (v10);
  }

  mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRInput>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRInput>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRInput>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRInput> const&)#1}>(a1, a2, a3, a4, 1);
}

void *_ZNKSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_14ANECIRConstantENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B344A0;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir4anec14ANECDictionary9AddLayersINS3_14ANECIRConstantENS_8functionIFNS_10shared_ptrIS4_EES9_EEEEEvPK10__CFStringN4llvm8ArrayRefINS8_IT_EEEET0_Ed_UlRKS9_E_NS_9allocatorISN_EESA_EclEOS9_(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t **std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::tuple<std::string,std::string,unsigned int>>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    if (v7 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    while (1)
    {
      while (1)
      {
        v10 = v5;
        v13 = v5[4];
        v11 = v5 + 4;
        v12 = v13;
        v14 = *(v11 + 23);
        if (v14 >= 0)
        {
          v15 = *(v11 + 23);
        }

        else
        {
          v15 = v11[1];
        }

        if (v14 >= 0)
        {
          v16 = v11;
        }

        else
        {
          v16 = v12;
        }

        if (v15 >= v8)
        {
          v17 = v8;
        }

        else
        {
          v17 = v15;
        }

        v18 = memcmp(v9, v16, v17);
        v19 = v8 < v15;
        if (v18)
        {
          v19 = v18 < 0;
        }

        if (!v19)
        {
          break;
        }

        v5 = *v10;
        v6 = v10;
        if (!*v10)
        {
          goto LABEL_27;
        }
      }

      v20 = memcmp(v16, v9, v17);
      v21 = v15 < v8;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (!v21)
      {
        return v10;
      }

      v5 = v10[1];
      if (!v5)
      {
        v6 = v10 + 1;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v10 = a1 + 1;
LABEL_27:
    v22 = operator new(0x70uLL);
    v23 = v22;
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v22 + 32), *a3, *(a3 + 8));
    }

    else
    {
      *(v22 + 2) = *a3;
      *(v22 + 6) = *(a3 + 16);
    }

    *(v23 + 56) = *(a3 + 24);
    *(v23 + 9) = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    v24 = *(a3 + 48);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(v23 + 5) = v24;
    *(v23 + 12) = *(a3 + 64);
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    *(v23 + 26) = *(a3 + 72);
    *v23 = 0;
    *(v23 + 1) = 0;
    *(v23 + 2) = v10;
    *v6 = v23;
    v25 = v23;
    v26 = **a1;
    if (v26)
    {
      *a1 = v26;
      v25 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v25);
    a1[2] = (a1[2] + 1);
  }

  return v23;
}

void std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::__construct_node<std::pair<std::string const,std::tuple<std::string,std::string,unsigned int>> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x70uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external((v7 + 56), *(a2 + 24), *(a2 + 32));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    std::string::__init_copy_ctor_external((v7 + 80), *(a2 + 48), *(a2 + 56));
    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  if (*(a2 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v7 + 56) = *(a2 + 24);
  *(v7 + 9) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  *(v7 + 5) = *(a2 + 48);
  *(v7 + 12) = *(a2 + 64);
LABEL_8:
  *(v7 + 26) = *(a2 + 72);
  *(a3 + 16) = 1;
}

std::string **std::pair<std::vector<std::string>,std::vector<std::string>>::pair[abi:nn200100]<std::vector<std::string>&,std::vector<std::string>&,0>(std::string **a1, __int128 **a2, __int128 **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 - *a2;
  if (v6 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_18;
    }

    v8 = operator new(v6 - *a2);
    *a1 = v8;
    a1[1] = v8;
    a1[2] = (v8 + v7);
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v5, *(v5 + 1));
      }

      else
      {
        v9 = *v5;
        v8->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v5 = (v5 + 24);
      ++v8;
    }

    while (v5 != v6);
    a1[1] = v8;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v10 = *a3;
  v11 = a3[1];
  v12 = v11 - *a3;
  if (v11 == *a3)
  {
    return a1;
  }

  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_18:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v13 = operator new(v11 - *a3);
  a1[3] = v13;
  a1[4] = v13;
  a1[5] = (v13 + v12);
  do
  {
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v13, *v10, *(v10 + 1));
    }

    else
    {
      v14 = *v10;
      v13->__r_.__value_.__r.__words[2] = *(v10 + 2);
      *&v13->__r_.__value_.__l.__data_ = v14;
    }

    v10 = (v10 + 24);
    ++v13;
  }

  while (v10 != v11);
  a1[4] = v13;
  return a1;
}

void std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return;
  }

  std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(a1, *a2);
  std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(a1, *(a2 + 1));
  if ((a2[103] & 0x80000000) == 0)
  {
    if ((a2[79] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    operator delete(*(a2 + 7));
    if ((a2[55] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    operator delete(*(a2 + 4));
    goto LABEL_5;
  }

  operator delete(*(a2 + 10));
  if (a2[79] < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (a2[55] < 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  operator delete(a2);
}

void mlir::anec::ANECDictionary::Add<std::shared_ptr<mlir::anec::ANECIRNetwork>,void mlir::anec::ANECDictionary::AddLayerNames<mlir::anec::ANECIRNetwork>(std::string const&,llvm::ArrayRef<std::shared_ptr<mlir::anec::ANECIRNetwork>>)::{lambda(std::shared_ptr<mlir::anec::ANECIRNetwork> const&)#1}>(uint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  if (a4)
  {
    v5 = a3;
    if (a4 != 1 || (a5 & 1) != 0)
    {
      plist::PListArray::Create(&v22);
      v10 = 16 * a4;
      do
      {
        v11 = v22;
        v12 = *v5;
        if (*(*v5 + 415) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v12 + 392), *(v12 + 400));
        }

        else
        {
          __p = *(v12 + 392);
        }

        mlir::anec::ANECDictionary::PListEntry(&__p, &v21);
        plist::PListArray::push_back(v11, &v21);
        v13 = *(&v21 + 1);
        if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v5 += 2;
        v10 -= 16;
      }

      while (v10);
      v18 = v22;
      v19 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mlir::anec::ANECDictionary::PListEntry(&v18, &__p);
      mlir::anec::ANECDictionary::Add(a1, a2, &__p);
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v15 = v19;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = v23;
      if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }

    else
    {
      v8 = *a3;
      if (*(*a3 + 415) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(v8 + 392), *(v8 + 400));
      }

      else
      {
        v24 = *(v8 + 392);
      }

      mlir::anec::ANECDictionary::PListEntry(&v24, &__p);
      mlir::anec::ANECDictionary::Add(a1, a2, &__p);
      v17 = __p.__r_.__value_.__l.__size_;
      if (!__p.__r_.__value_.__l.__size_ || atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_31;
      }

      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_31:
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }
  }
}

void std::__shared_ptr_emplace<plist::PListString>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B344E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_emplace<plist::PListString>::__shared_ptr_emplace[abi:nn200100]<__CFString const*,std::allocator<plist::PListString>,0>(uint64_t a1, const __CFString **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5B344E8;
  v3 = *a2;
  *(a1 + 24) = &unk_1F5B34628;
  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  v5 = strlen(CStringPtr);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    *(a1 + 40) = v6;
    *(a1 + 48) = v8 | 0x8000000000000000;
    *(a1 + 32) = v7;
  }

  else
  {
    v7 = (a1 + 32);
    *(a1 + 55) = v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  memmove(v7, CStringPtr, v6);
LABEL_10:
  *(v7 + v6) = 0;
  return a1;
}

void std::allocator<plist::PListString>::construct[abi:nn200100]<plist::PListString,char const(&)[19]>(int a1, void *a2, char *__s)
{
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    p_dst = operator new(v8);
    *(&__dst + 1) = v6;
    v12 = v8 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  p_dst = &__dst;
  if (v5)
  {
LABEL_9:
    memcpy(p_dst, __s, v6);
  }

  *(p_dst + v6) = 0;
  *a2 = &unk_1F5B34628;
  v9 = (a2 + 1);
  if (SHIBYTE(v12) < 0)
  {
    v10 = __dst;
    std::string::__init_copy_ctor_external(v9, __dst, *(&__dst + 1));

    operator delete(v10);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = __dst;
    v9->__r_.__value_.__r.__words[2] = v12;
  }
}

BOOL mlir::anec::ANECIRWeightSerializer::hasConstant(mlir::anec::ANECIRWeightSerializer *this, mlir::Operation *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v11, a2);
  v3 = *(this + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 6);
  v5 = v3 - 1;
  v6 = v5 & ((LODWORD(v12[0]) >> 4) ^ (LODWORD(v12[0]) >> 9));
  v7 = *(v4 + 8 * v6);
  if (v7 == v12[0])
  {
    return 1;
  }

  v9 = 1;
  do
  {
    result = v7 != -4096;
    if (v7 == -4096)
    {
      break;
    }

    v10 = v6 + v9++;
    v6 = v10 & v5;
    v7 = *(v4 + 8 * v6);
  }

  while (v7 != v12[0]);
  return result;
}

unint64_t mlir::anec::ANECIRWeightSerializer::addConstant(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  isSplat = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 48, &isSplat, &ArgOperands);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6 - 1;
  v8 = ((a2 >> 4) ^ (a2 >> 9)) & (v6 - 1);
  v9 = *(v5 + 16 * v8);
  if (v9 != a2)
  {
    v20 = 1;
    v21 = *(v5 + 16 * (((a2 >> 4) ^ (a2 >> 9)) & v7));
    v22 = ((a2 >> 4) ^ (a2 >> 9)) & v7;
    while (v21 != -4096)
    {
      v23 = v22 + v20++;
      v22 = v23 & v7;
      v21 = *(v5 + 16 * v22);
      if (v21 == a2)
      {
        if (v22 == v6)
        {
          goto LABEL_4;
        }

        if (v9 != a2)
        {
          v24 = 1;
          while (v9 != -4096)
          {
            v25 = v8 + v24++;
            v8 = v25 & v7;
            v9 = *(v5 + 16 * v8);
            if (v9 == a2)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_4;
  }

  if (v8 == v6)
  {
LABEL_4:
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v31);
    v37 = v10;
    isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
    if (mlir::Type::getIntOrFloatBitWidth(&isSplat) == 32)
    {
      v11 = 4;
    }

    else
    {
      ArgOperands = mlir::CallOpInterface::getArgOperands(&v31);
      v37 = v12;
      isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      v11 = 1;
      if (IntOrFloatBitWidth == 16)
      {
        v11 = 2;
      }
    }

    v14 = (*a1 - (*a1 != 0)) / v11;
    if (*a1)
    {
      ++v14;
    }

    v15 = v14 * v11;
    llvm::raw_ostream::write(*(a1 + 72), v30, v14 * v11 - *a1);
    v16 = v31;
    v28 = v31;
    v29 = v15;
    isSplat = v31;
    v35 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(a1 + 8, &isSplat, &v35, &ArgOperands);
    if (v38 == 1)
    {
      v17 = *(a1 + 40);
      *(ArgOperands + 8) = v17;
      v33 = &v29;
      isSplat = &v28;
      if (v17 >= *(a1 + 44))
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::StringAttr,mlir::Attribute>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::StringAttr&&>,std::tuple<mlir::Attribute&&>>(a1 + 32, &std::piecewise_construct, &isSplat, &v33);
      }

      else
      {
        v18 = (*(a1 + 32) + 16 * v17);
        *v18 = v16;
        v18[1] = v15;
        *(a1 + 40) = v17 + 1;
      }
    }

    Type = mlir::ElementsAttr::getType(&v31);
    if (Type)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *a1 = mlir::mps::writeConstantData(*(a1 + 72), v31, v32);
    return v15;
  }

LABEL_24:
  if (v8 == v6)
  {
LABEL_25:
    v26 = (a1 + 40);
  }

  else
  {
    v26 = (v5 + 16 * v8 + 8);
  }

  return *(*(a1 + 32) + 16 * *v26 + 8);
}