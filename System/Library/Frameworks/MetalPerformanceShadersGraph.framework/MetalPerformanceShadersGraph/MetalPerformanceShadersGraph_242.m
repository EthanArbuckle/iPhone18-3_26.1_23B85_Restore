void sub_1E0775A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::PoolMaxOpHandler::~PoolMaxOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingOpHandler<mlir::mps::PoolAvgOp,MPSNDArrayPoolingKernel,(MPSNDArrayPoolingMode_s)3>,mlir::mps::PoolAvgOp,MPSNDArrayPoolingKernel,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v15 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::PoolingOpHandler<mlir::mps::PoolAvgOp,MPSNDArrayPoolingKernel,(MPSNDArrayPoolingMode_s)3>::_createNDArrayMultiaryKernel(a1);
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

void GPU::PoolAvgOpHandler::~PoolAvgOpHandler(GPU::PoolAvgOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingOpHandler<mlir::mps::PoolL2NormOp,MPSNDArrayPoolingKernel,(MPSNDArrayPoolingMode_s)5>,mlir::mps::PoolL2NormOp,MPSNDArrayPoolingKernel,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v15 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::PoolingOpHandler<mlir::mps::PoolL2NormOp,MPSNDArrayPoolingKernel,(MPSNDArrayPoolingMode_s)5>::_createNDArrayMultiaryKernel(a1);
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

void GPU::PoolL2NormOpHandler::~PoolL2NormOpHandler(GPU::PoolL2NormOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingGradientOpHandler<mlir::mps::PoolAvgGradientOp,(MPSNDArrayPoolingMode_s)3>,mlir::mps::PoolAvgGradientOp,MPSNDArrayPoolingKernel,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::PoolingGradientOpHandler<mlir::mps::PoolAvgGradientOp,(MPSNDArrayPoolingMode_s)3>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v27 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  v9 = *(v8 + 72);
  v10 = *(v9 + 24);
  v11 = *(v9 + 56);
  LODWORD(v9) = *(v8 + 36);
  v12 = v8 - 16;
  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v14 = (*(**(a1 + 16) + 48))(*(a1 + 16), v10, 0);
  v15 = [v14 mpsndarray];
  v16 = *(a1 + 8);
  v17 = v16;
  if (v16)
  {
    [v16 poolingDilationRates];
  }

  v18 = [v17 poolingMode];
  if (v17)
  {
    if (v18 == 1)
    {
      [v17 poolingKernelSizes];
      if (v35 == 1)
      {
        [v17 poolingKernelSizes];
        if (v33 == 1)
        {
          [v17 poolingStrides];
          if (v31 == 1)
          {
            [v17 poolingStrides];
            if (v30 == 1)
            {
              [v17 poolingOffsets];
              if (!v28)
              {
                [v17 poolingOffsets];
              }
            }
          }
        }
      }
    }
  }

  v19 = [v17 poolingMode];
  if (v17)
  {
    if (v19 == 1)
    {
      [v17 poolingKernelSizes];
      if (v35 == 1)
      {
        [v17 poolingKernelSizes];
        if (v32 == 1)
        {
          [v17 poolingStrides];
          if (v31 == 1)
          {
            [v17 poolingStrides];
            if (v29 == 1)
            {
              [v17 poolingOffsets];
              if (!v28)
              {
                [v17 poolingOffsets];
              }
            }
          }
        }
      }
    }
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v21 = (*(**(a1 + 16) + 48))(*(a1 + 16), v11, 0);
  v22 = [v21 mpsndarray];
  [v20 addObject:v22];
  [v17 setPoolingGradientWithIndices:0];
  [v17 setPoolingReturnIndicesMode:0];

  if (!v22 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(a1 + 32) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = [v17 resultStateForSourceArrays:v20 sourceStates:0 destinationArray:v7];
  v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v25 = *(a2 + 1);
  v34[0] = v7;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  [v17 encodeGradientsToCommandEncoder:v24 commandBuffer:v25 sourceArrays:v20 sourceGradient:v15 gradientState:v23 destinationGradients:v26 kernelDAGObject:0];
}

void GPU::PoolAvgGradientOpHandler::~PoolAvgGradientOpHandler(GPU::PoolAvgGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingGradientOpHandler<mlir::mps::PoolL2NormGradientOp,(MPSNDArrayPoolingMode_s)5>,mlir::mps::PoolL2NormGradientOp,MPSNDArrayPoolingKernel,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::PoolingGradientOpHandler<mlir::mps::PoolL2NormGradientOp,(MPSNDArrayPoolingMode_s)5>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v27 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  v9 = *(v8 + 72);
  v10 = *(v9 + 24);
  v11 = *(v9 + 56);
  LODWORD(v9) = *(v8 + 36);
  v12 = v8 - 16;
  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v14 = (*(**(a1 + 16) + 48))(*(a1 + 16), v10, 0);
  v15 = [v14 mpsndarray];
  v16 = *(a1 + 8);
  v17 = v16;
  if (v16)
  {
    [v16 poolingDilationRates];
  }

  v18 = [v17 poolingMode];
  if (v17)
  {
    if (v18 == 1)
    {
      [v17 poolingKernelSizes];
      if (v35 == 1)
      {
        [v17 poolingKernelSizes];
        if (v33 == 1)
        {
          [v17 poolingStrides];
          if (v31 == 1)
          {
            [v17 poolingStrides];
            if (v30 == 1)
            {
              [v17 poolingOffsets];
              if (!v28)
              {
                [v17 poolingOffsets];
              }
            }
          }
        }
      }
    }
  }

  v19 = [v17 poolingMode];
  if (v17)
  {
    if (v19 == 1)
    {
      [v17 poolingKernelSizes];
      if (v35 == 1)
      {
        [v17 poolingKernelSizes];
        if (v32 == 1)
        {
          [v17 poolingStrides];
          if (v31 == 1)
          {
            [v17 poolingStrides];
            if (v29 == 1)
            {
              [v17 poolingOffsets];
              if (!v28)
              {
                [v17 poolingOffsets];
              }
            }
          }
        }
      }
    }
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v21 = (*(**(a1 + 16) + 48))(*(a1 + 16), v11, 0);
  v22 = [v21 mpsndarray];
  [v20 addObject:v22];
  [v17 setPoolingGradientWithIndices:0];
  [v17 setPoolingReturnIndicesMode:0];

  if (!v22 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(a1 + 32) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = [v17 resultStateForSourceArrays:v20 sourceStates:0 destinationArray:v7];
  v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v25 = *(a2 + 1);
  v34[0] = v7;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  [v17 encodeGradientsToCommandEncoder:v24 commandBuffer:v25 sourceArrays:v20 sourceGradient:v15 gradientState:v23 destinationGradients:v26 kernelDAGObject:0];
}

void GPU::PoolL2NormGradientOpHandler::~PoolL2NormGradientOpHandler(GPU::PoolL2NormGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingGradientOpHandler<mlir::mps::PoolMaxGradientOp,(MPSNDArrayPoolingMode_s)1>,mlir::mps::PoolMaxGradientOp,MPSNDArrayPoolingKernel,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v46 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::PoolingGradientOpHandler<mlir::mps::PoolMaxGradientOp,(MPSNDArrayPoolingMode_s)1>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v46 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  v40 = v6;
  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v56 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v56, 0);
  v9 = *(*(v56 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v10 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v56, 1u);
  if ((*(v56 + 46) & 0x80) != 0)
  {
    v11 = *(v56 + 72);
    v12 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
LABEL_6:
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    v12 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
      goto LABEL_6;
    }
  }

  v13 = *(v11 + 32 * v12 + 24);
LABEL_11:
  v14 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v56, 2u);
  if ((*(v56 + 46) & 0x80) != 0)
  {
    v15 = *(v56 + 72);
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
LABEL_13:
      v17 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v15 = 0;
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
      goto LABEL_13;
    }
  }

  v17 = *(v15 + 32 * v16 + 24);
LABEL_16:
  if (*(v56 + 36))
  {
    v18 = v56 - 16;
  }

  else
  {
    v18 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v44 = (*(**(a1 + 16) + 48))(*(a1 + 16), v9, 0);
  v47 = [v44 mpsndarray];
  v19 = *(a1 + 8);
  v20 = v19;
  if (v19)
  {
    [v19 poolingDilationRates];
  }

  v45 = a2;
  v21 = *MEMORY[0x1E6974508];
  v22 = *&v7[v21 + 8];
  v42 = *&v7[v21];
  v43 = *&v7[v21 + 12];
  v23 = &v47[v21];
  v41 = *v23;
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  v26 = [v20 poolingMode];
  v27 = 0;
  if (v20 && v26 == 1)
  {
    [v20 poolingKernelSizes];
    if (v58 == 1 && ([v20 poolingKernelSizes], v55 == 1) && (objc_msgSend(v20, "poolingStrides"), v53 == 1) && (objc_msgSend(v20, "poolingStrides"), v52 == 1) && (objc_msgSend(v20, "poolingOffsets"), !v50))
    {
      [v20 poolingOffsets];
      v38 = v49 == 0;
      if (v24 != v43)
      {
        v38 = 0;
      }

      v27 = v25 == v22 && v38;
    }

    else
    {
      v27 = 0;
    }
  }

  v28 = [v20 poolingMode];
  v29 = 0;
  if (v20 && v28 == 1)
  {
    [v20 poolingKernelSizes];
    if (v58 == 1 && ([v20 poolingKernelSizes], v54 == 1) && (objc_msgSend(v20, "poolingStrides"), v53 == 1) && (objc_msgSend(v20, "poolingStrides"), v51 == 1) && (objc_msgSend(v20, "poolingOffsets"), !v50))
    {
      [v20 poolingOffsets];
      v39 = v48 == 0;
      if (v24 != v43)
      {
        v39 = 0;
      }

      v29 = v41 == v42 && v39;
    }

    else
    {
      v29 = 0;
    }
  }

  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (v17 && (v27 && [v20 poolingReturnIndicesMode] == 2 || v29 && objc_msgSend(v20, "poolingReturnIndicesMode") == 3))
  {
    v31 = (*(**(a1 + 16) + 48))(*(a1 + 16), v17, 0);
    v32 = [v31 mpsndarray];
    [v30 addObject:v32];
    [v20 setPoolingGradientWithIndices:1];
    v33 = 0;
  }

  else
  {
    v31 = (*(**(a1 + 16) + 48))(*(a1 + 16), v13, 0);
    v33 = [v31 mpsndarray];
    [v30 addObject:v33];
    [v20 setPoolingGradientWithIndices:0];
    [v20 setPoolingReturnIndicesMode:0];
    v32 = 0;
  }

  if (!(v33 | v32) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(a1 + 32) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v34 = [v20 resultStateForSourceArrays:v30 sourceStates:0 destinationArray:v7];
  v35 = GPU::EncodeDescriptor::getcomputeEncoder(v45);
  v36 = *(v45 + 1);
  v57 = v7;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  [v20 encodeGradientsToCommandEncoder:v35 commandBuffer:v36 sourceArrays:v30 sourceGradient:v47 gradientState:v34 destinationGradients:v37 kernelDAGObject:{0, v40}];
}

void GPU::PoolMaxGradientOpHandler::~PoolMaxGradientOpHandler(GPU::PoolMaxGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::PoolingOpHandler<mlir::mps::PoolAvgOp,MPSNDArrayPoolingKernel,(MPSNDArrayPoolingMode_s)3>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  [*(v3 + 48) metalDevice];
  v62 = v80 = v2;
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v80);
  Strides = mlir::mps::Conv3DOp::getStrides(&v80);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v80);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  Offsets = mlir::mps::StencilOp::getOffsets(&v80);
  v76 = v4;
  v5 = *(*(v80 + 72) + 24);
  if (v5)
  {
    *&v73 = GPURegionRuntime::getStaticType(v3, v5);
    mlir::ArrayAttr::getValue(&v73);
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }
  }

  v73 = xmmword_1E09A7718;
  v74 = unk_1E09A7728;
  v71 = xmmword_1E09A7718;
  v72 = unk_1E09A7728;
  v69 = xmmword_1E09A7718;
  v70 = unk_1E09A7728;
  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v67, Strides, 0);
      v7 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v65, v7, NumElements);
      if (v68 != v66)
      {
        v45 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v63);
          v46 = v64;
          if (v64 < 0x41)
          {
            *(&v73 + v45--) = v63;
          }

          else
          {
            v47 = v46 - llvm::APInt::countLeadingZerosSlowCase(&v63);
            v48 = v63;
            if (v47 <= 0x40)
            {
              *(&v73 + v45--) = *v63;
            }

            else
            {
              *(&v73 + v45--) = -1;
              if (!v48)
              {
                goto LABEL_72;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_72:
          *&v68 = v68 + 1;
        }

        while (v68 != v66);
      }
    }
  }

  if (WindowSizes)
  {
    if (mlir::DenseElementsAttr::getNumElements(&WindowSizes) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v67, WindowSizes, 0);
      v9 = WindowSizes;
      v10 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v65, v9, v10);
      if (v68 != v66)
      {
        v49 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v63);
          v50 = v64;
          if (v64 < 0x41)
          {
            *(&v69 + v49--) = v63;
          }

          else
          {
            v51 = v50 - llvm::APInt::countLeadingZerosSlowCase(&v63);
            v52 = v63;
            if (v51 <= 0x40)
            {
              *(&v69 + v49--) = *v63;
            }

            else
            {
              *(&v69 + v49--) = -1;
              if (!v52)
              {
                goto LABEL_81;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_81:
          *&v68 = v68 + 1;
        }

        while (v68 != v66);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v67, InputAttributeNames, 0);
      v11 = InputAttributeNames;
      v12 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v65, v11, v12);
      if (v68 != v66)
      {
        v53 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v63);
          v54 = v64;
          if (v64 < 0x41)
          {
            *(&v71 + v53--) = v63;
          }

          else
          {
            v55 = v54 - llvm::APInt::countLeadingZerosSlowCase(&v63);
            v56 = v63;
            if (v55 <= 0x40)
            {
              *(&v71 + v53--) = *v63;
            }

            else
            {
              *(&v71 + v53--) = -1;
              if (!v56)
              {
                goto LABEL_90;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_90:
          *&v68 = v68 + 1;
        }

        while (v68 != v66);
      }
    }
  }

  if (v76 == 1 && mlir::DenseElementsAttr::getNumElements(&Offsets) == 8)
  {
    if ((v76 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v67, Offsets, 0);
    v13 = Offsets;
    v14 = mlir::DenseElementsAttr::getNumElements(&Offsets);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v65, v13, v14);
    if (v68 != v66)
    {
      v57 = 7;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v63);
        v58 = v64;
        if (v64 < 0x41)
        {
          *(&v81 + v57--) = v63;
        }

        else
        {
          v59 = v58 - llvm::APInt::countLeadingZerosSlowCase(&v63);
          v60 = v63;
          if (v59 <= 0x40)
          {
            *(&v81 + v57--) = *v63;
          }

          else
          {
            *(&v81 + v57--) = -1;
            if (!v60)
            {
              goto LABEL_99;
            }
          }

          MEMORY[0x1E12E5B60]();
        }

LABEL_99:
        *&v68 = v68 + 1;
      }

      while (v68 != v66);
    }
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v80);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v80);
  v61 = a1;
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v80);
  v17 = 0;
  v18 = (v69 - 1) * v71 + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_29:
    v17 = *(&v81 + 1);
    goto LABEL_30;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_29;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_30;
  }

LABEL_24:
  v19 = v73;
  if (1 % v73)
  {
    v19 = 1 % v73;
  }

  v20 = (v18 - v19) & ~((v18 - v19) >> 63);
  v21 = v20 >> 1;
  v22 = v20 - (v20 >> 1);
  if (PaddingStyle == 4)
  {
    v17 = v22;
  }

  else
  {
    v17 = v21;
  }

LABEL_30:
  v23 = 0;
  v24 = (*(&v69 + 1) - 1) * *(&v71 + 1) + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

LABEL_41:
    v23 = *(&v82 + 1);
    goto LABEL_42;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_41;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_42;
  }

LABEL_36:
  v25 = *(&v73 + 1);
  if (1uLL % *(&v73 + 1))
  {
    v25 = 1uLL % *(&v73 + 1);
  }

  v26 = (v24 - v25) & ~((v24 - v25) >> 63);
  v27 = v26 >> 1;
  v28 = v26 - (v26 >> 1);
  if (PaddingStyle == 4)
  {
    v23 = v28;
  }

  else
  {
    v23 = v27;
  }

LABEL_42:
  v29 = 0;
  v30 = (v70 - 1) * v72 + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

LABEL_53:
    v29 = *(&v83 + 1);
    goto LABEL_54;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_53;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_54;
  }

LABEL_48:
  v31 = v74;
  if (1 % v74)
  {
    v31 = 1 % v74;
  }

  v32 = (v30 - v31) & ~((v30 - v31) >> 63);
  v33 = v32 >> 1;
  v34 = v32 - (v32 >> 1);
  if (PaddingStyle == 4)
  {
    v29 = v34;
  }

  else
  {
    v29 = v33;
  }

LABEL_54:
  v35 = 0;
  v36 = (*(&v70 + 1) - 1) * *(&v72 + 1) + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

LABEL_65:
    v35 = *(&v84 + 1);
    goto LABEL_66;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_65;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_66;
  }

LABEL_60:
  v37 = *(&v74 + 1);
  if (1uLL % *(&v74 + 1))
  {
    v37 = 1uLL % *(&v74 + 1);
  }

  v38 = (v36 - v37) & ~((v36 - v37) >> 63);
  v39 = v38 >> 1;
  v40 = v38 - (v38 >> 1);
  if (PaddingStyle == 4)
  {
    v35 = v40;
  }

  else
  {
    v35 = v39;
  }

LABEL_66:
  v41 = objc_alloc(MEMORY[0x1E69747E0]);
  if (ResetAfter)
  {
    v42 = 2;
  }

  else
  {
    v42 = 3;
  }

  v67 = v69;
  v68 = v70;
  v43 = [v41 initWithDevice:v62 kernelSizes:&v67 poolingMode:v42];
  *&v67 = v18 / 2 - v17;
  *(&v67 + 1) = v24 / 2 - v23;
  *&v68 = v30 / 2 - v29;
  *(&v68 + 1) = v36 / 2 - v35;
  [v43 setPoolingOffsets:&v67];
  v67 = v73;
  v68 = v74;
  [v43 setPoolingStrides:&v67];
  v67 = v71;
  v68 = v72;
  [v43 setPoolingDilationRates:&v67];
  [v43 setPoolingReturnIndicesMode:0];
  [v43 setOptions:1];

  v44 = *(v61 + 8);
  *(v61 + 8) = v43;
}

void sub_1E0778040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingOpHandler<mlir::mps::PoolAvgOp,MPSNDArrayPoolingKernel,(MPSNDArrayPoolingMode_s)3>,mlir::mps::PoolAvgOp,MPSNDArrayPoolingKernel,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::PoolingOpHandler<mlir::mps::PoolL2NormOp,MPSNDArrayPoolingKernel,(MPSNDArrayPoolingMode_s)5>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  [*(v3 + 48) metalDevice];
  v4 = v79 = v2;
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v79);
  Strides = mlir::mps::Conv3DOp::getStrides(&v79);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v79);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  Offsets = mlir::mps::StencilOp::getOffsets(&v79);
  v75 = v5;
  v6 = *(*(v79 + 72) + 24);
  if (v6)
  {
    *&v72 = GPURegionRuntime::getStaticType(v3, v6);
    mlir::ArrayAttr::getValue(&v72);
    if (v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }
  }

  v72 = xmmword_1E09A7718;
  v73 = unk_1E09A7728;
  v70 = xmmword_1E09A7718;
  v71 = unk_1E09A7728;
  v68 = xmmword_1E09A7718;
  v69 = unk_1E09A7728;
  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, Strides, 0);
      v8 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v64, v8, NumElements);
      if (v67 != v65)
      {
        v45 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &v62);
          v46 = v63;
          if (v63 < 0x41)
          {
            *(&v72 + v45--) = v62;
          }

          else
          {
            v47 = v46 - llvm::APInt::countLeadingZerosSlowCase(&v62);
            v48 = v62;
            if (v47 <= 0x40)
            {
              *(&v72 + v45--) = *v62;
            }

            else
            {
              *(&v72 + v45--) = -1;
              if (!v48)
              {
                goto LABEL_69;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_69:
          *&v67 = v67 + 1;
        }

        while (v67 != v65);
      }
    }
  }

  if (WindowSizes)
  {
    if (mlir::DenseElementsAttr::getNumElements(&WindowSizes) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, WindowSizes, 0);
      v10 = WindowSizes;
      v11 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v64, v10, v11);
      if (v67 != v65)
      {
        v49 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &v62);
          v50 = v63;
          if (v63 < 0x41)
          {
            *(&v68 + v49--) = v62;
          }

          else
          {
            v51 = v50 - llvm::APInt::countLeadingZerosSlowCase(&v62);
            v52 = v62;
            if (v51 <= 0x40)
            {
              *(&v68 + v49--) = *v62;
            }

            else
            {
              *(&v68 + v49--) = -1;
              if (!v52)
              {
                goto LABEL_78;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_78:
          *&v67 = v67 + 1;
        }

        while (v67 != v65);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, InputAttributeNames, 0);
      v12 = InputAttributeNames;
      v13 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v64, v12, v13);
      if (v67 != v65)
      {
        v53 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &v62);
          v54 = v63;
          if (v63 < 0x41)
          {
            *(&v70 + v53--) = v62;
          }

          else
          {
            v55 = v54 - llvm::APInt::countLeadingZerosSlowCase(&v62);
            v56 = v62;
            if (v55 <= 0x40)
            {
              *(&v70 + v53--) = *v62;
            }

            else
            {
              *(&v70 + v53--) = -1;
              if (!v56)
              {
                goto LABEL_87;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_87:
          *&v67 = v67 + 1;
        }

        while (v67 != v65);
      }
    }
  }

  if (v75 == 1 && mlir::DenseElementsAttr::getNumElements(&Offsets) == 8)
  {
    if ((v75 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, Offsets, 0);
    v14 = Offsets;
    v15 = mlir::DenseElementsAttr::getNumElements(&Offsets);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v64, v14, v15);
    if (v67 != v65)
    {
      v57 = 7;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &v62);
        v58 = v63;
        if (v63 < 0x41)
        {
          *(&v80 + v57--) = v62;
        }

        else
        {
          v59 = v58 - llvm::APInt::countLeadingZerosSlowCase(&v62);
          v60 = v62;
          if (v59 <= 0x40)
          {
            *(&v80 + v57--) = *v62;
          }

          else
          {
            *(&v80 + v57--) = -1;
            if (!v60)
            {
              goto LABEL_96;
            }
          }

          MEMORY[0x1E12E5B60]();
        }

LABEL_96:
        *&v67 = v67 + 1;
      }

      while (v67 != v65);
    }
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v79);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v79);
  v61 = a1;
  v17 = v4;
  mlir::mps::GRUOp::getResetAfter(&v79);
  v18 = 0;
  v19 = (v68 - 1) * v70 + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_29:
    v18 = *(&v80 + 1);
    goto LABEL_30;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_29;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_30;
  }

LABEL_24:
  v20 = v72;
  if (1 % v72)
  {
    v20 = 1 % v72;
  }

  v21 = (v19 - v20) & ~((v19 - v20) >> 63);
  v22 = v21 >> 1;
  v23 = v21 - (v21 >> 1);
  if (PaddingStyle == 4)
  {
    v18 = v23;
  }

  else
  {
    v18 = v22;
  }

LABEL_30:
  v24 = 0;
  v25 = (*(&v68 + 1) - 1) * *(&v70 + 1) + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

LABEL_41:
    v24 = *(&v81 + 1);
    goto LABEL_42;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_41;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_42;
  }

LABEL_36:
  v26 = *(&v72 + 1);
  if (1uLL % *(&v72 + 1))
  {
    v26 = 1uLL % *(&v72 + 1);
  }

  v27 = (v25 - v26) & ~((v25 - v26) >> 63);
  v28 = v27 >> 1;
  v29 = v27 - (v27 >> 1);
  if (PaddingStyle == 4)
  {
    v24 = v29;
  }

  else
  {
    v24 = v28;
  }

LABEL_42:
  v30 = 0;
  v31 = (v69 - 1) * v71 + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

LABEL_53:
    v30 = *(&v82 + 1);
    goto LABEL_54;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_53;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_54;
  }

LABEL_48:
  v32 = v73;
  if (1 % v73)
  {
    v32 = 1 % v73;
  }

  v33 = (v31 - v32) & ~((v31 - v32) >> 63);
  v34 = v33 >> 1;
  v35 = v33 - (v33 >> 1);
  if (PaddingStyle == 4)
  {
    v30 = v35;
  }

  else
  {
    v30 = v34;
  }

LABEL_54:
  v36 = 0;
  v37 = (*(&v69 + 1) - 1) * *(&v71 + 1) + 1;
  if (PaddingStyle > 2)
  {
    if (PaddingStyle != 3)
    {
      if (PaddingStyle != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

LABEL_65:
    v36 = *(&v83 + 1);
    goto LABEL_66;
  }

  if (!PaddingStyle)
  {
    goto LABEL_65;
  }

  if (PaddingStyle != 2)
  {
    goto LABEL_66;
  }

LABEL_60:
  v38 = *(&v73 + 1);
  if (1uLL % *(&v73 + 1))
  {
    v38 = 1uLL % *(&v73 + 1);
  }

  v39 = (v37 - v38) & ~((v37 - v38) >> 63);
  v40 = v39 >> 1;
  v41 = v39 - (v39 >> 1);
  if (PaddingStyle == 4)
  {
    v36 = v41;
  }

  else
  {
    v36 = v40;
  }

LABEL_66:
  v42 = objc_alloc(MEMORY[0x1E69747E0]);
  v66 = v68;
  v67 = v69;
  v43 = [v42 initWithDevice:v17 kernelSizes:&v66 poolingMode:5];
  *&v66 = v19 / 2 - v18;
  *(&v66 + 1) = v25 / 2 - v24;
  *&v67 = v31 / 2 - v30;
  *(&v67 + 1) = v37 / 2 - v36;
  [v43 setPoolingOffsets:&v66];
  v66 = v72;
  v67 = v73;
  [v43 setPoolingStrides:&v66];
  v66 = v70;
  v67 = v71;
  [v43 setPoolingDilationRates:&v66];
  [v43 setPoolingReturnIndicesMode:0];
  [v43 setOptions:1];

  v44 = *(v61 + 8);
  *(v61 + 8) = v43;
}

void sub_1E0778A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingOpHandler<mlir::mps::PoolL2NormOp,MPSNDArrayPoolingKernel,(MPSNDArrayPoolingMode_s)5>,mlir::mps::PoolL2NormOp,MPSNDArrayPoolingKernel,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::PoolingGradientOpHandler<mlir::mps::PoolAvgGradientOp,(MPSNDArrayPoolingMode_s)3>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  [*(v3 + 48) metalDevice];
  v62 = v80 = v2;
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v80);
  Strides = mlir::mps::Conv3DOp::getStrides(&v80);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v80);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  Offsets = mlir::mps::StencilOp::getOffsets(&v80);
  v76 = v4;
  v5 = *(*(v80 + 72) + 56);
  if (v5)
  {
    *&v73 = GPURegionRuntime::getStaticType(v3, v5);
    mlir::ArrayAttr::getValue(&v73);
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }
  }

  v73 = xmmword_1E09A7718;
  v74 = unk_1E09A7728;
  v71 = xmmword_1E09A7718;
  v72 = unk_1E09A7728;
  v69 = xmmword_1E09A7718;
  v70 = unk_1E09A7728;
  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v67, Strides, 0);
      v7 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v65, v7, NumElements);
      if (v68 != v66)
      {
        v45 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v63);
          v46 = v64;
          if (v64 < 0x41)
          {
            *(&v73 + v45--) = v63;
          }

          else
          {
            v47 = v46 - llvm::APInt::countLeadingZerosSlowCase(&v63);
            v48 = v63;
            if (v47 <= 0x40)
            {
              *(&v73 + v45--) = *v63;
            }

            else
            {
              *(&v73 + v45--) = -1;
              if (!v48)
              {
                goto LABEL_72;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_72:
          *&v68 = v68 + 1;
        }

        while (v68 != v66);
      }
    }
  }

  if (WindowSizes)
  {
    if (mlir::DenseElementsAttr::getNumElements(&WindowSizes) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v67, WindowSizes, 0);
      v9 = WindowSizes;
      v10 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v65, v9, v10);
      if (v68 != v66)
      {
        v49 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v63);
          v50 = v64;
          if (v64 < 0x41)
          {
            *(&v69 + v49--) = v63;
          }

          else
          {
            v51 = v50 - llvm::APInt::countLeadingZerosSlowCase(&v63);
            v52 = v63;
            if (v51 <= 0x40)
            {
              *(&v69 + v49--) = *v63;
            }

            else
            {
              *(&v69 + v49--) = -1;
              if (!v52)
              {
                goto LABEL_81;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_81:
          *&v68 = v68 + 1;
        }

        while (v68 != v66);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v67, InputAttributeNames, 0);
      v11 = InputAttributeNames;
      v12 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v65, v11, v12);
      if (v68 != v66)
      {
        v53 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v63);
          v54 = v64;
          if (v64 < 0x41)
          {
            *(&v71 + v53--) = v63;
          }

          else
          {
            v55 = v54 - llvm::APInt::countLeadingZerosSlowCase(&v63);
            v56 = v63;
            if (v55 <= 0x40)
            {
              *(&v71 + v53--) = *v63;
            }

            else
            {
              *(&v71 + v53--) = -1;
              if (!v56)
              {
                goto LABEL_90;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_90:
          *&v68 = v68 + 1;
        }

        while (v68 != v66);
      }
    }
  }

  if (v76 == 1 && mlir::DenseElementsAttr::getNumElements(&Offsets) == 8)
  {
    if ((v76 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v67, Offsets, 0);
    v13 = Offsets;
    v14 = mlir::DenseElementsAttr::getNumElements(&Offsets);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v65, v13, v14);
    if (v68 != v66)
    {
      v57 = 7;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v63);
        v58 = v64;
        if (v64 < 0x41)
        {
          *(&v81 + v57--) = v63;
        }

        else
        {
          v59 = v58 - llvm::APInt::countLeadingZerosSlowCase(&v63);
          v60 = v63;
          if (v59 <= 0x40)
          {
            *(&v81 + v57--) = *v63;
          }

          else
          {
            *(&v81 + v57--) = -1;
            if (!v60)
            {
              goto LABEL_99;
            }
          }

          MEMORY[0x1E12E5B60]();
        }

LABEL_99:
        *&v68 = v68 + 1;
      }

      while (v68 != v66);
    }
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v80);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v80);
  v61 = a1;
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v80);
  v17 = 0;
  v18 = (v69 - 1) * v71 + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_29:
    v17 = *(&v81 + 1);
    goto LABEL_30;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_29;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_30;
  }

LABEL_24:
  v19 = v73;
  if (1 % v73)
  {
    v19 = 1 % v73;
  }

  v20 = (v18 - v19) & ~((v18 - v19) >> 63);
  v21 = v20 >> 1;
  v22 = v20 - (v20 >> 1);
  if (PaddingStyle == 4)
  {
    v17 = v22;
  }

  else
  {
    v17 = v21;
  }

LABEL_30:
  v23 = 0;
  v24 = (*(&v69 + 1) - 1) * *(&v71 + 1) + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

LABEL_41:
    v23 = *(&v82 + 1);
    goto LABEL_42;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_41;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_42;
  }

LABEL_36:
  v25 = *(&v73 + 1);
  if (1uLL % *(&v73 + 1))
  {
    v25 = 1uLL % *(&v73 + 1);
  }

  v26 = (v24 - v25) & ~((v24 - v25) >> 63);
  v27 = v26 >> 1;
  v28 = v26 - (v26 >> 1);
  if (PaddingStyle == 4)
  {
    v23 = v28;
  }

  else
  {
    v23 = v27;
  }

LABEL_42:
  v29 = 0;
  v30 = (v70 - 1) * v72 + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

LABEL_53:
    v29 = *(&v83 + 1);
    goto LABEL_54;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_53;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_54;
  }

LABEL_48:
  v31 = v74;
  if (1 % v74)
  {
    v31 = 1 % v74;
  }

  v32 = (v30 - v31) & ~((v30 - v31) >> 63);
  v33 = v32 >> 1;
  v34 = v32 - (v32 >> 1);
  if (PaddingStyle == 4)
  {
    v29 = v34;
  }

  else
  {
    v29 = v33;
  }

LABEL_54:
  v35 = 0;
  v36 = (*(&v70 + 1) - 1) * *(&v72 + 1) + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

LABEL_65:
    v35 = *(&v84 + 1);
    goto LABEL_66;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_65;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_66;
  }

LABEL_60:
  v37 = *(&v74 + 1);
  if (1uLL % *(&v74 + 1))
  {
    v37 = 1uLL % *(&v74 + 1);
  }

  v38 = (v36 - v37) & ~((v36 - v37) >> 63);
  v39 = v38 >> 1;
  v40 = v38 - (v38 >> 1);
  if (PaddingStyle == 4)
  {
    v35 = v40;
  }

  else
  {
    v35 = v39;
  }

LABEL_66:
  v41 = objc_alloc(MEMORY[0x1E69747E0]);
  if (ResetAfter)
  {
    v42 = 2;
  }

  else
  {
    v42 = 3;
  }

  v67 = v69;
  v68 = v70;
  v43 = [v41 initWithDevice:v62 kernelSizes:&v67 poolingMode:v42];
  *&v67 = v18 / 2 - v17;
  *(&v67 + 1) = v24 / 2 - v23;
  *&v68 = v30 / 2 - v29;
  *(&v68 + 1) = v36 / 2 - v35;
  [v43 setPoolingOffsets:&v67];
  v67 = v73;
  v68 = v74;
  [v43 setPoolingStrides:&v67];
  v67 = v71;
  v68 = v72;
  [v43 setPoolingDilationRates:&v67];
  [v43 setPoolingReturnIndicesMode:0];
  [v43 setOptions:1];

  v44 = *(v61 + 8);
  *(v61 + 8) = v43;
}

void sub_1E07793C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingGradientOpHandler<mlir::mps::PoolAvgGradientOp,(MPSNDArrayPoolingMode_s)3>,mlir::mps::PoolAvgGradientOp,MPSNDArrayPoolingKernel,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::PoolingGradientOpHandler<mlir::mps::PoolL2NormGradientOp,(MPSNDArrayPoolingMode_s)5>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  [*(v3 + 48) metalDevice];
  v4 = v79 = v2;
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v79);
  Strides = mlir::mps::Conv3DOp::getStrides(&v79);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v79);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  Offsets = mlir::mps::StencilOp::getOffsets(&v79);
  v75 = v5;
  v6 = *(*(v79 + 72) + 56);
  if (v6)
  {
    *&v72 = GPURegionRuntime::getStaticType(v3, v6);
    mlir::ArrayAttr::getValue(&v72);
    if (v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }
  }

  v72 = xmmword_1E09A7718;
  v73 = unk_1E09A7728;
  v70 = xmmword_1E09A7718;
  v71 = unk_1E09A7728;
  v68 = xmmword_1E09A7718;
  v69 = unk_1E09A7728;
  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, Strides, 0);
      v8 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v64, v8, NumElements);
      if (v67 != v65)
      {
        v45 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &v62);
          v46 = v63;
          if (v63 < 0x41)
          {
            *(&v72 + v45--) = v62;
          }

          else
          {
            v47 = v46 - llvm::APInt::countLeadingZerosSlowCase(&v62);
            v48 = v62;
            if (v47 <= 0x40)
            {
              *(&v72 + v45--) = *v62;
            }

            else
            {
              *(&v72 + v45--) = -1;
              if (!v48)
              {
                goto LABEL_69;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_69:
          *&v67 = v67 + 1;
        }

        while (v67 != v65);
      }
    }
  }

  if (WindowSizes)
  {
    if (mlir::DenseElementsAttr::getNumElements(&WindowSizes) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, WindowSizes, 0);
      v10 = WindowSizes;
      v11 = mlir::DenseElementsAttr::getNumElements(&WindowSizes);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v64, v10, v11);
      if (v67 != v65)
      {
        v49 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &v62);
          v50 = v63;
          if (v63 < 0x41)
          {
            *(&v68 + v49--) = v62;
          }

          else
          {
            v51 = v50 - llvm::APInt::countLeadingZerosSlowCase(&v62);
            v52 = v62;
            if (v51 <= 0x40)
            {
              *(&v68 + v49--) = *v62;
            }

            else
            {
              *(&v68 + v49--) = -1;
              if (!v52)
              {
                goto LABEL_78;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_78:
          *&v67 = v67 + 1;
        }

        while (v67 != v65);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, InputAttributeNames, 0);
      v12 = InputAttributeNames;
      v13 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v64, v12, v13);
      if (v67 != v65)
      {
        v53 = 3;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &v62);
          v54 = v63;
          if (v63 < 0x41)
          {
            *(&v70 + v53--) = v62;
          }

          else
          {
            v55 = v54 - llvm::APInt::countLeadingZerosSlowCase(&v62);
            v56 = v62;
            if (v55 <= 0x40)
            {
              *(&v70 + v53--) = *v62;
            }

            else
            {
              *(&v70 + v53--) = -1;
              if (!v56)
              {
                goto LABEL_87;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_87:
          *&v67 = v67 + 1;
        }

        while (v67 != v65);
      }
    }
  }

  if (v75 == 1 && mlir::DenseElementsAttr::getNumElements(&Offsets) == 8)
  {
    if ((v75 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, Offsets, 0);
    v14 = Offsets;
    v15 = mlir::DenseElementsAttr::getNumElements(&Offsets);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v64, v14, v15);
    if (v67 != v65)
    {
      v57 = 7;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, &v62);
        v58 = v63;
        if (v63 < 0x41)
        {
          *(&v80 + v57--) = v62;
        }

        else
        {
          v59 = v58 - llvm::APInt::countLeadingZerosSlowCase(&v62);
          v60 = v62;
          if (v59 <= 0x40)
          {
            *(&v80 + v57--) = *v62;
          }

          else
          {
            *(&v80 + v57--) = -1;
            if (!v60)
            {
              goto LABEL_96;
            }
          }

          MEMORY[0x1E12E5B60]();
        }

LABEL_96:
        *&v67 = v67 + 1;
      }

      while (v67 != v65);
    }
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v79);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v79);
  v61 = a1;
  v17 = v4;
  mlir::mps::GRUOp::getResetAfter(&v79);
  v18 = 0;
  v19 = (v68 - 1) * v70 + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_29:
    v18 = *(&v80 + 1);
    goto LABEL_30;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_29;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_30;
  }

LABEL_24:
  v20 = v72;
  if (1 % v72)
  {
    v20 = 1 % v72;
  }

  v21 = (v19 - v20) & ~((v19 - v20) >> 63);
  v22 = v21 >> 1;
  v23 = v21 - (v21 >> 1);
  if (PaddingStyle == 4)
  {
    v18 = v23;
  }

  else
  {
    v18 = v22;
  }

LABEL_30:
  v24 = 0;
  v25 = (*(&v68 + 1) - 1) * *(&v70 + 1) + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

LABEL_41:
    v24 = *(&v81 + 1);
    goto LABEL_42;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_41;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_42;
  }

LABEL_36:
  v26 = *(&v72 + 1);
  if (1uLL % *(&v72 + 1))
  {
    v26 = 1uLL % *(&v72 + 1);
  }

  v27 = (v25 - v26) & ~((v25 - v26) >> 63);
  v28 = v27 >> 1;
  v29 = v27 - (v27 >> 1);
  if (PaddingStyle == 4)
  {
    v24 = v29;
  }

  else
  {
    v24 = v28;
  }

LABEL_42:
  v30 = 0;
  v31 = (v69 - 1) * v71 + 1;
  if (PaddingStyle <= 2)
  {
    if (PaddingStyle)
    {
      if (PaddingStyle != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

LABEL_53:
    v30 = *(&v82 + 1);
    goto LABEL_54;
  }

  if (PaddingStyle == 3)
  {
    goto LABEL_53;
  }

  if (PaddingStyle != 4)
  {
    goto LABEL_54;
  }

LABEL_48:
  v32 = v73;
  if (1 % v73)
  {
    v32 = 1 % v73;
  }

  v33 = (v31 - v32) & ~((v31 - v32) >> 63);
  v34 = v33 >> 1;
  v35 = v33 - (v33 >> 1);
  if (PaddingStyle == 4)
  {
    v30 = v35;
  }

  else
  {
    v30 = v34;
  }

LABEL_54:
  v36 = 0;
  v37 = (*(&v69 + 1) - 1) * *(&v71 + 1) + 1;
  if (PaddingStyle > 2)
  {
    if (PaddingStyle != 3)
    {
      if (PaddingStyle != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

LABEL_65:
    v36 = *(&v83 + 1);
    goto LABEL_66;
  }

  if (!PaddingStyle)
  {
    goto LABEL_65;
  }

  if (PaddingStyle != 2)
  {
    goto LABEL_66;
  }

LABEL_60:
  v38 = *(&v73 + 1);
  if (1uLL % *(&v73 + 1))
  {
    v38 = 1uLL % *(&v73 + 1);
  }

  v39 = (v37 - v38) & ~((v37 - v38) >> 63);
  v40 = v39 >> 1;
  v41 = v39 - (v39 >> 1);
  if (PaddingStyle == 4)
  {
    v36 = v41;
  }

  else
  {
    v36 = v40;
  }

LABEL_66:
  v42 = objc_alloc(MEMORY[0x1E69747E0]);
  v66 = v68;
  v67 = v69;
  v43 = [v42 initWithDevice:v17 kernelSizes:&v66 poolingMode:5];
  *&v66 = v19 / 2 - v18;
  *(&v66 + 1) = v25 / 2 - v24;
  *&v67 = v31 / 2 - v30;
  *(&v67 + 1) = v37 / 2 - v36;
  [v43 setPoolingOffsets:&v66];
  v66 = v72;
  v67 = v73;
  [v43 setPoolingStrides:&v66];
  v66 = v70;
  v67 = v71;
  [v43 setPoolingDilationRates:&v66];
  [v43 setPoolingReturnIndicesMode:0];
  [v43 setOptions:1];

  v44 = *(v61 + 8);
  *(v61 + 8) = v43;
}

void sub_1E0779DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingGradientOpHandler<mlir::mps::PoolL2NormGradientOp,(MPSNDArrayPoolingMode_s)5>,mlir::mps::PoolL2NormGradientOp,MPSNDArrayPoolingKernel,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::PoolingGradientOpHandler<mlir::mps::PoolMaxGradientOp,(MPSNDArrayPoolingMode_s)1>,mlir::mps::PoolMaxGradientOp,MPSNDArrayPoolingKernel,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

id MPSGraphReportFailure(NSString *a1, ...)
{
  va_start(va, a1);
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v1 arguments:va];

  return v2;
}

uint64_t getMPSDataType(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v2 = *(*ElementTypeOrSelf + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v24 = ElementTypeOrSelf;
    if (mlir::Type::isBF16(&v24))
    {
      return 2415919120;
    }

    else if (mlir::FloatType::getWidth(&v24) == 16)
    {
      return 268435472;
    }

    else
    {
      return 268435488;
    }
  }

  else
  {
    if (v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v24 = ElementTypeOrSelf;
      Width = mlir::IntegerType::getWidth(&v24);
      if (Width <= 7)
      {
        switch(Width)
        {
          case 1:
            return 2147483656;
          case 2:
            if (mlir::IntegerType::getSignedness(&v24) == 2)
            {
              return 2;
            }

            else
            {
              return 536870914;
            }

          case 4:
            if (mlir::IntegerType::getSignedness(&v24) == 2)
            {
              return 4;
            }

            else
            {
              return 536870916;
            }
        }
      }

      else if (Width > 31)
      {
        if (Width == 32)
        {
          if (mlir::IntegerType::getSignedness(&v24) == 2)
          {
            return 32;
          }

          else
          {
            return 536870944;
          }
        }

        if (Width == 64)
        {
          if (mlir::IntegerType::getSignedness(&v24) == 2)
          {
            return 64;
          }

          else
          {
            return 536870976;
          }
        }
      }

      else
      {
        if (Width == 8)
        {
          if (mlir::IntegerType::getSignedness(&v24) == 2)
          {
            return 8;
          }

          else
          {
            return 536870920;
          }
        }

        if (Width == 16)
        {
          if (mlir::IntegerType::getSignedness(&v24) == 2)
          {
            return 16;
          }

          else
          {
            return 536870928;
          }
        }
      }

      return 536870976;
    }

    if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v24 = ElementTypeOrSelf;
      Value = mlir::AffineMapAttr::getValue(&v24);
      if (mlir::Type::isF32(&Value))
      {
        return 285212736;
      }

      else
      {
        Value = mlir::AffineMapAttr::getValue(&v24);
        if (mlir::Type::isF16(&Value))
        {
          return 285212704;
        }

        else
        {
          return 268435488;
        }
      }
    }

    else if (v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 32;
    }

    else
    {
      result = 268435488;
      {
        {
          v20 = llvm::getTypeName<mlir::mpsx::ListType>();
          mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v20, v21);
        }

        return 268435488;
      }
    }
  }

  return result;
}

uint64_t getMLIRElementType(mlir::MLIRContext *a1, mlir::MLIRContext *a2)
{
  if (a2 <= 268435471)
  {
    if (a2 <= 3)
    {
      if (a2 <= -1879048177)
      {
        if (a2 == -2147483640)
        {
          LODWORD(a2) = 1;
          v2 = 0;

          return mlir::IntegerType::get(a1, a2, v2);
        }

        if (a2 != -2147483616)
        {
          return 0;
        }

        return mlir::IndexType::get(a1, a2);
      }

      if (a2 == -1879048176)
      {

        return mlir::BFloat16Type::get(a1, a2);
      }

      if (a2 != 2)
      {
        return 0;
      }
    }

    else if (a2 <= 15)
    {
      if (a2 != 4 && a2 != 8)
      {
        return 0;
      }
    }

    else if (a2 != 16 && a2 != 32 && a2 != 64)
    {
      return 0;
    }

    v2 = 2;

    return mlir::IntegerType::get(a1, a2, v2);
  }

  if (a2 > 536870915)
  {
    if (a2 <= 536870927)
    {
      if (a2 == 536870916)
      {
        LODWORD(a2) = 4;
        v2 = 1;

        return mlir::IntegerType::get(a1, a2, v2);
      }

      if (a2 == 536870920)
      {
        LODWORD(a2) = 8;
        v2 = 1;

        return mlir::IntegerType::get(a1, a2, v2);
      }
    }

    else
    {
      switch(a2)
      {
        case 0x20000010:
          LODWORD(a2) = 16;
          v2 = 1;

          return mlir::IntegerType::get(a1, a2, v2);
        case 0x20000020:
          LODWORD(a2) = 32;
          v2 = 1;

          return mlir::IntegerType::get(a1, a2, v2);
        case 0x20000040:
          LODWORD(a2) = 64;
          v2 = 1;

          return mlir::IntegerType::get(a1, a2, v2);
      }
    }

    return 0;
  }

  if (a2 > 285212703)
  {
    switch(a2)
    {
      case 0x11000020:
        v4 = mlir::Float16Type::get(a1, a2);

        break;
      case 0x11000040:
        v4 = mlir::Float32Type::get(a1, a2);

        break;
      case 0x20000002:
        LODWORD(a2) = 2;
        v2 = 1;

        return mlir::IntegerType::get(a1, a2, v2);
      default:
        return 0;
    }

    return mlir::ComplexType::get(v4);
  }

  if (a2 != 268435472)
  {
    if (a2 == 268435488)
    {

      return mlir::Float32Type::get(a1, a2);
    }

    return 0;
  }

  return mlir::Float16Type::get(a1, a2);
}

id getMPSShapeFromMLIR(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:a2];
  {
    v5 = *a1++;
    if (v5 == 0x8000000000000000)
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:-1];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:?];
    }
    v6 = ;
    [i addObject:v6];
  }

  return i;
}

id getMPSShapeFromMLIR(uint64_t a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v5 = 0;
  }

  else
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8))
    {
      v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
      v7 = a1;
      v8 = v2;
      if (a1)
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v7);
        v5 = getMPSShapeFromMLIR(ArgAttrsAttr, v4);

        return v5;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v5 = &unk_1F5B77618;
  }

  return v5;
}

{
  v1 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v5 = 0;
  }

  else
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8))
    {
      v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
      v7 = v1;
      v8 = v2;
      if (v1)
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v7);
        v5 = getMPSShapeFromMLIR(ArgAttrsAttr, v4);

        return v5;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v5 = &unk_1F5B77618;
  }

  return v5;
}

uint64_t getMPSSizeVector(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8))
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  v19 = v2;
  v20 = v4;
  if (!v2)
  {
LABEL_10:
    result = 1;
    *a2 = 1;
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v19);
  result = v5;
  if (v5)
  {
    v8 = 0;
    v10 = a2[2];
    v9 = a2[3];
    v12 = *a2;
    v11 = a2[1];
    v13 = (ArgAttrsAttr + 8 * v5 - 8);
    do
    {
      v14 = *v13;
      v13 -= 2;
      v15 = v12;
      v16 = v11;
      v17 = v10;
      v18 = v9;
      *(&v15 + (v8 & 0xF)) = v14;
      v10 = v17;
      v9 = v18;
      v12 = v15;
      v11 = v16;
      a2[2] = v17;
      a2[3] = v9;
      *a2 = v12;
      a2[1] = v11;
      ++v8;
    }

    while (v5 != v8);
  }

  return result;
}

MPSGraphShapedType *getMPSGraphShapedType(void *a1)
{
  v2 = [MPSGraphShapedType alloc];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v6 = 0;
  }

  else
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8))
    {
      v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
      v9 = a1;
      v10 = v3;
      if (a1)
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v9);
        v6 = getMPSShapeFromMLIR(ArgAttrsAttr, v5);
        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = &unk_1F5B77618;
  }

LABEL_8:
  v7 = [(MPSGraphShapedType *)v2 initWithShape:v6 dataType:getMPSDataType(a1)];

  return v7;
}

id getMPSGraphType(void *a1)
{
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8))
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
    if (a1)
    {
      v2 = getMPSGraphShapedType(a1);
LABEL_4:

      return v2;
    }
  }

  v4 = *(*a1 + 136);
  {
    v8 = llvm::getTypeName<mlir::mpsx::ListType>();
    mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
  }

  v2 = 0;
  if (!a1 || v4 != mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    goto LABEL_4;
  }

  v5 = [MPSGraphListType alloc];
  v6 = getMPSGraphType(a1[1]);
  v7 = [(MPSGraphListType *)v5 initWithElementType:v6];

  v2 = v7;

  return v2;
}

void getMLIRShape(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1;
  v3 = 0;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  while ([v8 count] > v3)
  {
    v4 = [v8 objectAtIndexedSubscript:v3];
    if ([v4 integerValue] == -1)
    {
      v6 = 0x8000000000000000;

      v7 = *(a2 + 8);
      if (v7 < *(a2 + 12))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = [v8 objectAtIndexedSubscript:v3];
      v6 = [v5 integerValue];

      v7 = *(a2 + 8);
      if (v7 < *(a2 + 12))
      {
        goto LABEL_7;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v7 + 1, 8);
    v7 = *(a2 + 8);
LABEL_7:
    *(*a2 + 8 * v7) = v6;
    ++*(a2 + 8);
    ++v3;
  }
}

void sub_1E077AD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*v10 != v11)
  {
    free(*v10);
  }

  _Unwind_Resume(a1);
}

void *getMLIRType(void *a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    getMLIRShape(v3, &v10);
    v5 = mlir::RankedTensorType::get(v10, v11, a2, 0);
    v6 = v5;
    if (v5)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
      v7 = v10;
      if (v10 == v12)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v7 = v10;
    if (v10 != v12)
    {
LABEL_8:
      free(v7);
    }
  }

  else
  {
    v8 = mlir::UnrankedTensorType::get(a2);
    v6 = v8;
    if (v8)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }
  }

LABEL_9:

  return v6;
}

void *getMLIRType(mlir::MLIRContext **a1, void *a2, mlir::MLIRContext *a3)
{
  v5 = a2;
  v6 = *a1;
  v7 = v5;
  MLIRElementType = getMLIRElementType(v6, a3);
  MLIRType = getMLIRType(v7, MLIRElementType);

  return MLIRType;
}

uint64_t getMLIRType(mlir::MLIRContext *a1, MPSGraphType *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(MPSGraphType *)v4 shape];
    v6 = [(MPSGraphType *)v4 dataType];
    v7 = v5;
    MLIRElementType = getMLIRElementType(a1, v6);
    MLIRType = getMLIRType(v7, MLIRElementType);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(MPSGraphType *)v3 elementType];
      v11 = getMLIRType(a1, v10);

      v13 = v11;
      MLIRType = mlir::detail::TypeUniquer::get<mlir::mpsx::ListType,std::array<mlir::Type,1ul> &>(a1, &v13);
    }

    else
    {
      MLIRType = 0;
    }
  }

  return MLIRType;
}

void ParseEnvironmentOptions(const char *a1, const char *__s, const char *a3)
{
  v4 = __s;
  v21[20] = *MEMORY[0x1E69E9840];
  if (__s)
  {
    __s = strlen(__s);
  }

  llvm::sys::Process::GetEnv(v4, __s, __p);
  if (v15 == 1)
  {
    v20 = 0x1400000000;
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = v17;
    v16[3] = 0x400000000;
    v17[4] = v18;
    v17[5] = 0;
    v18[0] = 0;
    v18[1] = 1;
    v19 = v21;
    v12 = v16;
    if (a1)
    {
      v6 = strlen(a1);
    }

    else
    {
      v6 = 0;
    }

    v7 = llvm::StringSaver::save(&v12, a1, v6);
    v8 = v20;
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 8);
      v8 = v20;
    }

    *(v19 + v8) = v7;
    LODWORD(v20) = v20 + 1;
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if (v14 >= 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = __p[1];
    }

    llvm::cl::TokenizeGNUCommandLine(v9, v10, &v12, &v19, 0);
    if (a3)
    {
      v11 = strlen(a3);
    }

    else
    {
      v11 = 0;
    }

    llvm::cl::ParseCommandLineOptions(v20, v19, a3, v11, 0, 0, 0);
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v16);
    if (v19 != v21)
    {
      free(v19);
    }

    if ((v15 & 1) != 0 && v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E077B2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&a18);
  if (a32 != v32)
  {
    free(a32);
  }

  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

mlir::Operation *getOpName(mlir::Operation *this)
{
  if (this)
  {
    v1 = this;
    if (!*(this + 47) || (v30.var0 = "name", v30.var1 = 4, InherentAttr = mlir::Operation::getInherentAttr(this, v30), (v3 & 1) == 0))
    {
      v31.var0 = "name";
      v31.var1 = 4;
      InherentAttr = mlir::DictionaryAttr::get((v1 + 56), v31);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v4 = *(v1 + 3);
      if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
      {
        v4 = 0;
      }

      v28 = v4;
      if (v4)
      {
        __dst = mlir::AffineMapAttr::getValue(&v28);
        this = [MEMORY[0x1E696AEC0] stringWithUTF8String:mlir::OpaqueAttr::getAttrData(&__dst)];
        goto LABEL_39;
      }

      v26[0] = 0;
      v26[1] = 0;
      v27 = 0;
      LODWORD(v19) = 0;
      v23 = 0;
      v24 = 1;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      __dst = &unk_1F5B3FB30;
      v25 = v26;
      llvm::raw_ostream::SetBufferAndMode(&__dst, 0, 0, 0);
      mlir::OpPrintingFlags::OpPrintingFlags(v17);
      mlir::Operation::print(v1, &__dst, v17);
      if (v27 >= 0)
      {
        v5 = v26;
      }

      else
      {
        v5 = v26[0];
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      llvm::raw_ostream::~raw_ostream(&__dst);
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v7 = v26[0];
LABEL_37:
      operator delete(v7);
LABEL_38:
      this = v6;
      goto LABEL_39;
    }

    v8 = MEMORY[0x1E696AEC0];
    if (!*(v1 + 47) || (v32.var0 = "name", v32.var1 = 4, v9 = mlir::Operation::getInherentAttr(v1, v32), (v10 & 1) == 0))
    {
      v33.var0 = "name";
      v33.var1 = 4;
      v9 = mlir::DictionaryAttr::get((v1 + 56), v33);
    }

    if (v9)
    {
      if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      v17[0] = v11;
      AttrData = mlir::OpaqueAttr::getAttrData(v17);
      if (AttrData)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17[0] = 0;
      AttrData = mlir::OpaqueAttr::getAttrData(v17);
      if (AttrData)
      {
LABEL_24:
        v14 = v13;
        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v13 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v20) = v13;
        if (v13)
        {
          memmove(&__dst, AttrData, v13);
        }

        *(&__dst + v14) = 0;
        if (v20 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        goto LABEL_35;
      }
    }

    __dst = 0;
    v19 = 0;
    p_dst = &__dst;
    v20 = 0;
LABEL_35:
    this = [v8 stringWithUTF8String:p_dst];
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v6 = this;
    v7 = __dst;
    goto LABEL_37;
  }

LABEL_39:

  return this;
}

void sub_1E077B5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t isStaticShape(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = [v7 longLongValue];

          if (v8 < 0)
          {
            v9 = 0;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *adaptForMPS(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = &unk_1F5B77630;
  }

  v3 = v2;

  return v2;
}

void getValuesFromTensors(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  while (v4 < [v3 count])
  {
    v5 = [v3 objectAtIndexedSubscript:v4];
    v6 = [v5 value];
    std::vector<mlir::Value>::push_back[abi:ne200100](a2, &v6);

    ++v4;
  }
}

void sub_1E077B868(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void getTypesFromTensors(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  while (v4 < [v3 count])
  {
    v5 = [v3 objectAtIndexedSubscript:v4];
    v6 = *([v5 value] + 8) & 0xFFFFFFFFFFFFFFF8;
    std::vector<mlir::Type>::push_back[abi:ne200100](a2, &v6);

    ++v4;
  }
}

void sub_1E077B930(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t getConstantDataForScalar(int a1, double a2)
{
  _D8 = a2;
  v4 = a1 >> 3;
  if ((a1 & 0xDFFFFFFF) == 4)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1 >> 3;
  }

  v6 = malloc_type_malloc(v5, 0xF182680uLL);
  v7 = v6;
  if (a1 > 268435487)
  {
    if (a1 <= 536870919)
    {
      if (a1 <= 285212735)
      {
        if (a1 == 268435488)
        {
          v17 = _D8;
          *v6 = v17;
          goto LABEL_45;
        }

        if (a1 == 285212704)
        {
          _S0 = _D8;
          __asm { FCVT            H0, S0 }

          *v6 = LOWORD(_S0);
          v6[1] = 0;
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      if (a1 == 285212736)
      {
        v18 = _D8;
        *v6 = v18;
        *(v6 + 1) = 0;
        goto LABEL_45;
      }

      if (a1 != 536870916)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (a1 <= 536870943)
    {
      if (a1 == 536870920)
      {
        goto LABEL_37;
      }

      if (a1 != 536870928)
      {
        goto LABEL_43;
      }

LABEL_24:
      *v6 = _D8;
      goto LABEL_45;
    }

    if (a1 == 536870944)
    {
      *v6 = _D8;
      goto LABEL_45;
    }

    if (a1 != 536870976)
    {
      goto LABEL_43;
    }

    v16 = _D8;
LABEL_41:
    *v6 = v16;
    goto LABEL_45;
  }

  if (a1 > 15)
  {
    if (a1 <= 63)
    {
      if (a1 != 16)
      {
        if (a1 == 32)
        {
          *v6 = _D8;
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      goto LABEL_24;
    }

    if (a1 != 64)
    {
      if (a1 == 268435472)
      {
        __asm { FCVT            H0, D8 }

        *v6 = _H0;
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v16 = _D8;
    goto LABEL_41;
  }

  if (a1 > 3)
  {
    if (a1 != 4 && a1 != 8)
    {
      goto LABEL_43;
    }

LABEL_30:
    *v6 = _D8;
    goto LABEL_45;
  }

  if (a1 == -2147483640)
  {
LABEL_37:
    __src = _D8;
    memcpy(v6, &__src, v4);
    goto LABEL_45;
  }

  if (a1 == -1879048176)
  {
    v8 = _D8;
    v9 = 0.0039062;
    if ((BYTE2(v8) & 1) == 0)
    {
      v9 = 0.0039061;
    }

    v21 = v8 + (COERCE_FLOAT(LODWORD(v8) & 0xFF800000) * v9);
    *v6 = HIWORD(v21);
    goto LABEL_45;
  }

LABEL_43:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_45:
  v19 = MEMORY[0x1E695DEF0];

  return [v19 dataWithBytesNoCopy:v7 length:v5 freeWhenDone:1];
}

uint64_t getConstantDataForComplexScalar(int a1, double a2, double a3)
{
  v6 = a1 >> 3;
  v7 = malloc_type_malloc(v6, 0xA051C368uLL);
  v8 = v7;
  if (a1 == 285212704)
  {
    _S0 = a2;
    _S1 = a3;
    __asm
    {
      FCVT            H0, S0
      FCVT            H1, S1
    }

    *v7 = LOWORD(_S0);
    v7[1] = LOWORD(_S1);
  }

  else if (a1 == 285212736)
  {
    v9 = a2;
    v10 = a3;
    *v7 = v9;
    *(v7 + 1) = v10;
  }

  else if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = MEMORY[0x1E695DEF0];

  return [v17 dataWithBytesNoCopy:v8 length:v6 freeWhenDone:1];
}

uint64_t createConstantOp(mlir::OpBuilder *a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v21 = a4;
  v8 = a3;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v21);
  isInteger = mlir::Type::isInteger(&RHS, 1);
  v10 = v8;
  if (isInteger)
  {
    v11 = [v8 bytes];
    v12 = [v8 length];
    Elements = mlir::createElementsAttr<BOOL>(v21, v11, v12);
  }

  else
  {
    v15 = [v8 bytes];
    v16 = [v8 length];
    Elements = mlir::createRawElementsAttr(v21, v15, v16);
  }

  v20[0] = Elements;
  v20[1] = v14;
  if (a5)
  {
    mlir::ElementsAttr::isSplat(v20);
    if ((mlir::ElementsAttr::isSplat(v20) & 1) == 0)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v17 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::RankedTensorType &,mlir::ElementsAttr &>(a1, a2, &v21, v20) - 16;

  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::RankedTensorType &,mlir::ElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.constant";
    v17[3] = 12;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ConstantOp::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

uint64_t createConstantOpFromScalar(mlir::OpBuilder *a1, uint64_t a2, void *a3, double a4)
{
  MPSDataType = getMPSDataType(a3);
  v9 = getConstantDataForScalar(MPSDataType, a4);
  ConstantOp = createConstantOp(a1, a2, v9, a3, 1);

  return ConstantOp;
}

void mpsFileLoc(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = strlen(a1);
  v6 = strlen(a2);
  v7 = malloc_type_calloc(1uLL, v5 + v6 + 10, 0x100004077774924uLL);
  *v7 = 40;
  strcat(v7, "mpsFileLoc");
  *&v7[strlen(v7)] = 2112041;
  strcat(v7, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/MPSGraphUtilities.mm");
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  a3[23] = v8;
  if (v8)
  {
    memmove(a3, v7, v8);
  }

  a3[v9] = 0;

  free(v7);
}

uint64_t getANECFamily(NSString *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"h%d", 18];
  v3 = [(NSString *)v1 hasPrefix:v2];

  if (v3)
  {
    v4 = 7;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"h%d", 17];
    v6 = [(NSString *)v1 hasPrefix:v5];

    if (v6)
    {
      v4 = 6;
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"h%d", 16];
      v8 = [(NSString *)v1 hasPrefix:v7];

      if (v8)
      {
        v4 = 5;
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"h%d", 15];
        v10 = [(NSString *)v1 hasPrefix:v9];

        if (v10)
        {
          v4 = 4;
        }

        else
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"h%d", 14];
          v12 = [(NSString *)v1 hasPrefix:v11];

          if (v12)
          {
            v4 = 3;
          }

          else
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"h%d", 13];
            v14 = [(NSString *)v1 hasPrefix:v13];

            if (v14)
            {
              v4 = 2;
            }

            else
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"h%d", 12];
              v16 = [(NSString *)v1 hasPrefix:v15];

              if (v16)
              {
                v4 = 1;
              }

              else
              {
                v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"h%d", 11];
                [(NSString *)v1 hasPrefix:v17];

                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

void sub_1E077C44C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t populateLegacyANEPass(uint64_t *a1, int a2, uint64_t *a3)
{
  v4 = "anec.A12";
  v5 = "anec.A18";
  v6 = 8;
  if (a2 != 6)
  {
    v5 = "anec.A11Legacy";
    v6 = 14;
  }

  v7 = "anec.A16";
  if (a2 != 4)
  {
    v7 = "anec.A17";
  }

  if (a2 <= 5)
  {
    v5 = v7;
    v6 = 8;
  }

  v8 = "anec.A14";
  if (a2 != 2)
  {
    v8 = "anec.A15";
  }

  if (a2)
  {
    v4 = "anec.A13";
  }

  if (a2 > 1)
  {
    v4 = v8;
  }

  v9 = a2 <= 3;
  if (a2 <= 3)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (v9)
  {
    v11 = 8;
  }

  else
  {
    v11 = v6;
  }

  v12 = mlir::OpPassManager::nest(a1, v10, v11);
  v13 = *a3;
  *a3 = 0;
  v15 = v13;
  mlir::OpPassManager::addPass(v12, &v15);
  result = v15;
  v15 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1E077C624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

mlir::Operation *getFuncOpInModule(uint64_t a1)
{
  if (!*(a1 + 47) || (v29.var0 = "mps.entryFunctionName", v29.var1 = 21, InherentAttr = mlir::Operation::getInherentAttr(a1, v29), (v3 & 1) == 0))
  {
    v30.var0 = "mps.entryFunctionName";
    v30.var1 = 21;
    InherentAttr = mlir::DictionaryAttr::get((a1 + 56), v30);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    v28 = 261;
    v27[0] = "main";
    v27[1] = 4;
    v5 = mlir::StringAttr::get(Context, v27);
    result = mlir::SymbolTable::lookupSymbolIn(a1, v5);
    if (!result || *(*(result + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v8 = *(((a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
      v9 = v8 ? v8 - 8 : 0;
      result = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v9 + 40), v7);
      v11 = *(*(result + 6) + 16);
      v12 = v11 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
      v13 = v11 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id ? result : 0;
      v26 = v13;
      if (!v12)
      {
        v14 = *(((a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
        if (v14)
        {
          v15 = v14 - 8;
        }

        else
        {
          v15 = 0;
        }

        v25 = &v26;
        v16 = *(v15 + 40);
        v17 = v15 + 32;
        do
        {
          if (v16 == v17)
          {
            break;
          }

          v18 = *(v16 + 8);
          v19 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v10);
          v27[0] = &v25;
          v20 = mlir::detail::walk<mlir::ForwardIterator>(v19, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ17getFuncOpInModuleNS1_8ModuleOpEE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESO_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v27, 1);
          v16 = v18;
        }

        while (v20);
        return v26;
      }
    }

    return result;
  }

  if (!*(a1 + 47) || (v31.var0 = "mps.entryFunctionName", v31.var1 = 21, v21 = mlir::Operation::getInherentAttr(a1, v31), (v22 & 1) == 0))
  {
    v32.var0 = "mps.entryFunctionName";
    v32.var1 = 21;
    v21 = mlir::DictionaryAttr::get((a1 + 56), v32);
  }

  if (!v21)
  {
    result = mlir::SymbolTable::lookupSymbolIn(a1, 0);
    if (!result)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (*(*(result + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  result = mlir::SymbolTable::lookupSymbolIn(a1, v23);
  if (result)
  {
    goto LABEL_33;
  }

LABEL_34:
  v24 = MTLReportFailureTypeEnabled();
  result = 0;
  if (v24)
  {
    MTLReportFailure();
    return 0;
  }

  return result;
}

uint64_t getMemRefRowBytes(void *a1)
{
  v62[4] = *MEMORY[0x1E69E9840];
  v59 = a1;
  v60 = v62;
  v61 = 0x400000000;
  v57[0] = mlir::DenseElementsAttr::getRawStringData(&v59);
  v57[1] = v1;
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v57);
  Results = mlir::AffineMap::getResults(&CallableForCallee);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *Results;
  if (*Results && (v57[0] = *Results, mlir::arith::FastMathFlagsAttr::getValue(v57) < 5))
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, v4);
  }

  else
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, 0);
  }

  CallableForCallee = v57[0];
  if (!v57[0] || mlir::arith::FastMathFlagsAttr::getValue(&CallableForCallee))
  {
    goto LABEL_8;
  }

  RHS = mlir::AffineBinaryOpExpr::getRHS(&CallableForCallee);
  v16 = RHS;
  if (RHS && (v57[0] = RHS, mlir::arith::FastMathFlagsAttr::getValue(v57) < 5))
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, v16);
  }

  else
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, 0);
  }

  v56 = v57[0];
  if (v57[0] && mlir::arith::FastMathFlagsAttr::getValue(&v56) == 2)
  {
    mlir::ArrayAttr::getValue(&v59);
    v18 = v17;
    v19 = v61;
    if (v17 != v61)
    {
      if (v17 >= v61)
      {
        if (v17 > HIDWORD(v61))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v17, 8);
          v19 = v61;
        }

        if (v18 != v19)
        {
          bzero(v60 + 8 * v19, 8 * (v18 - v19));
        }
      }

      LODWORD(v61) = v18;
    }

    if (v4 && (v57[0] = v4, mlir::arith::FastMathFlagsAttr::getValue(v57) < 5))
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, v4);
    }

    else
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, 0);
    }

    CallableForCallee = v57[0];
    LHS = mlir::AffineBinaryOpExpr::getLHS(&CallableForCallee);
    v21 = LHS;
    if (LHS && (v57[0] = LHS, mlir::arith::FastMathFlagsAttr::getValue(v57) < 5))
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, v21);
    }

    else
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, 0);
    }

    CallableForCallee = v57[0];
    v22 = (v18 - 1);
    if (v22 >= 1)
    {
      do
      {
        v26 = mlir::AffineBinaryOpExpr::getRHS(&CallableForCallee);
        v27 = v26;
        if (v26 && (v57[0] = v26, mlir::arith::FastMathFlagsAttr::getValue(v57) < 5))
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, v27);
        }

        else
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, 0);
        }

        v56 = v57[0];
        v28 = mlir::AffineBinaryOpExpr::getRHS(&v56);
        v29 = v28;
        if (v28 && (v57[0] = v28, mlir::arith::FastMathFlagsAttr::getValue(v57) == 5))
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, v29);
        }

        else
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, 0);
        }

        v55 = v57[0];
        v30 = mlir::AffineBinaryOpExpr::getLHS(&v55);
        *(v60 + v22) = v30;
        v31 = mlir::AffineBinaryOpExpr::getLHS(&CallableForCallee);
        v32 = v31;
        if (v31 && (v57[0] = v31, mlir::arith::FastMathFlagsAttr::getValue(v57) < 5))
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, v32);
        }

        else
        {
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, 0);
        }

        CallableForCallee = v57[0];
      }

      while (v22-- > 1);
    }

    v23 = mlir::AffineBinaryOpExpr::getRHS(&CallableForCallee);
    v24 = v23;
    if (v23 && (v57[0] = v23, mlir::arith::FastMathFlagsAttr::getValue(v57) == 5))
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, v24);
    }

    else
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v57, 0);
    }

    v56 = v57[0];
    v33 = mlir::AffineBinaryOpExpr::getLHS(&v56);
    *v60 = v33;
    v57[0] = mlir::AffineBinaryOpExpr::getRHS(&v59);
    if (mlir::Type::getIntOrFloatBitWidth(v57) != 4)
    {
      v57[0] = mlir::AffineBinaryOpExpr::getRHS(&v59);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v57);
      v44 = v61;
      if (!v61)
      {
        goto LABEL_19;
      }

      v45 = IntOrFloatBitWidth >> 3;
      v46 = v60;
      v47 = (v61 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v47)
      {
        v48 = v47 + 1;
        v49 = (v47 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v50 = v60 + 8 * v49;
        v51 = (v60 + 8);
        v52 = v49;
        do
        {
          v53 = *v51 * v45;
          *(v51 - 1) *= v45;
          *v51 = v53;
          v51 += 2;
          v52 -= 2;
        }

        while (v52);
        if (v48 == v49)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v50 = v60;
      }

      v54 = &v46[8 * v44];
      do
      {
        *v50 *= v45;
        v50 += 8;
      }

      while (v50 != v54);
      goto LABEL_19;
    }

    v34 = v61;
    if (v61)
    {
      v35 = v60;
      v36 = (v61 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v37 = v60;
      if (v36 <= 2)
      {
        goto LABEL_74;
      }

      v38 = v36 + 1;
      v37 = (v60 + 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL));
      v39 = (v60 + 16);
      v40 = v38 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v41 = vshrq_n_s64(vsraq_n_u64(*v39, *v39, 0x3FuLL), 1uLL);
        v39[-1] = vshrq_n_s64(vsraq_n_u64(v39[-1], v39[-1], 0x3FuLL), 1uLL);
        *v39 = v41;
        v39 += 2;
        v40 -= 4;
      }

      while (v40);
      if (v38 != (v38 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_74:
        v42 = &v35[8 * v34];
        do
        {
          *v37++ /= 2;
        }

        while (v37 != v42);
      }
    }
  }

  else
  {
LABEL_8:
    if (mlir::getStrideInBytes(v59, &v60, 1))
    {
      v5 = v61;
      if (v61)
      {
        goto LABEL_20;
      }

      v57[0] = 0;
      if ((mlir::getStridesAndOffset(v59, &v60, v57) & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v61)
      {
        v6 = v59;
        v7 = v60;
        v8 = 8 * v61;
        do
        {
          v9 = *v7;
          *v7++ = (mlir::mps::getElementBitWidth(v6) >> 3) * v9;
          v8 -= 8;
        }

        while (v8);
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_19:
  v5 = v61;
  if (!v61)
  {
    v11 = 1;
    v12 = v60;
    if (v60 == v62)
    {
      return v11;
    }

    goto LABEL_24;
  }

LABEL_20:
  v10 = v60 + 8 * v5;
  if (v5 >= 2)
  {
    v11 = *(v10 - 2);
    v12 = v60;
    if (v60 == v62)
    {
      return v11;
    }

    goto LABEL_24;
  }

  v13 = *(v10 - 1);
  v11 = *mlir::ArrayAttr::getValue(&v59) * v13;
  v12 = v60;
  if (v60 != v62)
  {
LABEL_24:
    free(v12);
  }

  return v11;
}

void sub_1E077CF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void loadCommonMPSDialectsInContext(mlir::MLIRContext *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "mps", 3, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps::MPSDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps::MPSDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "mps_spi", 7, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps_spi::MPSSPIDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps_spi::MPSSPIDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "mpsx", 4, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mpsx::MPSXDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mpsx::MPSXDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "anec", 4, &mlir::detail::TypeIDResolver<mlir::anec::ANECDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::anec::ANECDialect * mlir::MLIRContext::getOrLoadDialect<mlir::anec::ANECDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "placement", 9, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::placement::PlacementDialect * mlir::MLIRContext::getOrLoadDialect<mlir::placement::PlacementDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "func", 4, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::func::FuncDialect * mlir::MLIRContext::getOrLoadDialect<mlir::func::FuncDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "scf", 3, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::scf::SCFDialect * mlir::MLIRContext::getOrLoadDialect<mlir::scf::SCFDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "tensor", 6, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::tensor::TensorDialect * mlir::MLIRContext::getOrLoadDialect<mlir::tensor::TensorDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "memref", 6, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::memref::MemRefDialect * mlir::MLIRContext::getOrLoadDialect<mlir::memref::MemRefDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "coreml", 6, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::CoreMLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void)::{lambda(void)#1}>, v13);
  v13[0] = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "coremlax", 8, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect>(void)::{lambda(void)#1}>, v13);
  mlir::DialectRegistry::DialectRegistry(v13);
  v17[0] = &unk_1F5AFAFA8;
  v18 = v17;
  mlir::DialectRegistry::insert(v13, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v17);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  mlir::func::registerInlinerExtension(v13, v2);
  mlir::mps::registerMapDynamicShapeOpExternalModels(v13, v3);
  mlir::mps::registerConvertOpLayoutExternalModels(v13, v4);
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(v13, v5);
  mlir::mps::registerExternalCanonicalizeExternalModels(v13, v6);
  mlir::mps::registerExternalFoldExternalModels(v13, v7);
  mlir::memref::registerAllocationOpInterfaceExternalModels(v13, v8);
  mlir::MLIRContext::appendDialectRegistry(a1, v13);
  v9 = v15;
  if (v16)
  {
    v10 = v15 - 8;
    v11 = 16 * v16;
    do
    {
      v12 = *&v10[v11];
      *&v10[v11] = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      v11 -= 16;
    }

    while (v11);
    v9 = v15;
  }

  if (v9 != v17)
  {
    free(v9);
  }

  llvm::deallocate_buffer(v13[3], (16 * v14));
}

void sub_1E077D394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t *loadCoreMLDialectInContext(mlir::MLIRContext *a1)
{
  v3 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "coreml", 6, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::CoreMLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void)::{lambda(void)#1}>, &v3);
  v3 = a1;
  return mlir::MLIRContext::getOrLoadDialect(a1, "coremlax", 8, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect>(void)::{lambda(void)#1}>, &v3);
}

uint64_t getMLIRMetalPixelFormat(uint64_t a1)
{
  if (a1 > 69)
  {
    if (a1 <= 104)
    {
      if (a1 == 70)
      {
        return 2;
      }

      if (a1 == 80)
      {
        return 3;
      }
    }

    else
    {
      switch(a1)
      {
        case 'i':
          return 8;
        case 's':
          return 6;
        case '}':
          return 9;
      }
    }
  }

  else if (a1 <= 29)
  {
    if (a1 == 10)
    {
      return 0;
    }

    if (a1 == 25)
    {
      return 4;
    }
  }

  else
  {
    switch(a1)
    {
      case 30:
        return 1;
      case 55:
        return 7;
      case 65:
        return 5;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLPixelFormatGetName();
    MTLReportFailure();
  }

  return 4;
}

uint64_t getMTLPixelFormat(unsigned int a1)
{
  if (a1 < 0xA)
  {
    return qword_1E09A7738[a1];
  }

  v2 = MTLReportFailureTypeEnabled();
  result = 0;
  if (v2)
  {
    MTLReportFailure();
    return 0;
  }

  return result;
}

id bufferFromIOSurface(void *a1, uint64_t a2)
{
  v2 = [a1 newBufferWithIOSurface:a2];

  return v2;
}

void mlir::DialectRegistry::~DialectRegistry(mlir::DialectRegistry *this)
{
  v2 = *(this + 6);
  v3 = *(this + 14);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      *&v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 6);
  }

  if (v2 != this + 64)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 3), (16 * *(this + 10)));
}

uint64_t std::function<mlir::Dialect * ()(mlir::MLIRContext *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ17getFuncOpInModuleNS1_8ModuleOpEE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESO_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ***a1, uint64_t a2)
{
  result = 1;
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      result = 0;
      ***a1 = a2;
    }
  }

  return result;
}

void sub_1E077E3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  llvm::raw_ostream::~raw_ostream(va);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void GPU::detail::ReadDataFromFileCache::get(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
  Context = mlir::Attribute::getContext((a2 + 32));
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v7);
  BufferTensorAttr = 0;
  v9 = llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::doFind<GPU::detail::ReadDataFromFileCache::Key>((a1 + 64), a2);
  if (v9 && v9 != *(a1 + 64) + 48 * *(a1 + 80))
  {
    BufferTensorAttr = *(v9 + 40);
    goto LABEL_22;
  }

  BufferTensorAttr = mlir::mps::getBufferTensorAttr(*(a2 + 32));
  v23 = 260;
  v22[0].n128_u64[0] = a2;
  llvm::MemoryBuffer::getFile(v22, 0, 0, 0, 0, &v27);
  if ((v28 & 1) != 0 && v27 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = v27;
  v27 = 0;
  v11 = v10[1];
  v12 = *(a2 + 24);
  mlir::mps::MPSBufferTensorAttr::getHandle(&BufferTensorAttr, v22);
  if (*(v22[0].n128_u64[0] + 80))
  {
    v13 = v22[0].n128_u64[0] + 16;
  }

  else
  {
    v13 = 0;
  }

  memcpy(*v13, (v11 + v12), *(v13 + 8));
  v25 = 0;
  v14 = llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::LookupBucketFor<GPU::detail::ReadDataFromFileCache::Key>(*(a1 + 64), *(a1 + 80), a2, &v25);
  v15 = v25;
  if ((v14 & 1) == 0)
  {
    v26 = v25;
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    if (4 * v16 + 4 >= 3 * v17)
    {
      v17 *= 2;
    }

    else if (v17 + ~v16 - *(a1 + 76) > v17 >> 3)
    {
LABEL_12:
      *(a1 + 72) = v16 + 1;
      size = HIBYTE(v15->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) != 0)
      {
        size = v15->__r_.__value_.__l.__size_;
      }

      if (size || v15[1].__r_.__value_.__r.__words[0] != 1 || v15[1].__r_.__value_.__l.__size_)
      {
        --*(a1 + 76);
      }

      std::string::operator=(v15, a2);
      *&v15[1].__r_.__value_.__l.__data_ = *(a2 + 24);
      v15[1].__r_.__value_.__r.__words[2] = 0;
      goto LABEL_19;
    }

    llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::grow(a1 + 64, v17);
    llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::LookupBucketFor<GPU::detail::ReadDataFromFileCache::Key>(*(a1 + 64), *(a1 + 80), a2, &v26);
    v16 = *(a1 + 72);
    v15 = v26;
    goto LABEL_12;
  }

LABEL_19:
  v15[1].__r_.__value_.__r.__words[2] = BufferTensorAttr;
  (*(*v10 + 8))(v10);
  if ((v28 & 1) == 0)
  {
    v19 = v27;
    v27 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

LABEL_22:
  mlir::mps::MPSBufferTensorAttr::getHandle(&BufferTensorAttr, v22);
  v20 = v22[0].n128_u64[0];
  llvm::sys::RWMutexImpl::lock((Manager + 48));
  ++*(v20 + 88);
  llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
  v21 = BufferTensorAttr;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
  }

  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = v21;
  *(a3 + 48) = a1;
  std::mutex::unlock(a1);
}

void sub_1E077E87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if ((a21 & 1) == 0)
  {
    if (a19)
    {
      (*(*a19 + 8))(a19);
    }
  }

  std::mutex::unlock(v21);
  _Unwind_Resume(a1);
}

void GPU::detail::ReadDataFromFileCache::incrementRefCount(uint64_t a1, unint64_t a2)
{
  std::mutex::lock(a1);
  Context = mlir::Attribute::getContext((a2 + 32));
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v5);
  v7 = llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::doFind<GPU::detail::ReadDataFromFileCache::Key>((a1 + 64), a2);
  v8 = *(a1 + 64) + 48 * *(a1 + 80);
  if (v7)
  {
    v8 = v7;
  }

  v11 = *(v8 + 40);
  mlir::mps::MPSBufferTensorAttr::getHandle(&v11, &v10);
  v9 = v10.n128_u64[0];
  llvm::sys::RWMutexImpl::lock((Manager + 48));
  ++*(v9 + 88);
  llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
  std::mutex::unlock(a1);
}

void GPU::detail::ReadDataFromFileCache::decrementRefCount(uint64_t a1, unint64_t a2)
{
  std::mutex::lock(a1);
  v4 = llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::doFind<GPU::detail::ReadDataFromFileCache::Key>((a1 + 64), a2);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 64) + 48 * *(a1 + 80);
  }

  Context = mlir::Attribute::getContext((a2 + 32));
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v7);
  mlir::mps::MPSBufferTensorAttr::getHandle((v5 + 40), &v13);
  v9 = v13.n128_u64[0];
  llvm::sys::RWMutexImpl::lock((Manager + 48));
  v10 = *(v9 + 88);
  if (v10 == 1)
  {
    *(v9 + 88) = 0;
    std::__optional_destruct_base<mlir::AsmResourceBlob,false>::reset[abi:ne200100](v9 + 16);
  }

  else
  {
    *(v9 + 88) = v10 - 1;
  }

  llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
  if (v10 == 1)
  {
    v11 = llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::doFind<GPU::detail::ReadDataFromFileCache::Key>((a1 + 64), a2);
    v12 = v11;
    if (v11)
    {
      __str.__r_.__value_.__s.__data_[0] = 0;
      *(&__str.__r_.__value_.__s + 23) = 0;
      v15 = 2uLL;
      std::string::operator=(v11, &__str);
      *&v12[1].__r_.__value_.__l.__data_ = v15;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      *(a1 + 72) = vadd_s32(*(a1 + 72), 0x1FFFFFFFFLL);
    }
  }

  std::mutex::unlock(a1);
}

void sub_1E077EB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::mutex::unlock(v17);
    _Unwind_Resume(a1);
  }

  std::mutex::unlock(v17);
  _Unwind_Resume(a1);
}

void sub_1E077F5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::mutex::unlock(v33);
  GPU::detail::ReadDataFromFileCache::Value::~Value(&a27);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::unique_ptr<GPU::detail::SpecializationGPUDataLoader>::~unique_ptr[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

void GPU::detail::SpecializationGPUDataLoader::getValue(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = (v4 - 1) & (-348639895 * ((v7 >> 47) ^ v7));
  v9 = *(*a1 + 32 * v8);
  if (v9 != a2)
  {
    v21 = 1;
    while (v9 != -4096)
    {
      v22 = v8 + v21++;
      v8 = v22 & (v4 - 1);
      v9 = *(v5 + 32 * v8);
      if (v9 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_7;
  }

LABEL_3:
  if (v8 == v4)
  {
    goto LABEL_7;
  }

  v10 = v5 + 32 * v8;
  v11 = *(v10 + 24);
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = *(v10 + 8);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
  v14 = (v11 - 1) & (-348639895 * ((((0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (HIDWORD(a3) ^ (v13 >> 47) ^ v13))));
  v15 = *(v12 + (v14 << 6));
  if (v15 != a3)
  {
    v23 = 1;
    while (v15 != -4096)
    {
      v24 = v14 + v23++;
      v14 = v24 & (v11 - 1);
      v15 = *(v12 + (v14 << 6));
      if (v15 == a3)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_7;
  }

LABEL_6:
  if (v14 == v11)
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    return;
  }

  v16 = v12 + (v14 << 6);
  v17 = a4;
  if (*(v16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *(v16 + 8), *(v16 + 16));
    a4 = v17;
  }

  else
  {
    v18 = *(v16 + 8);
    *(a4 + 16) = *(v16 + 24);
    *a4 = v18;
  }

  *(a4 + 24) = *(v16 + 32);
  v19 = *(v16 + 48);
  *(a4 + 40) = v19;
  v20 = *(v16 + 56);
  *(a4 + 48) = v20;
  if (v19)
  {
    GPU::detail::ReadDataFromFileCache::incrementRefCount(v20, v17);
  }
}

void sub_1E077F87C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void GPU::detail::ReadDataFromFileCache::Value::~Value(GPU::detail::ReadDataFromFileCache::Value *this)
{
  if (*(this + 5))
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 6), this);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 5))
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 6), this);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::doFind<GPU::detail::ReadDataFromFileCache::Key>(uint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  LOBYTE(v26) = 0;
  v27 = 0;
  v4 = 1;
  v28 = 1;
  v29 = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  v7 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<std::__wrap_iter<char const*>>(v6, (v6 + v5));
  v9 = v7[3];
  v10 = v7[4];
  v11 = 0x9AE16A3B2F90404FLL * ((v10 >> 4) ^ (v10 >> 9));
  v12 = __ROR8__(0xB492B66FBE98F273 * v8 - v9, 43);
  v13 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30);
  v14 = 0xB492B66FBE98F273 * v8 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v11 + 24;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v12 - 0x3C5A37A36834CED9 * v9 + v13) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v12 - 0x3C5A37A36834CED9 * v9 + v13) ^ v14)));
  v16 = -348639895 * ((v15 >> 47) ^ v15);
  v17 = v2 - 1;
  v18 = *(v7 + 23);
  if (v18 >= 0)
  {
    v19 = *(v7 + 23);
  }

  else
  {
    v19 = v7[1];
  }

  if (v18 < 0)
  {
    v7 = *v7;
  }

  while (1)
  {
    v20 = v16 & v17;
    v21 = v3 + 48 * (v16 & v17);
    v22 = *(v21 + 23);
    v23 = v22;
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(v21 + 8);
    }

    if (v19 == v22)
    {
      v24 = v23 >= 0 ? (v3 + 48 * v20) : *v21;
      if (!memcmp(v7, v24, v19) && v9 == *(v21 + 24) && v10 == *(v21 + 32))
      {
        break;
      }
    }

    if (GPU::detail::ReadDataFromFileCache::KeyInfo::isEqual((v3 + 48 * v20), &v26))
    {
      return 0;
    }

    v16 = v20 + v4++;
  }

  return v21;
}

BOOL GPU::detail::ReadDataFromFileCache::KeyInfo::isEqual(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v7 = a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && v6[3] == v7[3] && v6[4] == v7[4];
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<std::__wrap_iter<char const*>>(unint64_t a1, _BYTE *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    v3 = 0;
    v4 = a1;
  }

  else
  {
    v3 = 0;
    v5 = &a2[~a1];
    v6 = 63;
    if (v5 < 0x3F)
    {
      v6 = &a2[~a1];
    }

    if (v5 < 0x1F)
    {
      goto LABEL_10;
    }

    if (&__src - a1 < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v6 + 1;
    v3 = v7 & 0x60;
    v4 = a1 + v3;
    v8 = &v92;
    v9 = (a1 + 16);
    v10 = v3;
    do
    {
      v11 = *v9;
      *(v8 - 1) = *(v9 - 1);
      *v8 = v11;
      v8 += 4;
      v9 += 2;
      v10 -= 32;
    }

    while (v10);
    a1 += v7 & 0x60;
    if (v7 != v3)
    {
LABEL_10:
      v4 = a1;
      v12 = v3;
      do
      {
        v3 = v12 + 1;
        v13 = *v4++;
        *(&__src + v12) = v13;
        if (v4 == a2)
        {
          break;
        }

        v14 = v12++ >= 0x3F;
      }

      while (!v14);
    }
  }

  if (v4 != a2)
  {
    v15 = (0xB492B66FBE98F273 * __ROR8__(v91 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
    v16 = v95 - 0x4B6D499041670D8DLL * __ROR8__(v96 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
    v17 = __ROR8__(__src + 0x298DF016A9F64655 + v91 + v92, 44) + __src + 0x298DF016A9F64655 + __ROR8__(v15 + __src + 0x298DF016A9F64655 + v93 - 0xAE502812AB8D92, 21);
    v18 = __src + 0x298DF016A9F64655 + v91 + v92 + v93;
    v19 = __ROR8__(v95 + v96 + v94 + 0x4BF62CB950C3753ALL, 44) + v94 + 0x4BF62CB950C3753ALL + __ROR8__(v16 + v92 + v94 + 0x4BF62CB950C3753ALL + v97, 21);
    v20 = v95 + v96 + v94 + 0x4BF62CB950C3753ALL + v97;
    v21 = 0x544962662A7EE1A4;
    v22 = 64;
    while (1)
    {
      v30 = 0;
      v31 = v4;
      v32 = &a2[~v4];
      if (v32 >= 0x3F)
      {
        v33 = 63;
      }

      else
      {
        v33 = &a2[~v4];
      }

      if (v32 < 0x1F)
      {
        goto LABEL_27;
      }

      if (&__src - v4 < 0x20)
      {
        goto LABEL_27;
      }

      v34 = v33 + 1;
      v30 = v34 & 0x60;
      v4 += v30;
      v35 = v30;
      v36 = &v92;
      v37 = v31;
      do
      {
        v38 = *v37;
        v39 = v37[1];
        v37 += 2;
        *(v36 - 1) = v38;
        *v36 = v39;
        v36 += 4;
        v35 -= 32;
      }

      while (v35);
      v40 = v37 == a2;
      if (v34 != v30)
      {
LABEL_27:
        v41 = v30;
        do
        {
          v30 = v41 + 1;
          v42 = *v4++;
          *(&__src + v41) = v42;
          v40 = v4 == a2;
          if (v4 == a2)
          {
            break;
          }

          v14 = v41++ >= 0x3F;
        }

        while (!v14);
      }

      v43 = v30 - 1;
      if ((v30 & 0x7FFFFFFFFFFFFFBFLL) == 0)
      {
        goto LABEL_18;
      }

      v86 = v21;
      v87 = v20;
      v88 = v18;
      v89 = v16;
      if (v30 == 63)
      {
        break;
      }

      if (v30 == 1)
      {
        v85 = __src;
        memmove(&__src, &__src + 1, 0x3FuLL);
        HIBYTE(v97) = v85;
        goto LABEL_17;
      }

      v44 = 64 - v30;
      v45 = v30;
      if (v30 != 64 - v30)
      {
        do
        {
          v57 = v45;
          v45 = v44;
          v44 = v57 % v44;
        }

        while (v44);
        v58 = (&__src + v45);
        do
        {
          v59 = (v58 + v43);
          v61 = *(v58 - 1);
          v58 = (v58 - 1);
          v60 = v61;
          v62 = v58;
          do
          {
            v63 = v62;
            v62 = v59;
            *v63 = *v59;
            v64 = (&v98 - v59);
            v65 = __OFSUB__(v30, v64);
            v67 = v30 - v64;
            v66 = (v67 < 0) ^ v65;
            v59 = (&__src + v67);
            if (v66)
            {
              v59 = (v62 + v30);
            }
          }

          while (v59 != v58);
          *v62 = v60;
        }

        while (v58 != &__src);
        goto LABEL_18;
      }

      v46 = ~v31;
      v47 = &a2[v46];
      if (&a2[v46] >= 0x3F)
      {
        v48 = 63;
      }

      else
      {
        v48 = &a2[v46];
      }

      v49 = 62 - v48;
      if (v47 >= v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v47;
      }

      if (v50 >= 0x3F)
      {
        v51 = 63;
      }

      else
      {
        v51 = v50;
      }

      p_src = &__src;
      if (v50 < 7)
      {
        goto LABEL_52;
      }

      if (v47 >= 0x3F)
      {
        v47 = 63;
      }

      if (v47 >= 62 - v47)
      {
        v47 = 62 - v47;
      }

      if (&__src < (&__src + v43 + v47 + 2) && &__src + v30 < &__src + v47 + 1)
      {
LABEL_52:
        v53 = v30;
        goto LABEL_53;
      }

      v68 = v51 + 1;
      if (v50 >= 0x1F)
      {
        v69 = v68 & 0x60;
        v70 = &v92;
        v71 = (&v92 + v30);
        v72 = v69;
        do
        {
          v73 = *(v70 - 1);
          v74 = *v70;
          v75 = *v71;
          *(v70 - 1) = *(v71 - 1);
          *v70 = v75;
          *(v71 - 1) = v73;
          *v71 = v74;
          v71 += 2;
          v70 += 2;
          v72 -= 32;
        }

        while (v72);
        if (v68 == v69)
        {
          goto LABEL_18;
        }

        if ((v68 & 0x18) == 0)
        {
          p_src = &__src + v69;
          v53 = v30 + v69;
LABEL_53:
          v54 = p_src + 1;
          do
          {
            v55 = *(v54 - 1);
            *(v54 - 1) = *(&__src + v53);
            *(&__src + v53) = v55;
            if (v54 == (&__src + v30))
            {
              break;
            }

            v54 = (v54 + 1);
          }

          while (v53++ != 63);
          goto LABEL_18;
        }
      }

      else
      {
        v69 = 0;
      }

      v53 = v30 + (v68 & 0x78);
      p_src = &__src + (v68 & 0x78);
      v76 = (&__src + v69);
      v77 = v69 - (v68 & 0x78);
      do
      {
        v78 = *v76;
        *v76 = *(v76 + v30);
        *(v76++ + v30) = v78;
        v77 += 8;
      }

      while (v77);
      if (v68 != (v68 & 0x78))
      {
        goto LABEL_53;
      }

LABEL_18:
      v23 = v16 + v21 + v18 + v91;
      v16 = v95 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v17 + v16 + v96, 42);
      v24 = __src - 0x4B6D499041670D8DLL * v17;
      v25 = v24 + v91 + v92;
      v26 = 0xB492B66FBE98F273 * __ROR8__(v23, 37);
      v27 = __ROR8__(v20 + v15, 33);
      v28 = v26 ^ v19;
      v17 = __ROR8__(v25, 44) + v24 + __ROR8__(v28 + v20 + v24 + v93, 21);
      v21 = 0xB492B66FBE98F273 * v27;
      v29 = 0xB492B66FBE98F273 * v27 + v19 + v94;
      v18 = v25 + v93;
      v19 = __ROR8__(v95 + v96 + v29, 44) + v29 + __ROR8__(v16 + v92 + v29 + v97, 21);
      v20 = v95 + v96 + v29 + v97;
      v22 += v30;
      v15 = v28;
      if (v40)
      {
        v79 = 0x9DDFEA08EB382D69 * (v20 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v18)));
        v80 = v28 - 0x4B6D499041670D8DLL * (v16 ^ (v16 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47));
        v81 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v19 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v19 ^ v17)));
        v82 = 0xB492B66FBE98F273 * ((v22 ^ (v22 >> 47)) + v27) - 0x622015F714C7D297 * (v81 ^ (v81 >> 47));
        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v82 ^ ((0x9DDFEA08EB382D69 * (v82 ^ v80)) >> 47) ^ (0x9DDFEA08EB382D69 * (v82 ^ v80)))) ^ ((0x9DDFEA08EB382D69 * (v82 ^ ((0x9DDFEA08EB382D69 * (v82 ^ v80)) >> 47) ^ (0x9DDFEA08EB382D69 * (v82 ^ v80)))) >> 47));
      }
    }

    v84 = HIBYTE(v97);
    memmove(&__src + 1, &__src, 0x3FuLL);
    LOBYTE(__src) = v84;
LABEL_17:
    v18 = v88;
    v16 = v89;
    v21 = v86;
    v20 = v87;
    goto LABEL_18;
  }

  return llvm::hashing::detail::hash_short(&__src, v3, 0xFF51AFD7ED558CCDLL);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::LookupBucketFor<GPU::detail::ReadDataFromFileCache::Key>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    LOBYTE(v36) = 0;
    v37 = 0;
    v7 = 1;
    v38 = 1;
    v39 = 0;
    LOBYTE(v32) = 0;
    v33 = 0;
    v34 = 2;
    v35 = 0;
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) == 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    v10 = a3;
    v11 = llvm::hashing::detail::hash_combine_range_impl<std::__wrap_iter<char const*>>(v9, (v9 + v8));
    v31 = 0;
    v12 = v10[3];
    v13 = v10[4];
    v14 = 0x9AE16A3B2F90404FLL * ((v13 >> 4) ^ (v13 >> 9));
    v15 = __ROR8__(0xB492B66FBE98F273 * v11 - v12, 43);
    v16 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30);
    v17 = 0xB492B66FBE98F273 * v11 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v14 + 24;
    v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * ((v15 - 0x3C5A37A36834CED9 * v12 + v16) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v15 - 0x3C5A37A36834CED9 * v12 + v16) ^ v17)));
    v19 = -348639895 * ((v18 >> 47) ^ v18);
    v20 = a2 - 1;
    v21 = *(v10 + 23);
    if (v21 >= 0)
    {
      v22 = *(v10 + 23);
    }

    else
    {
      v22 = v10[1];
    }

    if (v21 < 0)
    {
      v10 = *v10;
    }

    while (1)
    {
      v23 = v19 & v20;
      v24 = a1 + 48 * (v19 & v20);
      v25 = *(v24 + 23);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v24 + 8);
      }

      if (v22 == v25)
      {
        v27 = v26 >= 0 ? (a1 + 48 * v23) : *v24;
        if (!memcmp(v10, v27, v22) && v12 == *(v24 + 24) && v13 == *(v24 + 32))
        {
          result = 1;
          goto LABEL_26;
        }
      }

      if (GPU::detail::ReadDataFromFileCache::KeyInfo::isEqual((a1 + 48 * v23), &v36))
      {
        break;
      }

      isEqual = GPU::detail::ReadDataFromFileCache::KeyInfo::isEqual((a1 + 48 * v23), &v32);
      v29 = v31;
      if (isEqual && v31 == 0)
      {
        v29 = a1 + 48 * v23;
      }

      v31 = v29;
      v19 = v23 + v7++;
    }

    result = 0;
    if (v31)
    {
      v24 = v31;
    }

LABEL_26:
    *a4 = v24;
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

char *llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &result[48 * v10];
      do
      {
        *result = 0;
        result[23] = 0;
        *(result + 3) = 1;
        *(result + 4) = 0;
        result += 48;
      }

      while (result != v11);
    }

    v12 = 3 * v3;
    if (v3)
    {
      v13 = 48 * v3;
      v14 = v4;
      do
      {
        v15 = *(v14 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v14 + 8);
        }

        if (v15 || (v19 = *(v14 + 24), v19 != 2) && v19 != 1 || *(v14 + 32))
        {
          v22 = 0;
          llvm::DenseMapBase<llvm::DenseMap<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>,GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr,GPU::detail::ReadDataFromFileCache::KeyInfo,llvm::detail::DenseMapPair<GPU::detail::ReadDataFromFileCache::Key,mlir::mps::MPSBufferTensorAttr>>::LookupBucketFor<GPU::detail::ReadDataFromFileCache::Key>(*a1, *(a1 + 16), v14, &v22);
          v17 = v22;
          if (*(v22 + 23) < 0)
          {
            operator delete(*v22);
          }

          v18 = *v14;
          *(v17 + 16) = *(v14 + 16);
          *v17 = v18;
          *(v14 + 23) = 0;
          *v14 = 0;
          *(v17 + 24) = *(v14 + 24);
          *(v17 + 40) = *(v14 + 40);
          ++*(a1 + 8);
          v16 = *(v14 + 23);
        }

        if (v16 < 0)
        {
          operator delete(*v14);
        }

        v14 += 48;
        v13 -= 48;
      }

      while (v13);
    }

    llvm::deallocate_buffer(v4, (16 * v12));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = &result[48 * v20];
    do
    {
      *result = 0;
      result[23] = 0;
      *(result + 3) = 1;
      *(result + 4) = 0;
      result += 48;
    }

    while (result != v21);
  }

  return result;
}

void llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = v2 << 6;
    v5 = v3 + 31;
    do
    {
      if ((*(v5 - 31) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*(v5 + 17))
        {
          GPU::detail::ReadDataFromFileCache::decrementRefCount(*(v5 + 25), (v5 - 23));
        }

        if (*v5 < 0)
        {
          operator delete(*(v5 - 23));
        }
      }

      v5 += 64;
      v4 -= 64;
    }

    while (v4);
    v3 = *a1;
    v6 = (*(a1 + 16) << 6);
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>>>::LookupBucketFor<mlir::func::FuncOp>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v7 = (result + 32 * v6);
    v8 = *v7;
    if (*v7 == a3)
    {
LABEL_3:
      *a4 = v7;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v8 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == -8192;
        }

        if (v11)
        {
          v9 = v7;
        }

        v12 = v6 + v10++;
        v6 = v12 & (a2 - 1);
        v7 = (result + 32 * v6);
        v8 = *v7;
        if (*v7 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v9)
      {
        v7 = v9;
      }

      *a4 = v7;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0x9DDFEA08EB382D69 * ((8 * *v3 - 0xAE502812AA7333) ^ HIDWORD(*v3));
        v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
        LODWORD(v17) = -348639895 * ((v18 >> 47) ^ v18);
        v19 = *(result + 16) - 1;
        v20 = v19 & v17;
        v13 = *result + 32 * v20;
        v21 = *v13;
        if (v16 != *v13)
        {
          v22 = 0;
          v23 = 1;
          while (v21 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v21 == -8192;
            }

            if (v24)
            {
              v22 = v13;
            }

            v25 = v20 + v23++;
            v20 = v25 & v19;
            v13 = *result + 32 * v20;
            v21 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v13 = v22;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>::~DenseMap((v3 + 1));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>,mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>::LookupBucketFor<mlir::mps::ReadDataFromFileOp>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v7 = (result + (v6 << 6));
    v8 = *v7;
    if (*v7 == a3)
    {
LABEL_3:
      *a4 = v7;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v8 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == -8192;
        }

        if (v11)
        {
          v9 = v7;
        }

        v12 = v6 + v10++;
        v6 = v12 & (a2 - 1);
        v7 = (result + (v6 << 6));
        v8 = *v7;
        if (*v7 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v9)
      {
        v7 = v9;
      }

      *a4 = v7;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>,mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseMapPair<mlir::mps::ReadDataFromFileOp,GPU::detail::ReadDataFromFileCache::Value>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x3FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x7FFFFFFFFFFFFFELL;
      v11 = &v7[8 * v10];
      v12 = v7 + 8;
      v13 = v10;
      do
      {
        *(v12 - 8) = -4096;
        *v12 = -4096;
        v12 += 16;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[8 * v6];
    do
    {
      *v11 = -4096;
      v11 += 8;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    while (1)
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_12:
      v4 += 8;
      if (v4 == a3)
      {
        return;
      }
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
      v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v17 >> 47) ^ v17);
      v19 = v16 - 1;
      v20 = v19 & (-348639895 * ((v18 >> 47) ^ v18));
      v21 = *a1 + (v20 << 6);
      v22 = *v21;
      if (v15 != *v21)
      {
        v23 = 0;
        v24 = 1;
        while (v22 != -4096)
        {
          if (v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 == -8192;
          }

          if (v25)
          {
            v23 = v21;
          }

          v26 = v20 + v24++;
          v20 = v26 & v19;
          v21 = *a1 + (v20 << 6);
          v22 = *v21;
          if (v15 == *v21)
          {
            goto LABEL_26;
          }
        }

        if (v23)
        {
          v21 = v23;
        }

        *v21 = v15;
        v27 = (v21 + 8);
        if (*(v4 + 31) < 0)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_26:
    *v21 = v15;
    v27 = (v21 + 8);
    if (*(v4 + 31) < 0)
    {
LABEL_31:
      std::string::__init_copy_ctor_external(v27, v4[1], v4[2]);
LABEL_32:
      *(v21 + 32) = *(v4 + 2);
      *(v21 + 48) = v4[6];
      *(v21 + 56) = v4[7];
      v4[6] = 0;
      ++*(a1 + 8);
      if (*(v4 + 31) < 0)
      {
        operator delete(v4[1]);
      }

      goto LABEL_12;
    }

LABEL_27:
    v28 = *(v4 + 1);
    v27->__r_.__value_.__r.__words[2] = v4[3];
    *&v27->__r_.__value_.__l.__data_ = v28;
    goto LABEL_32;
  }
}

void sub_1E0781048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E078107CLL);
}

void sub_1E078105C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E07810C0);
}

void sub_1E07810B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07810C0);
  }

  JUMPOUT(0x1E078107CLL);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReductionMinOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v27 = 260;
  v26[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v26);
  v12 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (v9)
  {
    v13 = [v9 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v25[6] = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    v25[6] = 17;
    v24 = 110;
    __dst = *"mps.reduction_min";
    v16 = v25;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v27) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v26[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v27) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v26);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25[6] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst);
    goto LABEL_16;
  }

  if ((v25[6] & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E07814E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReductionMaxOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v27 = 260;
  v26[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v26);
  v12 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (v9)
  {
    v13 = [v9 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v25[6] = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    v25[6] = 17;
    v24 = 120;
    __dst = *"mps.reduction_max";
    v16 = v25;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v27) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v26[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v27) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v26);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25[6] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst);
    goto LABEL_16;
  }

  if ((v25[6] & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E0781860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReductionProdOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v27 = 260;
  v26[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v26);
  v12 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (v9)
  {
    v13 = [v9 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v25[5] = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    v25[5] = 18;
    v24 = 25711;
    __dst = *"mps.reduction_prod";
    v16 = v25;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v27) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v26[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v27) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v26);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25[5] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst);
    goto LABEL_16;
  }

  if ((v25[5] & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E0781E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E0782928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E078295CLL);
}

void sub_1E078293C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E07829A0);
}

void sub_1E0782990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07829A0);
  }

  JUMPOUT(0x1E078295CLL);
}

void sub_1E0783340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MPSShapeToVector<int>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = [v3 count];
  if (v4)
  {
    if (!(v4 >> 62))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  for (i = 0; [v3 count] > i; ++i)
  {
    v6 = [v3 objectAtIndexedSubscript:i];
    v7 = [v6 integerValue];
    std::vector<int>::push_back[abi:ne200100](a2, &v7);
  }
}

void sub_1E0783474(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1E0783974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0783D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E07840C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E078446C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E078482C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0784F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E078530C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E078558C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void GPU::MemrefBufferizer::MemrefBufferizer(GPU::MemrefBufferizer *this, char a2, MPSGraphDevice *a3)
{
  v5 = a3;
  *this = a2;
  v6 = [(MPSGraphDevice *)v5 metalDevice];
  v7 = [v6 maxBufferLength];

  *(this + 1) = v7;
  *(this + 2) = v5;
  MEMORY[0x1E12E57B0](this + 24);
  *(this + 120) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 34) = 0;
  *(this + 62) = 1065353216;
  [*(this + 2) metalDevice];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_1E0785BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::recursive_mutex::~recursive_mutex((v10 + 24));

  _Unwind_Resume(v11);
}

void llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = *a1;
    v6 = (16 * *(a1 + 16));
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

void GPU::MemrefBufferizer::createMemrefHeap(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = [*(a2 + 16) metalDevice];
  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    v10 = 0x400000;
    v11 = 0x2000000;
    v12 = 0x40000000;
    if (a3 >> 29)
    {
      v12 = (a3 + 0x1FFFFF) & 0xFFFFFFFFFFE00000;
    }

    if (a3 >= 0xA00000)
    {
      v11 = v12;
    }

    if (a3 > 0x100000)
    {
      v10 = v11;
    }

    if (a5)
    {
      v13 = a3;
    }

    else
    {
      v13 = v10;
    }

    [v8 setSize:v13];
    v14 = [v18 heapBufferSizeAndAlignWithLength:objc_msgSend(v9 options:{"size"), 0}];
    v16 = (v14 - (v14 != 0)) / v15;
    if (v14)
    {
      ++v16;
    }

    [v9 setSize:v16 * v15];
    [v9 setStorageMode:0];
    [v9 setCpuCacheMode:0];
    [v9 setHazardTrackingMode:2];
    [v9 setType:a5];
    v17 = [v18 newHeapWithDescriptor:v9];
    if (v17)
    {
      [v17 setPurgeableState:2];
      operator new();
    }

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_1E0785E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, char a11)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void GPU::MemrefBufferizer::allocateHeapForFusedAlloc(uint64_t a1, unint64_t a2)
{
  if (*(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v4 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v4 = 0;
  }

  v45 = v4;
  getMPSDataType(v4);
  if (getMPSDataType(v4) != 536870920 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v5 = *(a1 + 120);
  v6 = *(a1 + 136);
  v7 = HIDWORD(a2);
  v8 = 8 * a2;
  if (!v6)
  {
LABEL_11:
    v11 = (v5 + 24 * v6);
    goto LABEL_12;
  }

  v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
  v10 = (v6 - 1) & (-348639895 * ((v9 >> 47) ^ v9));
  v11 = (v5 + 24 * v10);
  v12 = *v11;
  if (*v11 != a2)
  {
    v13 = 1;
    while (v12 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v6 - 1);
      v11 = (v5 + 24 * v10);
      v12 = *v11;
      if (*v11 == a2)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  if (v11 != (v5 + 24 * v6) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (mlir::BaseMemRefType::hasRank(&v45))
  {
    mlir::ArrayAttr::getValue(&v45);
  }

  if (mlir::BaseMemRefType::hasRank(&v45))
  {
    Value = mlir::ArrayAttr::getValue(&v45);
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = 8 * v16;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_20;
      }
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_20:
  MemrefSizeInBytes = mlir::getMemrefSizeInBytes(v45, 1uLL);
  v19 = [*(a1 + 16) metalDevice];
  v20 = [v19 heapBufferSizeAndAlignWithLength:MemrefSizeInBytes options:0];
  v22 = v21;
  if (v20)
  {
    v23 = (v20 - (v20 != 0)) / v21 + 1;
  }

  else
  {
    v23 = 0 / v21;
  }

  v24 = v23 * v22;
  LODWORD(v46) = 0;
  v43 = &v46;
  v25 = std::__hash_table<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::__unordered_map_hasher<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::hash<GPU::MemrefBufferPool::Kind>,std::equal_to<GPU::MemrefBufferPool::Kind>,true>,std::__unordered_map_equal<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::equal_to<GPU::MemrefBufferPool::Kind>,std::hash<GPU::MemrefBufferPool::Kind>,true>,std::allocator<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>>>::__emplace_unique_key_args<GPU::MemrefBufferPool::Kind,std::piecewise_construct_t const&,std::tuple<GPU::MemrefBufferPool::Kind const&>,std::tuple<>>((a1 + 216), 0)[3];
  GPU::MemrefBufferizer::createMemrefHeap(&v43, a1, v24, v25, 1u);
  v26 = v43;
  if (!v43 && MTLReportFailureTypeEnabled())
  {
    v42 = v24;
    MTLReportFailure();
  }

  *(a1 + 88) += *(v26 + 8);
  v27 = *(a1 + 136);
  if (v27)
  {
    v28 = *(a1 + 120);
    v29 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v30 = v27 - 1;
    v31 = (v27 - 1) & (-348639895 * ((v29 >> 47) ^ v29));
    v32 = (v28 + 24 * v31);
    v33 = *v32;
    if (*v32 == a2)
    {
      goto LABEL_41;
    }

    v34 = 0;
    v35 = 1;
    while (v33 != -4096)
    {
      if (v34)
      {
        v36 = 0;
      }

      else
      {
        v36 = v33 == -8192;
      }

      if (v36)
      {
        v34 = v32;
      }

      v37 = v31 + v35++;
      v31 = v37 & v30;
      v32 = (v28 + 24 * (v37 & v30));
      v33 = *v32;
      if (*v32 == a2)
      {
        goto LABEL_41;
      }
    }

    if (v34)
    {
      v32 = v34;
    }
  }

  else
  {
    v32 = 0;
  }

  v46 = v32;
  v38 = *(a1 + 128);
  if (4 * v38 + 4 >= 3 * v27)
  {
    v27 *= 2;
LABEL_64:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::grow(a1 + 120, v27);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::LookupBucketFor<mlir::Value>(*(a1 + 120), *(a1 + 136), a2, &v46);
    v32 = v46;
    ++*(a1 + 128);
    if (*v32 == -4096)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (v27 + ~v38 - *(a1 + 132) <= v27 >> 3)
  {
    goto LABEL_64;
  }

  *(a1 + 128) = v38 + 1;
  if (*v32 != -4096)
  {
LABEL_39:
    --*(a1 + 132);
  }

LABEL_40:
  v32[1] = 0;
  v32[2] = 0;
  *v32 = a2;
LABEL_41:
  v39 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v32[2];
  v32[1] = v26;
  v32[2] = v39;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (!*std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__find_equal<std::shared_ptr<GPU::MemrefHeap>>(v25 + 32, &v46, &v43))
  {
    operator new();
  }

  [*(a1 + 104) requestResidency];
  v41 = v44;
  if (v44)
  {
    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }
  }
}

void sub_1E0786464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id GPU::MemrefBufferizer::allocateBufferFromFusedAlloc(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v69 = a2;
  if (*(a1 + 8) <= a4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v68 = 0uLL;
  v67 = 0uLL;
  std::recursive_mutex::lock((a1 + 24));
  v9 = *(a1 + 120);
  v10 = *(a1 + 136);
  if (v10)
  {
    v11 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v12 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v11 >> 47) ^ v11);
    v13 = (v10 - 1) & (-348639895 * ((v12 >> 47) ^ v12));
    v14 = (v9 + 24 * v13);
    v15 = *v14;
    if (*v14 == a3)
    {
      goto LABEL_9;
    }

    v16 = 1;
    while (v15 != -4096)
    {
      v17 = v13 + v16++;
      v13 = v17 & (v10 - 1);
      v14 = (v9 + 24 * v13);
      v15 = *v14;
      if (*v14 == a3)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = (v9 + 24 * v10);
LABEL_9:
  if (v14 != (v9 + 24 * v10))
  {
    v18 = v14[1];
    v19 = v14[2];
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *&v67 = v18;
    *(&v67 + 1) = v19;
    v20 = *(v18 + 24);
    if (*(v18 + 16) >= a4)
    {
      if (v20)
      {
LABEL_14:
        if (!*(v20 + 80))
        {
          goto LABEL_22;
        }

LABEL_21:
        operator new();
      }
    }

    else if (*(v20 + 24) >= a4)
    {
      goto LABEL_14;
    }
  }

  if (a4 <= 0x100000)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  LODWORD(v70) = v21;
  *&v71 = &v70;
  v20 = std::__hash_table<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::__unordered_map_hasher<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::hash<GPU::MemrefBufferPool::Kind>,std::equal_to<GPU::MemrefBufferPool::Kind>,true>,std::__unordered_map_equal<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::equal_to<GPU::MemrefBufferPool::Kind>,std::hash<GPU::MemrefBufferPool::Kind>,true>,std::allocator<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>>>::__emplace_unique_key_args<GPU::MemrefBufferPool::Kind,std::piecewise_construct_t const&,std::tuple<GPU::MemrefBufferPool::Kind const&>,std::tuple<>>((a1 + 216), v21)[3];
  if (*(v20 + 80))
  {
    goto LABEL_21;
  }

LABEL_22:
  v70 = 0uLL;
  v22 = *(&v68 + 1);
  v68 = 0u;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(&v70 + 1);
  if (*(&v70 + 1) && !atomic_fetch_add((*(&v70 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    if (v68)
    {
      goto LABEL_28;
    }
  }

  else if (v68)
  {
LABEL_28:
    v24 = (v20 + 64);
    v25 = std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__lower_bound<std::shared_ptr<GPU::MemrefBuffer>>(v20 + 64, &v68, *(v20 + 72), v20 + 72);
    v26 = v25;
    if (v20 + 72 != v25)
    {
      v27 = *(v20 + 88);
      v71 = v68;
      if (*(&v68 + 1))
      {
        atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v28 = *(v25 + 40);
      *&v70 = *(v25 + 32);
      *(&v70 + 1) = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = v27(&v71, &v70);
      v30 = *(&v70 + 1);
      if (*(&v70 + 1) && !atomic_fetch_add((*(&v70 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }

      v31 = *(&v71 + 1);
      if (*(&v71 + 1) && !atomic_fetch_add((*(&v71 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      if ((v29 & 1) == 0)
      {
        v32 = v26[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          v44 = v26;
          do
          {
            v33 = v44[2];
            v45 = *v33 == v44;
            v44 = v33;
          }

          while (!v45);
        }

        if (*v24 == v26)
        {
          *v24 = v33;
        }

        v46 = *(v20 + 72);
        --*(v20 + 80);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v46, v26);
        v47 = v26[5];
        if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
        }

        operator delete(v26);
      }
    }

    v48 = v68;
    *(v20 + 24) -= *(v68 + 8);
    goto LABEL_103;
  }

  v66 = 0uLL;
  if (*(v20 + 8))
  {
    operator new();
  }

  if (*(v67 + 16) < a4 && MTLReportFailureTypeEnabled())
  {
    v65 = a4;
    MTLReportFailure();
  }

  if (*(&v67 + 1))
  {
    atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v66 = v67;
  v34 = (v20 + 32);
  v35 = std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__lower_bound<std::shared_ptr<GPU::MemrefHeap>>(v20 + 32, &v66, *(v20 + 40), v20 + 40);
  v36 = v35;
  if (v20 + 40 != v35)
  {
    v37 = *(v20 + 56);
    v71 = v66;
    if (*(&v66 + 1))
    {
      atomic_fetch_add_explicit((*(&v66 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v38 = *(v35 + 40);
    *&v70 = *(v35 + 32);
    *(&v70 + 1) = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v39 = v37(&v71, &v70);
    v40 = *(&v70 + 1);
    if (*(&v70 + 1) && !atomic_fetch_add((*(&v70 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    v41 = *(&v71 + 1);
    if (*(&v71 + 1) && !atomic_fetch_add((*(&v71 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

    if ((v39 & 1) == 0)
    {
      v42 = v36[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        v49 = v36;
        do
        {
          v43 = v49[2];
          v45 = *v43 == v49;
          v49 = v43;
        }

        while (!v45);
      }

      if (*v34 == v36)
      {
        *v34 = v43;
      }

      v50 = *(v20 + 40);
      --*(v20 + 48);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v50, v36);
      v51 = v36[5];
      if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v51->__on_zero_shared)(v51);
        std::__shared_weak_count::__release_weak(v51);
      }

      operator delete(v36);
    }
  }

  v52 = v66;
  if (*(v66 + 16) < a4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v52 + 32) == 1)
  {
    if (*(v52 + 40) <= a5)
    {
      v53 = a5;
    }

    else
    {
      v53 = *(v52 + 40);
    }

    if (v53 + a4 > *(v52 + 8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v54 = [*v52 newBufferWithLength:a4 options:0 offset:{v53, v65}];
    *(v52 + 40) += a4;
  }

  else
  {
    if (a5 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v54 = [*v52 newBufferWithLength:a4 options:{0, v65}];
  }

  if (v54)
  {
    v55 = *v52;
    if (*(v52 + 32) == 1)
    {
      v56 = [v55 size] - *(v52 + 40);
    }

    else
    {
      v56 = [v55 maxAvailableSizeWithAlignment:*(v52 + 48)];
    }

    *(v52 + 16) = v56;
    if (!*std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__find_equal<std::shared_ptr<GPU::MemrefHeap>>(v20 + 32, &v71, &v66))
    {
      operator new();
    }

    operator new();
  }

  v57 = *(&v66 + 1);
  if (*(&v66 + 1) && !atomic_fetch_add((*(&v66 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

  v48 = v68;
  if (!v68)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v48 = 0;
  }

LABEL_103:
  *(v48 + 24) = 1;
  v58 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>,mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>::operator[](a1 + 168, &v69);
  v59 = *(&v68 + 1);
  if (*(&v68 + 1))
  {
    atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v60 = v58[1];
  *v58 = v48;
  v58[1] = v59;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = *v68;
  std::recursive_mutex::unlock((a1 + 24));
  v62 = *(&v67 + 1);
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v62->__on_zero_shared)(v62);
    std::__shared_weak_count::__release_weak(v62);
  }

  v63 = *(&v68 + 1);
  if (*(&v68 + 1) && !atomic_fetch_add((*(&v68 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

  return v61;
}

void sub_1E07873E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  std::recursive_mutex::unlock((v3 + 24));
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>,mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v12 = 0;
    v13 = 1;
    while (v8 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8 == -8192;
      }

      if (v14)
      {
        v12 = v7;
      }

      v15 = v6 + v13++;
      v6 = v15 & v5;
      v7 = (*a1 + 24 * (v15 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v12)
    {
      v7 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v16 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v16 = a2;
LABEL_24:
    v17 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::LookupBucketFor<mlir::Value>(*v17, *(v17 + 16), *v16, &v18);
    a1 = v17;
    a2 = v16;
    v7 = v18;
    ++*(v17 + 8);
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
  v11 = *a2;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v11;
  return v7 + 1;
}

uint64_t GPU::MemrefBufferizer::freeBufferForValue(uint64_t a1, unint64_t a2)
{
  v38 = a2;
  v3 = *(a1 + 120);
  v4 = *(a1 + 136);
  if (v4)
  {
    v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
    v7 = (v4 - 1) & (-348639895 * ((v6 >> 47) ^ v6));
    v8 = (v3 + 24 * v7);
    v9 = *v8;
    if (*v8 == a2)
    {
      goto LABEL_8;
    }

    v10 = 1;
    while (v9 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & (v4 - 1);
      v8 = (v3 + 24 * v7);
      v9 = *v8;
      if (*v8 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = (v3 + 24 * v4);
LABEL_8:
  if (v8 != (v3 + 24 * v4))
  {
    v13 = v8[1];
    v12 = v8[2];
    v37 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [*v13 setPurgeableState:4];
    *(v13 + 16) = 0;
    v14 = v8[2];
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    *v8 = -8192;
    *(a1 + 128) = vadd_s32(*(a1 + 128), 0x1FFFFFFFFLL);
    if (v37)
    {
      if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37);
        std::__shared_weak_count::__release_weak(v37);
      }
    }

    return 1;
  }

  result = mlir::Value::getDefiningOp(&v38);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
    {
      return 0;
    }

    std::recursive_mutex::lock((a1 + 24));
    v16 = *(a1 + 168);
    v17 = *(a1 + 184);
    if (v17)
    {
      v18 = 0x9DDFEA08EB382D69 * ((8 * v38 - 0xAE502812AA7333) ^ HIDWORD(v38));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v38) ^ (v18 >> 47) ^ v18);
      v20 = (-348639895 * ((v19 >> 47) ^ v19)) & (v17 - 1);
      v21 = (v16 + 24 * v20);
      v22 = *v21;
      if (v38 == *v21)
      {
        goto LABEL_28;
      }

      v23 = 1;
      while (v22 != -4096)
      {
        v24 = v20 + v23++;
        v20 = v24 & (v17 - 1);
        v21 = (v16 + 24 * v20);
        v22 = *v21;
        if (v38 == *v21)
        {
          goto LABEL_28;
        }
      }
    }

    v21 = (v16 + 24 * v17);
LABEL_28:
    if (v21 == (v16 + 24 * v17) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = v21[1];
    v26 = *(*(v25 + 32) + 24);
    if (*(v26 + 8))
    {
      if ((std::__hash_table<std::shared_ptr<GPU::MemrefBuffer>,std::hash<std::shared_ptr<GPU::MemrefBuffer>>,std::equal_to<std::shared_ptr<GPU::MemrefBuffer>>,std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__emplace_unique_key_args<std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer> const&>((v26 + 96), v25) & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v27 = *(a1 + 160);
      if (v27)
      {
        v28 = *(a1 + 144);
        v29 = HIDWORD(*v21);
        v30 = 0x9DDFEA08EB382D69 * ((8 * *v21 - 0xAE502812AA7333) ^ v29);
        v31 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30)))) & (v27 - 1);
        v32 = *(v28 + 16 * v31);
        if (v32 == *v21)
        {
LABEL_33:
          if (v31 != v27)
          {
            v33 = v28 + 16 * v31;

            *v33 = -8192;
            *(a1 + 152) = vadd_s32(*(a1 + 152), 0x1FFFFFFFFLL);
          }
        }

        else
        {
          v35 = 1;
          while (v32 != -4096)
          {
            v36 = v31 + v35++;
            v31 = v36 & (v27 - 1);
            v32 = *(v28 + 16 * v31);
            if (v32 == *v21)
            {
              goto LABEL_33;
            }
          }
        }
      }

      v34 = v21[2];
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
      }

      *v21 = -8192;
      *(a1 + 176) = vadd_s32(*(a1 + 176), 0x1FFFFFFFFLL);
    }

    std::recursive_mutex::unlock((a1 + 24));
    return 1;
  }

  return result;
}

void sub_1E0787B1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GPU::MemrefBufferizer::freeActiveBuffers(GPU::MemrefBufferizer *this)
{
  std::recursive_mutex::lock((this + 24));
  if (*(this + 44))
  {
    v2 = *(this + 21);
    v3 = *(this + 46);
    v4 = v2;
    if (*(this + 46))
    {
      v5 = 24 * v3;
      v4 = *(this + 21);
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 3;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_33;
        }
      }
    }

    v6 = &v2[3 * v3];
    if (v4 != v6)
    {
      do
      {
        v7 = v4[1];
        v8 = *(*(v7 + 32) + 24);
        if (*(v8 + 8))
        {
          if ((std::__hash_table<std::shared_ptr<GPU::MemrefBuffer>,std::hash<std::shared_ptr<GPU::MemrefBuffer>>,std::equal_to<std::shared_ptr<GPU::MemrefBuffer>>,std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__emplace_unique_key_args<std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer> const&>((v8 + 96), v7) & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v9 = *(this + 40);
          if (v9)
          {
            v10 = *(this + 18);
            v11 = HIDWORD(*v4);
            v12 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ v11);
            v13 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12)))) & (v9 - 1);
            v14 = *(v10 + 16 * v13);
            if (v14 == *v4)
            {
LABEL_15:
              if (v13 != v9)
              {
                v15 = v10 + 16 * v13;

                *v15 = -8192;
                *(this + 19) = vadd_s32(*(this + 152), 0x1FFFFFFFFLL);
              }
            }

            else
            {
              v18 = 1;
              while (v14 != -4096)
              {
                v19 = v13 + v18++;
                v13 = v19 & (v9 - 1);
                v14 = *(v10 + 16 * v13);
                if (v14 == *v4)
                {
                  goto LABEL_15;
                }
              }
            }
          }

          for (i = v4 + 3; i != v6; i += 3)
          {
            if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              break;
            }
          }

          v17 = v4[2];
          if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17);
            std::__shared_weak_count::__release_weak(v17);
          }

          *v4 = -8192;
          *(this + 22) = vadd_s32(*(this + 176), 0x1FFFFFFFFLL);
          v2 = *(this + 21);
          v3 = *(this + 46);
        }

        else
        {
          for (i = v4 + 3; i != v6; i += 3)
          {
            if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              break;
            }
          }
        }

        v4 = i;
      }

      while (i != &v2[3 * v3]);
    }
  }

LABEL_33:

  std::recursive_mutex::unlock((this + 24));
}

void GPU::MemrefBufferizer::freeInactiveBuffers(GPU::MemrefBufferizer *this)
{
  std::recursive_mutex::lock((this + 24));
  v2 = *(this + 29);
  if (v2)
  {
    while (1)
    {
      v33 = v2;
      v3 = v2[3];
      if (v3[15])
      {
        v4 = v3[14];
        if (v4)
        {
          break;
        }
      }

LABEL_3:
      v2 = *v33;
      if (!*v33)
      {
        goto LABEL_74;
      }
    }

    v5 = v3 + 9;
    while (1)
    {
      v6 = v4;
      v7 = v4[3];
      v34 = v4[2];
      v35 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[13];
      v4 = *v4;
      v9 = v6[1];
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        if (v9 >= *&v8)
        {
          v9 %= *&v8;
        }
      }

      else
      {
        v9 &= *&v8 - 1;
      }

      v11 = v3[12];
      v12 = *(v11 + 8 * v9);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12 != v6);
      if (v13 == v3 + 14)
      {
        goto LABEL_77;
      }

      v14 = v13[1];
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      v15 = *v6;
      if (v14 != v9)
      {
LABEL_77:
        if (v4)
        {
          v16 = v4[1];
          if (v10.u32[0] > 1uLL)
          {
            v17 = v4[1];
            if (v16 >= *&v8)
            {
              v17 = v16 % *&v8;
            }
          }

          else
          {
            v17 = v16 & (*&v8 - 1);
          }

          v15 = *v6;
          if (v17 == v9)
          {
            goto LABEL_31;
          }
        }

        *(v11 + 8 * v9) = 0;
        v15 = *v6;
      }

      if (!v15)
      {
        goto LABEL_37;
      }

      v16 = *(v15 + 8);
LABEL_31:
      if (v10.u32[0] > 1uLL)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v9)
      {
        *(v11 + 8 * v16) = v13;
        v15 = *v6;
      }

LABEL_37:
      *v13 = v15;
      *v6 = 0;
      --v3[15];
      v18 = v6[3];
      if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        operator delete(v6);
        v19 = *v5;
        v20 = v3 + 9;
        if (*v5)
        {
          goto LABEL_40;
        }

        goto LABEL_67;
      }

      v32 = v6;
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      operator delete(v32);
      v19 = *v5;
      v20 = v3 + 9;
      if (*v5)
      {
LABEL_40:
        v20 = v3 + 9;
        while (1)
        {
          v21 = v19;
          v22 = v3[11];
          v42 = v34;
          v43 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v23 = v21[5];
          v40 = v21[4];
          v41 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = v22(&v42, &v40);
          v25 = v41;
          if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
            v26 = v43;
            if (v43)
            {
LABEL_49:
              if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v26->__on_zero_shared)(v26);
                std::__shared_weak_count::__release_weak(v26);
              }
            }
          }

          else
          {
            v26 = v43;
            if (v43)
            {
              goto LABEL_49;
            }
          }

          if (v24)
          {
            v19 = *v21;
            v20 = v21;
            if (!*v21)
            {
              break;
            }
          }

          else
          {
            v27 = v3[11];
            v28 = v21[5];
            v38 = v21[4];
            v39 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v36 = v34;
            v37 = v35;
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v29 = v27(&v38, &v36);
            v30 = v37;
            if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v30->__on_zero_shared)(v30);
              std::__shared_weak_count::__release_weak(v30);
              v31 = v39;
              if (v39)
              {
LABEL_60:
                if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v31->__on_zero_shared)(v31);
                  std::__shared_weak_count::__release_weak(v31);
                }
              }
            }

            else
            {
              v31 = v39;
              if (v39)
              {
                goto LABEL_60;
              }
            }

            if (!v29)
            {
              break;
            }

            v20 = v21 + 1;
            v19 = v21[1];
            if (!v19)
            {
              break;
            }
          }
        }
      }

LABEL_67:
      if (!*v20)
      {
        operator new();
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v3[3] += *(v34 + 8);
      *(v34 + 24) = 0;
      if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
      }

      if (!v4)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_74:
  std::recursive_mutex::unlock((this + 24));
}

void sub_1E0788498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  std::recursive_mutex::unlock((a2 + 24));
  _Unwind_Resume(a1);
}

MPSGraphTensorData *GPU::MemrefBufferizer::createViewTensorDataForStridedValue(uint64_t a1, unint64_t a2, void *a3, GPU::EncodeDescriptor *a4, int a5)
{
  v110 = a1;
  v130 = *MEMORY[0x1E69E9840];
  v111 = a3;
  v113 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  Value = mlir::ArrayAttr::getValue(&v113);
  v10 = v9;
  mlir::getStridesAndOffset(v113, &v126);
  if ((!v10 || !v127) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  MPSDataType = getMPSDataType(v113);
  v12 = MEMORY[0x1E69744C8];
  v13 = *&v111[*MEMORY[0x1E69744C8]] >> 3;
  v14 = MPSDataType >> 3;
  v106 = a2;
  v109 = a4;
  v108 = a5;
  if (v13 < v14 && v129 % v14)
  {
    v107 = &v106;
    if (v10)
    {
      v15 = 0;
      v16 = v126;
      v17 = 1;
      v18 = MEMORY[0x1E6974508];
      v19 = MEMORY[0x1E69744D8];
      v20 = MEMORY[0x1E6974518];
      v21 = v111;
      do
      {
        v22 = &v21[*v18];
        v112 = *&v21[*v19];
        v23 = *(&v112 | v15 & 0xF);
        v24 = *&v22[4 * (v23 & 0xF)];
        v16[v15] = *&v21[8 * ((v10 + ~v23) & 0xF) + *v20];
        v17 *= v24;
        ++v15;
      }

      while (v10 != v15);
    }

    else
    {
      v17 = 1;
      v21 = v111;
    }

    v37 = MEMORY[0x1E6974490];
    v38 = *&v21[*v12];
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v17, v106, v107}];
    v125 = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
    v41 = [v37 descriptorWithDataType:v38 shape:v40];

    [v41 setPreferPackedRows:1];
    v36 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a4 + 1) descriptor:v41];
    *&v111[*MEMORY[0x1E69744F8]] = v129;
    v42 = *(v110 + 112);
    v43 = GPU::EncodeDescriptor::getcomputeEncoder(a4);
    v44 = *(a4 + 1);
    v124 = v111;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
    [v42 encodeToMPSCommandEncoder:v43 commandBuffer:v44 sourceArrays:v45 destinationArray:v36];

    v129 = 0;
  }

  else
  {
    v25 = MEMORY[0x1E6974490];
    v26 = MEMORY[0x1E696AD98];
    v27 = mlir::ArrayAttr::getValue(&v113);
    v29 = [v26 numberWithLongLong:{mlir::ShapedType::getNumElements(v27, v28), v106}];
    v123 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
    v31 = [v25 descriptorWithDataType:MPSDataType shape:v30];

    [v31 setPreferPackedRows:1];
    v32 = v129;
    v33 = *&v111[*v12];
    v34 = objc_alloc(MEMORY[0x1E6974488]);
    v35 = [v111 buffer];
    v36 = [v34 initWithBuffer:v35 offset:v32 * (v33 >> 3) descriptor:v31];
  }

  v46 = v122;
  v120 = v122;
  v121 = 0x600000000;
  v107 = v122;
  if (!v10)
  {
    v49 = v122;
LABEL_24:
    v50 = 0;
    v54 = 0;
    v117 = &v126;
LABEL_35:
    std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v46, v49, &v117, v50, 0, v54);
    goto LABEL_36;
  }

  if (v10 < 7)
  {
    v47 = 0;
    v48 = v10;
    goto LABEL_20;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v10, 8);
  v47 = v121;
  v46 = v120;
  v48 = v10 - v121;
  if (v10 != v121)
  {
LABEL_20:
    bzero(&v46[8 * v47], 8 * v48);
  }

  LODWORD(v121) = v10;
  v49 = &v46[8 * v10];
  if (!v10)
  {
    goto LABEL_24;
  }

  v50 = v10;
  v51 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v51 < 3)
  {
    v52 = 0;
    v53 = v46;
    do
    {
LABEL_28:
      *v53 = v52;
      v53 += 8;
      ++v52;
    }

    while (v53 != v49);
    goto LABEL_29;
  }

  v55 = v51 + 1;
  v52 = (v51 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v53 = &v46[8 * v52];
  v56 = xmmword_1E09700F0;
  v57 = (v46 + 16);
  v58 = vdupq_n_s64(2uLL);
  v59 = vdupq_n_s64(4uLL);
  v60 = v52;
  do
  {
    v57[-1] = v56;
    *v57 = vaddq_s64(v56, v58);
    v56 = vaddq_s64(v56, v59);
    v57 += 2;
    v60 -= 4;
  }

  while (v60);
  if (v55 != v52)
  {
    goto LABEL_28;
  }

LABEL_29:
  v117 = &v126;
  if (v10 < 0x81)
  {
    v54 = 0;
    goto LABEL_35;
  }

  v61 = MEMORY[0x1E69E5398];
  v62 = v10;
  while (1)
  {
    v63 = operator new(8 * v62, v61);
    if (v63)
    {
      break;
    }

    v54 = v62 >> 1;
    v64 = v62 > 1;
    v62 >>= 1;
    if (!v64)
    {
      v49 = &v46[8 * v10];
      v50 = v10;
      goto LABEL_35;
    }
  }

  v105 = v63;
  std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v46, &v46[8 * v10], &v117, v10, v63, v62);
  operator delete(v105);
LABEL_36:
  v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  v66 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v68 = [MEMORY[0x1E696AD98] numberWithInteger:v126[*(v120 + i)]];
      [v65 setObject:v68 atIndexedSubscript:i];

      v69 = [MEMORY[0x1E696AD98] numberWithInteger:*(Value + 8 * *(v120 + i))];
      [v66 setObject:v69 atIndexedSubscript:i];
    }
  }

  v70 = v10 - 1;
  v71 = v126[*(v120 + v10 - 1)];
  if (v71 != 1)
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [v65 addObject:v72];

    v73 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [v66 addObject:v73];
  }

  v74 = [v36 arrayViewWithShape:v66 strides:v65];

  if (!v74 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v71 == 1)
  {
    v75 = v74;
    v117 = v119;
    v118 = 0x600000000;
    if (v10)
    {
      goto LABEL_44;
    }

LABEL_48:
    v114 = v116;
    v115 = 0x600000000;
    goto LABEL_65;
  }

  [v66 removeObjectAtIndex:{objc_msgSend(v66, "count") - 1}];
  v79 = [*(v110 + 112) reshapeWithCommandBuffer:0 sourceArray:v74 shape:v66 destinationArray:0];

  v75 = v79;
  v117 = v119;
  v118 = 0x600000000;
  if (!v10)
  {
    goto LABEL_48;
  }

LABEL_44:
  if (v10 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v10, 8);
    v76 = v118;
    v77 = v117;
    v78 = v10 - v118;
    if (v10 == v118)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v76 = 0;
  v77 = v119;
  v78 = v10;
  if (v10)
  {
LABEL_50:
    bzero(&v77[8 * v76], 8 * v78);
  }

LABEL_51:
  v80 = 0;
  LODWORD(v118) = v10;
  v81 = v120;
  do
  {
    *&v77[8 * v81[v80]] = v80;
    ++v80;
  }

  while (v10 != v80);
  v114 = v116;
  v115 = 0x600000000;
  if (v10 < 7)
  {
    v82 = 0;
    v83 = v116;
    v84 = v10;
    if (!v10)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v116, v10, 8);
  v82 = v115;
  v83 = v114;
  v84 = v10 - v115;
  if (v10 != v115)
  {
LABEL_57:
    bzero(v83 + 8 * v82, 8 * v84);
  }

LABEL_58:
  LODWORD(v115) = v10;
  if (!v10)
  {
    goto LABEL_65;
  }

  v85 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v85 < 3)
  {
    v86 = 0;
    v87 = v83;
    do
    {
LABEL_64:
      *v87++ = v86++;
    }

    while (v87 != (v83 + 8 * v10));
    goto LABEL_65;
  }

  v88 = v85 + 1;
  v86 = (v85 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v87 = &v83->i64[v86];
  v89 = xmmword_1E09700F0;
  v90 = v83 + 1;
  v91 = vdupq_n_s64(2uLL);
  v92 = vdupq_n_s64(4uLL);
  v93 = v86;
  do
  {
    v90[-1] = v89;
    *v90 = vaddq_s64(v89, v91);
    v89 = vaddq_s64(v89, v92);
    v90 += 2;
    v93 -= 4;
  }

  while (v93);
  if (v88 != v86)
  {
    goto LABEL_64;
  }

LABEL_65:
  v94 = [v75 descriptor];
  [v94 setDataType:getMPSDataType(v113)];
  if (v10 >= 1)
  {
    do
    {
      v101 = v114 + 8 * v115;
      v102 = v114;
      if (v115)
      {
        v103 = 8 * v115;
        v102 = v114;
        while (*v102 != *(v117 + v70))
        {
          v102 += 8;
          v103 -= 8;
          if (!v103)
          {
            v102 = v114 + 8 * v115;
            break;
          }
        }
      }

      v104 = *(v114 + v70);
      *(v114 + v70) = *v102;
      *v102 = v104;
      if (v10 + ~v70 != ((v101 - v102) >> 3) - 1)
      {
        [v94 transposeDimension:? withDimension:?];
      }

      v64 = v70-- <= 0;
    }

    while (!v64);
  }

  v95 = 1;
  if (!v129)
  {
    v95 = 2;
  }

  if (v108)
  {
    v96 = 1;
  }

  else
  {
    v96 = v95;
  }

  v97 = [v75 safeArrayViewWithCommandBuffer:*(v109 + 1) descriptor:v94 aliasing:v96];
  if (!v97 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v98 = [MPSGraphTensorData alloc];
  v99 = [(MPSGraphTensorData *)v98 initWithMPSNDArray:v97 device:*(v110 + 16)];
  if (v99)
  {
    GPU::MemrefBufferizer::setTensorDataForMemref(v110, v106, v99);
  }

  if (v114 != v116)
  {
    free(v114);
  }

  if (v117 != v119)
  {
    free(v117);
  }

  if (v120 != v107)
  {
    free(v120);
  }

  if (v126 != &v128)
  {
    free(v126);
  }

  return v99;
}

void sub_1E0788F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  if (a19 != v35)
  {
    free(a19);
  }

  if (a27 != v39)
  {
    free(a27);
  }

  if (a35 != a10)
  {
    free(a35);
  }

  v43 = *(v42 - 184);
  if (v43 != (v42 - 168))
  {
    free(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t GPU::MemrefBufferizer::setTensorDataForMemref(uint64_t a1, unint64_t a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = *(a1 + 144);
  v7 = a1 + 144;
  v6 = v8;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v11 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v10 >> 47) ^ v10);
    v12 = (v9 - 1) & (-348639895 * ((v11 >> 47) ^ v11));
    v13 = *(v6 + 16 * v12);
    if (v13 == a2)
    {
LABEL_3:
      if (v12 != v9 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    else
    {
      v14 = 1;
      while (v13 != -4096)
      {
        v15 = v12 + v14++;
        v12 = v15 & (v9 - 1);
        v13 = *(v6 + 16 * v12);
        if (v13 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::operator[](v7, &v17) = v5;

  return MEMORY[0x1EEE66BB8]();
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
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
      v7 = (*a1 + 16 * (v14 & v5));
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::LookupBucketFor<mlir::Value>(*v16, *(v16 + 16), *v15, &v17);
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
  v7[1] = 0;
  return v7 + 1;
}

id GPU::MemrefBufferizer::getTensorDataForMemrefAtOffset(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = a2;
  v5 = *(a1 + 120);
  v6 = *(a1 + 136);
  if (!v6)
  {
LABEL_7:
    v10 = (v5 + 24 * v6);
    goto LABEL_8;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v7 >> 47) ^ v7);
  v9 = (v6 - 1) & (-348639895 * ((v8 >> 47) ^ v8));
  v10 = (v5 + 24 * v9);
  v11 = *v10;
  if (*v10 != a3)
  {
    v12 = 1;
    while (v11 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & (v6 - 1);
      v10 = (v5 + 24 * v9);
      v11 = *v10;
      if (*v10 == a3)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  if (v10 == (v5 + 24 * v6))
  {
    v38 = a4;
    v39 = MTLReportFailureTypeEnabled();
    a4 = v38;
    if (v39)
    {
      MTLReportFailure();
      a4 = v38;
    }
  }

  v14 = v10[1];
  v15 = v10[2];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v14 + 40) <= a4)
  {
    v21 = 0;
    if (!v15)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v16 = *(a1 + 168);
  v17 = *(a1 + 184);
  v18 = (v16 + 24 * v17);
  if (*(a1 + 176))
  {
    v19 = *(a1 + 168);
    if (v17)
    {
      v20 = 24 * v17;
      v19 = *(a1 + 168);
      while ((*v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v19 += 3;
        v20 -= 24;
        if (!v20)
        {
          goto LABEL_33;
        }
      }
    }

    if (v19 != v18)
    {
LABEL_21:
      v22 = v19[1];
      v23 = v19[2];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = *(v22 + 16);
        if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (v24 != a4)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v25 = a4;
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
          a4 = v25;
          if (v24 != v25)
          {
LABEL_28:
            while (1)
            {
              v19 += 3;
              if (v19 == v18)
              {
                break;
              }

              if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (v19 != v18)
                {
                  goto LABEL_21;
                }

                break;
              }
            }

            v19 = v18;
          }
        }
      }

      else if (*(v22 + 16) != a4)
      {
        goto LABEL_28;
      }

      v16 = *(a1 + 168);
      LODWORD(v17) = *(a1 + 184);
      v18 = v19;
    }
  }

LABEL_33:
  if (v18 == (v16 + 24 * v17) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v26 = *(a1 + 144);
  v27 = *(a1 + 160);
  if (v27)
  {
    v28 = HIDWORD(*v18);
    v29 = 0x9DDFEA08EB382D69 * ((8 * *v18 - 0xAE502812AA7333) ^ v28);
    v30 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) >> 32) >> 15) ^ (-348639895 * (v28 ^ (v29 >> 47) ^ v29)))) & (v27 - 1);
    v31 = *(v26 + 16 * v30);
    if (v31 == *v18)
    {
LABEL_36:
      v32 = v30 == v27;
      v27 = v30;
      if (!v32)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v40 = 1;
      while (v31 != -4096)
      {
        v41 = v30 + v40++;
        v30 = v41 & (v27 - 1);
        v31 = *(v26 + 16 * v30);
        if (v31 == *v18)
        {
          goto LABEL_36;
        }
      }
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_40:
  v34 = v18[1];
  v33 = v18[2];
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(v26 + 16 * v27 + 8);
  GPU::MemrefBufferizer::setTensorDataForMemref(a1, v42, v21);
  v35 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>,mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>::operator[](a1 + 168, &v42);
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v35[1];
  *v35 = v34;
  v35[1] = v33;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (v15)
  {
LABEL_51:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_53:

  return v21;
}

void sub_1E07898D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E07898EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E0789900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t GPU::MemrefBufferizer::setTensorDataForMemrefBackedResult(uint64_t a1, unint64_t a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = *(a1 + 192);
  v7 = a1 + 192;
  v6 = v8;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v11 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v10 >> 47) ^ v10);
    v12 = (v9 - 1) & (-348639895 * ((v11 >> 47) ^ v11));
    v13 = *(v6 + 16 * v12);
    if (v13 == a2)
    {
LABEL_3:
      if (v12 != v9 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    else
    {
      v14 = 1;
      while (v13 != -4096)
      {
        v15 = v12 + v14++;
        v12 = v15 & (v9 - 1);
        v13 = *(v6 + 16 * v12);
        if (v13 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  if (!v5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::operator[](v7, &v17) = v5;

  return MEMORY[0x1EEE66BB8]();
}

void llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::~DenseMap(uint64_t a1)
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
        if (*v5)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }
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

void llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>::~DenseMap(uint64_t a1)
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
        if (*v5)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }
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

uint64_t std::unordered_map<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>::~unordered_map[abi:ne200100](uint64_t a1)
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
        std::default_delete<GPU::MemrefBufferPool>::operator()[abi:ne200100]((v2 + 3), v6);
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

BOOL GPU::MemrefHeap::Comparator(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v4 = **a1 >= **a2;
  }

  return !v4;
}

void *std::__hash_table<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::__unordered_map_hasher<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::hash<GPU::MemrefBufferPool::Kind>,std::equal_to<GPU::MemrefBufferPool::Kind>,true>,std::__unordered_map_equal<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::equal_to<GPU::MemrefBufferPool::Kind>,std::hash<GPU::MemrefBufferPool::Kind>,true>,std::allocator<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>>>::__emplace_unique_key_args<GPU::MemrefBufferPool::Kind,GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}