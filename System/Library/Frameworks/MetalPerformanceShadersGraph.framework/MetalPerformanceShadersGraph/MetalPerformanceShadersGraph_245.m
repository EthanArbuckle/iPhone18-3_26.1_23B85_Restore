uint64_t GPU::SinOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF40](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SinOpHandler::~SinOpHandler(GPU::SinOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SinhOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFA0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SinhOpHandler::~SinhOpHandler(GPU::SinhOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SquareOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::squareOp();
}

void GPU::SquareOpHandler::~SquareOpHandler(GPU::SquareOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SquareRootOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE40](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SquareRootOpHandler::~SquareRootOpHandler(GPU::SquareRootOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::TanOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF48](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::TanOpHandler::~TanOpHandler(GPU::TanOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::TanhOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::tanhOp();
}

void GPU::TanhOpHandler::~TanhOpHandler(GPU::TanhOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SelectOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 88), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);

  return MPSKernelDAG::selectOp();
}

void GPU::SelectOpHandler::~SelectOpHandler(GPU::SelectOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ClampOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 56), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 88), 0);

  return MPSKernelDAG::clampOp();
}

void GPU::ClampOpHandler::~ClampOpHandler(GPU::ClampOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::CreateComplexOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v5 + 72) + 24), 0);
  v7 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v5 + 72) + 56), 0);
  v8 = BaseTensorFromDataMap[2];
  v10 = *v8;
  v9 = v8[1];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  if (*(a3 + 8) != *a3 || memcmp(*a3, 0, *(a3 + 8) - *a3) != 0)
  {
    MPSKernelDAG::broadcastOp();
  }

  v12 = v7[2];
  v14 = *v12;
  v13 = v12[1];
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_20:
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*(a3 + 8) != *a3 || memcmp(*a3, 0, *(a3 + 8) - *a3) != 0)
  {
    MPSKernelDAG::broadcastOp();
  }

  return MPSKernelDAG::complexCreateOp();
}

void GPU::CreateComplexOpHandler::~CreateComplexOpHandler(GPU::CreateComplexOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::CastOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v3 + 72) + 24), 0);
  v5 = (*(*(*(v3 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  __p = v5;
  ElementType = mlir::TensorType::getElementType(&__p);
  if (*(v3 + 36))
  {
    v9 = v3 - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(*v10 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = 0;
  }

  __p = v10;
  v22 = mlir::TensorType::getElementType(&__p);
  v13 = *(*ElementType + 136);
  v14 = *(*v22 + 136);
  if (mlir::Type::isInteger(&v22, 1))
  {
    v15 = *(BaseTensorFromDataMap + 16);
    v20 = 0;
    v21 = 0;
    __p = 0;
    v17 = *v15;
    v16 = v15[1];
    if (v16 != v17)
    {
      if (((v16 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    MPSKernelDAG::constantOp();
    BaseTensorFromDataMap = MPSKernelDAG::isNotEqualOp();
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  else if (*(a1 + 32) || v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return MPSKernelDAG::castOp();
  }

  return BaseTensorFromDataMap;
}

void sub_1E07D6124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::CastOpHandler::~CastOpHandler(GPU::CastOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::FPToIntClampedOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE10](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::FPToIntClampedOpHandler::~FPToIntClampedOpHandler(GPU::FPToIntClampedOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::CropResizeOpHandler::CropResizeOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B4FD90;
  *(v6 + 15) = 0;
  *(v6 + 16) = 0;
  v7 = objc_alloc(MEMORY[0x1E69746E8]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v11 = this[15];
  this[15] = 0;

  v12 = this[16];
  this[16] = 0;

  return this;
}

void GPU::CropResizeOpHandler::encodeNDArrayOp(GPU::CropResizeOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v104[3] = *MEMORY[0x1E69E9840];
  v81 = a3;
  v5 = *(this + 2);
  v97 = *(this + 3);
  v6 = *(v97 + 72);
  v7 = *(v6 + 56);
  v8 = (*(*v5 + 48))(v5, *(v6 + 24), 0);
  v88 = [v8 mpsndarray];

  v9 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v89 = [v9 mpsndarray];

  v78 = [(NSArray *)v81 objectAtIndexedSubscript:0];
  v10 = [v78 mpsndarray];
  if (v88)
  {
    v11 = v89 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v10 == 0;
  v85 = v10;
  if (v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v91 = *(this + 1);
  [v91 setResizeHeight:mlir::mps::CropResizeOp::getResizeHeight(&v97)];
  [v91 setResizeWidth:mlir::mps::CostVolumeOp::getWindowHeight(&v97)];
  [v91 setNormalizeCoordinates:mlir::mps::GRUOp::getResetAfter(&v97)];
  mlir::mps::CropResizeOp::getSpatialScale(&v97, &v103);
  *&v13 = llvm::APFloat::convertToFloat(&v103);
  [v91 setSpatialScale:v13];
  llvm::APFloat::Storage::~Storage(v104);
  [v91 setResampleMode:mlir::mps::LSTMOp::getGateLayout(&v97)];
  [v91 setSamplingMode:mlir::mps::MaterializeSparseTensorOp::getStorageType(&v97)];
  [v91 setCoordinateMode:mlir::mps::SampleGridOp::getLayout(&v97)];
  v80 = [v88 descriptor];
  v84 = [v89 descriptor];
  v79 = [v80 getShape];
  v86 = [v84 getShape];
  v14 = [v86 objectAtIndexedSubscript:1];
  v87 = this;
  v15 = [v14 intValue] == 4;

  if (v15)
  {
    v83 = [v85 descriptor];
    [v83 transposeDimension:3 withDimension:4];
    v16 = MEMORY[0x1E69744E8];
    if (*(v85 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v85 setReadCount:{objc_msgSend(v85, "readCount") + 1}];
    }

    v17 = *(a2 + 1);
    v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v92 = [v85 safeArrayViewWithCommandBuffer:v17 computeEncoder:v18 descriptor:v83 aliasing:2];

    v19 = [v85 descriptor];
    v20 = [v19 getShape];
    v82 = [v20 mutableCopy];

    [v82 removeObjectAtIndex:1];
    v103 = 0;
    v21 = [v79 objectAtIndexedSubscript:0];
    v22 = [v21 intValue];

    v23 = *v16;
    if (v22 >= 2)
    {
      v24 = v23;
      if (*(v88 + v23) == 1)
      {
        [v88 setReadCount:{v22 + objc_msgSend(v88, "readCount") - 1}];
        v23 = *v16;
        v24 = *v16;
      }

      if (*(v89 + v24) == 1)
      {
        [v89 setReadCount:{v22 + objc_msgSend(v89, "readCount") - 1}];
        v23 = *v16;
      }
    }

    if (*(v92 + v23) == 1)
    {
      [v92 setReadCount:{objc_msgSend(v92, "readCount") + v22}];
    }

    LODWORD(v98) = 0;
    if (v22)
    {
      do
      {
        v25 = MEMORY[0x1E6974490];
        v26 = [v86 objectAtIndexedSubscript:0];
        v102 = v26;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
        v28 = [v25 descriptorWithDataType:536870944 shape:v27];

        v29 = objc_alloc(MEMORY[0x1E6974488]);
        v30 = [*(*(v87 + 2) + 48) metalDevice];
        v31 = [v29 initWithDevice:v30 descriptor:v28];

        [v31 writeBytes:&v98 strideBytes:&v103];
        v32 = [v92 descriptor];
        [v32 sliceDimension:4 withSubrange:{v98, 1}];
        v33 = *(a2 + 1);
        v34 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v35 = [v92 safeArrayViewWithCommandBuffer:v33 computeEncoder:v34 descriptor:v32 aliasing:1];

        v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v37 = *(a2 + 1);
        v101[0] = v88;
        v101[1] = v89;
        v101[2] = v31;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:3];
        [v91 encodeToMPSCommandEncoder:v36 commandBuffer:v37 sourceArrays:v38 destinationArray:v35];

        LODWORD(v98) = v98 + 1;
      }

      while (v98 < v22);
    }

    v39 = [v92 descriptor];
    [v39 transposeDimension:3 withDimension:4];
    v40 = *(a2 + 1);
    v41 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v42 = [v92 safeArrayViewWithCommandBuffer:v40 computeEncoder:v41 descriptor:v39 aliasing:1];

    v43 = *(v87 + 2);
    v44 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v45 = *(a2 + 1);
    if (*(v97 + 36))
    {
      v46 = v97 - 16;
    }

    else
    {
      v46 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0);
    GPURegionRuntime::copyNDArrayToTarget(v43, v44, v45, v87 + 15, v42, v78, NextResultAtOffset, 0);
  }

  else
  {
    v83 = [v89 descriptor];
    [v83 sliceDimension:0 withSubrange:{0, 1}];
    v48 = [v86 objectAtIndexedSubscript:0];
    v100 = v48;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [v83 reshapeWithShape:v49];

    [v84 sliceDimension:0 withSubrange:{1, 4}];
    v50 = MEMORY[0x1E69744E8];
    if (*(v89 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v89 setReadCount:{objc_msgSend(v89, "readCount") + 2}];
    }

    v51 = *(a2 + 1);
    v52 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v92 = [v89 safeArrayViewWithCommandBuffer:v51 computeEncoder:v52 descriptor:v83 aliasing:0];

    v53 = *(a2 + 1);
    v54 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v77 = [v89 safeArrayViewWithCommandBuffer:v53 computeEncoder:v54 descriptor:v84 aliasing:0];

    v82 = [v85 descriptor];
    v55 = [v85 descriptor];
    v56 = [v55 getShape];
    v90 = [v56 mutableCopy];

    [v90 removeObjectAtIndex:1];
    [v82 reshapeWithShape:v90];
    if (*(v85 + *v50) == 1)
    {
      [v85 setReadCount:{objc_msgSend(v85, "readCount") + 1}];
    }

    v57 = *(a2 + 1);
    v58 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v76 = [v85 safeArrayViewWithCommandBuffer:v57 computeEncoder:v58 descriptor:v82 aliasing:1];

    v59 = [v88 descriptor];
    v75 = v59;
    if (v59)
    {
      [v59 getShapeVector];
    }

    else
    {
      v96 = 0;
    }

    v60 = [v77 descriptor];
    v74 = v60;
    if (v60)
    {
      [v60 getShapeVector];
    }

    else
    {
      v95 = 0;
    }

    v61 = [v92 descriptor];
    v73 = v61;
    if (v61)
    {
      [v61 getShapeVector];
    }

    else
    {
      v94 = 0;
    }

    v62 = [v76 descriptor];
    v72 = v62;
    if (v62)
    {
      [v62 getShapeVector];
    }

    else
    {
      v93 = 0;
    }

    v63 = [v88 descriptor];
    [v63 dataType];
    if (!*(v87 + 16))
    {
      operator new();
    }

    if ((*(v87 + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v64 = *(v87 + 16);

    if (v93)
    {
      v65 = *v93;
      if (*v93)
      {
        *(v93 + 8) = v65;
        operator delete(v65);
      }

      MEMORY[0x1E12E5B90](v93, 0x10C402FEFCB83);
    }

    if (v94)
    {
      v66 = *v94;
      if (*v94)
      {
        *(v94 + 8) = v66;
        operator delete(v66);
      }

      MEMORY[0x1E12E5B90](v94, 0x10C402FEFCB83);
    }

    if (v95)
    {
      v67 = *v95;
      if (*v95)
      {
        *(v95 + 8) = v67;
        operator delete(v67);
      }

      MEMORY[0x1E12E5B90](v95, 0x10C402FEFCB83);
    }

    if (v96)
    {
      v68 = *v96;
      if (*v96)
      {
        *(v96 + 8) = v68;
        operator delete(v68);
      }

      MEMORY[0x1E12E5B90](v96, 0x10C402FEFCB83);
    }

    v69 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v70 = *(a2 + 1);
    v99[0] = v88;
    v99[1] = v77;
    v99[2] = v92;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:3];
    [v91 encodeToMPSCommandEncoder:v69 commandBuffer:v70 sourceArrays:v71 resultState:0 destinationArray:v76 kernelDAGObject:v64];

    v89 = v77;
  }
}

void GPU::CropResizeOpHandler::~CropResizeOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::MatrixDecompositionLUOpHandler::MatrixDecompositionLUOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4FDF8;
  v6 = objc_alloc(MEMORY[0x1E69746F0]);
  v7 = [a2[6] metalDevice];
  v8 = [v6 initWithDevice:v7];

  objc_storeStrong(this + 1, v8);
  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];

  return this;
}

void sub_1E07D76E8(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::MatrixDecompositionLUOpHandler::encodeNDArrayOp(GPU::MatrixDecompositionLUOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(*(this + 3) + 72) + 24);
  v19 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v18 = [(NSArray *)v5 objectAtIndexedSubscript:1];
  v17 = [(NSArray *)v5 objectAtIndexedSubscript:2];
  v16 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v7 = [v16 mpsndarray];
  v8 = [v19 mpsndarray];
  v9 = [v18 mpsndarray];
  v10 = [v17 mpsndarray];
  v11 = *(this + 1);
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v13 = *(a2 + 1);
  v21[0] = v7;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v20[0] = v8;
  v20[1] = v9;
  v20[2] = v10;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [v11 encodeToMPSCommandEncoder:v12 commandBuffer:v13 sourceArrays:v14 destinationArrays:v15 activeDestinationMask:7];
}

void GPU::MatrixDecompositionLUOpHandler::~MatrixDecompositionLUOpHandler(GPU::MatrixDecompositionLUOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::ReturnStitchedOpHandler::ReturnStitchedOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B4FE60;
  v6 = *(v5 + 4);
  if (v6 && !*(v6 + 104))
  {
    v7 = objc_alloc(MEMORY[0x1E6974740]);
    v8 = [*(this[2] + 6) metalDevice];
    v9 = [v7 initWithDevice:v8];
    v10 = this[1];
    this[1] = v9;

    [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  }

  return this;
}

void GPU::ReturnStitchedOpHandler::encodeNDArrayOp(GPU::ReturnStitchedOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v5 = a3;
  v6 = *(this + 1);
  v18 = v5;
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x1E6974740]);
    v8 = [*(*(this + 2) + 48) metalDevice];
    v9 = [v7 initWithDevice:v8];
    v10 = *(this + 1);
    *(this + 1) = v9;

    [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
    v6 = *(this + 1);
  }

  v11 = v6;
  v12 = [(NSArray *)v18 objectAtIndexedSubscript:0];
  v13 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v15 = *(a2 + 1);
  v16 = [v12 mpsndarray];
  v17 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
  [v11 encodeToMPSCommandEncoder:v14 commandBuffer:v15 sourceArrays:v13 resultState:0 destinationArray:v16 kernelDAGObject:v17];
}

void sub_1E07D7CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v12;

  _Unwind_Resume(a1);
}

GPU::StitchedOpHandler *GPU::StitchedOpHandler::StitchedOpHandler(GPU::StitchedOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B4FEB0;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  v7 = ((*(v5 + 3) + 16 * ((*(*(v5 + 3) + 44) >> 23) & 1) + ((*(*(v5 + 3) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v5 + 3) + 40);
  if (*(v5 + 40) == 1)
  {
    v21 = this;
    v8 = *(v7 + 8);
    if (v8 == v7)
    {
      goto LABEL_11;
    }

    do
    {
      v9 = v8 - 8;
      if (!v8)
      {
        v9 = 0;
      }

      v10 = *(v9 + 40);
      v11 = v9 + 32;
      if (v10 != v9 + 32)
      {
        do
        {
          v12 = *(v10 + 8);
          v13 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v10, v6);
          mlir::detail::walk<mlir::ForwardIterator>(v13, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, &v21, 1);
          v10 = v12;
        }

        while (v12 != v11);
      }

      v8 = *(v8 + 8);
    }

    while (v8 != v7);
    if (*(this + 40))
    {
LABEL_11:
      operator new();
    }
  }

  v21 = this;
  for (i = *(v7 + 8); i != v7; i = *(i + 8))
  {
    v15 = i - 8;
    if (!i)
    {
      v15 = 0;
    }

    v16 = *(v15 + 40);
    v17 = v15 + 32;
    if (v16 != v15 + 32)
    {
      do
      {
        v18 = *(v16 + 8);
        v19 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v6);
        mlir::detail::walk<mlir::ForwardIterator>(v19, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>, &v21, 1);
        v16 = v18;
      }

      while (v18 != v17);
    }
  }

  if (*(this + 40) == 1 && !*(*(this + 4) + 104) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return this;
}

void sub_1E07D7F2C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1E12E5B90](v3, 0x10A1C40A031F3DELL);
  v5 = *(v1 + 16);
  if (v5)
  {
    *(v1 + 17) = v5;
    operator delete(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::StitchedOpHandler::encodeOp(GPU::StitchedOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v2 = a2;
  v40[1] = *MEMORY[0x1E69E9840];
  v37 = a2;
  v4 = *(this + 3);
  if (*(v4 + 9))
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  if ((*(this + 40) & 1) == 0)
  {
    *&v36[1] = 0;
    v8 = *(this + 15);
    *v36 = v8 == 0;
    v9 = ((v4 + 16 * ((*(v4 + 11) >> 23) & 1) + ((*(v4 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 10);
    v30 = this;
    v31 = &v36[1];
    v32 = &v37;
    v33 = v36;
    v34 = &v35;
    v35 = 0;
    v10 = *(v9 + 8);
    if (v10 == v9)
    {
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      do
      {
        v11 = v10 - 8;
        if (!v10)
        {
          v11 = 0;
        }

        v12 = *(v11 + 40);
        v13 = v11 + 32;
        if (v12 != v11 + 32)
        {
          do
          {
            v14 = *(v12 + 8);
            v15 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v12, v6);
            mlir::detail::walk<mlir::ForwardIterator>(v15, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>, &v30, 1);
            v12 = v14;
          }

          while (v14 != v13);
        }

        v10 = *(v10 + 8);
      }

      while (v10 != v9);
      if (v36[0])
      {
        v16 = *(this + 15);
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

LABEL_17:
        operator new();
      }
    }

    v17 = *(*(*(this + 2) + 592) + 32);
    if ((*(*v17 + 24))(v17, NextResultAtOffset))
    {
      goto LABEL_30;
    }

    v18 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      v30 = v18;
      v31 = v19;
      if (!v18)
      {
        goto LABEL_30;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v30))
      {
        goto LABEL_29;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
      if (v21)
      {
        v22 = 8 * v21;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v22 -= 8;
          if (!v22)
          {
            goto LABEL_30;
          }
        }

LABEL_29:
        v23 = *(this + 2);
        v38[1] = *&v36[1];
        v39 = NextResultAtOffset;
        v38[0] = *(mlir::Value::getParentRegion(&v39) + 2);
        v30 = v38;
        v24 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v23 + 288), v38);
        v30 = v39;
        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v24 + 3, &v30);
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

LABEL_30:
    v2 = v37;
  }

  v25 = (*(**(this + 2) + 80))(*(this + 2), NextResultAtOffset, *(v2 + 1), 0, 0, 1);
  if (!*(*(this + 4) + 104) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v26 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((*(this + 2) + 248), (*(this + 4) + 104));
  if (!v26)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v27 = v26[3];
  v28 = v37;
  v40[0] = v25;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  (*(*v27 + 16))(v27, v28, v29);

  GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v4);
}

void GPURegionRuntime::clearScopeFromJITTypesMap(GPURegionRuntime *this, mlir::Operation *a2)
{
  v13 = a2;
  v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(this + 36, &v13);
  if (v3)
  {
    std::__hash_table<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>>>::remove(this + 36, v3, __p);
    v4 = __p[0];
    __p[0] = 0;
    if (v4)
    {
      if (v15 == 1)
      {
        v5 = v4[5];
        if (v5)
        {
          do
          {
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }

        v7 = v4[3];
        v4[3] = 0;
        if (v7)
        {
          operator delete(v7);
        }
      }

      operator delete(v4);
    }
  }

  v8 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(this + 41, &v13);
  if (v8)
  {
    std::__hash_table<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>>>::remove(this + 41, v8, __p);
    v9 = __p[0];
    __p[0] = 0;
    if (v9)
    {
      if (v15 == 1)
      {
        v10 = v9[5];
        if (v10)
        {
          do
          {
            v11 = *v10;
            operator delete(v10);
            v10 = v11;
          }

          while (v11);
        }

        v12 = v9[3];
        v9[3] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      operator delete(v9);
    }
  }
}

uint64_t GPU::StitchedOpHandler::_finalizeDAG(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(*(a2 + 72) + 24);
  if (*(v4 + 104))
  {
    result = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(v4, v5, 0);
    v7 = *(a1 + 32);
  }

  else
  {
    v8 = a2;
    v9 = v5;
    StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v5);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(*(a1 + 32), v9, 0);
    getBaseTensorShape(StaticType, __p);
    getMPSDataType(StaticType);
    result = MPSKernelDAG::unaryCoreOp();
    if (__p[0])
    {
      __p[1] = __p[0];
      v11 = result;
      operator delete(__p[0]);
      result = v11;
    }

    v7 = *(a1 + 32);
    *(v7 + 104) = v8;
  }

  *(v7 + 96) = result;
  return result;
}

void sub_1E07D8614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::StitchedOpHandler::~StitchedOpHandler(GPU::StitchedOpHandler *this)
{
  *this = &unk_1F5B4FEB0;
  v2 = *(this + 15);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4FEB0;
  v2 = *(this + 15);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ReturnStitchedOpHandler::~ReturnStitchedOpHandler(GPU::ReturnStitchedOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(void *result, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 68);
    if (v2)
    {
      v3 = 0;
      v4 = *result;
      v5 = *(a2 + 72);
      do
      {
        v6 = (*(*(v5 + 32 * v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
        if (result)
        {
          result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
          v9 = v6;
          v10 = result;
          if (!v6)
          {
            goto LABEL_5;
          }

          result = mlir::CallOpInterface::getArgOperands(&v9);
          if (result)
          {
            result = mlir::CallableOpInterface::getArgAttrsAttr(&v9);
            if (!v7)
            {
              goto LABEL_5;
            }

            v8 = 8 * v7;
            while (*result != 0x8000000000000000)
            {
              ++result;
              v8 -= 8;
              if (!v8)
              {
                goto LABEL_5;
              }
            }
          }

          *(v4 + 40) = 0;
        }

        else
        {
          v9 = 0;
          v10 = 0;
        }

LABEL_5:
        ++v3;
      }

      while (v3 != v2);
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = mlir::Block::getParentOp(*(a2 + 16));
  if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 40) == 1)
    {
      if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
      {

        return GPU::StitchedOpHandler::_finalizeDAG(v3, a2);
      }

      else
      {
        v5 = result;
        if ((*(result + 40) & 1) != 0 || !MTLReportFailureTypeEnabled())
        {
          v6 = *(v3 + 32);
          v7 = v5;
        }

        else
        {
          MTLReportFailure();
          v6 = *(v3 + 32);
          v7 = v5;
        }

        return GPU::MPSGraphKernelDAG::createDAGOp(v6, v7);
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v3 = *a1;
  v4 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((*(*a1 + 16) + 248), &v11);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[3];
  *(v5 + 32) = v3[4];
  if (v11 && *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
  {
    result = GPURegionRuntime::getStaticType(v3[2], *(*(v11 + 72) + 24));
    **(a1 + 8) = result;
    if (**(a1 + 24))
    {
      return result;
    }
  }

  else
  {
    result = GPU::BaseOpHandler::_inferJITOutputTypes(v5, **(a1 + 16));
    if (**(a1 + 24))
    {
      return result;
    }
  }

  if (v3[17] != v3[16] && (*(v11 + 46) & 0x80) != 0)
  {
    v7 = *(v11 + 68);
    if (v7)
    {
      v8 = (*(v11 + 72) + 24);
      do
      {
        result = GPURegionRuntime::getStaticType(v3[2], *v8);
        v9 = *(a1 + 32);
        v10 = (*v9)++;
        if (*(v3[16] + 8 * v10) != result)
        {
          **(a1 + 24) = 1;
        }

        v8 += 4;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v12 = a2;
  v3 = *a1;
  v4 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((*(*a1 + 16) + 248), &v12);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[3];
  v6 = *(v3 + 32);
  *(v5 + 4) = v6;
  v7 = v12;
  if (v12 && *(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
  {
    GPU::StitchedOpHandler::_finalizeDAG(v3, v12);
    *a1[1] = GPURegionRuntime::getStaticType(*(v3 + 16), *(*(v7 + 72) + 24));
  }

  else
  {
    GPU::MPSGraphKernelDAG::createDAGOp(v6, v5);
  }

  if ((*(v12 + 46) & 0x80) != 0)
  {
    v8 = *(v12 + 68);
    if (v8)
    {
      v9 = (*(v12 + 72) + 24);
      do
      {
        v10 = *v9;
        v9 += 4;
        StaticType = GPURegionRuntime::getStaticType(*(v3 + 16), v10);
        std::vector<mlir::Type>::push_back[abi:ne200100](v3 + 128, &StaticType);
        --v8;
      }

      while (v8);
    }
  }
}

void GPU::RandomUniformOpHandler::_createNDArrayMultiaryKernel(GPU::RandomUniformOpHandler *this)
{
  v29 = *(this + 3);
  v2 = objc_alloc(MEMORY[0x1E6974838]);
  v3 = [*(*(this + 2) + 48) metalDevice];
  v4 = [v2 initWithDevice:v3];

  Type = mlir::pdl_interp::CheckTypeOp::getType(&v29);
  MPSDataType = getMPSDataType(Type);
  v7 = *(*(v29 + 72) + 88);
  if ((MPSDataType & 0x10000000) != 0)
  {
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v33 = v7;
    DefiningOp = mlir::Value::getDefiningOp(&v33);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, DefiningOp))
    {
      SingleFloat = mlir::getSingleFloatValue<float>(v31, v32);
      v15 = SingleFloat & 0xFFFFFF00;
      v16 = SingleFloat;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    LODWORD(v13) = v15 | v16;
    [v4 setMinimum:v13];
    v22 = *(*(v29 + 72) + 120);
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v33 = v22;
    v23 = mlir::Value::getDefiningOp(&v33);
    if (v23 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, v23))
    {
      v25 = mlir::getSingleFloatValue<float>(v31, v32);
      v26 = v25 & 0xFFFFFF00;
      v27 = v25;
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    LODWORD(v24) = v26 | v27;
    [v4 setMaximum:v24];
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v33 = v7;
    v8 = mlir::Value::getDefiningOp(&v33);
    if (v8 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, v8))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v31, v32);
      v10 = SingleInt & 0xFFFFFFFFFFFFFF00;
      v11 = SingleInt;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    [v4 setMinimumInteger:v11 | v10];
    v17 = *(*(v29 + 72) + 120);
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v33 = v17;
    v18 = mlir::Value::getDefiningOp(&v33);
    if (v18 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, v18))
    {
      v19 = mlir::getSingleIntValue<long long>(v31, v32);
      v20 = v19 & 0xFFFFFFFFFFFFFF00;
      v21 = v19;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    [v4 setMaximumInteger:v21 | v20];
  }

  v28 = *(this + 1);
  *(this + 1) = v4;
}

unint64_t GPU::RandomUniformOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::RandomTruncatedNormalOpHandler::_createNDArrayMultiaryKernel(GPU::RandomTruncatedNormalOpHandler *this)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v13 = *(this + 3);
  v2 = objc_alloc(MEMORY[0x1E6974830]);
  v3 = [*(*(this + 2) + 48) metalDevice];
  mlir::mps::RandomTruncatedNormalOp::getMean(&v13, &v16);
  v4 = llvm::APFloat::convertToFloat(&v16);
  mlir::mps::RandomTruncatedNormalOp::getStdDev(&v13, &v14);
  LODWORD(v5) = llvm::APFloat::convertToFloat(&v14);
  *&v6 = v4;
  v7 = [v2 initWithDevice:v3 mean:v6 standardDeviation:v5];
  v8 = v15[0];
  v9 = llvm::APFloatBase::PPCDoubleDouble(v7);
  if (v9 == v8)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
    if (v9 != v17[0])
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
    if (v9 != v17[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v17);
      goto LABEL_6;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
LABEL_6:

  [(llvm::APFloatBase *)v7 setSamplingMethod:mlir::mps::Conv3DOp::getPaddingStyle(&v13)];
  mlir::mps::PruningOp::getSparsity(&v13, &v16);
  *&v10 = llvm::APFloat::convertToFloat(&v16);
  [(llvm::APFloatBase *)v7 setMinimum:v10];
  if (v9 == v17[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
  }

  mlir::mps::InstanceNormOp::getEpsilon(&v13, &v16);
  *&v11 = llvm::APFloat::convertToFloat(&v16);
  [(llvm::APFloatBase *)v7 setMaximum:v11];
  if (v9 == v17[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
  }

  v12 = *(this + 1);
  *(this + 1) = v7;
}

unint64_t GPU::RandomTruncatedNormalOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::RandomNormalOpHandler::_createNDArrayMultiaryKernel(GPU::RandomNormalOpHandler *this)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v11 = *(this + 3);
  v2 = objc_alloc(MEMORY[0x1E6974818]);
  v3 = [*(*(this + 2) + 48) metalDevice];
  mlir::mps::InstanceNormOp::getEpsilon(&v11, &v14);
  v4 = llvm::APFloat::convertToFloat(&v14);
  mlir::mps::RandomNormalOp::getStdDev(&v11, &v12);
  LODWORD(v5) = llvm::APFloat::convertToFloat(&v12);
  *&v6 = v4;
  v7 = [v2 initWithDevice:v3 mean:v6 standardDeviation:v5];
  v8 = v13[0];
  v9 = llvm::APFloatBase::PPCDoubleDouble(v7);
  if (v9 == v8)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v13);
    if (v9 != v15[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
    goto LABEL_6;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v13);
  if (v9 == v15[0])
  {
    goto LABEL_5;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v15);
LABEL_6:

  [(llvm::APFloatBase *)v7 setSamplingMethod:mlir::mps::LSTMOp::getGateLayout(&v11)];
  v10 = *(this + 1);
  *(this + 1) = v7;
}

void sub_1E07D91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  llvm::APFloat::~APFloat(va);

  _Unwind_Resume(a1);
}

unint64_t GPU::RandomNormalOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::MultiaryKernelOpHandler<GPU::UpdateRandomStateOpHandler,mlir::mps::UpdateRandomStateOp,MPSNDArrayRandomState,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::MultiaryKernelOpHandler<GPU::UpdateRandomStateOpHandler,mlir::mps::UpdateRandomStateOp,MPSNDArrayRandomState,1ul>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v17 objectAtIndexedSubscript:{0, v17}];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  v9 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
  v10 = [v9 mpsndarray];

  if ((!v7 || !v10) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = *(a1 + 8);
  GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, *(*(v8 + 72) + 56), &__p);
  v12 = __p;
  v13 = 1;
  if (__p == v20)
  {
LABEL_9:
    [v11 setSkipElements:v13];
  }

  else
  {
    while (*v12 != -1)
    {
      v13 *= *v12++;
      if (v12 == v20)
      {
        goto LABEL_9;
      }
    }

    [v11 setSkipElements:0];
    [v11 setIncrementKey:1];
  }

  [v11 setCounterStride:256];
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v15 = *(a2 + 1);
  v21[0] = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v11 encodeToMPSCommandEncoder:v14 commandBuffer:v15 sourceArrays:v16 destinationArray:v7];

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void GPU::UpdateRandomStateOpHandler::~UpdateRandomStateOpHandler(GPU::UpdateRandomStateOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomUniformOpHandler,mlir::mps::RandomUniformOp,MPSNDArrayRandomUniform,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v15 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::RandomUniformOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v15 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v10 = 0;
  }

  v13 = *(a1 + 8);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v13 encodeToMPSCommandEncoder:v14 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

void GPU::RandomUniformOpHandler::~RandomUniformOpHandler(GPU::RandomUniformOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomTruncatedNormalOpHandler,mlir::mps::RandomTruncatedNormalOp,MPSNDArrayRandomTruncatedNormal,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v15 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::RandomTruncatedNormalOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v15 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v10 = 0;
  }

  v13 = *(a1 + 8);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v13 encodeToMPSCommandEncoder:v14 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

void GPU::RandomTruncatedNormalOpHandler::~RandomTruncatedNormalOpHandler(GPU::RandomTruncatedNormalOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomNormalOpHandler,mlir::mps::RandomNormalOp,MPSNDArrayRandomNormal,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v15 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::RandomNormalOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v15 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v10 = 0;
  }

  v13 = *(a1 + 8);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v13 encodeToMPSCommandEncoder:v14 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

void GPU::RandomNormalOpHandler::~RandomNormalOpHandler(GPU::RandomNormalOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::UpdateRandomStateOpHandler,mlir::mps::UpdateRandomStateOp,MPSNDArrayRandomState,1ul>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974820]);
  v3 = [*(*(a1 + 16) + 48) metalDevice];
  obj = [v2 initWithDevice:v3];

  objc_storeStrong((a1 + 8), obj);
  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::UpdateRandomStateOpHandler,mlir::mps::UpdateRandomStateOp,MPSNDArrayRandomState,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomUniformOpHandler,mlir::mps::RandomUniformOp,MPSNDArrayRandomUniform,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomTruncatedNormalOpHandler,mlir::mps::RandomTruncatedNormalOp,MPSNDArrayRandomTruncatedNormal,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomNormalOpHandler,mlir::mps::RandomNormalOp,MPSNDArrayRandomNormal,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TileOpHandler::_createKernel(GPU::TileOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  GPURegionRuntime::waitAndReadIntTensorData(v3, a2, *(*(v4 + 72) + 56), __p);
  StaticType = GPURegionRuntime::getStaticType(v3, *(*(v4 + 72) + 56));
  v6 = StaticType;
  if (StaticType)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v7 = 0;
  }

  v41[0] = v6;
  v41[1] = v7;
  v8 = *mlir::CallableOpInterface::getArgAttrsAttr(v41);
  v9 = __p[0];
  if (!v8)
  {
    if (!__p[0])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 > 3)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (__p[0] + 16);
    v12 = (&v32 + 8 * v8);
    v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14 = vextq_s8(v11[-1], v11[-1], 8uLL);
      v12[-1] = vextq_s8(*v11, *v11, 8uLL);
      *v12 = v14;
      v11 += 2;
      v12 -= 2;
      v13 -= 4;
    }

    while (v13);
    if (v8 == v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = v8 - v10;
  v16 = &v9[8 * v10];
  do
  {
    v17 = *v16;
    v16 += 8;
    *(&v32 + v15-- + 1) = v17;
  }

  while (v15);
LABEL_14:
  __p[1] = v9;
  operator delete(v9);
LABEL_15:
  v18 = objc_alloc(MEMORY[0x1E69748B0]);
  v19 = [*(*(this + 2) + 48) metalDevice];
  v20 = [v18 initWithDevice:v19];

  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  *__p = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  [v20 setMultiples:__p];
  objc_storeStrong(this + 1, v20);
  v21 = objc_alloc(MEMORY[0x1E6974740]);
  v22 = [*(*(this + 2) + 48) metalDevice];
  v23 = [v21 initWithDevice:v22];
  v24 = *(this + 16);
  *(this + 16) = v23;

  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
  [*(this + 16) setOptions:{objc_msgSend(*(this + 16), "options") | 1}];
}

void sub_1E07DA418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::TileOpHandler::encodeNDArrayOp(GPU::TileOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v77[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(this + 40) & 1) == 0)
  {
    GPU::TileOpHandler::_createKernel(this, a2);
  }

  v6 = *(*(*(this + 3) + 72) + 24);
  v7 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v62 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v64 = [v7 mpsndarray];
  v8 = [v62 mpsndarray];
  v63 = *(this + 1);
  if (!*(this + 4))
  {
    if ((!v64 || !v8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    if (v63)
    {
      [v63 multiples];
    }

    if ([v8 numberOfDimensions])
    {
      v13 = [v8 numberOfDimensions];
      v14.i64[0] = v65;
      v15.i64[0] = 1;
      v16 = vdupq_lane_s64(vcgtq_u64(v14, v15).i64[0], 0);
      v15.i64[1] = 0x100000001;
      v15.i64[0] = v65 | 0x100000000;
      v59 = vsubq_s32(vandq_s8(v15, v16), vmvnq_s8(v16));
      if (v13 >= 2)
      {
        v17 = *(&v65 + 1) <= 1uLL ? 1 : 2;
        v18 = [v8 numberOfDimensions];
        v19.i64[0] = *(&v65 + 1);
        v20.i64[0] = 1;
        v21 = vdupq_lane_s64(vcgtq_u64(v19, v20).i64[0], 0);
        v22 = v59;
        v22.i32[1] = DWORD2(v65);
        v59 = vbslq_s8(v21, v22, v59);
        if (v18 >= 3)
        {
          if (v66 > 1)
          {
            v17 = 3;
          }

          v23 = [v8 numberOfDimensions];
          v25.i64[0] = v66;
          v26.i64[0] = 1;
          v27 = vdupq_lane_s64(vcgtq_u64(v25, v26).i64[0], 0);
          v28 = v59;
          v28.i32[2] = v66;
          v29 = vbslq_s8(v27, v28, v59);
          if (v23 < 4)
          {
            v59 = v29;
          }

          else
          {
            v30 = v29;
            v30.i32[3] = DWORD2(v66);
            v28.i64[0] = *(&v66 + 1);
            v24.i64[0] = 1;
            v59 = vbslq_s8(vdupq_lane_s64(vcgtq_u64(v28, v24).i64[0], 0), v30, v29);
            v31 = 4;
            if (*(&v66 + 1) > 1uLL)
            {
              v17 = 4;
            }

            while (v31 < [v8 numberOfDimensions])
            {
              if (*(&v65 + v31) > 1uLL)
              {
                v17 = v31 + 1;
              }

              ++v31;
            }

            if (v17 >= 5)
            {
              v55 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
              v56 = *(a2 + 1);
              v77[0] = v8;
              v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
              [v63 encodeToMPSCommandEncoder:v55 commandBuffer:v56 sourceArrays:v57 resultState:0 destinationArray:v64 kernelDAGObject:0];

              goto LABEL_55;
            }
          }
        }
      }
    }

    else
    {
      v32.i64[0] = 0x100000001;
      v32.i64[1] = 0x100000001;
      v59 = v32;
    }

    v33 = *(this + 15);
    v34 = v8;
    v58 = v33;
    v61 = v34;
    v35 = [v34 descriptor];
    v36 = v35;
    if (v35)
    {
      [v35 getShapeVector];
    }

    else
    {
      v76 = 0;
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v37 = v76[1];
    if (v37 != *v76)
    {
      if (((v37 - *v76) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v38 = [v61 descriptor];
    v39 = [v38 dataType];
    if (v39 == -2147483640)
    {
      v40 = 536870920;
    }

    else
    {
      v40 = v39;
    }

    if (v58)
    {
      v41 = [v58 finalOp];
      v42 = **(v41 + 24);
      if (*(*(v41 + 24) + 8) == v42)
      {
        std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
      }

      v43 = *v42;
      v45 = *(*(*v42 + 32) + 8);
      v44 = *v45;
      if (v45[1] == *v45)
      {
        std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
      }

      v46 = *v44;
      v47 = *(*v44 + 32);
      v48 = **(v47 + 8);
      if (*(*(v47 + 8) + 8) == v48)
      {
        std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
      }

      if ((vminvq_u32(vceqq_s32(*(v47 + 112), v59)) & 0x80000000) != 0 && v40 == *(v43 + 8))
      {
        v60 = *v48;
        v49 = *(*v48 + 16);
        if (v49)
        {
          v50 = *v49;
          if (*v49)
          {
            *(v49 + 8) = v50;
            operator delete(v50);
          }

          MEMORY[0x1E12E5B90](v49, 0x10C402FEFCB83);
        }

        v51 = *(v46 + 16);
        if (v51)
        {
          v52 = *v51;
          if (*v51)
          {
            *(v51 + 8) = v52;
            operator delete(v52);
          }

          MEMORY[0x1E12E5B90](v51, 0x10C402FEFCB83);
        }

        v53 = *(v43 + 16);
        if (v53)
        {
          v54 = *v53;
          if (*v53)
          {
            *(v53 + 8) = v54;
            operator delete(v54);
          }

          MEMORY[0x1E12E5B90](v53, 0x10C402FEFCB83);
        }

        *(v43 + 8) = v40;
        *(v46 + 8) = v40;
        *(v60 + 8) = v40;
        operator new();
      }
    }

    operator new();
  }

  mlir::Block::getParentOp(*(*(this + 3) + 16));
  if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
  v10 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v11 = *(a2 + 1);
  v12 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
  [v63 encodeToMPSCommandEncoder:v10 commandBuffer:v11 sourceArrays:v9 resultState:0 destinationArray:v64 kernelDAGObject:v12];

LABEL_55:
}

unint64_t GPU::TileOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::TileGradientOpHandler::_createKernel(GPU::TileGradientOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  GPURegionRuntime::waitAndReadIntTensorData(v3, a2, *(*(v4 + 72) + 88), __p);
  StaticType = GPURegionRuntime::getStaticType(v3, *(*(v4 + 72) + 88));
  v6 = StaticType;
  if (StaticType)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v7 = 0;
  }

  v37[0] = v6;
  v37[1] = v7;
  v8 = *mlir::CallableOpInterface::getArgAttrsAttr(v37);
  v9 = __p[0];
  if (!v8)
  {
    if (!__p[0])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 > 3)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (__p[0] + 16);
    v12 = (&v28 + 8 * v8);
    v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14 = vextq_s8(v11[-1], v11[-1], 8uLL);
      v12[-1] = vextq_s8(*v11, *v11, 8uLL);
      *v12 = v14;
      v11 += 2;
      v12 -= 2;
      v13 -= 4;
    }

    while (v13);
    if (v8 == v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = v8 - v10;
  v16 = &v9[8 * v10];
  do
  {
    v17 = *v16;
    v16 += 8;
    *(&v28 + v15-- + 1) = v17;
  }

  while (v15);
LABEL_14:
  __p[1] = v9;
  operator delete(v9);
LABEL_15:
  v18 = objc_alloc(MEMORY[0x1E69748A8]);
  v19 = [*(*(this + 2) + 48) metalDevice];
  v20 = [v18 initWithDevice:v19];

  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  *__p = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  [v20 setMultiples:__p];
  objc_storeStrong(this + 1, v20);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void sub_1E07DB21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::TileGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v22 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::TileGradientOpHandler::_createKernel(this, a2);
  }

  v5 = *(this[3] + 9);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  v21 = [(NSArray *)v22 objectAtIndexedSubscript:0];
  v20 = (*(*this[2] + 48))(this[2], v6, 0);
  v8 = (*(*this[2] + 48))(this[2], v7, 0);
  v9 = [v21 mpsndarray];
  v10 = [v20 mpsndarray];
  v11 = [v8 mpsndarray];
  v12 = v11;
  if (!v9 || (v10 ? (v13 = v11 == 0) : (v13 = 1), v13))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (this[4] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v14 = this[1];
  v24[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v16 = [v14 resultStateForSourceArrays:v15 sourceStates:0 destinationArray:v9];

  v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v18 = *(a2 + 1);
  v23 = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v14 encodeToMPSCommandEncoder:v17 commandBuffer:v18 sourceArrays:v19 sourceGradient:v10 gradientState:v16 destinationArray:v9 kernelDAGObject:0];
}

unint64_t GPU::TileGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

uint64_t GPU::TileOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::TileOpHandler::~TileOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TileGradientOpHandler::~TileGradientOpHandler(GPU::TileGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E07DBA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

uint64_t BaseRuntime::initializeOps(BaseRuntime *this, uint64_t a2)
{
  v2 = *(((*(this + 8) + 16 * ((*(*(this + 8) + 44) >> 23) & 1) + ((*(*(this + 8) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 8) + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v8 = this;
  result = *(v3 + 40);
  v5 = v3 + 32;
  if (result != v3 + 32)
  {
    do
    {
      v6 = *(result + 8);
      v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, a2);
      v9 = &v8;
      mlir::detail::walk<mlir::ForwardIterator>(v7, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN11BaseRuntime13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v9, 1);
      result = v6;
    }

    while (v6 != v5);
  }

  return result;
}

void BaseRuntime::evaluateOps(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = a4;
  v11 = *(((*(a1 + 64) + 16 * ((*(*(a1 + 64) + 44) >> 23) & 1) + ((*(*(a1 + 64) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(a1 + 64) + 40) + 8);
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  v17 = a1;
  v13 = *(v12 + 40);
  v14 = v12 + 32;
  if (v13 != v12 + 32)
  {
    do
    {
      v15 = *(v13 + 8);
      v16 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v13, v9);
      v18 = &v17;
      mlir::detail::walk<mlir::ForwardIterator>(v16, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN11BaseRuntime11evaluateOpsEP7NSArrayIP18MPSGraphTensorDataESG_P37MPSGraphExecutableExecutionDescriptorE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v18, 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN11BaseRuntime13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v10[7] = v2;
      v10[8] = v3;
      v4 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v10[0] = **result;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v6 = i - 8;
        if (!i)
        {
          v6 = 0;
        }

        result = *(v6 + 40);
        v7 = v6 + 32;
        if (result != v6 + 32)
        {
          do
          {
            v8 = *(result + 8);
            v9 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, a2);
            mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<BaseRuntime::initializeOps(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, v10, 1);
            result = v8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<BaseRuntime::initializeOps(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = mlir::Block::getParentOp(*(a2 + 16));
  if (result)
  {
    v5 = *(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = *(*v3 + 8);

    return v6(v3, a2);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN11BaseRuntime11evaluateOpsEP7NSArrayIP18MPSGraphTensorDataESG_P37MPSGraphExecutableExecutionDescriptorE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v10[7] = v2;
      v10[8] = v3;
      v4 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v10[0] = **result;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v6 = i - 8;
        if (!i)
        {
          v6 = 0;
        }

        result = *(v6 + 40);
        v7 = v6 + 32;
        if (result != v6 + 32)
        {
          do
          {
            v8 = *(result + 8);
            v9 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, a2);
            mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<BaseRuntime::evaluateOps(NSArray<MPSGraphTensorData *> *,NSArray<MPSGraphTensorData *> *,MPSGraphExecutableExecutionDescriptor *)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, v10, 1);
            result = v8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<BaseRuntime::evaluateOps(NSArray<MPSGraphTensorData *> *,NSArray<MPSGraphTensorData *> *,MPSGraphExecutableExecutionDescriptor *)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = mlir::Block::getParentOp(*(a2 + 16));
  if (result)
  {
    v5 = *(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = *(*v3 + 24);

    return v6(v3, a2);
  }

  return result;
}

void GPU::Conv2DOpHandler::_createKernel(GPU::Conv2DOpHandler *this)
{
  v2 = *(this + 3);
  v79[0] = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 56));
  Value = mlir::ArrayAttr::getValue(v79);
  v79[0] = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 24));
  v4 = mlir::ArrayAttr::getValue(v79);
  v73 = this;
  v5 = *(this + 2);
  v84 = v2;
  v74 = [*(v5 + 48) metalDevice];
  v6 = objc_alloc_init(MEMORY[0x1E69746B0]);
  Strides = mlir::mps::Conv3DOp::getStrides(&v84);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v84);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v84);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v84);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v17 = 0;
      v16 = 0;
      v8 = 0;
      v70 = 0;
      v72 = 0;
      goto LABEL_27;
    }

    [v6 setDataFormat:1];
    v70 = v4[2];
    v72 = v4[1];
    v8 = v4[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, Strides, 0);
    v9 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v9, NumElements);
    if (v80 == v78)
    {
LABEL_4:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, InputAttributeNames, 0);
      v11 = InputAttributeNames;
      v12 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v11, v12);
      if (v80 == v78)
      {
LABEL_5:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, Rewriter, 0);
        v13 = Rewriter;
        v14 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v13, v14);
        if (v80 != v78)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
            v18 = v76;
            if (v76 >= 0x41)
            {
              if (v18 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
              {
                v19 = *v75;
              }

              else
              {
                v19 = -1;
              }
            }

            else
            {
              v19 = v75;
            }

            if (v15 == 4)
            {
              v20 = v19;
            }

            else
            {
              v20 = v16;
            }

            if (v15 == 2)
            {
              v17 = v19;
            }

            else
            {
              v16 = v20;
            }

            if (v18 >= 0x41 && v75)
            {
              MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
            }

            ++v80;
            ++v15;
          }

          while (v80 != v78);
          goto LABEL_27;
        }

LABEL_25:
        v17 = 0;
        v16 = 0;
        goto LABEL_27;
      }

      v60 = 0;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
        v61 = v76;
        if (v76 >= 0x41)
        {
          if (v61 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
          {
            v62 = *v75;
            if (v60 <= 1)
            {
LABEL_129:
              if (v60)
              {
                if (v60 == 1)
                {
                  [v6 setDilationRateInY:v62];
                  goto LABEL_136;
                }

                goto LABEL_132;
              }

              if (v62 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_136;
              }

LABEL_133:
              MTLReportFailure();
              goto LABEL_136;
            }
          }

          else
          {
            v62 = -1;
            if (v60 <= 1)
            {
              goto LABEL_129;
            }
          }
        }

        else
        {
          v62 = v75;
          if (v60 <= 1)
          {
            goto LABEL_129;
          }
        }

        if (v60 != 2)
        {
          if (v60 == 3)
          {
            if (v62 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_136;
            }
          }

          else
          {
LABEL_132:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_136;
            }
          }

          goto LABEL_133;
        }

        [v6 setDilationRateInX:v62];
LABEL_136:
        if (v76 >= 0x41 && v75)
        {
          MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
        }

        ++v80;
        ++v60;
        if (v80 == v78)
        {
          goto LABEL_5;
        }
      }
    }

    v54 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
      v55 = v76;
      if (v76 >= 0x41)
      {
        if (v55 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
        {
          v56 = *v75;
          if (v54 <= 1)
          {
LABEL_79:
            if (v54)
            {
              if (v54 == 1)
              {
                [v6 setStrideInPixelsY:v56];
                goto LABEL_86;
              }

              goto LABEL_82;
            }

            if (v56 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_86;
            }

LABEL_83:
            MTLReportFailure();
            goto LABEL_86;
          }
        }

        else
        {
          v56 = -1;
          if (v54 <= 1)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        v56 = v75;
        if (v54 <= 1)
        {
          goto LABEL_79;
        }
      }

      if (v54 != 2)
      {
        if (v54 == 3)
        {
          if (v56 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
LABEL_82:
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_86;
          }
        }

        goto LABEL_83;
      }

      [v6 setStrideInPixelsX:v56];
LABEL_86:
      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
      }

      ++v80;
      ++v54;
      if (v80 == v78)
      {
        goto LABEL_4;
      }
    }
  }

  [v6 setDataFormat:0];
  v70 = v4[3];
  v72 = v4[2];
  v8 = v4[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, Strides, 0);
  v21 = Strides;
  v22 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v21, v22);
  if (v80 != v78)
  {
    v57 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
      v58 = v76;
      if (v76 >= 0x41)
      {
        if (v58 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
        {
          v59 = *v75;
          if (v57 <= 1)
          {
LABEL_102:
            if (!v57)
            {
              if (v59 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_111;
              }

LABEL_108:
              MTLReportFailure();
              goto LABEL_111;
            }

            if (v57 == 1)
            {
              if (v59 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_111;
              }

              goto LABEL_108;
            }

LABEL_107:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_111;
            }

            goto LABEL_108;
          }
        }

        else
        {
          v59 = -1;
          if (v57 <= 1)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
        v59 = v75;
        if (v57 <= 1)
        {
          goto LABEL_102;
        }
      }

      if (v57 != 2)
      {
        if (v57 == 3)
        {
          [v6 setStrideInPixelsX:v59];
          goto LABEL_111;
        }

        goto LABEL_107;
      }

      [v6 setStrideInPixelsY:v59];
LABEL_111:
      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
      }

      ++v80;
      ++v57;
    }

    while (v80 != v78);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, InputAttributeNames, 0);
  v23 = InputAttributeNames;
  v24 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v23, v24);
  if (v80 != v78)
  {
    v63 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
      v64 = v76;
      if (v76 >= 0x41)
      {
        if (v64 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
        {
          v65 = *v75;
          if (v63 <= 1)
          {
LABEL_152:
            if (!v63)
            {
              if (v65 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_161;
              }

LABEL_158:
              MTLReportFailure();
              goto LABEL_161;
            }

            if (v63 == 1)
            {
              if (v65 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_161;
              }

              goto LABEL_158;
            }

LABEL_157:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_161;
            }

            goto LABEL_158;
          }
        }

        else
        {
          v65 = -1;
          if (v63 <= 1)
          {
            goto LABEL_152;
          }
        }
      }

      else
      {
        v65 = v75;
        if (v63 <= 1)
        {
          goto LABEL_152;
        }
      }

      if (v63 != 2)
      {
        if (v63 == 3)
        {
          [v6 setDilationRateInX:v65];
          goto LABEL_161;
        }

        goto LABEL_157;
      }

      [v6 setDilationRateInY:v65];
LABEL_161:
      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
      }

      ++v80;
      ++v63;
    }

    while (v80 != v78);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, Rewriter, 0);
  v25 = Rewriter;
  v26 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v25, v26);
  if (v80 == v78)
  {
    goto LABEL_25;
  }

  v66 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
    v67 = v76;
    if (v76 >= 0x41)
    {
      if (v67 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
      {
        v68 = *v75;
      }

      else
      {
        v68 = -1;
      }
    }

    else
    {
      v68 = v75;
    }

    if (v66 == 6)
    {
      v69 = v68;
    }

    else
    {
      v69 = v16;
    }

    if (v66 == 4)
    {
      v17 = v68;
    }

    else
    {
      v16 = v69;
    }

    if (v67 >= 0x41 && v75)
    {
      MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
    }

    ++v80;
    ++v66;
  }

  while (v80 != v78);
LABEL_27:
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v84);
  if (WeightsLayout == 2)
  {
    [v6 setWeightsFormat:1];
    [v6 setKernelWidth:Value[3]];
    [v6 setKernelHeight:Value[2]];
    [v6 setInputFeatureChannels:Value[1]];
    goto LABEL_31;
  }

  if (WeightsLayout == 3)
  {
    [v6 setWeightsFormat:0];
    [v6 setKernelWidth:Value[1]];
    [v6 setKernelHeight:*Value];
    [v6 setInputFeatureChannels:Value[2]];
    Value += 3;
LABEL_31:
    [v6 setOutputFeatureChannels:{*Value, v70}];
  }

  [v6 setGroups:mlir::mps::Conv3DOp::getGroups(&v84)];
  [v6 setInputFeatureChannels:{objc_msgSend(v6, "inputFeatureChannels") * objc_msgSend(v6, "groups")}];
  [v6 inputFeatureChannels];
  if (v8 != [v6 inputFeatureChannels] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v28 = [objc_alloc(MEMORY[0x1E69746A8]) initWithDevice:v74 ndArrayConvolution2DDescriptor:v6];
  v29 = *(v5 + 64);
  if (!*(v29 + 47) || (v85.var0 = "mps.reducedPrecisionFastMath", v85.var1 = 28, InherentAttr = mlir::Operation::getInherentAttr(*(v5 + 64), v85), (v31 & 1) == 0))
  {
    v86.var0 = "mps.reducedPrecisionFastMath";
    v86.var1 = 28;
    InherentAttr = mlir::DictionaryAttr::get((v29 + 56), v86);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v32 = InherentAttr;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v79[0] = v32;
  if ((mlir::IntegerAttr::getUInt(v79) & 2) != 0)
  {
    [v28 setOptions:{objc_msgSend(v28, "options") | 2}];
  }

  v33 = [v6 kernelWidth];
  v34 = [v6 dilationRateInX];
  v35 = [v6 kernelHeight];
  v36 = [v6 dilationRateInY];
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v84);
  v38 = PaddingStyle;
  v39 = v34 * (v33 - 1);
  v40 = v39 + 1;
  v41 = v36 * (v35 - 1);
  v42 = v41 + 1;
  if (PaddingStyle == 1)
  {
    v17 = 0;
    v16 = 0;
  }

  else if (PaddingStyle == 2 || PaddingStyle == 4)
  {
    if (v72 % [v6 strideInPixelsY])
    {
      v43 = v72 % [v6 strideInPixelsY];
    }

    else
    {
      v43 = [v6 strideInPixelsY];
    }

    if (v71 % [v6 strideInPixelsX])
    {
      v44 = v71 % [v6 strideInPixelsX];
    }

    else
    {
      v44 = [v6 strideInPixelsX];
    }

    v45 = (v42 - v43) & ~((v42 - v43) >> 63);
    v46 = (v40 - v44) & ~((v40 - v44) >> 63);
    v47 = v45 >> 1;
    v48 = v45 - (v45 >> 1);
    v49 = v46 >> 1;
    v50 = v46 - (v46 >> 1);
    if (v38 == 4)
    {
      v17 = v48;
    }

    else
    {
      v17 = v47;
    }

    if (v38 == 4)
    {
      v16 = v50;
    }

    else
    {
      v16 = v49;
    }
  }

  objc_opt_class();
  v51 = v40 / 2 - v16;
  v52 = v42 / 2 - v17;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = -v16;
      v52 = -v17;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    [v28 setOffsets:{v51, v52}];
    goto LABEL_65;
  }

  [v28 setOffsets:{0, 0}];
  [v28 setKernelOffsets:{(v39 & 1) - v51, (v41 & 1) - v52}];
LABEL_65:

  [v28 setOptions:{objc_msgSend(v28, "options") | 1}];
  v53 = *(v73 + 1);
  *(v73 + 1) = v28;
}

void *GPU::Conv2DOpHandler::postInitializeHook(GPU::Conv2DOpHandler *this)
{
  result = mlir::Block::getParentOp(*(*(this + 3) + 16));
  if (*(result[6] + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id && *(this + 40) == 1 && !*(this + 4))
  {
    result = GPU::Conv2DOpHandler::getQuantizationParameters(*(this + 3), v6, v5, v4, &v3);
    if (result)
    {
      return GPU::Conv2DOpHandler::_getQuantKernelDAGObject(this);
    }
  }

  return result;
}

uint64_t GPU::Conv2DOpHandler::getQuantizationParameters(GPU::Conv2DOpHandler *this, mlir::Value *a2, mlir::Value *a3, mlir::Value *a4, mlir::Value *a5)
{
  v17 = *(*(this + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    v11 = 0;
    v17 = *(*(this + 9) + 56);
    v12 = mlir::Value::getDefiningOp(&v17);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (!v11)
    {
      return 0;
    }

    v13 = 0;
    goto LABEL_17;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v11 = DefiningOp;
  }

  else
  {
    v11 = 0;
  }

  v17 = *(*(this + 9) + 56);
  v12 = mlir::Value::getDefiningOp(&v17);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((v11 == 0) != (v13 == 0))
  {
LABEL_17:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v11)
  {
    v14 = *(v11 + 72);
    *a2 = *(v14 + 24);
    *a3 = *(v14 + 88);
    v15 = *(v13 + 72);
    *a4 = *(v15 + 24);
    *a5 = *(v15 + 88);
    return 1;
  }

  return 0;
}

id GPU::Conv2DOpHandler::_getQuantKernelDAGObject(GPU::Conv2DOpHandler *this)
{
  v2 = *(this + 15);
  if (!v2 || *(this + 40) != 1)
  {
    operator new();
  }

  if (!*(v2 + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v3 = *(*(this + 15) + 120);

  return v3;
}

void GPU::Conv2DOpHandler::encodeNDArrayOp(GPU::Conv2DOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(this + 40) & 1) == 0)
  {
    GPU::Conv2DOpHandler::_createKernel(this);
  }

  if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id && GPU::Conv2DOpHandler::getQuantizationParameters(*(this + 3), v31, v30, v29, v28))
  {
    v6 = GPU::Conv2DOpHandler::_getQuantKernelDAGObject(this);
  }

  v7 = *(this + 3);
  v8 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v9 = [v8 mpsndarray];
  v10 = *(this + 1);
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v11 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v13 = *(a2 + 1);
    v14 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v10 encodeToMPSCommandEncoder:v12 commandBuffer:v13 sourceArrays:v11 resultState:0 destinationArray:v9 kernelDAGObject:v14];
    goto LABEL_11;
  }

  v15 = *(this + 15);
  if (v15)
  {
    v11 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(v15, *(this + 2));
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v16 = *(a2 + 1);
    v14 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 15));
    [v10 encodeToMPSCommandEncoder:v12 commandBuffer:v16 sourceArrays:v11 resultState:0 destinationArray:v9 kernelDAGObject:v14];
LABEL_11:

    goto LABEL_12;
  }

  v17 = *(v7 + 72);
  v18 = *(v17 + 56);
  v27 = (*(**(this + 2) + 48))(*(this + 2), *(v17 + 24), 0);
  v19 = (*(**(this + 2) + 48))(*(this + 2), v18, 0);
  v20 = [v27 mpsndarray];
  v21 = [v19 mpsndarray];
  v22 = v21;
  if (!v9 || (v20 ? (v23 = v21 == 0) : (v23 = 1), v23))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v25 = *(a2 + 1);
  v32[0] = v20;
  v32[1] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v10 encodeToMPSCommandEncoder:v24 commandBuffer:v25 sourceArrays:v26 destinationArray:v9];

LABEL_12:
}

void GPU::Conv2DDataGradientOpHandler::_createKernel(GPU::Conv2DDataGradientOpHandler *this)
{
  v77 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v77, 1u);
  v82[0] = GPURegionRuntime::getStaticType(*(this + 2), *(*(v77 + 72) + 32 * ODSOperandIndexAndLength + 24));
  Value = mlir::ArrayAttr::getValue(v82);
  if (*(v77 + 36))
  {
    v4 = v77 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  v82[0] = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  v6 = mlir::ArrayAttr::getValue(v82);
  v75 = this;
  v7 = *(this + 2);
  v87[0] = v77;
  v76 = [*(v7 + 48) metalDevice];
  v8 = objc_alloc_init(MEMORY[0x1E69746B0]);
  Strides = mlir::mps::Conv3DOp::getStrides(v87);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v87);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v87);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(v87);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v19 = 0;
      v18 = 0;
      v10 = 0;
      v72 = 0;
      v74 = 0;
      goto LABEL_30;
    }

    [v8 setDataFormat:1];
    v72 = v6[2];
    v74 = v6[1];
    v10 = v6[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, Strides, 0);
    v11 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v11, NumElements);
    if (v83 == v81)
    {
LABEL_7:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, InputAttributeNames, 0);
      v13 = InputAttributeNames;
      v14 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v13, v14);
      if (v83 == v81)
      {
LABEL_8:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, Rewriter, 0);
        v15 = Rewriter;
        v16 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v15, v16);
        if (v83 != v81)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
            v20 = v79;
            if (v79 >= 0x41)
            {
              if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
              {
                v21 = *v78;
              }

              else
              {
                v21 = -1;
              }
            }

            else
            {
              v21 = v78;
            }

            if (v17 == 4)
            {
              v22 = v21;
            }

            else
            {
              v22 = v18;
            }

            if (v17 == 2)
            {
              v19 = v21;
            }

            else
            {
              v18 = v22;
            }

            if (v20 >= 0x41 && v78)
            {
              MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
            }

            ++v83;
            ++v17;
          }

          while (v83 != v81);
          goto LABEL_30;
        }

LABEL_28:
        v19 = 0;
        v18 = 0;
        goto LABEL_30;
      }

      v62 = 0;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
        v63 = v79;
        if (v79 >= 0x41)
        {
          if (v63 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
          {
            v64 = *v78;
            if (v62 <= 1)
            {
LABEL_132:
              if (v62)
              {
                if (v62 == 1)
                {
                  [v8 setDilationRateInY:v64];
                  goto LABEL_139;
                }

                goto LABEL_135;
              }

              if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_136:
              MTLReportFailure();
              goto LABEL_139;
            }
          }

          else
          {
            v64 = -1;
            if (v62 <= 1)
            {
              goto LABEL_132;
            }
          }
        }

        else
        {
          v64 = v78;
          if (v62 <= 1)
          {
            goto LABEL_132;
          }
        }

        if (v62 != 2)
        {
          if (v62 == 3)
          {
            if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
LABEL_135:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_139;
            }
          }

          goto LABEL_136;
        }

        [v8 setDilationRateInX:v64];
LABEL_139:
        if (v79 >= 0x41 && v78)
        {
          MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
        }

        ++v83;
        ++v62;
        if (v83 == v81)
        {
          goto LABEL_8;
        }
      }
    }

    v56 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
      v57 = v79;
      if (v79 >= 0x41)
      {
        if (v57 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
        {
          v58 = *v78;
          if (v56 <= 1)
          {
LABEL_82:
            if (v56)
            {
              if (v56 == 1)
              {
                [v8 setStrideInPixelsY:v58];
                goto LABEL_89;
              }

              goto LABEL_85;
            }

            if (v58 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_89;
            }

LABEL_86:
            MTLReportFailure();
            goto LABEL_89;
          }
        }

        else
        {
          v58 = -1;
          if (v56 <= 1)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        v58 = v78;
        if (v56 <= 1)
        {
          goto LABEL_82;
        }
      }

      if (v56 != 2)
      {
        if (v56 == 3)
        {
          if (v58 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        else
        {
LABEL_85:
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_89;
          }
        }

        goto LABEL_86;
      }

      [v8 setStrideInPixelsX:v58];
LABEL_89:
      if (v79 >= 0x41 && v78)
      {
        MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
      }

      ++v83;
      ++v56;
      if (v83 == v81)
      {
        goto LABEL_7;
      }
    }
  }

  [v8 setDataFormat:0];
  v72 = v6[3];
  v74 = v6[2];
  v10 = v6[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, Strides, 0);
  v23 = Strides;
  v24 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v23, v24);
  if (v83 != v81)
  {
    v59 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
      v60 = v79;
      if (v79 >= 0x41)
      {
        if (v60 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
        {
          v61 = *v78;
          if (v59 <= 1)
          {
LABEL_105:
            if (!v59)
            {
              if (v61 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_114;
              }

LABEL_111:
              MTLReportFailure();
              goto LABEL_114;
            }

            if (v59 == 1)
            {
              if (v61 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_114;
              }

              goto LABEL_111;
            }

LABEL_110:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_114;
            }

            goto LABEL_111;
          }
        }

        else
        {
          v61 = -1;
          if (v59 <= 1)
          {
            goto LABEL_105;
          }
        }
      }

      else
      {
        v61 = v78;
        if (v59 <= 1)
        {
          goto LABEL_105;
        }
      }

      if (v59 != 2)
      {
        if (v59 == 3)
        {
          [v8 setStrideInPixelsX:v61];
          goto LABEL_114;
        }

        goto LABEL_110;
      }

      [v8 setStrideInPixelsY:v61];
LABEL_114:
      if (v79 >= 0x41 && v78)
      {
        MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
      }

      ++v83;
      ++v59;
    }

    while (v83 != v81);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, InputAttributeNames, 0);
  v25 = InputAttributeNames;
  v26 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v25, v26);
  if (v83 != v81)
  {
    v65 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
      v66 = v79;
      if (v79 >= 0x41)
      {
        if (v66 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
        {
          v67 = *v78;
          if (v65 <= 1)
          {
LABEL_155:
            if (!v65)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_164;
              }

LABEL_161:
              MTLReportFailure();
              goto LABEL_164;
            }

            if (v65 == 1)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_164;
              }

              goto LABEL_161;
            }

LABEL_160:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_164;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v67 = -1;
          if (v65 <= 1)
          {
            goto LABEL_155;
          }
        }
      }

      else
      {
        v67 = v78;
        if (v65 <= 1)
        {
          goto LABEL_155;
        }
      }

      if (v65 != 2)
      {
        if (v65 == 3)
        {
          [v8 setDilationRateInX:v67];
          goto LABEL_164;
        }

        goto LABEL_160;
      }

      [v8 setDilationRateInY:v67];
LABEL_164:
      if (v79 >= 0x41 && v78)
      {
        MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
      }

      ++v83;
      ++v65;
    }

    while (v83 != v81);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, Rewriter, 0);
  v27 = Rewriter;
  v28 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v27, v28);
  if (v83 == v81)
  {
    goto LABEL_28;
  }

  v68 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
    v69 = v79;
    if (v79 >= 0x41)
    {
      if (v69 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
      {
        v70 = *v78;
      }

      else
      {
        v70 = -1;
      }
    }

    else
    {
      v70 = v78;
    }

    if (v68 == 6)
    {
      v71 = v70;
    }

    else
    {
      v71 = v18;
    }

    if (v68 == 4)
    {
      v19 = v70;
    }

    else
    {
      v18 = v71;
    }

    if (v69 >= 0x41 && v78)
    {
      MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
    }

    ++v83;
    ++v68;
  }

  while (v83 != v81);
LABEL_30:
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(v87);
  if (WeightsLayout == 2)
  {
    [v8 setWeightsFormat:1];
    [v8 setKernelWidth:Value[3]];
    [v8 setKernelHeight:Value[2]];
    [v8 setInputFeatureChannels:Value[1]];
    goto LABEL_34;
  }

  if (WeightsLayout == 3)
  {
    [v8 setWeightsFormat:0];
    [v8 setKernelWidth:Value[1]];
    [v8 setKernelHeight:*Value];
    [v8 setInputFeatureChannels:Value[2]];
    Value += 3;
LABEL_34:
    [v8 setOutputFeatureChannels:{*Value, v72}];
  }

  [v8 setGroups:mlir::mps::Conv3DOp::getGroups(v87)];
  [v8 setInputFeatureChannels:{objc_msgSend(v8, "inputFeatureChannels") * objc_msgSend(v8, "groups")}];
  [v8 inputFeatureChannels];
  if (v10 != [v8 inputFeatureChannels] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v30 = [objc_alloc(MEMORY[0x1E69746B8]) initWithDevice:v76 ndArrayConvolution2DDescriptor:v8];
  v31 = *(v7 + 64);
  if (!*(v31 + 47) || (v88.var0 = "mps.reducedPrecisionFastMath", v88.var1 = 28, InherentAttr = mlir::Operation::getInherentAttr(*(v7 + 64), v88), (v33 & 1) == 0))
  {
    v89.var0 = "mps.reducedPrecisionFastMath";
    v89.var1 = 28;
    InherentAttr = mlir::DictionaryAttr::get((v31 + 56), v89);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v34 = InherentAttr;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v82[0] = v34;
  if ((mlir::IntegerAttr::getUInt(v82) & 2) != 0)
  {
    [v30 setOptions:{objc_msgSend(v30, "options") | 2}];
  }

  v35 = [v8 kernelWidth];
  v36 = [v8 dilationRateInX];
  v37 = [v8 kernelHeight];
  v38 = [v8 dilationRateInY];
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v87);
  v40 = PaddingStyle;
  v41 = v36 * (v35 - 1);
  v42 = v41 + 1;
  v43 = v38 * (v37 - 1);
  v44 = v43 + 1;
  if (PaddingStyle == 1)
  {
    v19 = 0;
    v18 = 0;
  }

  else if (PaddingStyle == 2 || PaddingStyle == 4)
  {
    if (v74 % [v8 strideInPixelsY])
    {
      v45 = v74 % [v8 strideInPixelsY];
    }

    else
    {
      v45 = [v8 strideInPixelsY];
    }

    if (v73 % [v8 strideInPixelsX])
    {
      v46 = v73 % [v8 strideInPixelsX];
    }

    else
    {
      v46 = [v8 strideInPixelsX];
    }

    v47 = (v44 - v45) & ~((v44 - v45) >> 63);
    v48 = (v42 - v46) & ~((v42 - v46) >> 63);
    v49 = v47 >> 1;
    v50 = v47 - (v47 >> 1);
    v51 = v48 >> 1;
    v52 = v48 - (v48 >> 1);
    if (v40 == 4)
    {
      v19 = v50;
    }

    else
    {
      v19 = v49;
    }

    if (v40 == 4)
    {
      v18 = v52;
    }

    else
    {
      v18 = v51;
    }
  }

  objc_opt_class();
  v53 = v42 / 2 - v18;
  v54 = v44 / 2 - v19;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = -v18;
      v54 = -v19;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    [v30 setOffsets:{v53, v54}];
    goto LABEL_68;
  }

  [v30 setOffsets:{0, 0}];
  [v30 setKernelOffsets:{(v41 & 1) - v53, (v43 & 1) - v54}];
LABEL_68:

  [v30 setOptions:{objc_msgSend(v30, "options") | 1}];
  v55 = *(v75 + 1);
  *(v75 + 1) = v30;
}

void GPU::Conv2DDataGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::Conv2DDataGradientOpHandler::_createKernel(this);
  }

  v24 = this[3];
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v24, 1u);
  v7 = *(v24[9] + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v24, 0);
  v9 = *(v24[9] + 32 * v8 + 24);
  v10 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v11 = [v10 mpsndarray];
  v12 = (*(*this[2] + 48))(this[2], v7, 0);
  v13 = [v12 mpsndarray];

  v14 = (*(*this[2] + 48))(this[2], v9, 0);
  v15 = [v14 mpsndarray];

  if (v13)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16 || v11 == 0;
  if (v17 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = this[1];
  v26[0] = v13;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v20 = [v18 resultStateForSourceArrays:v19 sourceStates:0 destinationArray:v11];

  if (*(v13 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v13 setReadCount:{objc_msgSend(v13, "readCount") + 1}];
  }

  v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v22 = *(a2 + 1);
  v25[0] = v13;
  v25[1] = v13;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v18 encodeToMPSCommandEncoder:v21 commandBuffer:v22 sourceArrays:v23 sourceGradient:v15 gradientState:v20 destinationArray:v11 kernelDAGObject:0];
}

unint64_t GPU::Conv2DDataGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::Conv2DWeightsGradientOpHandler::_createKernel(GPU::Conv2DWeightsGradientOpHandler *this)
{
  v2 = *(this + 3);
  if (*(v2 + 36))
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v81[0] = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  Value = mlir::ArrayAttr::getValue(v81);
  v81[0] = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 56));
  v6 = mlir::ArrayAttr::getValue(v81);
  v75 = this;
  v7 = *(this + 2);
  v86 = v2;
  v76 = [*(v7 + 48) metalDevice];
  v8 = objc_alloc_init(MEMORY[0x1E69746B0]);
  Strides = mlir::mps::Conv3DOp::getStrides(&v86);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v86);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v86);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v86);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v19 = 0;
      v18 = 0;
      v10 = 0;
      v72 = 0;
      v74 = 0;
      goto LABEL_30;
    }

    [v8 setDataFormat:1];
    v72 = v6[2];
    v74 = v6[1];
    v10 = v6[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, Strides, 0);
    v11 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v11, NumElements);
    if (v82 == v80)
    {
LABEL_7:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, InputAttributeNames, 0);
      v13 = InputAttributeNames;
      v14 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v13, v14);
      if (v82 == v80)
      {
LABEL_8:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, Rewriter, 0);
        v15 = Rewriter;
        v16 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v15, v16);
        if (v82 != v80)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
            v20 = v78;
            if (v78 >= 0x41)
            {
              if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
              {
                v21 = *v77;
              }

              else
              {
                v21 = -1;
              }
            }

            else
            {
              v21 = v77;
            }

            if (v17 == 4)
            {
              v22 = v21;
            }

            else
            {
              v22 = v18;
            }

            if (v17 == 2)
            {
              v19 = v21;
            }

            else
            {
              v18 = v22;
            }

            if (v20 >= 0x41 && v77)
            {
              MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
            }

            ++v82;
            ++v17;
          }

          while (v82 != v80);
          goto LABEL_30;
        }

LABEL_28:
        v19 = 0;
        v18 = 0;
        goto LABEL_30;
      }

      v62 = 0;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
        v63 = v78;
        if (v78 >= 0x41)
        {
          if (v63 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
          {
            v64 = *v77;
            if (v62 <= 1)
            {
LABEL_132:
              if (v62)
              {
                if (v62 == 1)
                {
                  [v8 setDilationRateInY:v64];
                  goto LABEL_139;
                }

                goto LABEL_135;
              }

              if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_136:
              MTLReportFailure();
              goto LABEL_139;
            }
          }

          else
          {
            v64 = -1;
            if (v62 <= 1)
            {
              goto LABEL_132;
            }
          }
        }

        else
        {
          v64 = v77;
          if (v62 <= 1)
          {
            goto LABEL_132;
          }
        }

        if (v62 != 2)
        {
          if (v62 == 3)
          {
            if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
LABEL_135:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_139;
            }
          }

          goto LABEL_136;
        }

        [v8 setDilationRateInX:v64];
LABEL_139:
        if (v78 >= 0x41 && v77)
        {
          MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
        }

        ++v82;
        ++v62;
        if (v82 == v80)
        {
          goto LABEL_8;
        }
      }
    }

    v56 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
      v57 = v78;
      if (v78 >= 0x41)
      {
        if (v57 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
        {
          v58 = *v77;
          if (v56 <= 1)
          {
LABEL_82:
            if (v56)
            {
              if (v56 == 1)
              {
                [v8 setStrideInPixelsY:v58];
                goto LABEL_89;
              }

              goto LABEL_85;
            }

            if (v58 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_89;
            }

LABEL_86:
            MTLReportFailure();
            goto LABEL_89;
          }
        }

        else
        {
          v58 = -1;
          if (v56 <= 1)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        v58 = v77;
        if (v56 <= 1)
        {
          goto LABEL_82;
        }
      }

      if (v56 != 2)
      {
        if (v56 == 3)
        {
          if (v58 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        else
        {
LABEL_85:
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_89;
          }
        }

        goto LABEL_86;
      }

      [v8 setStrideInPixelsX:v58];
LABEL_89:
      if (v78 >= 0x41 && v77)
      {
        MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
      }

      ++v82;
      ++v56;
      if (v82 == v80)
      {
        goto LABEL_7;
      }
    }
  }

  [v8 setDataFormat:0];
  v72 = v6[3];
  v74 = v6[2];
  v10 = v6[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, Strides, 0);
  v23 = Strides;
  v24 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v23, v24);
  if (v82 != v80)
  {
    v59 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
      v60 = v78;
      if (v78 >= 0x41)
      {
        if (v60 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
        {
          v61 = *v77;
          if (v59 <= 1)
          {
LABEL_105:
            if (!v59)
            {
              if (v61 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_114;
              }

LABEL_111:
              MTLReportFailure();
              goto LABEL_114;
            }

            if (v59 == 1)
            {
              if (v61 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_114;
              }

              goto LABEL_111;
            }

LABEL_110:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_114;
            }

            goto LABEL_111;
          }
        }

        else
        {
          v61 = -1;
          if (v59 <= 1)
          {
            goto LABEL_105;
          }
        }
      }

      else
      {
        v61 = v77;
        if (v59 <= 1)
        {
          goto LABEL_105;
        }
      }

      if (v59 != 2)
      {
        if (v59 == 3)
        {
          [v8 setStrideInPixelsX:v61];
          goto LABEL_114;
        }

        goto LABEL_110;
      }

      [v8 setStrideInPixelsY:v61];
LABEL_114:
      if (v78 >= 0x41 && v77)
      {
        MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
      }

      ++v82;
      ++v59;
    }

    while (v82 != v80);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, InputAttributeNames, 0);
  v25 = InputAttributeNames;
  v26 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v25, v26);
  if (v82 != v80)
  {
    v65 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
      v66 = v78;
      if (v78 >= 0x41)
      {
        if (v66 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
        {
          v67 = *v77;
          if (v65 <= 1)
          {
LABEL_155:
            if (!v65)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_164;
              }

LABEL_161:
              MTLReportFailure();
              goto LABEL_164;
            }

            if (v65 == 1)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_164;
              }

              goto LABEL_161;
            }

LABEL_160:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_164;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v67 = -1;
          if (v65 <= 1)
          {
            goto LABEL_155;
          }
        }
      }

      else
      {
        v67 = v77;
        if (v65 <= 1)
        {
          goto LABEL_155;
        }
      }

      if (v65 != 2)
      {
        if (v65 == 3)
        {
          [v8 setDilationRateInX:v67];
          goto LABEL_164;
        }

        goto LABEL_160;
      }

      [v8 setDilationRateInY:v67];
LABEL_164:
      if (v78 >= 0x41 && v77)
      {
        MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
      }

      ++v82;
      ++v65;
    }

    while (v82 != v80);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, Rewriter, 0);
  v27 = Rewriter;
  v28 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v27, v28);
  if (v82 == v80)
  {
    goto LABEL_28;
  }

  v68 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
    v69 = v78;
    if (v78 >= 0x41)
    {
      if (v69 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
      {
        v70 = *v77;
      }

      else
      {
        v70 = -1;
      }
    }

    else
    {
      v70 = v77;
    }

    if (v68 == 6)
    {
      v71 = v70;
    }

    else
    {
      v71 = v18;
    }

    if (v68 == 4)
    {
      v19 = v70;
    }

    else
    {
      v18 = v71;
    }

    if (v69 >= 0x41 && v77)
    {
      MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
    }

    ++v82;
    ++v68;
  }

  while (v82 != v80);
LABEL_30:
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v86);
  if (WeightsLayout == 2)
  {
    [v8 setWeightsFormat:1];
    [v8 setKernelWidth:Value[3]];
    [v8 setKernelHeight:Value[2]];
    [v8 setInputFeatureChannels:Value[1]];
    goto LABEL_34;
  }

  if (WeightsLayout == 3)
  {
    [v8 setWeightsFormat:0];
    [v8 setKernelWidth:Value[1]];
    [v8 setKernelHeight:*Value];
    [v8 setInputFeatureChannels:Value[2]];
    Value += 3;
LABEL_34:
    [v8 setOutputFeatureChannels:{*Value, v72}];
  }

  [v8 setGroups:mlir::mps::Conv3DOp::getGroups(&v86)];
  [v8 setInputFeatureChannels:{objc_msgSend(v8, "inputFeatureChannels") * objc_msgSend(v8, "groups")}];
  [v8 inputFeatureChannels];
  if (v10 != [v8 inputFeatureChannels] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v30 = [objc_alloc(MEMORY[0x1E69746C0]) initWithDevice:v76 ndArrayConvolution2DDescriptor:v8];
  v31 = *(v7 + 64);
  if (!*(v31 + 47) || (v87.var0 = "mps.reducedPrecisionFastMath", v87.var1 = 28, InherentAttr = mlir::Operation::getInherentAttr(*(v7 + 64), v87), (v33 & 1) == 0))
  {
    v88.var0 = "mps.reducedPrecisionFastMath";
    v88.var1 = 28;
    InherentAttr = mlir::DictionaryAttr::get((v31 + 56), v88);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v34 = InherentAttr;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v81[0] = v34;
  if ((mlir::IntegerAttr::getUInt(v81) & 2) != 0)
  {
    [v30 setOptions:{objc_msgSend(v30, "options") | 2}];
  }

  v35 = [v8 kernelWidth];
  v36 = [v8 dilationRateInX];
  v37 = [v8 kernelHeight];
  v38 = [v8 dilationRateInY];
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v86);
  v40 = PaddingStyle;
  v41 = v36 * (v35 - 1);
  v42 = v41 + 1;
  v43 = v38 * (v37 - 1);
  v44 = v43 + 1;
  if (PaddingStyle == 1)
  {
    v19 = 0;
    v18 = 0;
  }

  else if (PaddingStyle == 2 || PaddingStyle == 4)
  {
    if (v74 % [v8 strideInPixelsY])
    {
      v45 = v74 % [v8 strideInPixelsY];
    }

    else
    {
      v45 = [v8 strideInPixelsY];
    }

    if (v73 % [v8 strideInPixelsX])
    {
      v46 = v73 % [v8 strideInPixelsX];
    }

    else
    {
      v46 = [v8 strideInPixelsX];
    }

    v47 = (v44 - v45) & ~((v44 - v45) >> 63);
    v48 = (v42 - v46) & ~((v42 - v46) >> 63);
    v49 = v47 >> 1;
    v50 = v47 - (v47 >> 1);
    v51 = v48 >> 1;
    v52 = v48 - (v48 >> 1);
    if (v40 == 4)
    {
      v19 = v50;
    }

    else
    {
      v19 = v49;
    }

    if (v40 == 4)
    {
      v18 = v52;
    }

    else
    {
      v18 = v51;
    }
  }

  objc_opt_class();
  v53 = v42 / 2 - v18;
  v54 = v44 / 2 - v19;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = -v18;
      v54 = -v19;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    [v30 setOffsets:{v53, v54}];
    goto LABEL_68;
  }

  [v30 setOffsets:{0, 0}];
  [v30 setKernelOffsets:{(v41 & 1) - v53, (v43 & 1) - v54}];
LABEL_68:

  [v30 setOptions:{objc_msgSend(v30, "options") | 1}];
  v55 = *(v75 + 1);
  *(v75 + 1) = v30;
}

void GPU::Conv2DWeightsGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::Conv2DWeightsGradientOpHandler::_createKernel(this);
  }

  v6 = *(this[3] + 9);
  v7 = *(v6 + 56);
  v8 = *(v6 + 24);
  v9 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v10 = [v9 mpsndarray];
  v11 = (*(*this[2] + 48))(this[2], v7, 0);
  v12 = [v11 mpsndarray];

  v13 = (*(*this[2] + 48))(this[2], v8, 0);
  v14 = [v13 mpsndarray];

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v10 == 0;
  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = this[1];
  v24[0] = v12;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v19 = [v17 resultStateForSourceArrays:v18 sourceStates:0 destinationArray:v10];

  if (*(v12 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v12 setReadCount:{objc_msgSend(v12, "readCount") + 1}];
  }

  v20 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v21 = *(a2 + 1);
  v23[0] = v12;
  v23[1] = v12;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v17 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v22 sourceGradient:v14 gradientState:v19 destinationArray:v10 kernelDAGObject:0];
}

unint64_t GPU::Conv2DWeightsGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::Conv3DOpHandler::_createNDArrayMultiaryKernel(GPU::Conv3DOpHandler *this)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  v2 = (this + 16);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), *(*(v1 + 72) + 56));
  mlir::ArrayAttr::getValue(&StaticType);
  StaticType = GPURegionRuntime::getStaticType(*v2, *(*(v1 + 72) + 24));
  mlir::ArrayAttr::getValue(&StaticType);
  v3 = [*(*v2 + 48) metalDevice];
  v12[0] = v1;
  v4 = v3;
  [objc_alloc(MEMORY[0x1E69746C8]) initWithDevice:v4];
  Strides = mlir::mps::Conv3DOp::getStrides(v12);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v12);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v12);
  if (v11 != StaticType)
  {
    if (((v11 - StaticType) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  mlir::mps::MaterializeSparseTensorOp::getStorageType(v12);
  operator new();
}

void sub_1E07E0C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p)
{
  operator delete(v16);
  operator delete(v19);
  operator delete(v18);
  operator delete(v17);
  operator delete(__p);
  operator delete(a14);
  v24 = *(v20 - 208);
  if (v24)
  {
    *(v20 - 200) = v24;
    operator delete(v24);
    v22 = *(v20 - 184);
    if (v22)
    {
LABEL_7:
      *(v20 - 176) = v22;
      operator delete(v22);
      v23 = *(v20 - 160);
      if (!v23)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v22 = *(v20 - 184);
    if (v22)
    {
      goto LABEL_7;
    }
  }

  v23 = *(v20 - 160);
  if (!v23)
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v20 - 152) = v23;
  operator delete(v23);
  goto LABEL_9;
}

void GPU::Conv3DDataGradientOpHandler::_createKernel(GPU::Conv3DDataGradientOpHandler *this)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v12 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v12, 1u);
  v3 = (this + 16);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), *(*(v12 + 72) + 32 * ODSOperandIndexAndLength + 24));
  mlir::ArrayAttr::getValue(&StaticType);
  if (*(v12 + 36))
  {
    v4 = v12 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  StaticType = GPURegionRuntime::getStaticType(*v3, NextResultAtOffset);
  mlir::ArrayAttr::getValue(&StaticType);
  v6 = v12;
  v7 = [*(*v3 + 48) metalDevice];
  v17[0] = v6;
  v8 = v7;
  [objc_alloc(MEMORY[0x1E69746D0]) initWithDevice:v8];
  Strides = mlir::mps::Conv3DOp::getStrides(v17);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v17);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v17);
  if (v16 != StaticType)
  {
    if (((v16 - StaticType) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  mlir::mps::MaterializeSparseTensorOp::getStorageType(v17);
  operator new();
}

void sub_1E07E1B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *__p)
{
  operator delete(v17);
  operator delete(v20);
  operator delete(v19);
  operator delete(v18);
  operator delete(__p);
  operator delete(a15);
  v25 = *(v21 - 208);
  if (v25)
  {
    *(v21 - 200) = v25;
    operator delete(v25);
    v23 = *(v21 - 184);
    if (v23)
    {
LABEL_7:
      *(v21 - 176) = v23;
      operator delete(v23);
      v24 = *(v21 - 160);
      if (!v24)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v23 = *(v21 - 184);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  v24 = *(v21 - 160);
  if (!v24)
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v21 - 152) = v24;
  operator delete(v24);
  goto LABEL_9;
}

void GPU::Conv3DDataGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::Conv3DDataGradientOpHandler::_createKernel(this);
  }

  v24 = this[3];
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v24, 1u);
  v7 = *(v24[9] + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v24, 0);
  v9 = *(v24[9] + 32 * v8 + 24);
  v10 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v11 = [v10 mpsndarray];
  v12 = (*(*this[2] + 48))(this[2], v7, 0);
  v13 = [v12 mpsndarray];

  v14 = (*(*this[2] + 48))(this[2], v9, 0);
  v15 = [v14 mpsndarray];

  if (v13)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16 || v11 == 0;
  if (v17 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = this[1];
  v26[0] = v13;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v20 = [v18 resultStateForSourceArrays:v19 sourceStates:0 destinationArray:v11];

  if (*(v13 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v13 setReadCount:{objc_msgSend(v13, "readCount") + 1}];
  }

  v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v22 = *(a2 + 1);
  v25[0] = v13;
  v25[1] = v13;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v18 encodeToMPSCommandEncoder:v21 commandBuffer:v22 sourceArrays:v23 sourceGradient:v15 gradientState:v20 destinationArray:v11 kernelDAGObject:0];
}

unint64_t GPU::Conv3DDataGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::Conv3DWeightsGradientOpHandler::_createKernel(GPU::Conv3DWeightsGradientOpHandler *this)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (*(v2 + 36))
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  mlir::ArrayAttr::getValue(&StaticType);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 56));
  mlir::ArrayAttr::getValue(&StaticType);
  v5 = [*(*(this + 2) + 48) metalDevice];
  v14[0] = v2;
  v6 = v5;
  [objc_alloc(MEMORY[0x1E69746D8]) initWithDevice:v6];
  Strides = mlir::mps::Conv3DOp::getStrides(v14);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v14);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v14);
  if (v13 != StaticType)
  {
    if (((v13 - StaticType) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  mlir::mps::MaterializeSparseTensorOp::getStorageType(v14);
  operator new();
}

void sub_1E07E2CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p)
{
  operator delete(v16);
  operator delete(v19);
  operator delete(v18);
  operator delete(v17);
  operator delete(__p);
  operator delete(a14);
  v24 = *(v20 - 208);
  if (v24)
  {
    *(v20 - 200) = v24;
    operator delete(v24);
    v22 = *(v20 - 184);
    if (v22)
    {
LABEL_7:
      *(v20 - 176) = v22;
      operator delete(v22);
      v23 = *(v20 - 160);
      if (!v23)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v22 = *(v20 - 184);
    if (v22)
    {
      goto LABEL_7;
    }
  }

  v23 = *(v20 - 160);
  if (!v23)
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v20 - 152) = v23;
  operator delete(v23);
  goto LABEL_9;
}

void GPU::Conv3DWeightsGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::Conv3DWeightsGradientOpHandler::_createKernel(this);
  }

  v6 = *(this[3] + 9);
  v7 = *(v6 + 56);
  v8 = *(v6 + 24);
  v9 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v10 = [v9 mpsndarray];
  v11 = (*(*this[2] + 48))(this[2], v7, 0);
  v12 = [v11 mpsndarray];

  v13 = (*(*this[2] + 48))(this[2], v8, 0);
  v14 = [v13 mpsndarray];

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v10 == 0;
  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = this[1];
  v24[0] = v12;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v19 = [v17 resultStateForSourceArrays:v18 sourceStates:0 destinationArray:v10];

  if (*(v12 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v12 setReadCount:{objc_msgSend(v12, "readCount") + 1}];
  }

  v20 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v21 = *(a2 + 1);
  v23[0] = v12;
  v23[1] = v12;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v17 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v22 sourceGradient:v14 gradientState:v19 destinationArray:v10 kernelDAGObject:0];
}

unint64_t GPU::Conv3DWeightsGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

uint64_t GPU::Conv2DOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v9 = 0;
  v7 = 0;
  if (GPU::Conv2DOpHandler::getQuantizationParameters(v4, &v9, v8, &v7, &v6))
  {
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v9, 0);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v7, 0);
    MPSKernelDAG::binaryCoreOp();
    result = MPSKernelDAG::castOp();
  }

  else
  {
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 9) + 24), 0);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 9) + 56), 0);
    result = MPSKernelDAG::binaryCoreOp();
  }

  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::Conv2DOpHandler::~Conv2DOpHandler(GPU::Conv2DOpHandler *this)
{
  *this = &unk_1F5B503A8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B503A8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::Conv2DDataGradientOpHandler::~Conv2DDataGradientOpHandler(GPU::Conv2DDataGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::Conv2DWeightsGradientOpHandler::~Conv2DWeightsGradientOpHandler(GPU::Conv2DWeightsGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::Conv3DDataGradientOpHandler::~Conv3DDataGradientOpHandler(GPU::Conv3DDataGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::Conv3DWeightsGradientOpHandler::~Conv3DWeightsGradientOpHandler(GPU::Conv3DWeightsGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::Conv3DOpHandler,mlir::mps::Conv3DOp,MPSNDArrayConvolution3D,2ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v17 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::Conv3DOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v17 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 56), 0);
    v14 = [v13 mpsndarray];

    if (!v14 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v14];

    v10 = 0;
  }

  v15 = *(a1 + 8);
  v16 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v15 encodeToMPSCommandEncoder:v16 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

uint64_t GPU::Conv3DOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 72) + 56), 0);
  result = MPSKernelDAG::binaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::Conv3DOpHandler::~Conv3DOpHandler(GPU::Conv3DOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::Conv3DOpHandler,mlir::mps::Conv3DOp,MPSNDArrayConvolution3D,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::anonymous namespace::getIntValuesAsType<long long>(void *a1, uint64_t a2)
{
  v14 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, a2, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, a2, NumElements);
  for (; v13 != v11; ++v13)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &v8);
    v5 = v9;
    if (v9 >= 0x41)
    {
      if (v5 - llvm::APInt::countLeadingZerosSlowCase(&v8) <= 0x40)
      {
        v6 = *v8;
      }

      else
      {
        v6 = -1;
      }
    }

    else
    {
      v6 = v8;
    }

    v7 = v6;
    std::vector<long long>::push_back[abi:ne200100](a1, &v7);
    if (v9 >= 0x41)
    {
      if (v8)
      {
        MEMORY[0x1E12E5B60](v8, 0x1000C8000313F17);
      }
    }
  }
}

void sub_1E07E3BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void GPU::anonymous namespace::getPaddingOffsets(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, int a8)
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (a4 != a3)
  {
    if (((a4 - a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v8 = a5[1];
  if (v8 != *a5)
  {
    if (((v8 - *a5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v9 = a2[1];
  if (v9 != *a2)
  {
    if (((v9 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v10 = a6[1];
  if (v10 == *a6)
  {
    v11 = a7[1];
    if (v11 == *a7)
    {
      memset(__src, 0, sizeof(__src));
      if (!a8)
      {
        std::vector<long>::__assign_with_size[abi:ne200100]<long *,long *>(__src, 0, 0, 0);
      }

      v18 = v15;
      v19[0] = v16;
      *&v19[1] = v13;
      v19[3] = v14;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      operator new();
    }

    if (((v11 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (((v10 - *a6) & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<long>::__throw_length_error[abi:ne200100]();
}

void sub_1E07E437C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      if (!v25)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  if (!v25)
  {
LABEL_4:
    if (!v24)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  operator delete(v25);
  if (!v24)
  {
LABEL_6:
    if (v23)
    {
      operator delete(v23);
    }

    if (a15)
    {
      operator delete(a15);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v24);
  goto LABEL_6;
}

char *std::vector<long>::__assign_with_size[abi:ne200100]<long *,long *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void std::vector<long>::__insert_with_size[abi:ne200100]<long const*,long const*>(uint64_t a1, char *__src, char *a3, char *a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v8;
  if (v7 - v8 < 9)
  {
    v10 = *a1;
    v11 = (&v8[-*a1] >> 3) + 2;
    if (v11 >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v30 = (8 * (v12 >> 3));
    *v30 = *a3;
    v31 = v9 - __src;
    memcpy(v30 + 1, __src, v9 - __src);
    *(a1 + 8) = __src;
    memcpy(0, v10, v12);
    *a1 = 0;
    *(a1 + 8) = v30 + v31 + 16;
    *(a1 + 16) = 0;
    if (v10)
    {

      operator delete(v10);
    }

    return;
  }

  v15 = v8 - __src;
  if (v8 - __src > 8)
  {
    v29 = __src + 16;
    if (v8 >= 0x10)
    {
      *v8 = *(v8 - 2);
      if (v8 - 8 >= v8)
      {
        *(a1 + 8) = v8 + 8;
        if (v8 == v29)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      *(v8 + 1) = *(v8 - 1);
      v9 = v8 + 16;
    }

    *(a1 + 8) = v9;
    if (v8 == v29)
    {
LABEL_31:
      *__src = *a3;
      return;
    }

LABEL_30:
    memmove(__src + 16, __src, v8 - v29);
    goto LABEL_31;
  }

  v16 = &a3[v15];
  if (&a3[v15] != a4)
  {
    v17 = &__src[a4] - a3 - v8 - 8;
    if (v17 < 0x18)
    {
      goto LABEL_43;
    }

    if ((__src - a3) < 0x20)
    {
      goto LABEL_43;
    }

    v18 = (v17 >> 3) + 1;
    v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
    v16 += v19;
    v9 = &v8[v19];
    v20 = v8 + 16;
    v21 = &a3[v8 + 16 - __src];
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v21;
      *(v20 - 1) = *(v21 - 1);
      *v20 = v23;
      v20 += 2;
      v21 += 32;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_43:
      do
      {
        v24 = *v16;
        v16 += 8;
        *v9 = v24;
        v9 += 8;
      }

      while (v16 != a4);
    }
  }

  *(a1 + 8) = v9;
  if (v15 == 8)
  {
    v25 = __src + 16;
    v26 = v9 - 16;
    for (i = v9; v26 < v8; i += 8)
    {
      v28 = *v26;
      v26 += 8;
      *i = v28;
    }

    *(a1 + 8) = i;
    if (v9 != v25)
    {
      memmove(__src + 16, __src, v9 - v25);
    }

    if (v8 != __src)
    {
      *__src = *a3;
    }
  }
}

void sub_1E07E539C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  operator delete(v47);

  _Unwind_Resume(a1);
}

void nsArrayToUI64Attr(void *a1, uint64_t **a2)
{
  v3 = a1;
  mlir::Builder::getIntegerType(a2, 64, 0);
  [v3 count];
  operator new();
}

void sub_1E07E55F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

void GPU::GPURegionCallOpHandler::ScheduleStep::finalize(uint64_t **this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return;
  }

  v3 = *this;
  v69 = &(*this)[2 * v1];
  do
  {
    v4 = *v3;
    if ((*(*v3 + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 68);
      if (v5)
      {
        if (*(this + 80) == 1)
        {
          v6 = 0;
          v7 = *(v4 + 72);
          v8 = 1;
          do
          {
            while ((v8 & 1) == 0)
            {
              v8 = 0;
              if (++v6 == v5)
              {
                goto LABEL_3;
              }
            }

            v9 = (*(*(v7 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            v10 = *v9;
            {
              v32 = llvm::getTypeName<mlir::ShapedType>();
              mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v32, v33);
            }

            v11 = *(v10 + 16);
            if (!v11)
            {
              goto LABEL_21;
            }

            v12 = *(v10 + 8);
            v13 = *(v10 + 16);
            do
            {
              v14 = v13 >> 1;
              v15 = &v12[2 * (v13 >> 1)];
              v17 = *v15;
              v16 = v15 + 2;
              v13 += ~(v13 >> 1);
              if (v17 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
              {
                v12 = v16;
              }

              else
              {
                v13 = v14;
              }
            }

            while (v13);
            if (v12 != (*(v10 + 8) + 16 * v11) && *v12 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
            {
              v18 = v12[1];
              if (!v18)
              {
                v9 = 0;
                goto LABEL_23;
              }

              v24 = *v9;
              {
                v34 = llvm::getTypeName<mlir::ShapedType>();
                mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v34, v35);
              }

              v25 = *(v24 + 16);
              if (v25)
              {
                v26 = *(v24 + 8);
                v27 = *(v24 + 16);
                do
                {
                  v28 = v27 >> 1;
                  v29 = &v26[2 * (v27 >> 1)];
                  v31 = *v29;
                  v30 = v29 + 2;
                  v27 += ~(v27 >> 1);
                  if (v31 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
                  {
                    v26 = v30;
                  }

                  else
                  {
                    v27 = v28;
                  }
                }

                while (v27);
                if (v26 != (*(v24 + 8) + 16 * v25) && *v26 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
                {
                  v18 = v26[1];
                  goto LABEL_23;
                }
              }
            }

            else
            {
LABEL_21:
              v9 = 0;
            }

            v18 = 0;
LABEL_23:
            v71 = v9;
            v72 = v18;
            if (v9)
            {
              if (mlir::CallOpInterface::getArgOperands(&v71))
              {
                ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v71);
                if (v20)
                {
                  v21 = 8 * v20 - 8;
                  do
                  {
                    v22 = *ArgAttrsAttr++;
                    LOBYTE(v18) = v22 != 0x8000000000000000;
                    v23 = v22 == 0x8000000000000000 || v21 == 0;
                    v21 -= 8;
                  }

                  while (!v23);
                }

                else
                {
                  LOBYTE(v18) = 1;
                }
              }

              else
              {
                LOBYTE(v18) = 0;
              }
            }

            v8 = ((v9 == 0) | v18) & this[10];
            *(this + 80) = v8;
            ++v6;
          }

          while (v6 != v5);
        }
      }
    }

LABEL_3:
    v3 += 2;
  }

  while (v3 != v69);
  v36 = *(this + 2);
  if (v36)
  {
    v37 = *this;
    v70 = &(*this)[2 * v36];
    while (1)
    {
      v38 = *(*v37 + 36);
      v39 = v38 ? *v37 - 16 : 0;
      if (v38)
      {
        break;
      }

LABEL_57:
      v37 += 2;
      if (v37 == v70)
      {
        return;
      }
    }

    v40 = 0;
    while (2)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v39, v40);
      if (*(this + 80) == 1)
      {
        v43 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
        v44 = *v43;
        {
          v65 = llvm::getTypeName<mlir::ShapedType>();
          mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v65, v66);
        }

        v45 = *(v44 + 16);
        if (!v45)
        {
          goto LABEL_78;
        }

        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        do
        {
          v48 = v47 >> 1;
          v49 = &v46[2 * (v47 >> 1)];
          v51 = *v49;
          v50 = v49 + 2;
          v47 += ~(v47 >> 1);
          if (v51 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
          {
            v46 = v50;
          }

          else
          {
            v47 = v48;
          }
        }

        while (v47);
        if (v46 == (*(v44 + 8) + 16 * v45) || *v46 != mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
        {
LABEL_78:
          v43 = 0;
          goto LABEL_79;
        }

        v41 = v46[1];
        if (v41)
        {
          v57 = *v43;
          {
            v67 = llvm::getTypeName<mlir::ShapedType>();
            mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v67, v68);
          }

          v58 = *(v57 + 16);
          if (!v58)
          {
            goto LABEL_79;
          }

          v59 = *(v57 + 8);
          v60 = *(v57 + 16);
          do
          {
            v61 = v60 >> 1;
            v62 = &v59[2 * (v60 >> 1)];
            v64 = *v62;
            v63 = v62 + 2;
            v60 += ~(v60 >> 1);
            if (v64 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
            {
              v59 = v63;
            }

            else
            {
              v60 = v61;
            }
          }

          while (v60);
          if (v59 != (*(v57 + 8) + 16 * v58) && *v59 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
          {
            v41 = v59[1];
          }

          else
          {
LABEL_79:
            v41 = 0;
          }
        }

        else
        {
          v43 = 0;
        }

        v71 = v43;
        v72 = v41;
        if (v43)
        {
          if (mlir::CallOpInterface::getArgOperands(&v71))
          {
            v52 = mlir::CallableOpInterface::getArgAttrsAttr(&v71);
            if (v53)
            {
              v54 = 8 * v53 - 8;
              do
              {
                v55 = *v52++;
                LOBYTE(v41) = v55 != 0x8000000000000000;
                v56 = v55 == 0x8000000000000000 || v54 == 0;
                v54 -= 8;
              }

              while (!v56);
            }

            else
            {
              LOBYTE(v41) = 1;
            }
          }

          else
          {
            LOBYTE(v41) = 0;
          }
        }

        *(this + 80) &= (v43 == 0) | v41;
      }

      if (++v40 == v38)
      {
        goto LABEL_57;
      }

      continue;
    }
  }
}

void GPU::GPURegionCallOpHandler::GPURegionCallOpHandler(GPU::GPURegionCallOpHandler *this, GPU::BaseOpHandler *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = 0;
  *this = &unk_1F5B50680;
  *(this + 6) = this + 64;
  *(this + 5) = 0;
  *(this + 12) = this + 112;
  *(this + 7) = 0x400000000;
  *(this + 13) = 0x400000000;
  *(this + 16) = this + 144;
  *(this + 17) = 0x400000000;
  *(this + 22) = 0;
  *(this + 184) = 0;
  *(this + 47) = 1;
  *(this + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 200));
  *(this + 27) = this + 232;
  *(this + 26) = 0;
  *(this + 28) = 0x400000000;
  v3 = *(this + 2);
  v15 = *(this + 3);
  Callee = mlir::placement::RegionCall::getCallee(&v15);
  v6 = v5;
  v7 = *(v3 + 64);
  Context = mlir::Attribute::getContext((v7 + 6));
  v17 = 261;
  __src[0] = Callee;
  __src[1] = v6;
  v9 = mlir::StringAttr::get(Context, __src);
  v10 = mlir::SymbolTable::lookupSymbolIn(v7, v9);
  if (v10 && *(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    *(this + 5) = v10;
  }

  else
  {
    *(this + 5) = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v18 = v20;
  v19 = 0x100000000;
  v11 = *(this + 5);
  if (v11)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*(this + 5));
    v13 = v19;
    if (v19 >= HIDWORD(v19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v19 + 1, 16);
      v13 = v19;
    }
  }

  else
  {
    InterfaceFor = 0;
    v13 = 0;
  }

  v14 = &v18[2 * v13];
  *v14 = v11;
  v14[1] = InterfaceFor;
  LODWORD(v19) = v19 + 1;
  operator new();
}

void sub_1E07E68F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *a13, void *a14, void *a15, void **a16, void *a17, void *a18, void **a19, uint64_t a20, uint64_t a21, void *a22)
{
  v27 = *(v25 - 144);
  if (v27 != a18)
  {
    free(v27);
  }

  llvm::SmallVector<GPU::GPURegionCallOpHandler::ScheduleStep,4u>::~SmallVector(v24);
  llvm::sys::RWMutexImpl::~RWMutexImpl((v22 + 200));
  v28 = *(v22 + 192);
  *(v22 + 192) = 0;
  if (v28)
  {
    (*(*v28 + 16))(v28);
    v29 = *(v22 + 176);
    *(v22 + 176) = 0;
    if (!v29)
    {
LABEL_5:
      v30 = *v23;
      if (*v23 == a14)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v29 = *(v22 + 176);
    *(v22 + 176) = 0;
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  (*(*v29 + 64))(v29);
  v30 = *v23;
  if (*v23 == a14)
  {
LABEL_6:
    v31 = *a16;
    if (*a16 == a17)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  free(v30);
  v31 = *a16;
  if (*a16 == a17)
  {
LABEL_7:
    v32 = *a19;
    if (*a19 == a15)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_13:
  free(v31);
  v32 = *a19;
  if (*a19 == a15)
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  free(v32);
  goto LABEL_9;
}

void GPU::GPURegionCallOpHandler::~GPURegionCallOpHandler(GPU::GPURegionCallOpHandler *this)
{
  *this = &unk_1F5B50680;
  v2 = *(this + 27);
  v3 = *(this + 56);
  if (v3)
  {
    v4 = &v2[88 * v3 - 88];
    v5 = -88 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 11;
      v5 += 88;
    }

    while (v5);
    v2 = *(this + 27);
  }

  if (v2 != this + 232)
  {
    free(v2);
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 25);
  v6 = *(this + 24);
  *(this + 24) = 0;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(this + 22);
  *(this + 22) = 0;
  if (v7)
  {
    (*(*v7 + 64))(v7);
  }

  v8 = *(this + 16);
  if (v8 != this + 144)
  {
    free(v8);
  }

  v9 = *(this + 12);
  if (v9 != this + 112)
  {
    free(v9);
  }

  v10 = *(this + 6);
  if (v10 != this + 64)
  {
    free(v10);
  }
}

{
  GPU::GPURegionCallOpHandler::~GPURegionCallOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::GPURegionCallOpHandler::encodeOp(GPU::GPURegionCallOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v4 = *(this + 2);
  v5 = *(this + 6);
  v6 = *(this + 14);
  v7 = *(this + 12);
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
  if (v6)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69744E8];
    do
    {
      v10 = (*(*v4 + 48))(v4, *(v5 + 8 * v8), 0);
      [v20 addObject:v10];

      v11 = [v20 objectAtIndexedSubscript:v8];
      v12 = [v11 mpsndarray];

      if (*(v12 + *v9) == 1)
      {
        [v12 setReadCount:{*(v7 + 4 * v8) + objc_msgSend(v12, "readCount") - 1}];
      }

      ++v8;
    }

    while (v6 != v8);
  }

  v13 = *(this + 2);
  v14 = *(this + 16);
  v15 = *(this + 34);
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v15];
  if (v15)
  {
    do
    {
      while (1)
      {
        v17 = (*(*v13 + 48))(v13, *v14, 0);
        if (!v17)
        {
          break;
        }

        [v16 addObject:v17];

        ++v14;
        if (!--v15)
        {
          goto LABEL_11;
        }
      }

      v18 = [MEMORY[0x1E695DFB0] null];
      [v16 addObject:v18];

      ++v14;
      --v15;
    }

    while (v15);
  }

LABEL_11:
  v19 = GPU::GPURegionCallOpHandler::evaluate(this, a2, v20, v16);
}

id GPU::GPURegionCallOpHandler::evaluate(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v164[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v144 = a2;
  v9 = *(a2 + 72);
  v141 = v7;
  if (v9)
  {
    [v9 endEncoding];
    v10 = *(a2 + 72);
    *(a2 + 72) = 0;
  }

  if (*(a1 + 184) != 1 || (*(a2 + 24) & 1) == 0)
  {
    v16 = GPURegionRuntime::evaluateOps(*(a1 + 176), a2, v7, v8);
    goto LABEL_160;
  }

  v11 = *(a1 + 188);
  if (atomic_load_explicit(&qword_1EE17DDE8, memory_order_acquire) != -1)
  {
    v161 = &v158;
    v152 = &v161;
  }

  v12 = _MergedGlobals_67;
  if (!_MergedGlobals_67)
  {
    if ([v144[2] maximumNumberOfEncodingThreads])
    {
      v17 = [v144[2] maximumNumberOfEncodingThreads];
      v12 = v17;
      v13 = v17 - 1;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      v147 = v18;
      v15 = *(a1 + 192);
      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v19 = (v11 - (v11 != 0)) >> 1;
      if (v11)
      {
        ++v19;
      }

      if (v19 >= 4)
      {
        v19 = 4;
      }

      if (v19 <= 2)
      {
        v12 = 2;
      }

      else
      {
        v12 = v19;
      }

      v13 = v12 - 1;
      v147 = v12;
      v15 = *(a1 + 192);
      if (v15)
      {
        goto LABEL_12;
      }
    }

LABEL_29:
    operator new();
  }

  v13 = _MergedGlobals_67 - 1;
  if (_MergedGlobals_67 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = _MergedGlobals_67;
  }

  v147 = v14;
  v15 = *(a1 + 192);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_12:
  if (*(v15 + 300) != v147)
  {
    goto LABEL_29;
  }

  v20 = qos_class_self();
  v140 = _os_activity_create(&dword_1DF9BF000, "GPURegionCallOpHandler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  llvm::StdThreadPool::raiseQOSIfNeeded(*(a1 + 192), v20);
  llvm::StdThreadPool::setActivity(*(a1 + 192), v140, 0);
  GPURegionRuntime::setupFeedsAndTargets(*(a1 + 176), v144, v7, v8, &__p);
  v21 = __p;
  if (__p)
  {
    v22 = v151;
    v23 = __p;
    if (v151 != __p)
    {
      do
      {

        v24 = *(v22 - 2);
        v22 -= 2;
      }

      while (v22 != v21);
      v23 = __p;
    }

    v151 = v21;
    operator delete(v23);
  }

  context = objc_autoreleasePoolPush();
  v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:v147];
  [v25 addObject:v144[1]];
  if (v12 >= 2)
  {
    do
    {
      v26 = MEMORY[0x1E6974450];
      v27 = [v144[1] commandQueue];
      v28 = [v26 commandBufferFromCommandQueue:v27];
      [v25 addObject:v28];

      --v13;
    }

    while (v13);
  }

  v29 = *(a1 + 224);
  if (v29)
  {
    v30 = *(a1 + 216);
    v142 = &v30[11 * v29];
    while (1)
    {
      v161 = v163;
      v162 = 0x400000000;
      v31 = v30;
      v32 = *(v30 + 2);
      v143 = v31;
      if (&v161 != v31 && v32 != 0)
      {
        break;
      }

LABEL_49:
      v36 = v143;
      v163[64] = *(v143 + 80);
      (**v144)(v144);
      v37 = v162;
      if (v162 != 1)
      {
        v158 = v160;
        v159 = 0x400000000;
        v155 = v157;
        v156 = 0x400000000;
        v152 = v154;
        v153 = 0x600000000;
        if (v162 < 5)
        {
          goto LABEL_72;
        }

        v164[0] = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v158, v160, v162, 8, v164);
        v39 = v38;
        v40 = v158;
        v41 = v159;
        if (v159)
        {
          v42 = (v159 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v43 = 8 * v159;
          if (v42 < 5)
          {
            v44 = v39;
            v45 = v158;
            goto LABEL_64;
          }

          if (v39 < v158 + v43)
          {
            v44 = v39;
            v45 = v158;
            if (v158 < &v39[v43])
            {
              goto LABEL_64;
            }
          }

          v54 = v42 + 1;
          v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
          v44 = &v39[v55];
          v45 = v158 + v55;
          v56 = (v158 + 16);
          v57 = v39 + 16;
          v58 = v54 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v59 = *v56;
            *(v57 - 1) = *(v56 - 1);
            *v57 = v59;
            *(v56 - 1) = 0uLL;
            *v56 = 0uLL;
            v56 += 2;
            v57 += 2;
            v58 -= 4;
          }

          while (v58);
          if (v54 != (v54 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_64:
            v60 = &v40[8 * v41];
            do
            {
              *v44 = *v45;
              v44 += 8;
              *v45 = 0;
              v45 += 8;
            }

            while (v45 != v60);
          }

          v61 = -v43;
          v62 = &v40[v43 - 8];
          do
          {
            v62 = MEMORY[0x1E12E5A60](v62) - 8;
            v61 += 8;
          }

          while (v61);
          v40 = v158;
        }

        v63 = v164[0];
        if (v40 != v160)
        {
          free(v40);
        }

        v158 = v39;
        HIDWORD(v159) = v63;
        if (HIDWORD(v156) >= v37)
        {
LABEL_72:
          if (HIDWORD(v153) < v37)
          {
            goto LABEL_73;
          }

          goto LABEL_87;
        }

        v164[0] = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v155, v157, v37, 8, v164);
        v47 = v46;
        v48 = v155;
        v49 = v156;
        if (v156)
        {
          v50 = (v156 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v51 = 8 * v156;
          if (v50 < 5)
          {
            v52 = v47;
            v53 = v155;
            goto LABEL_79;
          }

          if (v47 < v155 + v51)
          {
            v52 = v47;
            v53 = v155;
            if (v155 < &v47[v51])
            {
              goto LABEL_79;
            }
          }

          v64 = v50 + 1;
          v65 = 8 * (v64 & 0x3FFFFFFFFFFFFFFCLL);
          v52 = &v47[v65];
          v53 = v155 + v65;
          v66 = (v155 + 16);
          v67 = v47 + 16;
          v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v69 = *v66;
            *(v67 - 1) = *(v66 - 1);
            *v67 = v69;
            *(v66 - 1) = 0uLL;
            *v66 = 0uLL;
            v66 += 2;
            v67 += 2;
            v68 -= 4;
          }

          while (v68);
          if (v64 != (v64 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_79:
            v70 = &v48[8 * v49];
            do
            {
              *v52 = *v53;
              v52 += 8;
              *v53 = 0;
              v53 += 8;
            }

            while (v53 != v70);
          }

          v71 = -v51;
          v72 = &v48[v51 - 8];
          do
          {
            std::shared_future<void>::~shared_future(v72);
            v72 = (v73 - 8);
            v71 += 8;
          }

          while (v71);
          v48 = v155;
        }

        v74 = v164[0];
        if (v48 != v157)
        {
          free(v48);
        }

        v155 = v47;
        HIDWORD(v156) = v74;
        if (HIDWORD(v153) < v37)
        {
LABEL_73:
LABEL_88:
          std::promise<void>::promise(&v149);
          v75 = v158;
          if (v159 < HIDWORD(v159))
          {
LABEL_89:
            v76 = &v149;
            goto LABEL_90;
          }

          if (v158 > &v149 || v158 + 8 * v159 <= &v149)
          {
            v164[0] = 0;
            llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v158, v160, v159 + 1, 8, v164);
            v75 = v84;
            v85 = v158;
            v86 = v159;
            if (v159)
            {
              v87 = (v159 - 1) & 0x1FFFFFFFFFFFFFFFLL;
              v88 = 8 * v159;
              if (v87 < 5)
              {
                v89 = v75;
                v90 = v158;
                goto LABEL_108;
              }

              if (v75 < v158 + v88)
              {
                v89 = v75;
                v90 = v158;
                if (v158 < &v75[v88])
                {
                  goto LABEL_108;
                }
              }

              v98 = v87 + 1;
              v99 = 8 * (v98 & 0x3FFFFFFFFFFFFFFCLL);
              v89 = &v75[v99];
              v90 = v158 + v99;
              v100 = (v158 + 16);
              v101 = v75 + 16;
              v102 = v98 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v103 = *v100;
                *(v101 - 1) = *(v100 - 1);
                *v101 = v103;
                *(v100 - 1) = 0uLL;
                *v100 = 0uLL;
                v100 += 2;
                v101 += 2;
                v102 -= 4;
              }

              while (v102);
              if (v98 != (v98 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_108:
                v104 = &v85[8 * v86];
                do
                {
                  *v89 = *v90;
                  v89 += 8;
                  *v90 = 0;
                  v90 += 8;
                }

                while (v90 != v104);
              }

              v105 = -v88;
              v106 = &v85[v88 - 8];
              do
              {
                v106 = MEMORY[0x1E12E5A60](v106) - 8;
                v105 += 8;
              }

              while (v105);
              v85 = v158;
            }

            v107 = v164[0];
            if (v85 != v160)
            {
              free(v85);
            }

            v158 = v75;
            HIDWORD(v159) = v107;
            goto LABEL_89;
          }

          llvm::SmallVectorTemplateBase<std::promise<void>,false>::grow(&v158, v159 + 1);
          v119 = (&v149 - v75);
          v75 = v158;
          v76 = &v119[v158];
LABEL_90:
          v77 = v159;
          *&v75[8 * v159] = v76->__state_;
          v76->__state_ = 0;
          LODWORD(v159) = v77 + 1;
          MEMORY[0x1E12E5A60](&v149);
          std::promise<void>::get_future(v158 + v159 - 1);
          state = v148.__state_;
          v148.__state_ = 0;
          v149.__state_ = state;
          v79 = v155;
          if (v156 < HIDWORD(v156))
          {
LABEL_91:
            v80 = &v149;
            goto LABEL_92;
          }

          if (v155 <= &v149 && v155 + 8 * v156 > &v149)
          {
            llvm::SmallVectorTemplateBase<std::shared_future<void>,false>::grow(&v155, v156 + 1);
            v120 = (&v149 - v79);
            v79 = v155;
            v80 = &v120[v155];
LABEL_92:
            v81 = v156;
            *&v79[8 * v156] = v80->__state_;
            v80->__state_ = 0;
            LODWORD(v156) = v81 + 1;
            std::shared_future<void>::~shared_future(&v149);
            std::future<void>::~future(&v148);
            v82 = v161[1];
            v146 = [v25 objectAtIndexedSubscript:0 % v147];
            v145 = v82;
            v149.__state_ = 0;
            v83 = v144[11];
            operator new();
          }

          v164[0] = 0;
          llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v155, v157, v156 + 1, 8, v164);
          v79 = v91;
          v92 = v155;
          v93 = v156;
          if (v156)
          {
            v94 = (v156 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            v95 = 8 * v156;
            if (v94 < 5)
            {
              v96 = v79;
              v97 = v155;
              goto LABEL_121;
            }

            if (v79 < v155 + v95)
            {
              v96 = v79;
              v97 = v155;
              if (v155 < &v79[v95])
              {
                goto LABEL_121;
              }
            }

            v108 = v94 + 1;
            v109 = 8 * (v108 & 0x3FFFFFFFFFFFFFFCLL);
            v96 = &v79[v109];
            v97 = v155 + v109;
            v110 = (v155 + 16);
            v111 = v79 + 16;
            v112 = v108 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v113 = *v110;
              *(v111 - 1) = *(v110 - 1);
              *v111 = v113;
              *(v110 - 1) = 0uLL;
              *v110 = 0uLL;
              v110 += 2;
              v111 += 2;
              v112 -= 4;
            }

            while (v112);
            if (v108 != (v108 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_121:
              v114 = &v92[8 * v93];
              do
              {
                *v96 = *v97;
                v96 += 8;
                *v97 = 0;
                v97 += 8;
              }

              while (v97 != v114);
            }

            v115 = -v95;
            v116 = &v92[v95 - 8];
            do
            {
              std::shared_future<void>::~shared_future(v116);
              v116 = (v117 - 8);
              v115 += 8;
            }

            while (v115);
            v92 = v155;
          }

          v118 = v164[0];
          if (v92 != v157)
          {
            free(v92);
          }

          v155 = v79;
          HIDWORD(v156) = v118;
          goto LABEL_91;
        }

LABEL_87:
        if (v37)
        {
          goto LABEL_88;
        }

        std::__assoc_sub_state::wait(*(v155 + v156 - 1));
        v121 = v152;
        if (v153)
        {
          v122 = 8 * v153;
          v123 = v152 - 8;
          do
          {
            v124 = *&v123[v122];
            *&v123[v122] = 0;
            if (v124)
            {
              v124->__state_ = &unk_1F5B50780;
              std::shared_future<void>::~shared_future(v124 + 13);
              GPU::EncodeDescriptor::~EncodeDescriptor(v124);
              MEMORY[0x1E12E5B90]();
            }

            v122 -= 8;
          }

          while (v122);
          v121 = v152;
          v36 = v143;
          if (v152 != v154)
          {
LABEL_137:
            free(v121);
          }
        }

        else
        {
          v36 = v143;
          if (v152 != v154)
          {
            goto LABEL_137;
          }
        }

        v125 = v155;
        if (v156)
        {
          v126 = -8 * v156;
          v127 = (v155 + 8 * v156 - 8);
          do
          {
            std::shared_future<void>::~shared_future(v127);
            v127 = (v128 - 8);
            v126 += 8;
          }

          while (v126);
          v125 = v155;
          v36 = v143;
        }

        if (v125 != v157)
        {
          free(v125);
        }

        v129 = v158;
        if (v159)
        {
          v130 = -8 * v159;
          v131 = v158 + 8 * v159 - 8;
          do
          {
            v131 = (MEMORY[0x1E12E5A60](v131) - 8);
            v130 += 8;
          }

          while (v130);
          v129 = v158;
          v36 = v143;
        }

        if (v129 != v160)
        {
          free(v129);
        }

        goto LABEL_150;
      }

      (*(*v161[1] + 16))(v161[1], v144);
LABEL_150:
      if (v161 != v163)
      {
        free(v161);
      }

      v30 = v36 + 11;
      if (v30 == v142)
      {
        goto LABEL_154;
      }
    }

    v34 = v163;
    v35 = v32;
    if (v32 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v163, v32, 16);
      v35 = *(v143 + 2);
      if (!v35)
      {
LABEL_48:
        LODWORD(v162) = v32;
        goto LABEL_49;
      }

      v34 = v161;
    }

    memcpy(v34, *v143, 16 * v35);
    goto LABEL_48;
  }

LABEL_154:
  llvm::StdThreadPool::clearActivity(*(a1 + 192));
  GPURegionRuntime::encodeOp(*(a1 + 176), *(*(*(a1 + 176) + 592) + 16), v144);
  v132 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 136)];
  v133 = *(a1 + 176);
  v134 = *(v133[74] + 16);
  if ((*(v134 + 46) & 0x80) != 0)
  {
    v135 = *(v134 + 68);
    if (v135)
    {
      v136 = (*(v134 + 72) + 24);
      do
      {
        v137 = (*(**(a1 + 176) + 48))(*(a1 + 176), *v136, 0);
        [v132 addObject:v137];

        v136 += 4;
        --v135;
      }

      while (v135);
      v133 = *(a1 + 176);
    }
  }

  (*(*v133 + 88))(v133);
  v16 = v132;

  objc_autoreleasePoolPop(context);
LABEL_160:

  return v16;
}

void sub_1E07E8380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, std::future<void> a28, std::future<void> a29, std::shared_future<void> a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::shared_future<void>::~shared_future(&a30);

  llvm::SmallVector<std::shared_future<void>,4u>::~SmallVector(&a42);
  llvm::SmallVector<std::promise<void>,4u>::~SmallVector(&a48);
  v50 = *(v48 - 232);
  if (v50 != a14)
  {
    free(v50);
  }

  _Unwind_Resume(a1);
}

void GPU::anonymous namespace::storeResults(void *a1, uint64_t a2, uint64_t a3, GPU::EncodeDescriptor *a4, void *a5, void *a6, void *a7, char a8)
{
  v13 = a5;
  v41 = a6;
  v14 = a7;
  v45 = v14;
  v38 = a3;
  if (a3)
  {
    v15 = 0;
    while (1)
    {
      v16 = *(a2 + 8 * v15);
      v17 = [v41 objectAtIndexedSubscript:v15];
      if ((*(**(a1[74] + 32) + 24))(*(a1[74] + 32), v16))
      {
        goto LABEL_21;
      }

      v18 = (v16[1] & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v46 = 0uLL;
        goto LABEL_21;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      *&v46 = v18;
      *(&v46 + 1) = v19;
      if (v18)
      {
        if (mlir::CallOpInterface::getArgOperands(&v46))
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v46);
          if (!v21)
          {
            goto LABEL_21;
          }

          v22 = 8 * v21;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_21;
            }
          }
        }

        v23 = (v16[1] & 0xFFFFFFFFFFFFFFF8);
        if (v23)
        {
          v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
          if (v24)
          {
            v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        v44[0] = v23;
        v44[1] = v24;
        v25 = [v17 shape];
        MPSShapeToVector<unsigned long long>(v25, &__p);

        *&v46 = __p;
        *(&v46 + 1) = (v43 - __p) >> 3;
        v47 = 1;
        isSplat = mlir::ElementsAttr::isSplat(v44);
        v48[1] = mlir::ShapedType::cloneWith(v44, &v46, isSplat);
        v49 = v16;
        v48[0] = *(mlir::Value::getParentRegion(&v49) + 2);
        *&v46 = v48;
        v27 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>(a1 + 36, v48);
        *&v46 = v49;
        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v27 + 3, &v46);
        if (__p)
        {
          v43 = __p;
          operator delete(__p);
        }
      }

LABEL_21:
      v28 = [v13 objectAtIndexedSubscript:v15];
      v29 = [MEMORY[0x1E695DFB0] null];
      v30 = v29;
      if (v28 != v29)
      {
        v31 = [v13 objectAtIndexedSubscript:v15];

        if ((a8 & 1) == 0)
        {
          goto LABEL_28;
        }

        if (v31)
        {
          v32 = [v31 mpsndarray];
          v33 = v32[*MEMORY[0x1E69744E8]];

          if (v33 != 1)
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        BaseRuntime::unsetTensorDataFromDataMap(a1, v16);
        v34 = (*(*a1 + 80))(a1, v16, 0, 1, 0, 1);

        v31 = v34;
        goto LABEL_28;
      }

      v31 = 0;
      if (a8)
      {
        goto LABEL_27;
      }

LABEL_28:
      v35 = GPU::EncodeDescriptor::getcomputeEncoder(a4);
      v36 = *(a4 + 1);
      v37 = [v17 mpsndarray];
      GPURegionRuntime::copyNDArrayToTarget(a1, v35, v36, &v45, v37, v31, v16, 0);

      if (++v15 == v38)
      {
        v14 = v45;
        break;
      }
    }
  }
}

std::shared_future<void> **std::unique_ptr<GPU::anonymous namespace::BlockingEncodeDescriptor>::~unique_ptr[abi:ne200100](std::shared_future<void> **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v1->__state_ = &unk_1F5B50780;
    v2 = result;
    std::shared_future<void>::~shared_future(v1 + 13);
    GPU::EncodeDescriptor::~EncodeDescriptor(v1);
    MEMORY[0x1E12E5B90]();
    return v2;
  }

  return result;
}

void GPU::anonymous namespace::encodeRegion(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, GPU::EncodeDescriptor *a6, std::promise<void> *a7, std::promise<void> *a8)
{
  v31 = a5;
  v32 = a3;
  v30 = a6;
  v13 = objc_autoreleasePoolPush();
  v29[0] = &v32;
  v29[1] = &v30;
  v29[2] = &v31;
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a5 + 56)];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v31 + 136)];
  llvm::sys::RWMutexImpl::lock((a4 + 200));
  v16 = v31;
  v17 = *(v31 + 56);
  v27 = a8;
  v28 = v13;
  if (v17)
  {
    v18 = *(v31 + 48);
    v19 = 8 * v17;
    do
      v20 = {;
      [v14 addObject:v20];

      ++v18;
      v19 -= 8;
    }

    while (v19);
    v16 = v31;
  }

  v21 = *(v16 + 136);
  if (v21)
  {
    v22 = *(v16 + 128);
    v23 = 8 * v21;
    do
    {
      while (1)
        v24 = {;
        if (!v24)
        {
          break;
        }

        [v15 addObject:v24];

        ++v22;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_10;
        }
      }

      v25 = [MEMORY[0x1E695DFB0] null];
      [v15 addObject:v25];

      ++v22;
      v23 -= 8;
    }

    while (v23);
  }

LABEL_10:
  llvm::sys::RWMutexImpl::unlock_shared((a4 + 200));
  std::promise<void>::set_value(a7);
  v26 = GPU::GPURegionCallOpHandler::evaluate(v31, v30, v14, v15);
  llvm::sys::RWMutexImpl::lock((a4 + 200));
  llvm::sys::RWMutexImpl::unlock_shared((a4 + 200));
  (**v30)(v30);
  std::promise<void>::set_value(v27);

  objc_autoreleasePoolPop(v28);
}

void sub_1E07E8C34(_Unwind_Exception *a1)
{
  llvm::sys::RWMutexImpl::unlock_shared((v3 + 200));

  _Unwind_Resume(a1);
}

void sub_1E07E8CB4(_Unwind_Exception *a1)
{
  llvm::sys::RWMutexImpl::unlock_shared((v3 + 200));

  _Unwind_Resume(a1);
}

char **llvm::SmallVector<std::unique_ptr<GPU::anonymous namespace::BlockingEncodeDescriptor>,6u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
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
        v6->__state_ = &unk_1F5B50780;
        std::shared_future<void>::~shared_future(v6 + 13);
        GPU::EncodeDescriptor::~EncodeDescriptor(v6);
        MEMORY[0x1E12E5B90]();
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t GPU::GPURegionCallOpHandler::propagateResultIsGraphOutput(GPU::GPURegionCallOpHandler *this, unsigned int a2)
{
  v2 = *(this + 22);
  v10 = *(*(*(*(v2 + 592) + 16) + 72) + 32 * a2 + 24);
  result = mlir::Value::getDefiningOp(&v10);
  v9 = result;
  if (result)
  {
    v4 = *(result + 36);
    if (v4)
    {
      v5 = result - 16;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = 0;
      while (1)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v6);
        if (NextResultAtOffset == v10)
        {
          break;
        }

        if (v4 == ++v6)
        {
          v6 = v4;
          break;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((v2 + 248), &v9);
    if (!v8)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    return (*(*v8[3] + 56))(v8[3], v6);
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<GPU::anonymous namespace::getThreadPoolSize(GPU::EncodeDescriptor *,unsigned int)::{lambda(void)#1} &&>>()
{
  v0 = getenv("MPSGRAPH_MAX_NUM_ENCODING_THREADS");
  if (v0)
  {
    v1 = atoi(v0);
    _MergedGlobals_67 = v1;
    NSLog(&cfstr_MpsgraphMaxNum_0.isa, v1);
  }
}

__n128 std::__function::__func<std::__bind<void (&)(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *),BOOL &,unsigned long long &,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *&,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *>,std::allocator<std::__bind<void (&)(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *),BOOL &,unsigned long long &,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *&,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B506C8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (&)(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *),BOOL &,unsigned long long &,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *&,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *>,std::allocator<std::__bind<void (&)(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *),BOOL &,unsigned long long &,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *&,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "NSt3__16__bindIRFvbyP16GPURegionRuntimePN3GPU22GPURegionCallOpHandlerES5_PNS3_12_GLOBAL__N_124BlockingEncodeDescriptorEPNS_7promiseIvEESB_EJRbRyS2_S5_RS5_S8_SB_SB_EEE")
  {
    return a1 + 8;
  }

  if (((v2 & "NSt3__16__bindIRFvbyP16GPURegionRuntimePN3GPU22GPURegionCallOpHandlerES5_PNS3_12_GLOBAL__N_124BlockingEncodeDescriptorEPNS_7promiseIvEESB_EJRbRyS2_S5_RS5_S8_SB_SB_EEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__16__bindIRFvbyP16GPURegionRuntimePN3GPU22GPURegionCallOpHandlerES5_PNS3_12_GLOBAL__N_124BlockingEncodeDescriptorEPNS_7promiseIvEESB_EJRbRyS2_S5_RS5_S8_SB_SB_EEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16__bindIRFvbyP16GPURegionRuntimePN3GPU22GPURegionCallOpHandlerES5_PNS3_12_GLOBAL__N_124BlockingEncodeDescriptorEPNS_7promiseIvEESB_EJRbRyS2_S5_RS5_S8_SB_SB_EEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

id GPU::anonymous namespace::encodeRegion(BOOL,unsigned long long,GPURegionRuntime *,GPU::GPURegionCallOpHandler *,GPU::GPURegionCallOpHandler *,GPU::anonymous namespace::BlockingEncodeDescriptor *,std::promise<void> *,std::promise<void> *)::$_0::operator()(uint64_t **a1, void *a2, int a3, int a4)
{
  v8 = (*(***a1 + 48))(**a1, a2, 0);
  v9 = v8;
  v10 = v8;
  if (a3)
  {
    if (v8)
    {
      v11 = [v8 mpsndarray];
      v12 = v11[*MEMORY[0x1E69744E8]];

      v10 = v9;
      if (v12 != 1)
      {
        goto LABEL_16;
      }

      BaseRuntime::unsetTensorDataFromDataMap(**a1, a2);
    }

    v10 = (*(***a1 + 80))(**a1, a2, 0, 1, 0, 1);

    if (v9)
    {
      v13 = a4 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = **a1;
      v15 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[1]);
      v16 = *(*a1[1] + 8);
      v17 = *a1[2];
      v18 = [v9 mpsndarray];
      GPURegionRuntime::copyNDArrayToTarget(v14, v15, v16, (v17 + 32), v18, v10, a2, 0);
    }

    if (a4)
    {
      if (v9 && v9 != v10)
      {
        v20 = [v10 mpsndarray];
        v21 = objc_alloc(MEMORY[0x1E6974488]);
        v22 = [v20 buffer];
        v23 = [v20 offset];
        v24 = [v20 descriptor];
        v25 = [v21 initWithBuffer:v22 offset:v23 descriptor:v24];

        v26 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v25];
        v10 = v26;
      }
    }
  }

LABEL_16:

  return v10;
}

char **llvm::SmallVector<GPU::GPURegionCallOpHandler::ScheduleStep,4u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[88 * v3 - 88];
    v5 = -88 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 11;
      v5 += 88;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void GPURegionRuntime::GPURegionRuntime(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  a3;
  v10 = a4;
  a5;
  BaseRuntime::BaseRuntime(a1);
}

void sub_1E07E9800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::unique_ptr<GPU::MemrefBufferizer>::~unique_ptr[abi:ne200100](v11);
  std::unordered_set<mlir::Operation *>::~unordered_set[abi:ne200100](v10 + 608);
  llvm::DenseMap<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>::~DenseMap(a10);
}

void sub_1E07E9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v15 = *(v11 + 424);
  if (v15 != a11)
  {
    free(v15);
  }

  v16 = *(v11 + 408);
  *(v11 + 408) = 0;
  if (v16)
  {
    std::default_delete<GPU::RuntimeExecutionReport>::operator()[abi:ne200100](v14, v16);
  }

  std::unordered_map<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>::~unordered_map[abi:ne200100](v11 + 368);
  std::unordered_map<mlir::Operation *,std::unordered_map<void *,mlir::ElementsAttr>>::~unordered_map[abi:ne200100](v13);
  std::unordered_map<mlir::Operation *,std::unordered_map<void *,mlir::ElementsAttr>>::~unordered_map[abi:ne200100](v11 + 288);
  std::unordered_map<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>::~unordered_map[abi:ne200100](v12);
  BaseRuntime::~BaseRuntime(v11);
  JUMPOUT(0x1E07E98D8);
}

void BaseRuntime::BaseRuntime(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v62 = *MEMORY[0x1E69E9840];
  v12 = v11;
  v13 = v7;
  v14 = v5;
  *v10 = &unk_1F5B50340;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 1065353216;
  *(v10 + 48) = v12;
  objc_initWeak((v10 + 56), v9);
  *(v10 + 64) = v3;
  objc_initWeak((v10 + 72), v13);
  v15 = v14;
  *(v10 + 144) = 850045863;
  *(v10 + 80) = v15;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 1065353216;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 216) = 1;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = *(v10 + 128);
  *(v10 + 128) = v16;

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = *(v10 + 136);
  *(v10 + 136) = v18;

  v20[23] = 12;
  strcpy(v20, "mps.absolute");
  v21 = 1;
  v22[23] = 19;
  strcpy(v22, "mps.absolute_square");
  v23 = 2;
  v24[23] = 8;
  strcpy(v24, "mps.acos");
  v25 = 3;
  v26[23] = 9;
  strcpy(v26, "mps.acosh");
  v28[23] = 7;
  v27 = 4;
  strcpy(v28, "mps.add");
  v29 = 5;
  v30[23] = 12;
  strcpy(v30, "memref.alloc");
  v32[23] = 7;
  v31 = 6;
  strcpy(v32, "mps.and");
  v33 = 7;
  v34[23] = 8;
  strcpy(v34, "mps.asin");
  v35 = 8;
  strcpy(v37, "\t\t");
  strcpy(v36, "mps.asinh");
  *&v37[3] = 0;
  v38[23] = 8;
  strcpy(v38, "mps.atan");
  v39 = 10;
  v40[23] = 9;
  strcpy(v40, "mps.atan2");
  v41 = 11;
  v42[23] = 9;
  strcpy(v42, "mps.atanh");
  v43 = 12;
  v44[23] = 19;
  strcpy(v44, "mps.assign_variable");
  v45 = 13;
  v46[23] = 13;
  strcpy(v46, "mps.band_part");
  v47 = 14;
  v48[23] = 18;
  strcpy(v48, "mps.batch_to_space");
  v49 = 15;
  v50[23] = 12;
  strcpy(v50, "mps.bias_add");
  v51 = 16;
  v52[23] = 15;
  strcpy(v52, "mps.bitwise_and");
  v53 = 17;
  v54[23] = 22;
  strcpy(v54, "mps.bitwise_left_shift");
  v55 = 18;
  v56[23] = 15;
  strcpy(v56, "mps.bitwise_not");
  v57 = 19;
  v58[23] = 14;
  strcpy(v58, "mps.bitwise_or");
  v59 = 20;
  v60[23] = 20;
  strcpy(v60, "mps.bitwise_popcount");
  v61 = 21;
  operator new();
}

void sub_1E07EC9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, id *a15)
{
  v18 = (v16 + 3383);
  v19 = -7488;
  v20 = (v16 + 3383);
  while (1)
  {
    v21 = *v20;
    v20 -= 32;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 32;
    if (!v19)
    {

      std::mutex::~mutex(v15);
      std::unordered_map<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>::~unordered_map[abi:ne200100](a10);

      objc_destroyWeak(a15 + 9);
      objc_destroyWeak(a15 + 7);

      std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](a14);
      _Unwind_Resume(a1);
    }
  }
}

const char *___ZN16GPURegionRuntimeC2EP14MPSGraphDeviceP8MPSGraphP18MPSGraphExecutableP12NSDictionaryIP8NSStringS5_EN4mlir8ModuleOpEPN3GPU9ANEHelperEN4llvm8ArrayRefINSB_19FunctionOpInterfaceEEEjPS__block_invoke()
{
  result = getenv("MPSGRAPH_INTERMEDIATES_ARE_TEMPORARY");
  if (result)
  {
    result = atol(result);
    if (!result)
    {
      GPURegionRuntime::GPURegionRuntime(MPSGraphDevice *,MPSGraph *,MPSGraphExecutable *,NSDictionary<NSString *,MPSGraphExecutable *> *,mlir::ModuleOp,GPU::ANEHelper *,llvm::ArrayRef<mlir::FunctionOpInterface>,unsigned int,GPURegionRuntime*)::_intermediatesAreTemporaryEV = 0;
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__assign_unique<std::pair<std::string const,MPSMLIROps> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_19;
  }

  bzero(*a1, 8 * v6);
  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2 == a3)
  {
    v8 = v7;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v7)
    {
      do
      {
        std::string::operator=((v7 + 16), a2);
        *(v7 + 40) = *(a2 + 24);
        v8 = *v7;
        std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__node_insert_unique(a1, v7);
        a2 += 32;
        if (v8)
        {
          v9 = a2 == a3;
        }

        else
        {
          v9 = 1;
        }

        v7 = v8;
      }

      while (!v9);
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_19;
    }
  }

  do
  {
    v10 = *v8;
    if (*(v8 + 39) < 0)
    {
      operator delete(v8[2]);
    }

    operator delete(v8);
    v8 = v10;
  }

  while (v10);
LABEL_19:
  while (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MPSMLIROps> const&>(a1, a2);
    a2 += 32;
  }
}

void sub_1E07ECC98(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v17, v7, v8);
  *(a2 + 8) = v9;
  result = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__node_insert_unique_prepare[abi:ne200100](a1, v9, v4);
  if (!result)
  {
    v11 = a1[1];
    v12 = *(a2 + 8);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *a2 = *v15;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_15;
      }

      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }

        v15 = (v14 + 8 * v16);
      }

      else
      {
        v15 = (v14 + 8 * (v16 & (*&v11 - 1)));
      }
    }

    *v15 = a2;
LABEL_15:
    ++a1[3];
    return a2;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_42;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    if (v4 <= a2)
    {
      v7 = a2 % v4;
    }

    else
    {
      v7 = a2;
    }

    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v7 = (v4 - 1) & a2;
    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = a3[1];
    }

    if (v10 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v6.u32[0] < 2uLL)
    {
      while (1)
      {
        v13 = v9[1];
        if (v13 == a2)
        {
          v14 = *(v9 + 39);
          v15 = v14;
          if (v14 < 0)
          {
            v14 = v9[3];
          }

          if (v14 == v11)
          {
            v16 = v15 >= 0 ? (v9 + 2) : v9[2];
            if (!memcmp(v16, v12, v11))
            {
              return v9;
            }
          }
        }

        else if ((v13 & (v4 - 1)) != v7)
        {
          goto LABEL_42;
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_42;
        }
      }
    }

    do
    {
      v17 = v9[1];
      if (v17 == a2)
      {
        v18 = *(v9 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v9[3];
        }

        if (v18 == v11)
        {
          v20 = v19 >= 0 ? (v9 + 2) : v9[2];
          if (!memcmp(v20, v12, v11))
          {
            return v9;
          }
        }
      }

      else
      {
        if (v17 >= v4)
        {
          v17 %= v4;
        }

        if (v17 != v7)
        {
          break;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

LABEL_42:
  v21 = (*(a1 + 24) + 1);
  v22 = *(a1 + 32);
  if (v4 && (v22 * v4) >= v21)
  {
    return 0;
  }

  v23 = 1;
  if (v4 >= 3)
  {
    v23 = (v4 & (v4 - 1)) != 0;
  }

  v24 = v23 | (2 * v4);
  v25 = vcvtps_u32_f32(v21 / v22);
  if (v24 <= v25)
  {
    prime = v25;
  }

  else
  {
    prime = v24;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v4 = *(a1 + 8);
  }

  if (prime <= v4)
  {
    if (prime >= v4)
    {
      return 0;
    }

    v27 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v4 < 3 || (v28 = vcnt_s8(v4), v28.i16[0] = vaddlv_u8(v28), v28.u32[0] > 1uLL))
    {
      v30 = prime;
      v31 = std::__next_prime(v27);
      if (v30 <= v31)
      {
        prime = v31;
      }

      else
      {
        prime = v30;
      }

      if (prime >= v4)
      {
        return 0;
      }
    }

    else
    {
      v29 = 1 << -__clz(v27 - 1);
      if (v27 >= 2)
      {
        v27 = v29;
      }

      if (prime <= v27)
      {
        prime = v27;
      }

      if (prime >= v4)
      {
        return 0;
      }
    }
  }

  std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::__do_rehash<true>(a1, prime);
  return 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MPSMLIROps> const&>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1E07ED510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E07ED524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;

          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

GPU::MemrefBufferizer **std::unique_ptr<GPU::MemrefBufferizer>::~unique_ptr[abi:ne200100](GPU::MemrefBufferizer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    GPU::MemrefBufferizer::~MemrefBufferizer(v2);
  }

  return a1;
}

void llvm::DenseMap<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 24 * v2;
    v5 = (v3 + 16);
    do
    {
      if ((*(v5 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
          GPURegionRuntime::MPSRuntimeEntryInfo::~MPSRuntimeEntryInfo(v6);
          MEMORY[0x1E12E5B90]();
        }
      }

      v5 += 3;
      v4 -= 24;
    }

    while (v4);
    v3 = *a1;
    v7 = 24 * *(a1 + 16);
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

void GPURegionRuntime::MPSRuntimeEntryInfo::~MPSRuntimeEntryInfo(GPURegionRuntime::MPSRuntimeEntryInfo *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    v3 = *(v2 + 192);
    if (v3 != (v2 + 208))
    {
      free(v3);
    }

    v4 = *(v2 + 128);
    if (v4 != (v2 + 144))
    {
      free(v4);
    }

    v5 = *(v2 + 64);
    if (v5 != (v2 + 80))
    {
      free(v5);
    }

    if (*v2 != v2 + 16)
    {
      free(*v2);
    }

    MEMORY[0x1E12E5B90](v2, 0x10A0C404A37C4BFLL);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    llvm::deallocate_buffer(*(v7 + 208), (16 * *(v7 + 224)));
  }
}

uint64_t std::unordered_map<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::unordered_map<mlir::Operation *,std::unordered_map<void *,mlir::ElementsAttr>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::unordered_map<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::GPURegionCallOpHandler::GPURegionCallOpHandler(GPU::BaseOpHandler *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  ParentOp = *(a2 + 16);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 40))
  {
    v6 = *(v4 + 176);
    if (*(*(v6 + 592) + 16) != a2)
    {
      v16 = a2;
      v7 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((v6 + 248), &v16);
      if (!v7)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v8 = *(v7[3] + 120);
      if (!*(a2 + 47) || (v21.var0 = "mpsx.parallelGPURegion", v21.var1 = 22, InherentAttr = mlir::Operation::getInherentAttr(a2, v21), (v10 & 1) == 0))
      {
        v22.var0 = "mpsx.parallelGPURegion";
        v22.var1 = 22;
        InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v22);
      }

      if (InherentAttr)
      {
        v11 = *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
        v12 = *(v4 + 224);
        if (v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = 0;
        v12 = *(v4 + 224);
        if (v12)
        {
LABEL_11:
          if (*a1[1] == 1 && v11)
          {
LABEL_18:
            v13 = *(v4 + 216) + 88 * *(v4 + 224);
            v14 = *(v13 - 80);
            if (v14 >= *(v13 - 76))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v13 - 88, v13 - 72, v14 + 1, 16);
              LODWORD(v14) = *(v13 - 80);
            }

            v15 = (*(v13 - 88) + 16 * v14);
            *v15 = a2;
            v15[1] = v8;
            ++*(v13 - 80);
            *a1[1] = v11;
            return;
          }

          GPU::GPURegionCallOpHandler::ScheduleStep::finalize((*(v4 + 216) + 88 * v12 - 88));
          v16 = v18;
          v17 = 0x400000000;
          v19 = 1;
          llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::push_back(v4 + 216, &v16);
LABEL_16:
          if (v16 != v18)
          {
            free(v16);
          }

          goto LABEL_18;
        }
      }

      v16 = v18;
      v17 = 0x400000000;
      v19 = 1;
      llvm::SmallVectorTemplateBase<GPU::GPURegionCallOpHandler::ScheduleStep,false>::push_back(v4 + 216, &v16);
      goto LABEL_16;
    }
  }
}